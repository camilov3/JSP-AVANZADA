<%-- 
    Document   : Producto
    Created on : 4/02/2025, 7:37:26 a. m.
    Author     : Camilo
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <title>Lista de Productos</title>
    <style>
        body {
            background-color: #f0f0f0;
            font-family: Arial, sans-serif;
        }
        .card {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: box-shadow 0.3s ease;
        }
        .card:hover {
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }
        .btn {
            margin-top: 10px;
            transition: transform 0.2s ease;
        }
        .btn:hover {
            transform: translateY(-3px);
        }
        table {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: box-shadow 0.3s ease;
        }
        table:hover {
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }
        .btn-warning,
        .btn-danger {
            transition: background-color 0.3s ease;
        }
        .btn-warning:hover,
        .btn-danger:hover {
            background-color: #f0ad4e;
        }
    </style>
</head>
<body>
    <div class="d-flex">
        <div class="card col-sm-4">
            <div class="card-body">
                <form action="Controlador?menu=Producto" method="POST">
                    <div class="form-group">
                        <label>Nombres</label>
                        <input type="text" value="${producto.nom}" name="txtNombres" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Precio</label>
                        <input type="text" value="${producto.precio}" name="txtPrecio" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Stock</label>
                        <input type="text" value="${producto.stock}" name="txtStock" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Estado</label>
                        <input type="text" value="${producto.estado}" name="txtEstado" class="form-control">
                    </div>
                    <input type="submit" name="accion" value="Agregar" class="btn btn-info"> 
                    <input type="submit" name="accion" value="Actualizar" class="btn btn-success"> 
                </form>
            </div>
        </div>
        <div class="col-sm-8">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nombres</th>
                        <th>Precio</th>
                        <th>Stock</th>
                        <th>Estado</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="pr" items="${productos}">
                        <tr>
                            <td>${pr.id}</td>
                            <td>${pr.nom}</td>
                            <td>${pr.precio}</td>
                            <td>${pr.stock}</td>
                            <td>${pr.estado}</td>
                            <td>
                                <a class="btn btn-warning" href="Controlador?menu=Producto&accion=Editar&id=${pr.id}">Editar</a>
                                <a class="btn btn-danger" href="Controlador?menu=Producto&accion=Eliminar&id=${pr.id}">Eliminar</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
</body>
</html>
