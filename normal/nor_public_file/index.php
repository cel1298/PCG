<?php
// Set up the connection
try {
    $conn = new PDO('mysql:host=localhost;dbname=tra_sys', 'root', '');
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Connection failed: " . $e->getMessage());
}

if (isset($_POST['submit'])) {
    $name = $_FILES['file']['name'];
    $size = $_FILES['file']['size'];
    $type = $_FILES['file']['type'];
    $temp = $_FILES['file']['tmp_name'];

    $fname = date("YmdHis") . '_' . $name;

    $stmt = $conn->prepare("SELECT * FROM upload WHERE name = :name");
    $stmt->execute([':name' => $name]);
    $chk = $stmt->rowCount();

    if ($chk) {
        $i = 1;
        $c = 0;
        while ($c == 0) {
            $i++;
            $reversedParts = explode('.', strrev($name), 2);
            $tname = (strrev($reversedParts[1])) . "_" . ($i) . '.' . (strrev($reversedParts[0]));
            $stmt2 = $conn->prepare("SELECT * FROM upload WHERE name = :tname");
            $stmt2->execute([':tname' => $tname]);
            if ($stmt2->rowCount() == 0) {
                $c = 1;
                $name = $tname;
            }
        }
    }

    if (move_uploaded_file($temp, "../../public_file/upload/" . $fname)) {
        $stmtInsert = $conn->prepare("INSERT INTO upload (name, fname) VALUES (:name, :fname)");
        if ($stmtInsert->execute([':name' => $name, ':fname' => $fname])) {
            header("Location: index.php");
            exit;
        } else {
            die("Error: " . $stmtInsert->errorInfo()[2]);
        }
    } else {
        die("Error: File upload failed.");
    }
}
?>

<html>
<head>
<title>Upload and Download Files</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="screen">
<link rel="stylesheet" type="text/css" href="css/DT_bootstrap.css">

<style>
/* Your existing styles (with minor cleanups) */

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

/* Button container */
.action-buttons {
    display: flex;
    gap: 10px;
    justify-content: flex-start;
}

/* Download link styled as button */
.btn-download {
    background-color: #2ecc71;
    color: white;
    border: none;
    padding: 6px 12px;
    border-radius: 5px;
    text-decoration: none;
    font-size: 14px;
    display: inline-block;
    text-align: center;
    cursor: pointer;
    transition: background-color 0.3s ease;
}
.btn-download:hover {
    background-color: #27ae60;
}

/* View button */
.btn-view {
    background-color: #f1c40f;
    color: #222;
    border: none;
    padding: 6px 12px;
    border-radius: 5px;
    cursor: pointer;
    font-size: 14px;
    display: inline-block;
    transition: background-color 0.3s ease;
}
.btn-view:hover {
    background-color: #d4ac0d;
}

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

</head>
<body>

<div class="topnav">
    <a href="../dashboard.php" class="active" style="pointer-events">&nbsp; <img src="3.png" style="width:20px;height:20px;">&nbsp; Dashboard &nbsp;&nbsp;&nbsp;&nbsp;</a>
</div>

<div class="row-fluid">
    <div class="span12">
        <div class="container">
            <h1><p>Resources Page</p></h1>
				<!-- Note about PDF viewing -->
					<div style="margin-bottom: 15px; font-weight: 600; color: #d35400; font-size: 16px;">
						<i>Note:</i> PDF, PNG, JPG Images files only can view here.
							</div>


            <!-- Upload form -->
        <!--    <form action="" method="post" enctype="multipart/form-data" style="margin-bottom: 20px;">
                <input type="file" name="file" required />
                <input type="submit" name="submit" value="Upload" />
            </form>
						-->
            <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="example">
                <thead>
                    <tr>
                        <th width="90%">File Names</th>
                        <th style="width: 150px;">Action</th>
                    </tr>
                </thead>
                <tbody>
                <?php
                $query = $conn->query("SELECT * FROM upload ORDER BY id DESC");
                while ($row = $query->fetch()) {
                    $name = htmlspecialchars($row['name']);
                    $fname = htmlspecialchars($row['fname']);
                ?>
                <tr>
                    <td><?php echo $name; ?></td>
                    <td>
                        <div class="action-buttons">
                            <a class="btn-download" href="../../public_file/download.php?filename=<?php echo urlencode($name); ?>&f=<?php echo urlencode($fname); ?>" target="_blank" rel="noopener noreferrer">Download</a>
                            <button class="btn-view" data-filename="<?php echo $fname; ?>">View</button>
                        </div>
                    </td>
                </tr>
                <?php } ?>
                </tbody>
            </table>

        </div>
    </div>
</div>

<!-- SweetAlert2 Script -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/jquery.dataTables.js"></script>
<script src="js/DT_bootstrap.js"></script>

<script>
$(document).ready(function() {
    $('#example').DataTable();

    $(".btn-view").on("click", function () {
        const filename = $(this).data("filename");
        const fileExtension = filename.split('.').pop().toLowerCase();
        const filePath = `../../public_file/upload/${filename}`;

        if (fileExtension === "pdf") {
            Swal.fire({
                title: 'PDF Preview',
                html: `<iframe src="${filePath}" width="100%" height="600px" style="border:none;"></iframe>`,
                width: 800,
                showCloseButton: true,
                showConfirmButton: false
            });
        } else if (["jpg", "jpeg", "png", "gif", "bmp", "svg", "webp"].includes(fileExtension)) {
            const img = new Image();
            img.src = filePath;
            img.onload = function() {
                let width = this.width;
                let height = this.height;

                const maxWidth = 800;
                const maxHeight = 600;

                const widthRatio = maxWidth / width;
                const heightRatio = maxHeight / height;
                const ratio = Math.min(widthRatio, heightRatio, 1);

                width = width * ratio;
                height = height * ratio;

                Swal.fire({
                    imageUrl: filePath,
                    imageWidth: width,
                    imageHeight: height,
                    imageAlt: "Uploaded Image",
                    showCloseButton: true,
                    showConfirmButton: false,
                    width: width + 60,
                    padding: '1em'
                });
            };
        } else {
            Swal.fire("Preview not available", "File type not supported for preview.", "info");
        }
    });
});
</script>

</body>
</html>
