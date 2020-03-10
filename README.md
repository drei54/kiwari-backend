##### Ruby on rails
```
https://guides.rubyonrails.org/v5.0/getting_started.html
https://guides.rubyonrails.org/v3.2/migrations.html
https://www.driftingruby.com/episodes/intro-to-docker-on-windows
```
##### DB setting
```
database.yml
```
##### Terminal
```
$ gem install rails
$ rails new kiwari-backend
$ cd kiwari-backend
$ rails generate model Product name:string description:text
$ rails generate controller Products index
```
##### HOW TO RUN
```
$ cd kiwari-backend
$ rails server
```
##### List API
```
GET: http://localhost:3000/products.
GET: http://localhost:3000/products/{1}
POST: http://localhost:3000/products.
PUT: http://localhost:3000/products/{1}.
DELETE: http://localhost:3000/products/{1}.
```
##### Docker
