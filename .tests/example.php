<?php
// 1. Variables and Data Types
$siteName = "My First PHP Site"; // String
$visitorCount = 150;            // Integer
$isOnline = true;                // Boolean

// 2. A Simple Function
function greetUser($name) {
    return "Hello, " . htmlspecialchars($name) . "! Welcome back.";
}

// 3. Arrays (List of items)
$features = ["Fast Performance", "Secure Database", "Easy Deployment"];

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title><?php echo $siteName; ?></title>
</head>
<body>

    <!-- 4. Outputting data into HTML -->
    <h1><?php echo $siteName; ?></h1>
    <p><?php echo greetUser("Alex"); ?></p>

    <!-- 5. Conditionals (if/else) -->
    <?php if ($isOnline): ?>
        <p style="color: green;">✔ The server is currently online.</p>
    <?php else: ?>
        <p style="color: red;">❌ The server is offline.</p>
    <?php endif; ?>

    <!-- 6. Loops (Foreach array loop) -->
    <h3>Key Features:</h3>
    <ul>
        <?php foreach ($features as $feature): ?>
            <li><?php echo $feature; ?></li>
        <?php endforeach; ?>
    </ul>

    <p>Total page views today: <?php echo $visitorCount; ?></p>

</body>
</html>
