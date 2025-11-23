<%@page import="app.tarefas.TarefasDAO"%>
<%@page import="java.util.List"%>
<%@page import="app.tarefas.TarefasBean"%>
<%@page import="app.config.PoolConexoes"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Lista de Tarefas</title>
        <link rel="stylesheet" href="./assets/css/style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    </head>
    
    <body>

    <h2>PROJETO-ESTUDO - PoolConexoes</h2>

    <table>
        <tr>
            <th>ID</th>
            <th>Título</th>
            <th>Prioridade</th>
            <th>Responsável</th>
            <th>Status</th>
            <th>Editar</th>
            <th>Excluir</th>
        </tr>
        
        <% 
            TarefasDAO dao = new TarefasDAO();
            List<TarefasBean> tarefas = dao.listarTarefas();
            
            for (TarefasBean tarefa : tarefas) { %>
                <tr style="border-bottom: 1px solid black;">
                    <td><%= tarefa.getId_tarefa() %></td>
                    <td><%= tarefa.getTitulo() %></td>
                    <td><%= tarefa.getPrioridade() %></td>
                    <td><%= tarefa.getResponsavel() %></td>
                    <td class="text-center"><%= tarefa.getStatus() %></td>
                    <td class="text-center"><i class="fa-solid fa-pen"></i></td>
                    <td class="text-center"><i class="fa-solid fa-trash"></i></td>
                </tr>
            <% } 
        %>

    </table>

    </body>
</html>
