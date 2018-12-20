<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="includes/header-nav.jsp" flush="true">
  <jsp:param name="htmlTitle" value="Faces Found"/>
</jsp:include>

  <h1>Faces Found</h1>
  <div class="grid-area">
    <div>
      <span>Faces Found This Week</span>
      <span>${message}</span>
    </div>
    <div>
      <span>Possible New Visitors</span>
      <span>1</span>
    </div>
    <div>
      <span>Visitor List</span>
      <span><a href="">(12)</a> <a href="">identified-visitor-1</a>, <a href="">identified-visitor-2</a>, <a href="">...</a></span>
    </div>
  </div>

<jsp:include page="includes/footer.jsp" flush="true">
  <jsp:param name="footerParam" value="none"/>
</jsp:include>
