<html>
<body>
<form method="post">
    <?php
    for ($i = 0; $i < 3; $i++) {
        echo "Number $i: <input type='number' name='nums[]'><br>";
    }
    ?>
    <input type="submit" value="Calculate">
</form>

<?php
if (isset($_POST['nums'])) {
    $s = 0;
    foreach ($_POST['nums'] as $n) {
        $s += $n;
    }
    echo "Sum = " . $s;
}
?>
</body>
</html>
