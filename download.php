<?php
 
// download.php
 if (isset($_GET['file'])) {
    $file = filter_input(INPUT_GET, 'file', FILTER_SANITIZE_SPECIAL_CHARS);
        if (file_exists($file) && is_readable($file) && preg_match('/\.pdf$/',$file)) {
            header('Content-Description: File Transfer');
            header('Content-type: application/pdf');
            header("Content-Type: application/force-download");// some browsers need this
            header("Content-Disposition: attachment; filename=\"$file\"");
            header('Expires: 0');
            header('Cache-Control: must-revalidate, post-check=0, pre-check=0');
            header('Pragma: public');
            header('Content-Length: ' . filesize($file));
            ob_clean();
            flush();
            readfile($file);
            exit;
        }
        else {
            header("HTTP/1.0 404 Not Found");
            echo "<h3>Error 404: File Not Found: <br /><em>$file</em></h3>";
            header('Refresh: 5; url=./index.html');
            print '<i style="color:red">You will be redirected in 5 seconds</i>';
            exit;
        }
        } 
 else {
        header('Refresh: 5; url=index.html');
        print '<h1 style="text-align:center">You you shouldn\'t be here ......</h1><br> <p style="color:red"><b>redirection in 5 seconds</b></p>';
        exit;
}
 
 
?>