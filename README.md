# Visitor Log
Visitor Log is a home security application.  The primary objective would be to identify individuals that visit your home, the frequency with which one visits, and notify you of subsequent visits.

The app will achieve this by integrating Ring Doorbell video with AWS Rekognition in order to catalog the faces of those who are recorded by your Ring Doorbell.  The app will present similar faces to the user to validate they are, in fact, the same person.  Validated faces can then be categorized as known or unknown individuals.  Notifications can then be set up to alert the user of specific individual's subsequent arrivals at your door.

The app uses Spring MVC, JSP, Postgres, and AWS Rekognition.  Spring MVC is java configured without xml due to my bias against xml configuration.

## Database and User info
Please email john at jmsconsulting dot com for database and user account info on this app

## Handy Commands

This section highlights lesser known (to me) commands that are useful in development.

#### run in debug mode
mvn spring-boot:run -Dspring-boot.run.jvmArguments="-Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=y,address=5005"

#### attach from command line
jdb -attach 5005 -sourcepath src/main/java

#### common debugger breakpoint setting at line
stop at com.jmsmobile.vl.model.svc.VlUserDetailsSvc:23

#### common debugger breakpoint setting in method
stop in org.springframework.security.crypto.password.PasswordEncoder.match
