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
