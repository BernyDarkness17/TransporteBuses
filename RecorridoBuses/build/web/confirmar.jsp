<%@page import="model.Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
        <%Data d = new Data();%>
        <br><br><br>
        <img src="img/tun.png" class="rounded mx-auto d-block" alt="Responsive image">
        <div class="container">
            <div class="row justify-content-xl-center">
                <div class="col-md-6">
                    <br>
                    <div class="alert alert-danger" role="alert" style="background-color:#CF6853 ">
                        <center>
                            <% int id = Integer.parseInt(request.getParameter("id"));
                                int pagina = Integer.parseInt(request.getParameter("pagina"));
                            %>
                            <dt>
                                <h4 style="color:white">¿Esta seguro de eliminarlo de forma permanente del recorrido del Bus nº2?</h5>
                            </dt>
                        </center>
                        <br>
                        <div class="row">
                            <div class="col order-1">
                                <form action="eliminar.do" method="post">
                                    <input type="hidden" name="id" value="<%=id%>">
                                    <input type="hidden" name="pagina" value="<%=pagina%>">
                                    <button type="submit" class=" btn btn-danger btn-lg" style="width: 220px;background-color:#9F240B; color: white">Si</button>
                                </form>
                            </div>
                            <div class="col order-2">
                                <form action="bus<%=pagina%>.jsp">
                                    <button type="submit" class="btn btn-danger btn-lg" style="width: 220px;background-color:#9F240B; color: white">No</button>
                                </form>
                            </div>
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
    </style>
</html>


