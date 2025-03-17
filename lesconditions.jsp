<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>les conditions</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les conditions</h1>
<form action="#" method="post">
    <p>Saisir la valeur 1 : <input type="text" id="inputValeur" name="valeur1">
    <p>Saisir la valeur 2 : <input type="text" id="inputValeur" name="valeur2">
    <p><input type="submit" value="Afficher">
</form>
<%-- Récupération des valeurs --%>
    <% String valeur1 = request.getParameter("valeur1"); %>
    <% String valeur2 = request.getParameter("valeur2"); %>

    <%-- Vérification de la condition entre les deux valeurs --%>
    <% if (valeur1 != null && valeur2 != null) { %>
        <%-- Conversion des valeurs en entiers pour la comparaison --%>
        <% int intValeur1 = Integer.parseInt(valeur1); %>
        <% int intValeur2 = Integer.parseInt(valeur2); %>
        
        <%-- Condition if pour comparer les valeurs --%>
        <% if (intValeur1 > intValeur2) { %>
            <p>Valeur 1 est supérieure à Valeur 2.</p>
        <% } else if (intValeur1 < intValeur2) { %>
            <p>Valeur 1 est inférieure à Valeur 2.</p>
        <% } else { %>
            <p>Valeur 1 est égale à Valeur 2.</p>
        <% } %>
   
    
        <h2>Exercice 1 : Comparaison 1</h2>
        <form action="#" method="post">
            <label for="a">Valeur A : </label>
            <input type="text" id="a" name="a">
            <label for="b">Valeur B : </label>
            <input type="text" id="b" name="b">
            <label for="c">Valeur C : </label>
            <input type="text" id="c" name="c">
            <input type="submit" value="Vérifier">
        </form>
        
        <% String aStr = request.getParameter("a");
           String bStr = request.getParameter("b");
           String cStr = request.getParameter("c");
           if (aStr != null && bStr != null && cStr != null && !aStr.isEmpty() && !bStr.isEmpty() && !cStr.isEmpty()) {
               int a = Integer.parseInt(aStr);
               int b = Integer.parseInt(bStr);
               int c = Integer.parseInt(cStr);
        %>
            <p>
                <% if (c >= a && c <= b) { %>
                    Oui, C est compris entre A et B.
                <% } else { %>
                    Non, C n'est pas compris entre A et B.
                <% } %>
            </p>
        <% } %>
        
<h2>Exercice 2 : Pair ou Impair ?</h2>
<p>Écrivez un programme pour vérifier si un nombre est pair ou impair en utilisant une structure if</p>

<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
