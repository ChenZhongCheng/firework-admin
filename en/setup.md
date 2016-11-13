# 1. Environment Setup

* Add following section in maven's settings.xml:

```xml
 <profiles>
    <profile>
        <id>myProfile</id>
        <repositories>
            <repository>
                <id>myRepository</id>
                <name>FireworkStudio</name>
                <url>http://fireworkstudio.cn:8081/nexus/content/repositories/thirdparty</url>
            </repository>
        </repositories>
    </profile>
  </profiles>

  <activeProfiles>
    <activeProfile>myProfile</activeProfile>
  </activeProfiles>
```
* Using `dbinit.sql` (in schema folder) to initialize two databases
* Database username/password could be changed in root `pom.xml`
* Run `mvn clean install -P develop`
* Deploy api.war `(/api)` and admin.war `(/admin)` in tomcat. (If you don't want `8080` port, you may modify `constant.js`)
* Access [http://localhost:8080/admin](http://localhost:8080/admin) via Chrome/Firefox, login name: `demo`, password: `demo`
