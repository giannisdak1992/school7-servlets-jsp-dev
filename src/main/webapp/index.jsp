<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Central Service</title>
    <!-- Tailwind CSS -->
    <script src="https://cdn.tailwindcss.com"></script>
        <script>
              tailwind.config = { theme: { extend: boxShadow: {
                custom: "0px 4px 20px 0px #00000026"
              } } }
    </script>
</head>
<body class="bg-gray-50 min-h-screen flex flex-col">

<%@ include file="/WEB-INF/jsp/header.jsp" %>

<!-- Main Content -->
<main class="flex-1 flex items-center justify-center px-4 sm:px-6 lg:px-8">
    <div class = "w-full max-w-3xl mx-auto text-center">
        <div class = "space-y-8">
            <h1 class="text-3xl md:text-4xl font-semibold text-stone-600/90 mb-8 ">Κεντρική Υπηρεσία Coding Factory</h1>
            <p class = "text-stone-500/80 text-base md:text-lg text-center max-w-xl mx-auto"> Το κεντρικό σύστημα διαχείρισης για τη διοίκηση και λειτουργία του Coding Factory </p>
             <div class = "flex justify-center mt-10">
                <a href="${pageContext.request.contextPath}/login" class="text-blue-800 hover:bg-blue-500 hover:text-white text-center rounded-md w-32 sm:w-32 h-10 leading-10 mt-5 ml-2 transition-colors duration-300 text-sm border border-blue-500 hover:border-transparent shadow-custom hover:animate-pulse focus:outline-none focus:ring-2 focus:ring-blue-500">Συνέχεια</a>
             </div>
        </div>
    </div>
</main>

<%@ include file="/WEB-INF/jsp/footer.jsp" %>

</body>
</html>