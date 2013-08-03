<#assign s=JspTaglibs["/WEB-INF/struts-tags.tld"] />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/jquery.nailthumb.1.1.min.css" />

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.nailthumb.1.1.min.js"></script>
<script type="text/javascript" src="js/jquery.validate.min.js"></script>
</head>
<style>
.bs-callout {
padding: 15px 30px 15px 15px;
border-left: 5px solid #eee;
}

.bs-callout-warning {
background-color: #fefbed;
border-color: #f1e7bc;
}

.bs-callout-info {
background-color: #f0f7fd;
border-color: #d0e3f0;
}

.bs-callout-danger {
background-color: #fcf2f2;
border-color: #dFb5b4;
}
</style>



<script>
$().ready(
	function() {$("#categoryForm").validate(
	{
		rules:
		{

			"categoryName":
			{
				required:true,
			}
		},
		messages:
		{
			"categoryName":
			{
				required:"please input category name"
			}
		},
		errorLabelContainer:"#messageBox",
		errorElement:"div",
		onfocusout: false,
		onkeyup: false,
		focusCleanup: true,
		focusInvalid: false,
		wrapper:"li",
		showErrors:function(errorMap,errorList) {
	        $("#summary").text("Your form contains " + this.numberOfInvalids() + " errors,see details below.");		        
			this.defaultShowErrors();
			if (this.numberOfInvalids()>0)
			{
				$('#myModal').modal('show');
			}
		}
	}
	)
	}
);

$().ready(
	function() {$("#specForm").validate(
	{
		rules:
		{

			"specName":
			{
				required:true,
			}
		},
		messages:
		{
			"specName":
			{
				required:"please input spec name"
			}
		},
		errorLabelContainer:"#messageBox",
		errorElement:"div",
		onfocusout: false,
		onkeyup: false,
		focusCleanup: true,
		focusInvalid: false,
		wrapper:"li",
		showErrors:function(errorMap,errorList) {
	        $("#summary").text("Your form contains " + this.numberOfInvalids() + " errors,see details below.");		        
			this.defaultShowErrors();
			if (this.numberOfInvalids()>0)
			{
				$('#myModal').modal('show');
			}
		}
	}
	)
	}
);



jQuery(document).ready(function() {
    jQuery('.nailthumb-container ').nailthumb({width:100,height:100});
});
</script>
<body>
<div class="modal fade" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4 class="modal-title" id="summary">Modal title</h4>
        </div>
        <div class="modal-body">
          <div id="messageBox"></div>
        </div>
        <div class="modal-footer">

          <a href="#" class="btn btn-default" data-dismiss="modal">Close</a>
        </div>
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div><!-- /.modal -->

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
	  <a href="#" class="list-group-item">Product management
	  </a>
	  <a href="#" class="list-group-item">Category/Spec/Type management
	  </a>
	  <a href="#" class="list-group-item">Porta ac consectetur ac
	  </a>
	  <a href="#" class="list-group-item">Vestibulum at eros
	  </a>
	</div>
	</div>
			<div class="col-lg-8">
				<div class="bs-callout bs-callout-info">
			      <h4>Need more examples?</h4>
			      <p>We dive into more grid layouts in a separate page, free of chrome and documentation to better show you the power of the grid.</p>
			      <p><a class="btn btn-danger" target="_blank" href="http://examples.getbootstrap.com/grid/">More grid examples</a></p>
			    </div>
			</div>
		</div>
	</div>
	
</body>
</html>