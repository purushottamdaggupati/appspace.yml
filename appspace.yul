version: 0.0
os: linux
files:
  - source: /target/simple-web-app.war
    destination: /opt/tomcat/webapps/
hooks:
  Before Install:
    - location: stop.bash
      timeout: 300
  After Install:
    - location: start.bash
      timeout: 300
