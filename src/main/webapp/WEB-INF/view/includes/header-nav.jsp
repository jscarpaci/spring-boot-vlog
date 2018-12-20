<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8"/>
  <title>${param.htmlTitle}</title>
  <link rel="stylesheet" type="text/css" href="css/normalize.css">
  <link rel="stylesheet" type="text/css" href="css/util.css">
  <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
  <nav class="top-bar-thirds" >
    <div><a href="${pageContext.request.contextPath}">Logo</a></div>
    <div>
      <span>Potential New Visitors</span>
      <span>2</span>
    </div>
    <div>
      <span class="pl-1 pr-75"><sec:authentication property="name"/></span>
      <span class="pl-1 help-circle">&#x2754;</span>
      <span class="pl-1">
        <c:url var="logoutUrl" value="/logout"/>
        <form action="${logoutUrl}" method="post">
          <input type="submit" value="&#9099;" />
          <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>
      </span>

    </div>
  </nav>
  <div class="content-area">  <!-- Match to footer.jsp #1 -->
    <nav class="left-side-nav">
      <ul>
        <li><a href="dashboard">Dashboard</a></li>
        <li><a href="facesfound">Faces Found</a></li>
        <li><a href="videos">Videos</a></li>
        <li><a href="knownfaces">Known Faces</a></li>
        <li><a href="settings">Settings</a></li>
      </ul>
    </nav>
    <main class="data-area">  <!-- Match to footer.jsp #2 -->
