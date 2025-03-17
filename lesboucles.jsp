<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Boucles</title>
</head>
<body bgcolor="white">
    <h1>Exercices sur les boucles</h1>
    <form action="#" method="post">
        <label for="inputValeur">Saisir le nombre d'étoiles : </label>
        <input type="text" id="inputValeur" name="valeur">
        <input type="submit" value="Afficher">
    </form>

    <% String valeur = request.getParameter("valeur"); %>
    <% if (valeur != null && !valeur.isEmpty()) { %>
        <% int n = Integer.parseInt(valeur); %>
        
        <h2>Exercice 1 : Le carré d'étoiles</h2>
        <% for (int i = 0; i < n; i++) { %>
            <p>
            <% for (int j = 0; j < n; j++) { %>
                *
            <% } %>
            </p>
        <% } %>

        <h2>Exercice 2 : Triangle rectangle gauche</h2>
        <% for (int i = 1; i <= n; i++) { %>
            <p>
            <% for (int j = 0; j < i; j++) { %>
                *
            <% } %>
            </p>
        <% } %>

        <h2>Exercice 3 : Triangle rectangle inversé</h2>
        <% for (int i = n; i > 0; i--) { %>
            <p>
            <% for (int j = 0; j < i; j++) { %>
                *
            <% } %>
            </p>
        <% } %>

        <h2>Exercice 4 : Triangle rectangle aligné à droite</h2>
        <% for (int i = 1; i <= n; i++) { %>
            <p>
            <% for (int j = 0; j < n - i; j++) { %>
                &nbsp;
            <% } %>
            <% for (int k = 0; k < i; k++) { %>
                *
            <% } %>
            </p>
        <% } %>

        <h2>Exercice 5 : Triangle isocèle</h2>
        <% for (int i = 1; i <= n; i++) { %>
            <p>
            <% for (int j = 0; j < n - i; j++) { %>
                &nbsp;
            <% } %>
            <% for (int k = 0; k < i; k++) { %>
                *
            <% } %>
            </p>
        <% } %>

        <h2>Exercice 6 : Le demi losange</h2>
        <% for (int i = 1; i <= n; i++) { %>
            <p>
            <% for (int j = 0; j < n - i; j++) { %>
                &nbsp;
            <% } %>
            <% for (int k = 0; k < i; k++) { %>
                *
            <% } %>
            </p>
        <% } %>
        <% for (int i = n; i > 0; i--) { %>
            <p>
            <% for (int j = 0; j < n - i; j++) { %>
                &nbsp;
            <% } %>
            <% for (int k = 0; k < i; k++) { %>
                *
            <% } %>
            </p>
        <% } %>

        <h2>Exercice 7 : La table de multiplication</h2>
        <% for (int i = 1; i <= 10; i++) { %>
            <p><%= n %> x <%= i %> = <%= n * i %></p>
        <% } %>
    <% } %>
    <p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
