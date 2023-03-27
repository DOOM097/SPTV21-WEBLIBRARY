<%-- 
    Document   : listBooks
    Created on : Feb 28, 2023, 11:10:00 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

       <h1 class="w-100 d-flex justify-content-center mt-5">Возврат книги</h1>
       <div class="w-100 p-3 d-flex justify-content-center">
           <form action="updateHistory" method="POST">
               <select name="historyId" class="form-select form-select-sm" aria-label=".form-select-sm example">
                    <option selected disabled>Выберите возвращаемую книгу</option>
                    <c:forEach var="history" items="${listHistoryWithTakedBooks}">
                        <option value="${history.id}">${history.book.bookName}, читает: ${history.reader.firstname} ${history.reader.lastname}</option>
                    </c:forEach>
               </select>
               <button type="submit" class="btn btn-secondary">Вернуть книгу</button>
           </form>
       </div>
  