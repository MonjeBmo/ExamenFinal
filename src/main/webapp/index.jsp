<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Formulario de Estudiante</title>
    <style>
        body {
            font-family: "Arial", sans-serif;
            background-color: #333;
            color: #fff;
            margin: 20px;
        }

        h2 {
            color: #ddd;
        }

        form {
            background-color: #444;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(255, 255, 255, 0.1);
            max-width: 600px;
            margin: 0 auto;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #ddd;
        }

        input {
            width: calc(100% - 16px);
            padding: 10px;
            margin-bottom: 16px;
            box-sizing: border-box;
            border: 1px solid #666;
            border-radius: 4px;
            background-color: #555;
            color: #fff;
        }

        table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
        }

        th,
        td {
            border: 1px solid #666;
            padding: 10px;
            text-align: left;
            background-color: #444;
        }

        th {
            background-color: #333;
        }

        button {
            background-color: #1a8b24;
            color: #fff;
            padding: 12px 24px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-right: 10px;
        }

        button[type="reset"] {
            background-color: #b3241a;
        }
    </style>
</head>
<body>
<form action="destino.jsp" method="post">
    <!-- Información del Estudiante -->
    <label for="carnet">No. Carné:</label>
    <input type="text" id="carnet" name="carnet" required/>

    <label for="nombres">Nombres:</label>
    <input type="text" id="nombres" name="nombres" required/>

    <label for="apellidos">Apellidos:</label>
    <input type="text" id="apellidos" name="apellidos" required/>

    <label for="edad">Edad:</label>
    <input type="number" id="edad" name="edad" required/>

    <label for="fechaNacimiento">Fecha de Nacimiento:</label>
    <input type="date" id="fechaNacimiento" name="fechaNacimiento" required/>

    <label for="grado">Grado:</label>
    <input type="text" id="grado" name="grado" required/>

    <!-- Notas de 3 cursos para 4 bimestres -->
    <h3>Notas de 4 Bimestres para 3 Cursos</h3>

    <table>
        <tr>
            <th>Curso</th>
            <th>Bimestre 1</th>
            <th>Bimestre 2</th>
            <th>Bimestre 3</th>
            <th>Bimestre 4</th>
        </tr>
        <tr>
            <td>Programacion</td>
            <td><input type="number" name="curso1_b1" required/></td>
            <td><input type="number" name="curso1_b2" required/></td>
            <td><input type="number" name="curso1_b3" required/></td>
            <td><input type="number" name="curso1_b4" required/></td>
        </tr>
        <tr>
            <td>Calculo</td>
            <td><input type="number" name="curso2_b1" required/></td>
            <td><input type="number" name="curso2_b2" required/></td>
            <td><input type="number" name="curso2_b3" required/></td>
            <td><input type="number" name="curso2_b4" required/></td>
        </tr>
        <tr>
            <td>Estadistica I</td>
            <td><input type="number" name="curso3_b1" required/></td>
            <td><input type="number" name="curso3_b2" required/></td>
            <td><input type="number" name="curso3_b3" required/></td>
            <td><input type="number" name="curso3_b4" required/></td>
        </tr>
    </table>

    <!-- Botones de Envío y Borrado -->
    <br/>
    <button type="submit">Enviar Datos</button>
    <button type="reset">Borrar Datos</button>
</form>
</body>
</html>
