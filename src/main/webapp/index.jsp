<!DOCTYPE html>
<%@page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*, java.text.*" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%!
    String VisitorsCount() {

        int count = 0;

        String path = "infoLaba5.txt";
        File file = new File(path);
        try {
            Scanner scanner = new Scanner(file);
            count = scanner.nextInt();
            scanner.close();
        } catch (FileNotFoundException ex) {
        }
        count++;
        try {
            Writer writer = new FileWriter(file);
            writer.write(String.valueOf(count));
            writer.close();
        } catch (IOException ex) {
        }
        return String.valueOf(count);
    }

    String getDate() {
        SimpleDateFormat sdf = new SimpleDateFormat("dd.MM.yyyy EEEE HH:mm:ss", new Locale("ru"));
        return sdf.format(new Date());
    }
%>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Laba5</title>
    <link rel="stylesheet" href="style.css"/>
</head>
<body>
<div style="align-content: center; text-align: center;">
    <h2>Лабораторная работа №5. Вариант 8.</h2>
    <h2>Выполнил Чапаев Илья.</h2>
    <h2>Текущие время и дата <%=getDate()%>
    </h2>
    <h2>Суммарное количество посещений: <%= VisitorsCount() %>
    </h2>
    <h2>
        <img src="images/dateAndTime.jpg" alt="Date and time"
             style="width:40%;height: 40%">
    </h2>
</div>
</body>
</html>
