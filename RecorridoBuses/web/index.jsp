<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Buses Tuniche</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>

    <body>
        <br><br><br><br><br><br>
        <img src="img/tun.png" class="rounded mx-auto d-block" alt="Responsive image">
        <div class="container">
            <div class="row justify-content-xl-center">
                <div class="col-md-8">
                    <br>
                    <div class="alert alert-sucess" role="alert" style="background-color:#398A49 ">
                        <center><dt><h4 style="color:white">Servicio de Buses de acercamiento</h4></dt></center>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col">
                            <form action="bus1.jsp">
                                <button type="submit" class=" btn btn-success btn-lg" style="width: 220px;background-color:#0B4D03; color: white">Bus n°1</button>
                            </form>
                        </div>
                        <div class="col order-1">
                            <form action="bus2.jsp">
                                <button type="submit" class="btn btn-success btn-lg" style="width: 220px;background-color:#0B4D03; color: white">Bus n°2</button>
                            </form>
                        </div>
                        <div class="col order-2">
                            <form action="bus3.jsp">
                                <button type="submit" class="btn btn-success btn-lg" style="width: 220px; background-color:#0B4D03; color: white">Bus n°3</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <style>
        body{
            background-image: url("img/paisaje.jpg");   
            background-size: cover; 
        }
        #img{
            filter: blur(6px);
        }
    </style>
</html>

