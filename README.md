<h1>phb api</h1>

<h2>
注册
</h2>
<h3>
url: <a href="/api/users/signup">/api/users/signup</a>
</h3>
<p>
参数：
user[email]<br>
user[password]<br>
</p>
<code>
curl -XPOST -d'user[email]=gvissul2@gmail.com&user[password]=woaixuexi' http://localhost:3001/api/users/signup
{"success":true,"user":{"created_at":"2013-05-16T02:41:42Z","email":"gvissul2@gmail.com","id":5,"name":null,"updated_at":"2013-05-16T02:41:42Z"}}
p
</code>
<hr/>


<h2>
login
</h2>
<h3>
url: <a href="/api/users/signin">/api/users/signin</a>
</h3>
<p>
参数：
user[email]<br>
user[password]<br>
</p>
<code>
curl -XPOST -d'user[email]=gvissul1@gmail.com&user[password]=woaixuexi' http://localhost:3001/api/users/signin
{"success":true,"user":{"created_at":"2013-05-16T02:39:43Z","email":"gvissul1@gmail.com","id":4,"name":null,"updated_at":"2013-05-16T02:39:43Z"}}
</code>
<hr/>

<h2>
微博登陆
</h2>
<h3>
url: <a href="">/</a>
</h3>
<p>
参数：
</p>
<code>
</code>
<hr/>

<h2>
腾讯微博登陆
</h2>
<h3>
url: <a href="">/</a>
</h3>
<p>
参数：
</p>
<code>
</code>
<hr/>


<h2>
新闻列表
</h2>
<h3>
url: <a href="/api/articles">/api/articles</a>
</h3>
<p>
参数：
</p>
<code>
curl -XGET http://localhost:3000/api/articles<br>
[{"category_id":2,"content":"<p>\r\n\t<span style=\"color: rgb(0, 0, 0); font-family: 宋体, Arial, sans-serif; font-size: 16px; line-height: 28px; text-indent: 32px;\">5月30日，红旗旗下首款车型H7将在北京上市，上市地点选择了极具象征意义的北京鸟巢。被内部称为&ldquo;红馆&rdquo;的城市展厅也在加紧建设中，首批红旗城市展厅选址在长春、北京、上海等5大城市，据一汽内部人士透露，北京唯一的一家&ldquo;红馆&rdquo;落户金宝街，将于月底正式开业</span></p>\r\n","cover":{"url":"/uploads/article/cover/9/logo.png"},"created_at":"2013-05-28T15:10:02Z","from":"http://auto.qq.com/a/20130528/002897.htm","id":9,"summary":"红旗城市展厅毗邻劳","title":"红旗城市展厅毗邻劳斯莱斯 新车30日上市","updated_at":"2013-05-28T15:10:02Z","user_id":1}]
</code>
<hr/>


<h2>
新闻详情
</h2>
<h3>
url: <a href="/api/articles/1">/api/articles/1</a>
</h3>
<p>
参数：
</p>
<code>
curl -XGET http://localhost:3000/api/articles/1

{"category_id":2,"content":"<p>\r\n\t<span style=\"color: rgb(0, 0, 0); font-family: 宋体, Arial, sans-serif; font-size: 16px; line-height: 28px; text-indent: 32px;\">5月30日，红旗旗下首款车型H7将在北京上市，上市地点选择了极具象征意义的北京鸟巢。被内部称为&ldquo;红馆&rdquo;的城市展厅也在加紧建设中，首批红旗城市展厅选址在长春、北京、上海等5大城市，据一汽内部人士透露，北京唯一的一家&ldquo;红馆&rdquo;落户金宝街，将于月底正式开业</span></p>\r\n","cover":{"url":"/uploads/article/cover/9/logo.png"},"created_at":"2013-05-28T15:10:02Z","from":"http://auto.qq.com/a/20130528/002897.htm","id":9,"summary":"红旗城市展厅毗邻劳","title":"红旗城市展厅毗邻劳斯莱斯 新车30日上市","updated_at":"2013-05-28T15:10:02Z","user_id":1}
</code>
<hr/>


<h2>
上传头像
</h2>
<h3>
url: <a href="">/</a>
</h3>
<p>
参数：
</p>
<code>
</code>
<hr/>


<h2>
首页内容
</h2>
<h3>
url: <a href="">/</a>
</h3>
<p>
参数：
</p>
<code>
</code>
<hr/>

<h2>
搜索 
</h2>
<h3>
url: <a href="">/</a>
</h3>
<p>
参数：
</p>
<code>
</code>
<hr/>


<h2>
安全卡
</h2>
<h3>
url: <a href="">/</a>
</h3>
<p>
参数：
</p>
<code>
</code>
<hr/>


<h2>
忘记密码
</h2>
<h3>
url: <a href="">/</a>
</h3>
<p>
参数：
</p>
<code>
</code>
<hr/>


<h2>
评论
</h2>
<h3>
url: <a href="">/</a>
</h3>
<p>
参数：
</p>
<code>
</code>
<hr/>
