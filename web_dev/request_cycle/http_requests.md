1. What are some common HTTP status codes?
  200 OK 
  300 Multiple choices
  301 moved permanently
  302 found
  304 not modified
  307 temporary redirect
  400 bad reqeust
  401 unauthorized
  403 forbidden
  404 not found
  410 gone
  500 internal server error
  501 not implemented
  503 service unavailable
  550 permission denied

2. What is the difference between a GET request and a POST request? When might each be used?
  GET requests are used to retrieve information from the given server. It should have no other effects beyond fetching the data

  POST requests are used to send data to the server

  A GET request is not as secure because the data is sent as part of the URL while with POST the data sent is not stored in the browser history or web server logs. GET should not be used while sending sensitive information, but POST requests can be used to send sensitive information.

3. What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

  A cookie is a piece of data that server sends to a browser that can store it and send it back with the next request to the server. They are sent back and forth with the HTTP requests
