
  <?php
  include 'secure.php';

  // Connect to DB
    try {
      $conn = new PDO("mysql:host=$servername;dbname=acorn", $username, $password);
      $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

      // Query
      $stmt = $conn->query("SELECT * FROM posts");
      $posts = $stmt->fetchAll(PDO::FETCH_OBJ);
      // Map DB to HTML
      foreach ($posts as $post) {
    ?>
        <div class="container" style="max-width:650px;">
        <!-- header image -->
            <img class="rounded mx-auto d-block" src="<?php echo $post->image ?>">
            <!-- blog title -->
            <h1><?php echo $post->title ?> </h1>
            <!-- blog author -->
            <h2 class="text-muted">
              <?php echo $post->author ?></span></h2>
              <!-- blog date -->
            <p class="lead"><?php echo $post->created_at ?></td>
            <!-- blog text content -->
              <p><?php echo $post->body ?></p>
  
  </div>
<?php
      }
    } catch (PDOException $e) {
      echo "<p class='text-danger'> Connection failed! " . $e->getMessage() . "</p> 
      <h1>Please try again.</h1> 
      <p>If the problem persists, email: 
      <a href='mailto:christopher@christopher-murray.com'>
      christopher@christopher-murray.com</p></a>";
    }

      //close db connection
    $conn = null;


?>
</div>