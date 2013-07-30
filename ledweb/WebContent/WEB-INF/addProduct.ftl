<#assign s=JspTaglibs["/WEB-INF/struts-tags.tld"] />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>
<body>



<div class="navbar navbar-fixed-top">
  <div class="container">
    <a href="../" class="navbar-brand">Bootstrap 3 RC1</a>
    <button class="navbar-toggle" type="button" data-toggle="collapse">
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
    <div class="nav-collapse collapse bs-navbar-collapse">
      <ul class="nav navbar-nav">
        <li>
          <a href="../getting-started">Getting started</a>
        </li>
        <li>
          <a href="../css">CSS</a>
        </li>
        <li class="active">
          <a href="../components">Components</a>
        </li>
        <li>
          <a href="../javascript">JavaScript</a>
        </li>
        <li>
          <a href="../customize">Customize</a>
        </li>
      </ul>
    </div>
  </div>
</div>


<div class="row" style="padding-top:70px">
<div class="col-lg-1"></div>
  <div class="col-lg-2">

  <div class="list-group"  style="background-color:#f5f5f5">
  <a href="#" class="list-group-item active">
    Cras justo odio
  </a>
  <a href="#" class="list-group-item">Dapibus ac facilisis in
  </a>
  <a href="#" class="list-group-item">Morbi leo risus
  </a>
  <a href="#" class="list-group-item">Porta ac consectetur ac
  </a>
  <a href="#" class="list-group-item">Vestibulum at eros
  </a>
</div>

	</div>
  <div class="col-lg-8">
	<div class="well">
		<form class="AddProduct.action" method="post">
		
		 <fieldset>
    	<legend>Add product</legend>
    	
    	<div class="row">
    	<div class="col-lg-1"></div>
    	<div class="col-lg-10">
    	    <div class="panel panel-info">
     <div class="panel-heading">
	    <h3 class="panel-title">Basic Info</h3>
	  </div>
    
    <div class="form-group">
      <label for="exampleInputEmail">Product Title</label>
      <input type="text" name="product.productName" class="form-control" id="exampleInputEmail" placeholder="Product Title" value=""/>
    </div>
    
    <div class="row">
    <div class="col-lg-6">
    <div class="form-group">
      <label for="exampleInputEmail">Product Category</label>
      <select class="form-control">
          <option value="">Default select</option>
        </select>
    </div>
    </div>
    <div class="col-lg-6">
    <div class="form-group">
      <label for="exampleInputEmail">Product Price</label>
      <input type="text" class="form-control" id="exampleInputEmail" name="product.price" placeholder="Product Price">
    </div>
    </div>
    </div>
    <div class="form-group">
      <label for="exampleInputPassword">Product Description</label>
      <textarea class="form-control" rows="3" name="product.productDesc" placeholder="Product Description"></textarea>
    </div>
       
	    <div class="form-group">
	      <label for="exampleInputFile">Product Image</label>
	      <input type="file" id="exampleInputFile" name="product.productImage">
	    </div>
   
    </div>
    <div class="panel panel-success">
         <div class="panel-heading ">
	    <h3 class="panel-title">Select Specs</h3>
	  </div>
<div class="row">
  <div class="col-lg-3">
      <div class="form-group">
      <div class="checkbox">
      <label>
        <input type="checkbox"> Check me out
      </label>
    </div>
      <input type="text" class="form-control input-small" id="exampleInputEmail" placeholder="Enter email">
    </div>
    
  </div>
  <div class="col-lg-3">
      <div class="form-group">
      <div class="checkbox">
      <label>
        <input type="checkbox"> Check me out
      </label>
    </div>
      <input type="text" class="form-control input-small" id="exampleInputEmail" placeholder="Enter email">
    </div>
    
  </div>
  <div class="col-lg-3">
      <div class="form-group">
      <div class="checkbox">
      <label>
        <input type="checkbox"> Check me out
      </label>
    </div>
      <input type="text" class="form-control input-small" id="exampleInputEmail" placeholder="Enter email">
    </div>
    
  </div>
  <div class="col-lg-3">
      <div class="form-group">
      <div class="checkbox">
      <label>
        <input type="checkbox"> Check me out
      </label>
    </div>
      <input type="text" class="form-control input-small" id="exampleInputEmail" placeholder="Enter email">
    </div>
  </div>
</div>

<div class="row">
  <div class="col-lg-3">
      <div class="form-group">
      <div class="checkbox">
      <label>
        <input type="checkbox"> Check me out
      </label>
    </div>
      <input type="text" class="form-control input-small" id="exampleInputEmail" placeholder="Enter email">
    </div>
    
  </div>
  <div class="col-lg-3">
      <div class="form-group">
      <div class="checkbox">
      <label>
        <input type="checkbox"> Check me out
      </label>
    </div>
      <input type="text" class="form-control input-small" id="exampleInputEmail" placeholder="Enter email">
    </div>
  </div>
</div>


</div>

	    <div class="panel panel-warning">
             <div class="panel-heading">
	    <h3 class="panel-title">Select Types</h3>
	  </div>
	<div class="row">
		 <div class="col-lg-12">
		<label class="checkbox-inline">
		  <input type="checkbox" id="inlineCheckbox1" value="option1"> asdfasf safasdf
		</label>
		<label class="checkbox-inline">
		  <input type="checkbox" id="inlineCheckbox2" value="option2"> asfasf safdasd
		</label>
		<label class="checkbox-inline">
		  <input type="checkbox" id="inlineCheckbox3" value="option3"> asfasd fasdfas
		</label>
		</div>
	</div>
	</div>

    <button type="submit" name="isSubmit" value="submit" class="btn btn-primary pull-right">Submit</button>
    </div>
    </div>
  </fieldset>
</form>
</div> 
</div>
</body>
</html>