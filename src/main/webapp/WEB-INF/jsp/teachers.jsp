<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setHeader("Expires", "0");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Προβολή Καθηγητών</title>
    <script src="https://cdn.tailwindcss.com"></script>
            <script>
              tailwind.config = {
                theme: { extend: {} },
              }
            </script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/teachers.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<%@ include file="header.jsp"%>
<div class="main-content mb-6 mx-auto">

 <c:if test="${sessionScope.role == 'ADMIN'}">
    <div class="m-bottom">
        <a href="${pageContext.request.contextPath}/school-app/teachers/insert">Εισαγωγή Καθηγητή</a>
    </div>
 </c:if>

    <div class="form border border-gray-300">
        <form id="filterForm" method="GET" action="${pageContext.request.contextPath}/school-app/teachers/view">
            <%--        <input type="text" name="filterId" placeholder="Enter ID" />--%>
          <div class="flex flex-col space-y-4 sm:flex-row sm:space-x-4 sm:space-y-0">
            <input type="text"
                   class="mt-1 block w-full sm:max-w-md px-4 py-2 border border-gray-300 rounded-md"
                   name="firstname"
                   placeholder="Όνομα" />

            <input type="text"
                   class="mt-1 block w-full sm:max-w-md px-4 py-2 border border-gray-300 rounded-md"
                   name="lastname"
                   placeholder="Επώνυμο" />
          </div>
            <div class= "mt-3">
                <input class="custom-button-green" id="submitBtn" type="submit" value="Αναζήτηση" />
                 <button class="reset-button" id="resetBtn" type="button" onclick="reset()">Επαναφορά</button>
            </div

        </form>
    </div>

    <div class="overflow-x-auto max-h-[600px] overflow-y-auto mt-6">
        <table class="min-w-full border border-gray-400 rounded-md shadow-sm text-sm text-left text-gray-700 ">
                <th class= "text-gray-700 uppercase text-xs">
                    <tr>
                        <th scope="col" class="px-6 py-3 border-b">Κωδικός</th><th scope="col" class="px-6 py-3 border-b">Όνομα</th><th scope="col" class="px-6 py-3 border-b">Επώνυμο</th><th scope="col" class="px-6 py-3 border-b">Πράξεις</th>
                    </tr>
                </th>
        <%--        <p>${requestScope.message}</p>--%>
                <c:forEach var = "teacher" items = "${requestScope.teachers}">
                    <tr class="hover:bg-gray-50">
                        <td class="px-6 py-4 border-b">${teacher.id}</td>
                        <td class="px-6 py-4 border-b">${teacher.firstname}</td>
                        <td class="px-6 py-4 border-b">${teacher.lastname}</td>
                        <td class="px-6 py-4 border-b"><a href="${pageContext.request.contextPath}/school-app/teachers/view?id=${teacher.id}"><i class="fa-regular fa-eye"></i></a><a href="${pageContext.request.contextPath}/school-app/teachers/update?id=${teacher.id}"><i class="fa-solid fa-pen-to-square"></i></a><a href="${pageContext.request.contextPath}/school-app/teachers/delete?id=${teacher.id}"
                               onclick="return confirm('Are you sure you want to delete the teacher?')"><i class="fa-solid fa-trash-can"></i></a>

                        </td>
                    </tr>
                </c:forEach>
         </table>

    </div>

</div>

<div>
<%--    <c:if test="${requestScope.deleteAPIError}">--%>
        <p>${requestScope.message}</p>
<%--    </c:if>--%>
</div>

<div>
    <c:if test="${requestScope.updateAPIError}">
        <p>Something went wrong in Update</p>
    </c:if>
</div>

<%@ include file="footer.jsp"%>

<script src="${pageContext.request.contextPath}/js/teachers.js">

</script>
</body>
</html>
