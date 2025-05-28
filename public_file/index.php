<?php
$conn = new PDO('mysql:host=localhost; dbname=tra_sys', 'root', '') or die(mysql_error());

$duplicate = false;
$success = false; // Variable to track if the upload was successful

// Clean up old records with missing files
$cleanupQuery = $conn->query("SELECT * FROM upload");
while ($row = $cleanupQuery->fetch()) {
    $filePath = "upload/" . $row['fname'];
    if (!file_exists($filePath)) {
        // If file is missing, delete the record
        $deleteQuery = $conn->prepare("DELETE FROM upload WHERE id = ?");
        $deleteQuery->execute([$row['id']]);
    }
}

if (isset($_POST['submit']) != "") {
    $name = $_FILES['file']['name'];
    $size = $_FILES['file']['size'];
    $type = $_FILES['file']['type'];
    $temp = $_FILES['file']['tmp_name'];
    $fname = date("YmdHis") . '_' . $name;

    // Check if file with same name exists in the database
    $chk = $conn->query("SELECT * FROM upload WHERE name = '$name'")->rowCount();

    if ($chk) {
        // Duplicate file found — reject upload
        $duplicate = true;
    } else {
        // No duplicate, proceed to move and insert
        $move = move_uploaded_file($temp, "upload/" . $fname);
        if ($move) {
            // Check if the file actually exists in the folder
            if (file_exists("upload/" . $fname)) {
                // Insert into database
                $query = $conn->query("INSERT INTO upload(name, fname) VALUES ('$name', '$fname')");
                if ($query) {
                    $success = true;
                    // Redirect to avoid form resubmission
                    // header("Location: index.php");
                    // exit;  // Don't redirect now to show success message
                } else {
                    die(mysql_error());
                }
            } else {
                // If file doesn't exist, remove entry from database
                $deleteQuery = $conn->prepare("DELETE FROM upload WHERE name = ?");
                $deleteQuery->execute([$name]);
            }
        }
    }
}
?>

<html>
<head>
<title>Upload and Download Files</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="screen">
<link rel="stylesheet" type="text/css" href="css/DT_bootstrap.css">
<style>
body {
    margin: 0;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #f4f6f8;
}
.topnav {
    overflow: hidden;
    background-color: #2c3e50;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}
.topnav a {
    float: left;
    color: #ecf0f1;
    padding: 14px 20px;
    text-decoration: none;
    font-size: 18px;
    transition: background 0.3s ease;
}
.topnav a:hover {
    background-color: #34495e;
    color: #fff;
}
.topnav a.active {
    background-color: #2980b9;
    color: white;
}
.container {
    margin: 10px auto;
    padding: 20px;
    background: white;
    border-radius: 12px;
    box-shadow: 0 8px 20px rgba(0,0,0,0.05);
}
h1 p {
    font-size: 28px;
    font-weight: bold;
    color: #2c3e50;
    margin-bottom: 20px;
}
input[type="file"] {
    margin-bottom: 10px;
}
input[type="submit"] {
    background-color: #04AA6D;
    border: none;
    color: white;
    font-size: 16px;
    margin: 5px 0;
    padding: 10px 20px;
    border-radius: 8px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}
input[type="submit"]:hover {
    background-color: #007BFF;
}
#example {
    width: 100%;
    background-color: #ffffff;
    color: #333;
    border-collapse: collapse;
    margin-top: 20px;
}
#example thead {
    background-color: #2980b9;
    color: white;
}
#example th, #example td {
    padding: 12px;
    text-align: left;
    border-bottom: 1px solid #ddd;
}
#example tr:hover {
    background-color: inherit;
}
button.alert-success {
    background-color: #2ecc71;
    border: none;
    padding: 6px 12px;
    color: white;
    border-radius: 5px;
    transition: background-color 0.3s ease;
}
button.alert-success:hover {
    background-color: #27ae60;
}
button.alert-success a {
    color: white;
    text-decoration: none;
}

/* Beautiful DataTables Search Bar Styling */
.dataTables_filter input[type="search"] {
    width: 300px;
    padding: 8px 15px;
    border-radius: 20px;
    border: 1px solid #ccc;
    font-size: 16px;
    transition: border-color 0.3s ease, box-shadow 0.3s ease;
    outline: none;
}

.dataTables_filter input[type="search"]:focus {
    border-color: #2980b9;
    box-shadow: 0 0 8px rgba(41, 128, 185, 0.4);
}

.dataTables_filter label {
    font-weight: 600;
    color: #2c3e50;
    font-size: 16px;
    margin-right: 10px;
}

.dataTables_filter {
    margin-bottom: 15px;
    text-align: right;
}
</style>

<!-- Include SweetAlert2 CSS -->
<link href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css" rel="stylesheet">

</head>
<body>
<div class="topnav">
    <a href="../admin/dashboard.php" class="active">
        <img src="3.png" style="width:20px;height:20px;"> Dashboard
    </a>
</div>
<div class="row-fluid">
    <div class="span12">
        <div class="container">
            <h1><p>Resources Page</p></h1>
            <form enctype="multipart/form-data" action="" name="form" method="post">
                <input type="file" name="file" id="file" required />
                <input type="submit" name="submit" id="submit" value="Submit" />
            </form>
            <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="example">
                <thead>
                    <tr>
                        <th width="90%">Files Repository</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                <?php
                $query = $conn->query("SELECT * FROM upload ORDER BY id DESC");
                while ($row = $query->fetch()) {
                    $name = $row['name'];
                    $fname = $row['fname'];

                    // Check if the file exists in the upload folder
                    $filePath = "upload/" . $fname;
                    if (!file_exists($filePath)) {
                        // File doesn't exist, so remove the record from the database
                        $deleteQuery = $conn->prepare("DELETE FROM upload WHERE id = ?");
                        $deleteQuery->execute([$row['id']]);
                        continue; // Skip this file and don't display it
                    }
                ?>
                <tr>
                    <td><?php echo htmlspecialchars($name); ?></td>
                    <td>
                        <button class="alert-success">
                            <a href="download.php?filename=<?php echo urlencode($name); ?>&f=<?php echo urlencode($fname); ?>">Download</a>
                        </button>
                    </td>
                </tr>
                <?php } ?>
                </tbody>
            </table>
        </div>
    </div>
</div>

<?php
if ($duplicate) {
    echo "
    <script src='https://cdn.jsdelivr.net/npm/sweetalert2@11'></script>
    <script>
    Swal.fire({
      title: 'Duplicate file detected!',
      text: 'Upload rejected. Please rename your file before uploading.',
      icon: 'warning'
    });
    </script>";
} elseif ($success) {
    echo "
    <script src='https://cdn.jsdelivr.net/npm/sweetalert2@11'></script>
    <script>
    Swal.fire({
      title: 'File Uploaded Successfully!',
      text: 'Your file has been uploaded successfully.',
      icon: 'success'
    });
    </script>";
}
?>

<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/bootstrap.js" type="text/javascript"></script>
<script src="js/jquery.dataTables.js"></script>
<script src="js/DT_bootstrap.js"></script>
</body>
</html>
