<!DOCTYPE html>
<html>
<head>
  <title>Bootstrap In Action - Landing Page Example</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <!-- Bootstrap -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/font-awesome.css" rel="stylesheet" />

  <link href="http://fonts.googleapis.com/css?family=Abel|Open+Sans:400,600" rel="stylesheet" />

  <style>

      /* http://css-tricks.com/perfect-full-page-background-image/ */
      html {
          background: url("./ImageServlet.png") no-repeat center center fixed;
          -webkit-background-size: cover;
          -moz-background-size: cover;
          -o-background-size: cover;
          background-size: cover;
      }

      body {
          padding-top: 20px;
          font-size: 16px;
          font-family: "Open Sans",serif;
          background: transparent;
      }

      h1 {
          font-family: "Abel", Arial, sans-serif;
          font-weight: 400;
          font-size: 40px;
      }

      /* Override B3 .panel adding a subtly transparent background */
      .panel {
          background-color: rgba(255, 255, 255, 0.9);
      }


  </style>

</head>
<body>

  <div class="container">
      <div class="row">
          <div class="col-lg-6 col-offset-3 panel" style="margin-top:100px">
          	<div class="row">
          		<div class="col-lg-12">
              		<h1 class="margin-base-vertical pull-right">Login......</h1>
              	</div>
             </div> 
             <div class="row">
             	<div class="col-lg-12">
		              <form class="margin-base-vertical" action="" method="post">
		                 	<div class="form-group">
						      <label for="exampleInputEmail" style="padding-left:5px">Username</label>
						      <input type="text" name="username" class="form-control" id="exampleInputEmail" placeholder="Enter username">
						    </div>
						    
						    <div class="form-group">
						      <label for="exampleInputEmail" style="padding-left:5px">Password</label>
						      <input type="password" class="form-control" id="exampleInputEmail" placeholder="Enter password" name="password">
						    </div>
		                  <p class="text-center">
		                      <button type="submit" name="login" value="1" class="btn btn-success btn-large" style="padding-left:30px; padding-right:30px">Login</button>
		                  </p>
		                  </span>
		              </form>
				</div>
			 </div>
              <div class="margin-base-vertical">
                  
              </div>

          </div><!-- //main content -->
      </div><!-- //row -->
  </div> <!-- //container -->

</body>
</html>