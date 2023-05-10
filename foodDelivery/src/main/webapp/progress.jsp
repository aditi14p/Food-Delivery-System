<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Multi Step Progress</title>
    <link rel="stylesheet" href="css/progress.css" />
    <script src="js/script.js" defer></script>
  </head>
  <body>
    <div class="container">
      <div class="steps">
        <span class="circle active">1 </span>
        <span class="circle">2</span>
        <span class="circle">3</span>
        <div class="progress-bar">
          <span class="indicator"></span>
        </div>
        
      </div>
      <div>
        <ol class="horizontal-list">

            <li class="horizontal-list-item">
                Sent
            </li>
        
            <li class="horizontal-list-item">
                On the way
            </li>
        
            <li class="horizontal-list-item">
                Delivered
            </li>
        </ol>
    </div>
          </div>
  </body>
</html>