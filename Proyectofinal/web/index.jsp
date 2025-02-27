<%-- 
    Document   : index
    Created on : 4/02/2025, 7:31:45 a. m.
    Author     : Camilo
--%>

<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
  <title>Formulario Login</title>
  <style>
     body {
    background-color: #f8f9fa;
    font-family: Arial, sans-serif;
  }

  .container {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
  }

  .card {
    background-color: #fff;
    border-radius: 15px;
    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
    width: 350px;
  }

  .card-body {
    padding: 40px;
  }

  h3 {
    color: #007bff;
    font-weight: bold;
    margin-bottom: 20px;
    text-align: center;
  }

  label {
    color: #495057;
  }

  input[type="text"],
  input[type="password"] {
    border-radius: 5px;
    border: 1px solid #ced4da;
    padding: 10px;
    margin-bottom: 20px;
    width: 100%;
  }

  input[type="submit"] {
    background-color: #007bff;
    border: none;
    border-radius: 5px;
    color: #fff;
    cursor: pointer;
    padding: 10px;
    transition: background-color 0.3s ease;
    width: 100%;
  }

  input[type="submit"]:hover {
    background-color: #0056b3;
  }

  img {
    display: block;
    margin: 0 auto 20px;
  }

  .form-group {
    text-align: center;
  }

  .form-group label {
    display: block;
    margin-bottom: 5px;
  }

  /* Animaciones */
  @keyframes fadeIn {
    0% {
      opacity: 0;
    }
    100% {
      opacity: 1;
    }
  }

  .card {
    animation: fadeIn 0.5s ease-in-out;
  }

  @keyframes slideIn {
    0% {
      transform: translateY(-20px);
      opacity: 0;
    }
    100% {
      transform: translateY(0);
      opacity: 1;
    }
  }

  input[type="text"],
  input[type="password"],
  input[type="submit"] {
    animation: slideIn 0.5s ease-in-out;
  }
  </style>
</head>
<body>
  <div class="container mt-4">
    <div class="card">
      <div class="card-body">
        <form class="form-sign" action="Validar" method="POST">
          <div class="form-group text-center">
            <h3>Login</h3>
            <img src="Imagenes/Ventas.jpg" alt="70" width="170"/>
            <label>Bienvenidos al Sistema</label>
          </div>
          <div class="form-group">
            <label>Usuario:</label>
            <input type="text" name="txtuser" class="form-control">
          </div>
          <div class="form-group">
            <label>Password:</label>
            <input type="password" name="txtpass" class="form-control">
          </div>
          <input type="submit" name="accion" value="Ingresar" class="btn btn-primary btn-block">
        </form>
      </div>
    </div>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
</body>
</html>