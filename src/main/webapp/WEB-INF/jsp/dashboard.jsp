<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
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

    <%@ include file="header.jsp" %>

    <div class="flex flex-grow min-h-screen">
      <div class="w-[250px] h-screen bg-gray-200 border-r border-gray-300 px-4 py-6">
        <nav class="space-y-2">
          <div class="relative">
            <!-- Κουμπί που κάνει toggle το dropdown -->
            <button
              onclick="toggleDropdown('teachersDropdown')"
              class="w-full text-left px-4 py-2 text-slate-600 text-base font-medium rounded-md hover:bg-gray-100 hover:text-blue-600 transition focus:outline-none focus:ring-2 focus:ring-blue-500"
            >
              Καθηγητές
            </button>

            <!-- Dropdown -->
            <div id="teachersDropdown" class="hidden absolute left-0 w-full bg-white shadow-lg rounded-md mt-2 z-10">
              <a href="<c:url value='${pageContext.request.contextPath}/school-app/teachers/view' />"
                 class="block px-4 py-2 text-slate-600 hover:bg-gray-100 hover:text-blue-600 transition">
                Προβολή Καθηγητών
              </a>
              <a href="<c:url value='${pageContext.request.contextPath}/school-app/teachers/insert' />"
                 class="block px-4 py-2 text-slate-600 hover:bg-gray-100 hover:text-blue-600 transition">
                Εισαγωγή Καθηγητή
              </a>
            </div>
          </div>
        </nav>
      </div>
    </div>



        <div class="ml-[250px] flex flex-col flex-grow min-h-screen">
            <main class="flex-grow p-6">
                <!-- Εδώ βάζεις το κυρίως περιεχόμενο του dashboard -->
                <h1 class="text-2xl font-semibold text-gray-800">Καλώς ήρθατε στο Dashboard</h1>
            </main>

        </div>
     </div>
    <%@ include file="footer.jsp" %>

</body>

<script>
  function toggleDropdown(id) {
    const dropdown = document.getElementById(id);
    dropdown.classList.toggle('hidden');
  }

  // Optional: Κλείσιμο dropdown αν κάνεις click έξω
  window.addEventListener('click', function(e) {
    const dropdown = document.getElementById('teachersDropdown');
    if (!e.target.closest('button') && !e.target.closest('#teachersDropdown')) {
      dropdown.classList.add('hidden');
    }
  });
</script>

</html>
