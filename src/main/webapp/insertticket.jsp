<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en-gb" dir="ltr">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <title>Help Desk</title>
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="index.css"> <!-- Link your custom CSS file -->
</head>
<body>

 <header>
		<div class="headname">Student Help Desk</div>
        <nav class="navbar">
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="#">View Articles</a></li>
                <li><a href="#faq">FAQ</a></li>
                <li><a href="feedback-home.jsp">Feedback</a></li>
                <li>
                    <div>
                        <!-- check for the user type -->
                        <c:if test="${sessionScope.name == null}">
                            <a class="login" href="login.jsp">Login</a>
                        </c:if>
                        <c:if test="${sessionScope.name != null}">
                            <a class="uk-button uk-button-small uk-text-bold" href="acc.jsp">${sessionScope.name}</a>
                        </c:if>
                    </div>
                </li>
            </ul>
        </nav>
   
        
</header>

   <%
		if (request.getAttribute("insert") != null) {
	%>
   		<script>alert("Ticket sent");</script>
	<%
     }
	%>

<!-- header ends -->


<div class="main-wrapper">
  
  <div class="form-wrapper">
     <img src="img/ticket.jpg" class="img">
    <form action="TicketInsert" method="POST">
      <div class="input-flex">
        <div>
          <label for="firstname" class="form-label"> Full Name </label>
          <input
            type="text"
            name="name"
            id="firstname"
            placeholder="Your full name"
            class="form-input"
          />
        </div>

      </div>

      <div class="input-flex">
        <div>
            <label for="email" class="form-label"> Email </label>
            <input
            type="email"
            name="email"
            id="email"
            placeholder="example@email.com"
            class="form-input"
            />
        </div>

      
      </div>

      <div class="mb-3 input-wrapp">
        <label for="phone" class="form-label"> Phone </label>

        <div>
 

          <input
            type="text"
            name="phone"
            id="phone"
            placeholder="Phone number"
            class="form-input"
          />
        </div>
      </div>

      <div class="mb-3">
        <label for="age" class="form-label"> Student ID </label>
        <input
          type="text"
          name="sid"
          id="sid"
          class="form-input"
        />
      </div>

     <div class="mb-3">
        <label for="age" class="form-label"> Subject </label>
        <input
          type="text"
          name="subject"
          id="subject"
          class="form-input"
        />
      </div>

      <div class="mb-3">
        <label for="message" class="form-label">
          Description
        </label>
        <textarea
          rows="6"
          name="description"
          id="description"
          class="form-input"
        ></textarea>
      </div>

     

      <input class="btn" type="submit" value="create ticket" >
    </form>
  </div>
</div>
<style>
  @import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap');
  * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
  }
  body {
    font-family: 'Inter', sans-serif;
  }
  .mb-3 {
    margin-bottom: 15px;
  }

  .main-wrapper {
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 48px;
  }

  .form-wrapper {
    margin: 0 auto;
    max-width: 570px;
    width: 100%;
    background: white;
    padding: 40px;
  }

  .img {
     display: block;
  margin-left: auto;
  margin-right: auto;
  width: 100%;
  }

  .input-wrapp > div {
    display: flex;
    gap: 20px;
  }

  .input-flex {
    display: flex;
    gap: 20px;
    margin-bottom: 15px;
  }
  .input-flex > div {
    width: 50%;
  }
  .form-input {
    width: 100%;
    padding: 13px 22px;
    border-radius: 5px;
    border: 1px solid #dde3ec;
    background: #ffffff;
    font-weight: 500;
    font-size: 16px;
    color: #536387;
    outline: none;
    resize: none;
  }
  .form-input::placeholder,
  select.form-input,
  .form-input[type='date']::-webkit-datetime-edit-text,
  .form-input[type='date']::-webkit-datetime-edit-month-field,
  .form-input[type='date']::-webkit-datetime-edit-day-field,
  .form-input[type='date']::-webkit-datetime-edit-year-field {
    color: rgba(83, 99, 135, 0.5);
  }

  .form-input:focus {
    border-color: #6a64f1;
    box-shadow: 0px 3px 8px rgba(0, 0, 0, 0.05);
  }
  .form-label {
    color: #07074D;
    font-weight: 500;
    font-size: 14px;
    line-height: 24px;
    display: block;
    margin-bottom: 10px;
  }

  .form-file-flex {
    display: flex;
    align-items: center;
    gap: 20px;
  }
  .form-file-flex .form-label {
    margin-bottom: 0;
  }
  .form-file {
    font-size: 14px;
    line-height: 24px;
    color: #536387;
  } 
  .form-file::-webkit-file-upload-button {
    display: none;
  }
  .form-file:before {
    content: 'Upload file';
    display: inline-block;
    background: #EEEEEE;
    border: 0.5px solid #FBFBFB;
    box-shadow: inset 0px 0px 2px rgba(0, 0, 0, 0.25);
    border-radius: 3px;
    padding: 3px 12px;
    outline: none;
    white-space: nowrap;
    -webkit-user-select: none;
    cursor: pointer;
    color: #637381;
    font-weight: 500;
    font-size: 12px;
    line-height: 16px;
    margin-right: 10px;
  }

  .btn {
    text-align: center;
    width: 100%;
    font-size: 16px;
    border-radius: 5px;
    padding: 14px 25px;
    border: none;
    font-weight: 500;
    background-color: #6a64f1;
    color: white;
    cursor: pointer;
    margin-top: 25px;
  }
  .btn:hover {
    box-shadow: 0px 3px 8px rgba(0, 0, 0, 0.05);
  }

  .w-45 {
    width: 45%;
  }
</style>


<!-- footer -->

<footer
        class="uk-section uk-background-secondary uk-text-center uk-text-muted"
>
    <div class="uk-container uk-container-small">
        <div>
            <ul class="uk-subnav uk-flex-center">
                <li><a href="index.jsp">Home</a></li>
                <li><a href="#faq">FAQ</a></li>
                <li><a href="#">View Articles</a></li>
            </ul>
        </div>
        <div class="uk-margin-medium">
            <div
                    data-uk-grid
                    class="uk-child-width-auto uk-grid-small uk-flex-center"
            >
                <div class="uk-first-column">
                    <a
                            href="https://twitter.com/"
                            data-uk-icon="icon: twitter"
                            class="uk-icon-link uk-icon"
                            target="_blank"
                    ></a>
                </div>
                <div>
                    <a
                            href="https://www.facebook.com/"
                            data-uk-icon="icon: facebook"
                            class="uk-icon-link uk-icon"
                            target="_blank"
                    ></a>
                </div>
                <div>
                    <a
                            href="https://www.instagram.com/"
                            data-uk-icon="icon: instagram"
                            class="uk-icon-link uk-icon"
                            target="_blank"
                    ></a>
                </div>
            </div>
        </div>
        <div class="uk-margin-medium uk-text-small uk-link-muted">
            &copy; Copyright Help desk. All Rights Reserved
        </div>
    </div>
</footer>

<!-- footer ends -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>
<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.min.css'></link>

<script type="text/javascript">

    var status = document.getElementById("ticket").value;
    if (status == "ticketnotadded") {
        swal("Sorry", "Your ticket has not been submitted.", "error");
    }
</script>
</script>
</body>
</html>
