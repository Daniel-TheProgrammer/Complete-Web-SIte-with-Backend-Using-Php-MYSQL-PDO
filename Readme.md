## Project Structure.
Preredefine Requirements:

* Home
* Testimonials
* Blog
* Sales

Home would be my `index.php` and contain some basic product information. The remaining three pages would need to connect with the MySQL database.
 I created a db called DTP and three tables to correspond with the front end.

 ### Database population

After creating the tables and the database, I filled them with content I found on various marketing sites. I copied source code to perserve HTML formatting so that blog posts and other content were displayed accurately.

## Putting it All Together
With my database built out and my front end design taking shape, it was time to connect the two.

I chose to use  [PHP Data Objects / PDO](https://www.php.net/manual/en/book.pdo.php) for my connection scripts. 

I had previous experience using mysqli, so some of this was new to me, but the concept is the same.

This first part is encapsulated in a `try` statement and the subsequent `catch` will provide appropriate messaging if there is a problem with making the connection. 

```PHP
//Attempt DB connection
$conn = new PDO("mysql:host=$servername;dbname=DTP", $username, $password);

$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

// Query Database
$stmt = $conn->query("SELECT * FROM WHATEVER");
$whatevers = $stmt->fetchAll(PDO::FETCH_OBJ);
```

I imported the DB credentials from another file and then in this example a query is run and the results are collected into an object called whatevers.

I used this general method for both the `blog` and `testimonials` pages.

Then, in order to display the content from the tables into the HTML, I used a PHP foreach loop. 

Here's an example pulled from the blog code:
```HTML
foreach ($posts as $post) { ?>
<div class="container" style="max-width:650px;">

<!-- header image -->
<img class="rounded mx-auto d-block" src="<?php echo $post->image ?>">
       
<!-- blog title -->
<h1>
<?php echo $post->title ?> 
</h1>
        
<!-- blog author -->
<h2 class="text-muted">
<?php echo $post->author ?></span></h2>

<!-- blog date -->
<p class="lead"><?php echo $post->created_at ?></td>

<!-- blog text content -->
<p><?php echo $post->body ?></p>
</div>
```

In the loop, I built the html elements around the data I wanted displayed. The php echo statements all feature `$post->databaseColumnName`. This iterates for each post that is in the database. I only had 4 posts in my table, otherwise, this may have been overwhelming and needed additional code.

## Input Validation
For the `sales` page, I was writing information to the DB and this required a different approach. 

I used built-in features from the bootstrap and HTML5 for some basic input validation. 

The sales form was the last feature that I worked on and I ultimately ran out of time before implementing a level of validation that I would consider adequate for `production`. 

I spent a lot of time trying to come up with an efficient method for throwing custom errors. I

In order to prevent against SQL injections, I needed to sanitize any user input that would allow code exceution. 

I passed the filtered `$_POST` data to new variables for use in the database.

```PHP
$newVariableName =sanitize($_POST['variableName']);
```

I used the following function to do this:
```PHP
function sanitize($data) {
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
  }
  ```

Beyond essential character escaping, I wanted the code to parse the input data and catch obvious user errors. I struggled to find a solution that did exactly what I wanted without creating a waterfall of conditional statements.

I ultimately settled due to time constraints. Late into my research I found the php `list()` function. This allowed me to create a list structure so I could pair the element and a description of the element. 

```PHP
$dataName = array('First Name: ','Last Name: ','Street Address: ','City: ','State: ','Zip: ','E-Mail: ','Number of Stairs: ');
list ($a,$b,$c,$d,$e,$f,$g,$h)= $dataName;
$responses = array($fname, $lname ,$street, $city, $state, $zip, $email, $stairs);
list ($aa, $bb ,$cc, $dd, $ee, $ff, $gg, $hh) = $responses;
echo "<b>$a</b> $aa <br>";
echo "<b>$b</b> $bb <br>";
echo "<b>$c</b> $cc <br>";
echo "<b>$d</b> $dd <br>";
echo "<b>$e</b> $ee <br>";
echo "<b>$f</b> $ff <br>";
echo "<b>$g</b> $gg <br>";
echo "<b>$h</b> $hh <br>";
```

This ran through each of the form inputs and returned them to the user for self-verification. This would be a bad idea in production because it would allow a lot of bad data or null values to be passed. 
