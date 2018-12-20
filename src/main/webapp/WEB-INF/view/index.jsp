<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html lang="en">
  <head>
    <title>Visitor Log by jmsmobile.com</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
  </head>
  <body>
  	<br>
  	<div style="text-align: center;">
      <h1>
  			Visitor Log --
        <span>
          <sec:authorize access="isAuthenticated()">Welcome Back, <sec:authentication property="name"/>
          </sec:authorize>
        </span>

  		</h1>
  		<p>
  			This is a Spring MVC app backed by a postgres database hosted on AWS.
  		</p>
      <p>
        This will turn into an introductory page. For the Visitor Log application.
      </p>
  		<ul>
        <li>
          <a href="dashboard">Dashboard</a> @RequestMapping("/dashboard")
        </li>
        <li>
          <a href="facesfound">Faces Found</a> @RequestMapping("/facesfound")
        </li>
        <li>
          <a href="videos">Videos</a> @RequestMapping("/videos")
        </li>
        <li>
          <a href="knownfaces">Known Faces</a> @RequestMapping("/knownfaces")
        </li>
        <li>
          <a href="settings">Settings</a> @RequestMapping("/settings")
        </li>
      </ul>
      <p>
        Everything below here is just reference and should eventually be deleted
  		</p>
      <ul>
        <li>
          <a href="welcome">Click here to See Welcome Message... </a>@RequestMapping("/welcome"))
        </li>
        <li>
          <a href="videolist">Click here for video list</a> @RequestMapping("/videolist")
        </li>
        <li>
          <a href="fetchstatus">Click here to fetch a status for a given video</a> @RequestMapping("/fetchstatus")
        </li>
        <li>
          <a href="fetchstatelist">Click here to fetch all a Job status for each video</a> @RequestMapping("/fetchstatelist")
        </li>

      </ul>
  	</div>
  </body>
  </html>
