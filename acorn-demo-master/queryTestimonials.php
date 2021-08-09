<div class="container">
  <?php
  include 'secure.php';
  ?>

  <img width="500px" class="rounded mx-auto d-block" src="img/couple.jpg"><br><br>
  <h1>Testimonials</h1>

  <?php
  
  try {
    $conn = new PDO("mysql:host=$servername;dbname=acorn", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $stmt = $conn->query("SELECT * FROM testimonials");
    $testimonials = $stmt->fetchAll(PDO::FETCH_OBJ);

    foreach ($testimonials as $testimonial) {
  ?>

      <p class="lead"><?php echo $testimonial->quote ?> </p>
      <p class="text-muted">
        <?php echo $testimonial->author ?></span></h2>


    <?php
    }
  } catch (PDOException $e) {
    echo "<p class='text-danger'> Connection failed! " . $e->getMessage() . "</p> 
      <h1>Please try again.</h1> 
      <p>If the problem persists, email: 
      <a href='mailto:christopher@christopher-murray.com'>
      christopher@christopher-murray.com</p></a>";
  }

  $conn = null;


    ?>
</div>