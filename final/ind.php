<?php
$command = escapeshellcmd('python C:/xampp/htdocs/final/health_status.py');
$output = shell_exec($command);
echo $output;
?>