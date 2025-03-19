<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.util.*, com.LINKER.productDetail.model.ProductDetailDAO, com.LINKER.productDetail.model.ProductDetailDTO" %>
<%@ page import="java.io.*, javax.servlet.http.Part, java.util.Base64" %>

<html>
<head>
    <title>제품 관리 시스템</title>
</head>
<body>
    <h1>제품 관리 시스템</h1>

    <%
        // 요청 파라미터로 어떤 작업을 할지 구분
        String action = request.getParameter("action");
        
        // 글쓰기 폼을 표시
        if ("writeForm".equals(action)) {
    %>
    
    <h2>제품 글쓰기</h2>
    <form action="test_image.jsp?action=writeProduct" method="post" enctype="multipart/form-data">
        <label for="productImage">제품 이미지:</label>
        <input type="file" name="productImage" id="productImage" required><br><br>
        
        <label for="productDescription">제품 설명:</label>
        <textarea name="productDescription" id="productDescription" rows="4" cols="50" required></textarea><br><br>
        
        <label for="productContactInfo">연락처 정보:</label>
        <input type="text" name="productContactInfo" id="productContactInfo" required><br><br>
        
        <label for="productPrice">제품 가격:</label>
        <input type="number" name="productPrice" id="productPrice" required><br><br>
        
        <label for="productType">제품 유형:</label>
        <input type="text" name="productType" id="productType" required><br><br>
        
        <label for="userID">작성자 ID:</label>
        <input type="number" name="userID" id="userID" required><br><br>
        
        <input type="submit" value="글쓰기">
    </form>

    <%
        } else if ("writeProduct".equals(action)) {
            // 제품 글쓰기 처리
            String productDescription = request.getParameter("productDescription");
            String productContactInfo = request.getParameter("productContactInfo");
            int productPrice = Integer.parseInt(request.getParameter("productPrice"));
            String productType = request.getParameter("productType");
            int userID = Integer.parseInt(request.getParameter("userID"));
            
            // 파일 업로드 처리
            Part filePart = request.getPart("productImage");
            InputStream productImageStream = filePart.getInputStream();
            byte[] productImage = new byte[productImageStream.available()];
            productImageStream.read(productImage);
            
            // DTO 생성 및 DB에 저장
            ProductDetailDTO dto = new ProductDetailDTO();
            dto.setProductImage(productImage);
            dto.setProductDescription(productDescription);
            dto.setProductContactInfo(productContactInfo);
            dto.setProductPrice(productPrice);
            dto.setProductType(productType);
            dto.setUserID(userID);
            
            ProductDetailDAO dao = ProductDetailDAO.getInstance();
            dao.writeProductDetail(dto);
            
            out.println("<h2>제품이 성공적으로 등록되었습니다.</h2>");
            out.println("<a href='test_image.jsp?action=viewAll'>모든 제품 보기</a>");
        } else if ("viewAll".equals(action)) {
            // 모든 제품 목록 보기
            ProductDetailDAO dao = ProductDetailDAO.getInstance();
            List<ProductDetailDTO> productList = dao.getProductDetail();
    %>
    
    <h2>제품 목록</h2>
    <table border="1">
        <thead>
            <tr>
                <th>제품 아이디</th>
                <th>제품 이미지</th>
                <th>제품 설명</th>
                <th>제품 가격</th>
                <th>제품 유형</th>
                <th>작성자 ID</th>
                <th>상세 보기</th>
            </tr>
        </thead>
        <tbody>
            <%
                for (ProductDetailDTO product : productList) {
            %>
            <tr>
                <td><%= product.getProductDetailId() %></td>
                <td><img src="data:image/jpeg;base64,<%= Base64.getEncoder().encodeToString(product.getProductImage()) %>" width="100" height="100" /></td>
                <td><%= product.getProductDescription() %></td>
                <td><%= product.getProductPrice() %></td>
                <td><%= product.getProductType() %></td>
                <td><%= product.getUserID() %></td>
                <td><a href="test_image.jsp?action=viewProduct&id=<%= product.getProductDetailId() %>">상세 보기</a></td>
            </tr>
            <% } %>
        </tbody>
    </table>
    <a href="test_image.jsp?action=writeForm">제품 글쓰기</a>
    
    <%
        } else if ("viewProduct".equals(action)) {
            // 특정 제품 상세 보기
            int productDetailId = Integer.parseInt(request.getParameter("id"));
            
            ProductDetailDAO dao = ProductDetailDAO.getInstance();
            ProductDetailDTO product = dao.getProductDetailByID(productDetailId);
    %>
    
    <h2>제품 상세 보기</h2>
    <p><strong>제품 설명:</strong> <%= product.getProductDescription() %></p>
    <p><strong>연락처 정보:</strong> <%= product.getProductContactInfo() %></p>
    <p><strong>가격:</strong> <%= product.getProductPrice() %> 원</p>
    <p><strong>제품 유형:</strong> <%= product.getProductType() %></p>
    <p><strong>작성자 ID:</strong> <%= product.getUserID() %></p>
    
    <p><strong>이미지:</strong></p>
    <img src="data:image/jpeg;base64,<%= Base64.getEncoder().encodeToString(product.getProductImage()) %>" width="300" height="300" />
    
    <a href="test_image.jsp?action=viewAll">모든 제품 보기</a>
    <a href="test_image.jsp?action=writeForm">제품 글쓰기</a>
    
    <%
        } else {
    %>
        <h2>안녕하세요! 제품 관리 시스템입니다.</h2>
        <a href="test_image.jsp?action=writeForm">제품 글쓰기</a><br><br>
        <a href="test_image.jsp?action=viewAll">모든 제품 보기</a>
    <%
        }
    %>

</body>
</html>
