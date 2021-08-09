<?php include 'header.php'; ?>

<img src="img/man-laptop.jpg" class="rounded mx-auto d-block">
<h1>Get a free quote today!</h1>

<form method="post" action="salesProcess.php">
  <!-- First, Last Name -->
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="firstName">First Name</label>
      <input name="fname" type="Name" class="form-control" id="inputName" placeholder="First">
    </div>
    <div class="form-group col-md-6">
      <label for="lastName">Last Name</label>
      <input name="lname" type="Name" class="form-control" id="inputName" placeholder="Last">
    </div>
  </div>
  <!-- Street Address -->
  <div class="form-row">
    <div class="form-group col-lg-12">
      <label for="street">Street Address</label>
      <input name="street" type="address" class="form-control" id="inputEmail" placeholder="Street Address">
    </div>
  </div>
  <!-- City / State / Zip -->
  <!-- City -->
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="city">City</label>
      <input name="city" type="text" class="form-control" id="inputName" placeholder="City">
    </div>
    <!-- State  -->
    <div class="col-md-3">
      <label for="state" class="col-md-3 control-label">State</label>
      <select class="form-control" id="state" name="state">
        <option value="">State</option>
        <option value="AK">Alaska</option>
        <option value="AL">Alabama</option>
        <option value="AR">Arkansas</option>
        <option value="AZ">Arizona</option>
        <option value="CA">California</option>
        <option value="CO">Colorado</option>
        <option value="CT">Connecticut</option>
        <option value="DC">District of Columbia</option>
        <option value="DE">Delaware</option>
        <option value="FL">Florida</option>
        <option value="GA">Georgia</option>
        <option value="HI">Hawaii</option>
        <option value="IA">Iowa</option>
        <option value="ID">Idaho</option>
        <option value="IL">Illinois</option>
        <option value="IN">Indiana</option>
        <option value="KS">Kansas</option>
        <option value="KY">Kentucky</option>
        <option value="LA">Louisiana</option>
        <option value="MA">Massachusetts</option>
        <option value="MD">Maryland</option>
        <option value="ME">Maine</option>
        <option value="MI">Michigan</option>
        <option value="MN">Minnesota</option>
        <option value="MO">Missouri</option>
        <option value="MS">Mississippi</option>
        <option value="MT">Montana</option>
        <option value="NC">North Carolina</option>
        <option value="ND">North Dakota</option>
        <option value="NE">Nebraska</option>
        <option value="NH">New Hampshire</option>
        <option value="NJ">New Jersey</option>
        <option value="NM">New Mexico</option>
        <option value="NV">Nevada</option>
        <option value="NY">New York</option>
        <option value="OH">Ohio</option>
        <option value="OK">Oklahoma</option>
        <option value="OR">Oregon</option>
        <option value="PA">Pennsylvania</option>
        <option value="PR">Puerto Rico</option>
        <option value="RI">Rhode Island</option>
        <option value="SC">South Carolina</option>
        <option value="SD">South Dakota</option>
        <option value="TN">Tennessee</option>
        <option value="TX">Texas</option>
        <option value="UT">Utah</option>
        <option value="VA">Virginia</option>
        <option value="VT">Vermont</option>
        <option value="WA">Washington</option>
        <option value="WI">Wisconsin</option>
        <option value="WV">West Virginia</option>
        <option value="WY">Wyoming</option>
      </select>
    </div>
    <!-- Zip -->
    <div class="form-group col-md-3">
      <label for="inputZip">Zip</label>
      <input name="zip" type="text" class="form-control" id="inputZip" placeholder="Zip Code">
    </div>
  </div>
  <!-- Email -->
  <div class="form-row">
    <div class="form-group col-lg-12">
      <label for="email">Email</label>
      <input name="email" type="email" class="form-control" id="inputEmail" placeholder="Email Address">
    </div>
  </div>
  <!-- Number of Stairs -->
  <div class="form-row">
    <div class="form-group col-lg-12">
      <label for="selectStairs">Stairs</label>
      <select class="form-control" id="selectStairs" name="stairs">
      <option value="">Number of Stairs</option>  
      <option>1-10</option>
        <option>11-20</option>
        <option>20+</option>
      </select>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
</form>

<?php include 'footer.php'; ?>