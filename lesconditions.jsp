<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Exercices JSP</title>
</head>
<body bgcolor="white">
    <h1>Conditions</h1>
    
    <h2>Comparaison entre deux valeurs</h2>
    <form action="#" method="post">
        <label for="valeur1">Saisir la valeur 1 : </label>
        <input type="text" id="valeur1" name="valeur1">
        <label for="valeur2">Saisir la valeur 2 : </label>
        <input type="text" id="valeur2" name="valeur2">
        <input type="submit" value="Comparer">
    </form>
    
    <% String valeur1 = request.getParameter("valeur1");
       String valeur2 = request.getParameter("valeur2");
       if (valeur1 != null && valeur2 != null && !valeur1.isEmpty() && !valeur2.isEmpty()) {
           int intValeur1 = Integer.parseInt(valeur1);
           int intValeur2 = Integer.parseInt(valeur2);
    %>
        <p>
            <% if (intValeur1 > intValeur2) { %>
                Valeur 1 est supérieure à Valeur 2.
            <% } else if (intValeur1 < intValeur2) { %>
                Valeur 1 est inférieure à Valeur 2.
            <% } else { %>
                Valeur 1 est égale à Valeur 2.
            <% } %>
        </p>
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
    <form action="#" method="post">
        <label for="nombre">Saisir un nombre : </label>
        <input type="text" id="nombre" name="nombre">
        <input type="submit" value="Vérifier">
    </form>
    
    <% String nombreStr = request.getParameter("nombre");
       if (nombreStr != null && !nombreStr.isEmpty()) {
           int nombre = Integer.parseInt(nombreStr);
    %>
        <p>
            <% if (nombre % 2 == 0) { %>
                Le nombre <%= nombre %> est pair.
            <% } else { %>
                Le nombre <%= nombre %> est impair.
            <% } %>
        </p>
    <% } %>
    
    <p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
