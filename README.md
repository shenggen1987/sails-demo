这是一个sails-demo


sails lift

http://sailsjs.com/documentation/concepts/models-and-orm/attributes

==========

sudo docker build --tag="hub.qjdchina.com/hanhao/sails-node:v0.0.1" ./
sudo docker push hub.qjdchina.com/hanhao/sails-node:v0.0.1

==========

sudo docker run -d -p 5200:1337 hub.qjdchina.com/hanhao/sails-node:v0.0.1

==========代码生成
sails generate api order

post http://10.1.31.35:5200/order/create?name=222&age=22&phone=15268155415
get  http://10.1.31.35:5200/order/58a2b9721757a3c32263b12b
delete http://10.1.31.35:5200/order/58a2b52485060f6c220e46b5

分页   
get http://localhost:1337/order/find?limit=1&skip=1