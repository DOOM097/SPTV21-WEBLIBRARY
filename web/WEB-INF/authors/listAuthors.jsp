<%-- 
    Document   : listBooks
    Created on : Feb 28, 2023, 11:10:00 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
   <h1 class="w-100 d-flex justify-content-center mt-5">Список авторов</h1>
   <div class="w-100 p-3 d-flex justify-content-center">
        <div class="card m-2 border-0" style="width: 23rem;">
            <div class="card-body">
                <c:forEach var="author" items="${listAuthors}" varStatus="status">
                     <p class="card-text">${status.index+1}. ${author.firstname} ${author.lastname}. ${author.birthYear}.
                     <span class="ms-3">Книги: 
                         <c:forEach var="book" items="${author.books}">
                              <a href="book?id=${book.id}">${book.bookName}</a>. 
                         </c:forEach>
                     </span></p>
                </c:forEach>
            </div>
         </div>
   </div>
