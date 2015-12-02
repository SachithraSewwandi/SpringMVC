<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en" ng-app="myapp">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <link rel="stylesheet" href=<c:url value="resources/css/bootstrap.min.css"/>>
    <link rel="stylesheet" href=<c:url value="resources/css/main.css"/>>
    <script type="text/javascript" src="<c:url value="resources/js/angular.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="resources/js/jquery.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="resources/js/bootstrap.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="resources/js/app.js"/>"></script>
    <!--script type="text/javascript" src="../server.js"></script-->
    <title>eLocalGoverment</title>

</head>
<body>

<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

            <a class="navbar-brand" href="#">ElG</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">Home </a></li>
                <li><a href="#">About US</a></li>
            </ul>

            <ul class="nav navbar-nav navbar-right form-group">
                <li><a href="#">sewwandisachithra@gmail.com</a></li>

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Language <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Sinhala</a></li>
                        <li><a href="#">Tamil</a></li>
                    </ul>
                </li>

                <!--<li >
                    <a href="#" class="glyphicon glyphicon-share-alt" aria-hidden="true">Sing Out</a>
                </li>-->

                <button type="button" class="btn btn-link "style="margin-top: 9px">
                    <span class="glyphicon glyphicon-star" aria-hidden="true"></span> Sign Out
                </button>



            </ul>


        </div><!-- /.navbar-collapse -->

    </div><!-- /.container-fluid -->
</nav>

<div class="col-md-2" ng-controller="sidebarCntrl">

    <h3 class="text-center">eLG Products</h3>
    <h5><a ng-model="unAll" ng-click="uncheckAll()">Collapse all </a>
        <a ng-model="cAll" ng-click="checkAll()">Expand all </a>
    </h5>

    <div class=" row col-lg-offset-1">
        <li  class="list-unstyled" ng-repeat="item in items">
            <div>
                <input   ng-model="item.selected" type=checkbox> {{item.name}}
                <div ng-show=item.selected>
                    <ul>
                        <li class="list-unstyled" ng-repeat="subItem in item.sub"><a>{{subItem.name}}</a></li>
                    </ul>
                </div>
            </div>
        </li>
    </div>


</div>

<div class="col-md-10" ng-controller="FormCtrl1">
    <br><br>
    <ul class="list-group">
        <li class="list-group-item"><h4>External.User.Registration.Heading</h4></li>
        <li class="list-group-item">

            <form:form name="frm"  modelAttribute="customer" action="customer" method="POST">

                <div class="row form-group">
                    <div class="col-md-3 ">
                        <label class="control-label pull-right">Type</label>
                    </div>
                    <div class="col-md-4 row">
                        <div class="btn-group btn-input clearfix" >
                            <form:select class="form-control" path="type">

                                <option ng-repeat="typ in type" >{{typ}}</option>
                            </form:select>

                        </div>
                    </div>

                </div>

                <div class="row form-group" >
                    <div class="col-md-3 ">
                        <label class="control-label pull-right" >Name of User in English</label>
                    </div>
                    <div class="col-md-4 row">
                        <form:input type="text" class="form-control" path="nameEnglish" />
                    </div>
                </div>

                <div class="row form-group" >
                    <div class="col-md-3 ">
                        <label class="control-label pull-right" >Name of User in Sinhala</label>
                    </div>
                    <div class="col-md-4 row">
                        <form:input type="text" class="form-control"  path="nameSinhala" />
                    </div>
                </div>

                <div class="row form-group" >
                    <div class="col-md-3 ">
                        <label class="control-label pull-right" >Name of User in Tamil</label>
                    </div>
                    <div class="col-md-4 row">
                        <form:input type="text" class="form-control"  path="nameTamil"/>
                    </div>
                </div>

                <div class="row form-group" >
                    <div class="col-md-3 ">
                        <label class="control-label pull-right" >NIC</label>
                    </div>
                    <div class="col-md-4 row">
                        <form:input type="text" class="form-control"  path="NIC" />
                    </div>
                </div>


                <div class="row form-group">
                    <div class="col-md-3"></div>
                    <div class="col-md-4">
                        <div class="checkbox" >
                            <label>
                                <form:input type="checkbox" path="active" /> Active
                            </label>
                        </div>
                    </div>
                </div>



                <div class="row form-group" >
                    <div class="col-md-3 ">
                        <label class="control-label pull-right" >User Name</label>
                    </div>
                    <div class="col-md-4 row">
                        <form:input type="text" class="form-control"  path="user"/>
                    </div>
                </div>

                <div class="row form-group" >
                    <div class="col-md-3 ">
                        <label class="control-label pull-right" >Password</label>
                    </div>
                    <div class="col-md-4 row">
                        <form:input type="password" name="password" id="password" class="form-control"  path="password"  />
                    </div>
                </div>

                <div class="row form-group" >
                    <div class="col-md-3 ">
                        <label class="control-label pull-right" >Confirmation of the Password</label>
                    </div>
                    <div class="col-md-4 row">
                        <form:input type="password"  class="form-control"   path="confpassword" />
                    </div>
                </div>





                <div class="row form-group">
                    <!--<div class="col-md-5"></div>-->
                    <div class="col-md-3 ">
                        <label class="control-label pull-right">Duty Start Date</label>
                    </div>
                    <div class="col-md-4 row">
                        <form:input type="text" class="form-control" path="startDate"/>
                    </div>
                </div>

                <div class="row form-group">
                    <div class="col-md-3 ">
                        <label class="control-label pull-right">Registration Date</label>
                    </div>
                    <div class="col-md-4 row">
                        <form:input type="text" class="form-control" path="regDate" />
                    </div>
                </div>

                <div class="row form-group">
                    <div class="col-md-7"></div>
                    <button type="submit" class="btn btn-default " >Submit</button>
                </div>


            </form:form>


        </li>
    </ul>



</div>


</body>
</html>