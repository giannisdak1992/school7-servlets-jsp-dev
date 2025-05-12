<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setHeader("Expires", "0");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <script src="https://cdn.tailwindcss.com"></script>
        <script>
          tailwind.config = {
            theme: { extend: {} },
          }
        </script>
</head>
<body class="bg-gray-50 min-h-screen flex flex-col">
	<%@ include file="header.jsp"%>
        <div class = "flex flex-1 bg-gray-100">
            <div class="w-full md:w-1/2 max-w-sm mx-auto mt-10 bg-white p-8 rounded-md shadow-lg border border-gray-300">
                        <div class="container">
                            <div class="flex flex-col mb-6">
                                <h1 class="text-2xl font-bold mb-6 text-center text-[hsl(210,80%,60%)]">Login</h1>
                                <div class= "text-red-600">${error}</div>
                                 <c:if test="${requestScope.isError == 'true'}">
                                    <div class="mb-4 p-3 bg-red-100 border border-red-300 text-red-700 text-sm rounded-md">Login Error</div>
                                 </c:if>
                            </div>

                            <form method="POST" action="${pageContext.request.contextPath}/login">
                                <div class="mb-6">
                                    <label for="name" class="block text-sm font-medium text-gray-700 mb-1">Username</label>
                                    <input type="email" class="mt-1 block w-full px-4 py-2 border border-gray-300 rounded-md shadow-sm focus:ring-red-500 focus:border-blue-500" id="username" name="username" required placeholder="Username">
                                </div>
                                <div class="mb-6">
                                    <label for="name" class="block text-sm font-medium text-gray-700 mb-1">Password</label>
                                    <input type="password" class="mt-1 block w-full px-4 py-2 border border-gray-300 rounded-md shadow-sm focus:ring-red-500 focus:border-blue-500" name="password" required placeholder="Password">
                                    <span></span>
                                </div>
                                <div class="mb-6">
                                    <button type="submit" class="mt-6 w-full py-2 bg-blue-600 text-white rounded-md hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:ring-opacity-50" >Sign In</button>
                                </div>
                            </form>
                            <div class="text-right mt-4">
                                <a href="#" class="text-sm text-blue-500 hove:underline">Lost your password?</a>
                            </div>
                        </div>
                        <div class="mt-6 text-center text-sm text-gray-600">
                            <p>Don't have an account? <a href="${pageContext.request.contextPath}/register">Sign up here!</a></p>
                        </div>
                    </div>
        </div>


    <%@include file="footer.jsp"%>
</body>
</html>