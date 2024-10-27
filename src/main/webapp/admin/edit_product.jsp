<%-- 
    Document   : edit_product
    Created on : Oct 23, 2024, 7:58:12 AM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="../shared/header.jsp" />

<jsp:include page="../shared/nav.jsp" />

<div class="container">
    
    <h2>Cập nhật sản phẩm (Hoa)</h2>    
    <form method="post">
        <div class="mb-2">
            <label>Tên hoa</label>
            <input type="text" name="tenhoa" value="" class="form-control" />
        </div>
        <div class="mb-2">
            <label>Giá</label>
            <input type="number" name="gia" value="" class="form-control" />
        </div>
        <div class="mb-2">
            <label>Hình ảnh</label>
            <input type="file" name="hinh" value="" class="form-control" />
        </div>
         <div class="mb-2">
            <label>Thể loại</label>
            <select name="maloai" class="form-control">      
                <option value="" disabled="">==Chọn thể loại==</option>
            </select>
        </div>        
        <button type="submit" class="btn btn-primary">Save</button>
    </form>       
</div>

<jsp:include page="../shared/footer.jsp" />
