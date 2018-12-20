<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="includes/header-nav.jsp" flush="true">
  <jsp:param name="htmlTitle" value="Videos"/>
</jsp:include>

  <h1>Videos</h1>
  <div class="grid-area">
    <div>
      <span>Last Video</span>
      <span></span>
    </div>
    <div>
      <img src="https://via.placeholder.com/400x200">
    </div>
  </div>

<jsp:include page="includes/footer.jsp" flush="true">
  <jsp:param name="footerParam" value="none"/>
</jsp:include>
