## 설정 방법
1. ojdbc6.jar 를 루트 폴더로 이동
2. mvn 설정
- mvn install:install-file -DgroupId=com.oracle -DartifactId=ojdbc6 -Dversion=11.2.0.4 -Dpackaging=jar -Dfile=ojdbc6.jar -DgeneratePom=true


3. sqlplus system/oracle@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=52.34.31.74)(Port=1521))(CONNECT_DATA=(SID=XE)))
4. java -jar -Dspring.profiles.active=production 


server.port=8081

spring.datasource.url=jdbc:oracle:thin:@52.34.31.74:1521:XE
spring.datasource.username=system
spring.datasource.password=oracle
spring.datasource.driverClassName=oracle.jdbc.driver.OracleDriver

spring.mvc.view.prefix=/WEB-INF/jsp/
spring.mvc.view.suffix=.jsp