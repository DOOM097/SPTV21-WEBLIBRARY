<%-- 
    Document   : listBooks
    Created on : Feb 28, 2023, 11:10:00 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
   <h1 class="w-100 d-flex justify-content-center mt-5">Список читателей</h1>
   <div class="w-100 p-3 d-flex justify-content-center">
        <div class="card m-2 border-0" style="width: 35rem;">
            <div class="card-body">
                <c:forEach var="entry" items="${mapReaders}" varStatus="status">
                     <p class="card-text text-primary">${status.index+1}. ${entry.key.firstname} ${entry.key.lastname}. ${entry.key.phone}.
                     
                     <div class="list-group">
                         <c:forEach var="book" items="${entry.value}">
                            <a  href="book?id=${book.id}" class="list-group-item list-group-item-action">
                                ${book.bookName}
                            </a>
                         </c:forEach>
                     </div>
                     </p>
                </c:forEach>
            </div>
         </div>
   </div>
