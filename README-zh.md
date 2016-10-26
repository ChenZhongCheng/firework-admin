# firework-admin

> 一个基于 Spring MVC + Spring Security + MyBatis + Angularjs + Bootstrap + D3.js 技术栈开发的管理后台

- [教程](https://fireworkstudio.github.io/firework-admin/zh/)
- [Readme in English](https://github.com/fireworkstudio/firework-admin/tree/master/README.md)

## 功能:

* 支持对多数据源和多种数据库的访问
* 支持用户与权限绑定机制
* 每一个 rest API 的访问都加上了权限控制
* 页面的表格支持前端/后端分页
* 易于画 柱状图/饼图/曲线图
* 对多Maven Profile的支持
* 对JUnit的支持
* Spring MVC + Spring Security + Mybatis + AngularJS 技术栈


## 安装步骤:
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

### 推荐的构建环境:
* Maven 3
* JDK 8

## 系统截图:
![image](http://7xknr8.com1.z0.glb.clouddn.com/asset/resource/20161007232234.jpg)

![image](http://7xknr8.com1.z0.glb.clouddn.com/asset/resource/20161014111628.jpg)

![image](http://7xknr8.com1.z0.glb.clouddn.com/asset/resource/20161016140309.jpg)

![image](http://7xknr8.com1.z0.glb.clouddn.com/asset/resource/20161016140326.jpg)

## 软件许可:

[Apache 2.0 license](http://opensource.org/licenses/Apache-2.0)

## 参考:

firework-admin 项目使用了以下开源模块，在此对模块的作者表示感谢。

* [mybatis-cobarclient](https://github.com/aqqwiyth/mybatis-cobarclient)
* [angular-ui](https://github.com/angular-ui/bootstrap/)
* [angular-datatables](https://github.com/l-lin/angular-datatables)
* [angular-charts](https://github.com/chinmaymk/angular-charts)
* [angular-toolkits](https://github.com/shaunxu/angular-toolkits)
* [angular-busy](https://github.com/cgross/angular-busy)
* [angular-popups](https://github.com/aui/angular-popups)
* [angular-multi-select](https://github.com/alalonde/angular-multi-select)
* [angular-moment](https://github.com/urish/angular-moment)
* [angular-md5](https://github.com/gdi2290/angular-md5)