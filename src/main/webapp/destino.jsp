<%-- Created by IntelliJ IDEA. User: monje Date: 11/15/2023 Time: 3:09 PM To
change this template use File | Settings | File Templates. --%>
<%@ page
        language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Procesar Datos</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #333;
            color: #fff;
            margin: 20px;
        }

        h2 {
            color: #ddd;
        }

        p {
            margin: 5px 0;
        }

        .card {
            background-color: #444;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(255, 255, 255, 0.1);
            margin: 20px auto;
            max-width: 800px;
        }

        table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        th,
        td {
            border: 1px solid #666;
            padding: 8px;
            text-align: left;
            background-color: #555;
        }

        th {
            background-color: #333;
        }

        button {
            background-color: #33B2FF;
            color: #fff;
            padding: 12px 24px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-right: 10px;
        }
    </style>
</head>
<body>
<div class="card">
    <h2>Datos </h2>

    <% String carnet = request.getParameter("carnet"); %>
    <% String nombres = request.getParameter("nombres"); %>
    <% String apellidos = request.getParameter("apellidos"); %>
    <% int edad = Integer.parseInt(request.getParameter("edad")); %>
    <% String fechaNacimiento = request.getParameter("fechaNacimiento"); %>
    <% String grado = request.getParameter("grado"); %>

    <p><strong>No. Carné:</strong> <%= carnet %>
    </p>
    <p><strong>Nombres:</strong> <%= nombres %>
    </p>
    <p><strong>Apellidos:</strong> <%= apellidos %>
    </p>
    <p><strong>Edad:</strong> <%= edad %>
    </p>
    <p><strong>Fecha de Nacimiento:</strong> <%= fechaNacimiento %>
    </p>
    <p><strong>Grado:</strong> <%= grado %>
    </p>

    <h3>Promedio:</h3>

    <table border="1">
        <tr>
            <th>Curso</th>
            <th>Promedio</th>
        </tr>
        <tr>
            <td>Programacion</td>

            <td><%= (Integer.parseInt(request.getParameter("curso1_b1"))
                    + Integer.parseInt(request.getParameter("curso1_b2"))
                    + Integer.parseInt(request.getParameter("curso1_b3"))
                    + Integer.parseInt(request.getParameter("curso1_b4"))) / 4 %>
            </td>
        </tr>
        <tr>
            <td>Calculo</td>
            <td><%= (Integer.parseInt(request.getParameter("curso2_b1"))
                    + Integer.parseInt(request.getParameter("curso2_b2"))
                    + Integer.parseInt(request.getParameter("curso2_b3"))
                    + Integer.parseInt(request.getParameter("curso2_b4"))) / 4 %>
            </td>
        </tr>
        <tr>
            <td>Estadistica I</td>
            <td><%= (Integer.parseInt(request.getParameter("curso3_b1"))
                    + Integer.parseInt(request.getParameter("curso3_b2"))
                    + Integer.parseInt(request.getParameter("curso3_b3"))
                    + Integer.parseInt(request.getParameter("curso3_b4"))) / 4 %>
            </td>
        </tr>
    </table>
    <button type="button" onclick="history.back()">Regresar</button>
</div>
</body>
</html>
