## Project Structure
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
