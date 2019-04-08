# combat-crm
这是个奔驰汽 CRM 销售机会信息管理系统
<p>
  使用的xampp集成开发环境，navicat协助管理数据库
</p>
<p>
  开发环境使用的nodejs，express搭建框架，使用nunjucks模板引擎替换了express自带的pug
</p>
<p>
  样式借助了bootstrap框架
</p>
<p>
  列表页使用了 unionAll API 进行了以管理置顶的排序
</p>

<p>
  <h3>页面分别是：</h3>
  <ul>
    <li>着陆页：index</li>
    <li>登录页面：admin/login</li>
    <li>人员管理：admin/user/list</li>
    <li>人员新增：admin/user/create</li>
    <li>人员编辑：admin/user/edit</li>
    <li>线索管理：admin/clue/list</li>
    <li>线索跟踪：admin/clue/track</li>
  </ul>
</p>

<h1>数据库</h1>
<p>
  根据图片设计分析，人员管理列表中会显示时间像，user数据库里需要添加time
</p>
<p>
  express API 'req.params'只需将a标签的href写为path：id便非常方便的让后台取到了id
</p>
<p>
  cookie储存用户登录信息加密使用的AES对称加密算法，用的crypto模块
</p>
