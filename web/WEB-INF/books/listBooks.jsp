<%-- 
    Document   : listBooks
    Created on : Feb 28, 2023, 11:10:00 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

       <h1 class="w-100 d-flex justify-content-center mt-5">Список книг</h1>
       <div class="w-100 p-3 d-flex justify-content-center">
           <c:forEach var="book" items="${listBooks}">
            <div class="card m-2" style="width: 13rem;">
                <div class="card-body">
                    <h5 class="card-title">${book.bookName}</h5>
                    <p class="card-text">Авторы: 
                         <c:forEach var="author" items="${book.authors}">
                             ${author.firstname} ${author.lastname}
                         </c:forEach>
                    </p>
                    <p class="card-text">Год издания: ${book.publishedYear}</p>
                    <p class="card-text">Количество экземпляров: ${book.quantity}</p>
                </div>
             </div>
           </c:forEach>
       </div>
  