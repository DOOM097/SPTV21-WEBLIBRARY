<%-- 
    Document   : listBooks
    Created on : Feb 28, 2023, 11:10:00 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

       <h1 class="w-100 d-flex justify-content-center mt-5">Выдать книгу читателю</h1>
       <div class="w-100 p-3 d-flex justify-content-center">
           
            <div class="card m-2" style="width: 33rem;">
                <form action="createHistory" method="POST">
                    <div class="card-body">
                        <select name="bookId" class="form-select form-select-lg mb-3" aria-label=".form-select-sm example">
                            <option value="#" disabled selected>Выберите книгу</option>
                            <c:forEach var="book" items="${listBooks}">
                                <option value="${book.id}">${book.bookName}</option>
                            </c:forEach>
                        </select>
                        <select name="readerId" class="form-select form-select-lg mb-3" aria-label=".form-select-sm example">
                            <option value="#" disabled selected>Выберите читателя</option>
                            <c:forEach var="reader" items="${listReaders}">
                                <option value="${reader.id}">${reader.firstname} ${reader.lastname}</option>
                            </c:forEach>
                        </select>
                        <button type="submit" class="btn btn-secondary">Выдать книгу</button>
                    </div>
                </form>
             </div>
           
       </div>
  