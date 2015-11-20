## 설정 방법
1. ojdbc6.jar 를 루트 폴더로 이동
2. mvn 설정
- mvn install:install-file -DgroupId=com.oracle -DartifactId=ojdbc6 -Dversion=11.2.0.4 -Dpackaging=jar -Dfile=ojdbc6.jar -DgeneratePom=true