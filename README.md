# 来源

代码来自

  * https://github.com/duxianwei520/react
  * https://github.com/duxianwei520/express

仅仅作了一些微不足道的修改, 主要是配置上的.


# 目录说明

react 目录: 前端代码.
express 目录: 后台(server)代码.
tools 目录: 下是用来创建后台数据库的脚本.


# 配置方法

在 react/app/config.js 中把

  global.linkUrl = 'http://localhost:3001';

改为符合你的情况的 URL, 也就是你的后台server对应的URL.

在 express/myapp/modules/optPool.js 中把

  this.pool = mysql.createPool({
    host: 'localhost',       //主机
    user: 'root',            //MySQL认证用户名
    password: 'root',        //MySQL认证用户密码
    database: 'dxd',
    port: '3306'             //端口号
  });

改成符合你的 MySQL 数据库的配置.

在 tools 目录下运行

  ./create-db-dxd.sh

以创建后台server需要的数据库.


# 运行方法
在 react 目录下运行

  npm start

启动 dev server.

在 express/myapp 下运行

  npm start

启动后台server.

然后, 在浏览器中访问:

  http://devhost:3010

其中, devhost 就是 dev server 进程所在的主机.


