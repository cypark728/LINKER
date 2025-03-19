<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.io.*, javax.servlet.*, javax.servlet.http.*, com.LINKER.productDetail.model.*" %>
<%@ page import="org.apache.commons.fileupload.*, org.apache.commons.fileupload.disk.*, org.apache.commons.fileupload.servlet.*" %>
<%@ page import="java.sql.Timestamp" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product Detail Management</title>
    <style>
        img { max-width: 150px; height: auto; }
    </style>
</head>
<body>
    <h2>📌 제품 상세 관리</h2>

    <!-- 제품 등록 폼 -->
    <h3>🖼 제품 등록</h3>
    <form action="test_product_detail_image.jsp" method="post" enctype="multipart/form-data">
        <label>제품 설명: <input type="text" name="description" required></label><br>
        <label>연락처: <input type="text" name="contact" required></label><br>
        <label>가격: <input type="number" name="price" required></label><br>
        <label>제품 유형: <input type="text" name="type" required></label><br>
        <label>사용자 ID: <input type="number" name="userID" required></label><br>
        <label>제품 이미지: <input type="file" name="image" accept="image/*" required></label><br>
        <input type="submit" name="submit" value="제품 등록">
    </form>

    <hr>

    <h3>📋 등록된 제품 목록</h3>
    <%
        ProductDetailDAO dao = ProductDetailDAO.getInstance();

        // ✅ 이미지 업로드 및 제품 등록 처리
        if ("POST".equalsIgnoreCase(request.getMethod()) && request.getParameter("submit") != null) {
            try {
                DiskFileItemFactory factory = new DiskFileItemFactory();
                ServletFileUpload upload = new ServletFileUpload(factory);
                List<FileItem> items = upload.parseRequest(request);

                String description = "", contact = "", type = "";
                int price = 0, userID = 0;
                byte[] imageBytes = null;

                for (FileItem item : items) {
                    if (item.isFormField()) {
                        String fieldName = item.getFieldName();
                        String fieldValue = item.getString("UTF-8");

                        if ("description".equals(fieldName)) description = fieldValue;
                        else if ("contact".equals(fieldName)) contact = fieldValue;
                        else if ("price".equals(fieldName)) price = Integer.parseInt(fieldValue);
                        else if ("type".equals(fieldName)) type = fieldValue;
                        else if ("userID".equals(fieldName)) userID = Integer.parseInt(fieldValue);
                    } else {
                        imageBytes = item.get();
                    }
                }

                if (imageBytes != null) {
                    ProductDetailDTO dto = new ProductDetailDTO();
                    dto.setProductImage(imageBytes);
                    dto.setProductDescription(description);
                    dto.setProductContactInfo(contact);
                    dto.setProductPrice(price);
                    dto.setProductType(type);
                    dto.setUserID(userID);

                    dao.writeProductDetail(dto);
                    out.println("<p style='color:green;'>✅ 제품이 성공적으로 등록되었습니다!</p>");
                }
            } catch (Exception e) {
                e.printStackTrace();
                out.println("<p style='color:red;'>❌ 제품 등록 중 오류 발생!</p>");
            }
        }

        // ✅ 전체 제품 목록 출력
        List<ProductDetailDTO> productList = dao.getProductDetail();
        if (productList.isEmpty()) {
            out.println("<p>등록된 제품이 없습니다.</p>");
        } else {
            out.println("<table border='1'><tr><th>제품 ID</th><th>이미지</th><th>설명</th><th>연락처</th><th>가격</th><th>유형</th><th>사용자 ID</th></tr>");
            for (ProductDetailDTO product : productList) {
                out.println("<tr>");
                out.println("<td>" + product.getProductDetailId() + "</td>");
                out.println("<td>");
                if (product.getProductImage() != null) {
                    String base64Image = Base64.getEncoder().encodeToString(product.getProductImage());
                    out.println("<img src='data:image/jpeg;base64," + base64Image + "'>");
                } else {
                    out.println("이미지 없음");
                }
                out.println("</td>");
                out.println("<td>" + product.getProductDescription() + "</td>");
                out.println("<td>" + product.getProductContactInfo() + "</td>");
                out.println("<td>" + product.getProductPrice() + "</td>");
                out.println("<td>" + product.getProductType() + "</td>");
                out.println("<td>" + product.getUserID() + "</td>");
                out.println("</tr>");
            }
            out.println("</table>");
        }
    %>

    <hr>

    <!-- 특정 제품 검색 -->
    <h3>🔍 제품 조회</h3>
    <form method="get" action="test_product_detail_image.jsp">
        <label>제품 ID: <input type="number" name="productID" required></label>
        <input type="submit" value="검색">
    </form>

    <%
        String productIdParam = request.getParameter("productID");
        if (productIdParam != null) {
            int productID = Integer.parseInt(productIdParam);
            ProductDetailDTO product = dao.getProductDetailByID(productID);

            if (product != null && product.getProductDetailId() != 0) {
                out.println("<h4>제품 상세 정보</h4>");
                out.println("<p>설명: " + product.getProductDescription() + "</p>");
                out.println("<p>연락처: " + product.getProductContactInfo() + "</p>");
                out.println("<p>가격: " + product.getProductPrice() + "원</p>");
                out.println("<p>유형: " + product.getProductType() + "</p>");
                out.println("<p>사용자 ID: " + product.getUserID() + "</p>");
                if (product.getProductImage() != null) {
                    String base64Image = Base64.getEncoder().encodeToString(product.getProductImage());
                    out.println("<img src='data:image/jpeg;base64," + base64Image + "'>");
                }
            } else {
                out.println("<p>해당 제품을 찾을 수 없습니다.</p>");
            }
        }
    %>
</body>
</html>