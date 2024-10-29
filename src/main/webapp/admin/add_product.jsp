<%-- 
    Document   : add_product
    Created on : Oct 23, 2024, 7:57:34 AM
    Author     : PC
--%>

<%@page import="model.Loai"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="../shared/header.jsp" />

<jsp:include page="../shared/nav.jsp" />

<div class="container">
    
    <h2>Thêm sản phẩm (Hoa)</h2>    
    
    <form method="post" enctype="multipart/form-data">
        <div class="mb-2">
            <label>Tên hoa</label>
            <input type="text" name="tenhoa" value="" required="" class="form-control" />
        </div>
        <div class="mb-2">
            <label>Giá</label>
            <input type="number" name="gia" value="" class="form-control" required="" />
        </div>
        <div class="mb-2">
            <label>Hình ảnh</label>
            <input type="file" name="hinh" value="" class="form-control" required="" />
        </div>
         <div class="mb-2">
            <label>Thể loại</label>
            <select name="maloai" class="form-control">      
                <option value="" disabled="">==Chọn thể loại==</option>
                <%
                    ArrayList<Loai> dsLoai = (ArrayList<Loai>) request.getAttribute("dsLoai");
                    for(Loai x : dsLoai){
                 %>
                 <option value="<%=x.getMaloai()%>"><%=x.getTenloai()%></option>
                 <%
                     }
                 %>
            </select>
        </div>        
        <button type="submit" class="btn btn-primary">Save</button>
    </form>       
</div>

<jsp:include page="../shared/footer.jsp" />
