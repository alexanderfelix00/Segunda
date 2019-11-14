<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sitema CRUD</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>

    <body>

        <div class="container mt-4">
            <div class="cad border-info">
                <div class="card-header bg-info text-white">
                    <a class="btn btn-light" href="agregar.htm">Nuevo Registro</a>
                </div>
            </div><br>
            <form class="form-inline float-right" action="buscar.htm">
                <input type="search" name="txtBuscar" class="form-control">
                <input type="submit" value="buscar" class="btn btn-primary">
            </form><br><br>
            
                <div class="card-boby">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>NOMBRES</th>
                                <th>CORREO</th>
                                <th>NACIONALIDAD</th>
                                <th>ACCIONES</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="registro" items="${requestScope.Lista}">
                                <tr>
                                    <td>${registro.id}</td>
                                    <td>${registro.nombre}</td>
                                    <td>${registro.correo}</td>
                                    <td>${registro.nacionalidad}</td>
                                    <td>
                                        <a class="btn btn-warning" href="editar.htm?id=${registro.id}">Editar</a>
                                        <a class="btn btn-danger" href="eliminar.htm?id=${registro.id}">Eliminar</a>
                                    </td>

                                </tr>
                            </c:forEach>
                        </tbody>

                    </table>
                </div>
            </div>

        </div>



    </body>
</html>
