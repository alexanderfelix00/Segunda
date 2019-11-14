<%-- 
    Document   : editar
    Created on : 07/10/2019, 10:09:56 AM
    Author     : Administrador
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar</title>
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <div class="container mt-4 col-lg-4">
            <div class="cad border-info">
                <div class="card-header bg-info ">
                    <h4>Actualizar registro</h4>
                </div>
                <div class="card-boby">
                    <form method="post">
                        <label>Nombre</label>
                        <input type="text" name="nombre" class="form-control"value="${lista[0].nombre}">
                            <label>Correo</label>
                        <input type="text" name="correo" class="form-control" value="${lista[0].correo}">
                            <label>Nacionalidad</label>
                        <input type="text" name="nacionalidad" class="form-control" value="${lista[0].nacionalidad}">
                        
                        <input type="submit" value="Actualizar" class="btn btn-success">
                               <a href="index.htm">Regresar</a>
                        
                    </form>
                </div>
            </div>

        </div>
    </body>
</html>
