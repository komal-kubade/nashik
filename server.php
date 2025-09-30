<?php
// Database credentials
$host = 'localhost';  // Host name (e.g., 'localhost' or '127.0.0.1')
$dbname = 'nashikTourism';  // Database name
$username = 'root';  // Database username
$password = '';  // Database password

// Check if the form is submitted
if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    // Get and sanitize form data
    $user_name = isset($_POST['name']) ? htmlspecialchars(trim($_POST['name'])) : '';
    $user_email = isset($_POST['email']) ? htmlspecialchars(trim($_POST['email'])) : '';
    $date = isset($_POST['datetime']) ? htmlspecialchars(trim($_POST['datetime'])) : '';
    $formattedDate = date('Y-m-d', strtotime(str_replace('-', '/', $date))) . ' 00:00:00';
    $destination = isset($_POST['destination']) ? htmlspecialchars(trim($_POST['destination'])) : '';
    $persons = isset($_POST['persons']) ? (int)$_POST['persons'] : 1;
    $childcount = isset($_POST['categories']) ? (int)$_POST['categories'] : 0;
    $special_request = isset($_POST['special_request']) ? htmlspecialchars(trim($_POST['special_request'])) : '';
    $description = isset($_POST['description']) ? htmlspecialchars(trim($_POST['description'])) : '';
    $message = isset($_POST['message']) ? htmlspecialchars(trim($_POST['message'])) : '';

    try {
        // Create a PDO instance (Database connection)
        $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        // Insert into `contactus` table if `description` and `message` are provided
        if ($description && $message) {
            $stmt = $pdo->prepare("INSERT INTO contactus (name, email, description, message) VALUES (?, ?, ?, ?)");
            $stmt->execute([$user_name, $user_email, $description, $message]);
            echo '<div class="message">Message sent successfully!</div>';
        }
        // Insert into `userrequests` table if the required fields are provided
        elseif ($user_name && $user_email && $formattedDate && $destination) {
            $stmt = $pdo->prepare("INSERT INTO userrequests (name, email, date, destination, personcount, childcount, request) 
                                   VALUES (?, ?, ?, ?, ?, ?, ?)");
            $stmt->execute([$user_name, $user_email, $formattedDate, $destination, $persons, $childcount, $special_request]);
            echo '<div class="booking">Booking request submitted successfully! Thank you, ' . htmlspecialchars($user_name) . '.</div>';
        } else {
            echo '<div class="booking">Please provide the necessary information.</div>';
        }
    } catch (PDOException $e) {
        die('<div class="message error">Error: ' . htmlspecialchars($e->getMessage()) . '</div>');
    }
} else {
    echo '<div class="message">Please fill in the form to send a message.</div>';
}
?>
