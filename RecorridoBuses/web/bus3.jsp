<%@page import="model.Trabajador2"%>
<%@page import="model.Trabajador"%>
<%@page import="model.Comuna"%>
<%@page import="model.Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <%Data d = new Data();%>
        <br><br>
        <img src="img/tun.png" class="rounded mx-auto d-block" alt="Responsive image">
        <div class="container">
            <div class="row justify-content-xl-center">
                <div class="col-md-12">
                    <br><br>
                    <div class="alert" style="background-color:#D3C2EB" role="alert">
                        <a class="alert-link" style="color: #441A7E;">Datos del Trabajador_______________________________________________________________________________________</a>
                        <a href="index.jsp" style="color:#441A7E;">Volver a inicio</a>
                        <form action="crear.do" method="post"><p></p>
                            <div class="form-row">
                                <div class="col">
                                    <input name="txtRut" type="text" class="form-control" placeholder="Ingrese RUT">
                                </div>
                                <div class="col">
                                    <input name="txtNombre" type="text" class="form-control" placeholder="Ingrese Nombre:">
                                </div>
                                <div class="col">
                                    <input name="txtApellido" type="text" class="form-control" placeholder="Apellido:">
                                </div>
                                <div class="col">
                                    <select name="cmbComunas" id="inputState" class="form-control">
                                        <% for (Comuna c : d.getComunasBus3()) {%>
                                        <option value="<%=c.getId()%>"><%=c.getNombre()%></option>
                                        <%}%>
                                    </select>
                                </div>
                                <div class="col">
                                    <input name="txtDireccion" type="text" class="form-control" placeholder="Ingrese direccion">
                                </div>
                                <input type="hidden" value="3" name="Bus">
                            </div>
                            <br>
                            <button style="background-color:#441A7E; color: white;" type="submit" class="btn btn-lg btn-block">Registrar</button>
                        </form>
                    </div>
                    <table class="table table-striped table-dark">
                        <thead>
                            <tr>
                                <th style="background-color:#441A7E" scope="col">#</th>
                                <th style="background-color:#441A7E" scope="col">RUT</th>
                                <th style="background-color:#441A7E" scope="col">Nombre</th>
                                <th style="background-color:#441A7E" scope="col">Apellido</th>
                                <th style="background-color:#441A7E" scope="col">Comuna</th>
                                <th style="background-color:#441A7E" scope="col">Direccion</th>
                                <th style="background-color:#441A7E" scope="col">Opcion..</th>
                            </tr>
                        </thead>
                        <tbody>                            
                            <%for (Trabajador2 t : d.getTrabajadoresBus3()) {%>
                            <tr>
                                <th><%=t.getId()%></th>
                                <td><%=t.getRut()%></td>
                                <td><%=t.getNombre()%></td>
                                <td><%=t.getApellido()%></td>
                                <td><%=t.getFk_comuna()%></td>
                                <td><%=t.getDireccion()%></td>
                                <td>
                                    <form action="confirmar.jsp" method="post">
                                        <input type="hidden" value="<%=t.getId()%>" name="id">
                                        <input type="hidden" value="3" name="pagina">
                                        <button style="background-color:#5C6210;color:white" type="submit" class="btn btn-warning">Eliminar</button>
                                    </form>
                                <td>
                            </tr>
                            <%}%>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
    <style>
        body{
            background-image: url("img/bus_n3.jpg");   
            background-size: cover; 
        }
    </style>
</html>
