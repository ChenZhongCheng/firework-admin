# 1. 开发环境搭建

* 将以下段落添加至 maven 的 settings.xml:

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
* 使用 `firework1.sql` 和 `firework2.sql` (见schema 目录) 初始化两个数据库 firework1 和 firework2
* 如需修改连接数据库的用户名、密码， 请修改根 `pom.xml`
* 运行 `mvn clean install -P develop` 命令
* 将 api.war `(/api)` 和 admin.war `(/admin)` 发布至 tomcat. (如果您不使用 `8080` 端口, 需要修改 `constant.js`文件)
* 在 Chrome/Firefox 中访问 [http://localhost:8080/admin](http://localhost:8080/admin)，用户名: `demo`, 密码: `demo`
