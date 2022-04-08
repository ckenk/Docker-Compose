# Docker-Compose
A Docker Compose project with Docker, Spring Boot and MySQL.<br>
Initialize a MySQL DB container and a Spring Boot container that connects to it.<br>

Start the containers with `docker-compose up`.<br>
Then try out `http://localhost:8081/`<br>
Should see some HATEOAS json response similar to:
```json
{
  "_links" : {
    "guestbookMessages" : {
      "href" : "http://localhost:8081/guestbookMessages{?page,size,sort}",
      "templated" : true
    },
    "profile" : {
      "href" : "http://localhost:8081/profile"
    }
  }
}
```
Following the link `http://localhost:8081/guestbookMessages` will show the data retrived from the MySQL<br>
and using a POST request should be able to create new messages in the DB.

`curl -X POST -H "content-type: application/json" -d '{"name": "NewUser", "message": "New Message"}' http://localhost:8081/guestbookMessages`
