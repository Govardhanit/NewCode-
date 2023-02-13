<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Task2.aspx.cs" Inherits="Booking_flight_using_js_bootstrap_jquery.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
     
</head>
    <body>
        <div class="container">
        <div class="jumbotron">
        <h1>Flight Booking</h1>      
        <p>Fill the Form <b>carefully</b></p>
        </div>
        </div>
    <div class="accordion" id="accordionExample">
    <div class="card">
    <div class="card-header" id="headingOne">
    <h2 class="mb-0">
    <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne"> Flight Booking Form 
    </button>
    </h2> 
    </div>
    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
    <div class="card-body">
    <form id="form1">
            <!--First name-->
              <div class="form-group">
              <label for="usr">First Name:</label>
              <input type="text" class="form-control" id="usr" placeholder="Enter First name" />
              </div>
            <!--Last name -->
              <div class="form-group">
              <label for="usr2">Last Name:</label>
              <input type="text" class="form-control" id="usr2" placeholder="Enter Last name" />
              </div>
               <!--Gender Radio Button -->
               <div class="form-group">
                <label for="Gender">Gender:</label>
                <div class="custom-control custom-radio">
                <input type="radio" class="custom-control-input" id="maleRadio"  name="example1" value="customEx" />
                <label class="custom-control-label" for="maleRadio">Male</label></div>
                <div class="custom-control custom-radio">
                <input type="radio" class="custom-control-input" id="femaleRadio" name="example1" value="customEx" />
                <label class="custom-control-label" for="femaleRadio">Female</label>
                </div>
                <div class="custom-control custom-radio">
                <input type="radio" class="custom-control-input" id="otherRadio" name="example1" value="customEx" />
                <label class="custom-control-label" for="otherRadio">Others</label></div>
               <!---DOB--->
               <div class="form-group">
              <label for="DOB"> DOB:</label>
              <input type="date" class="form-control"  id="DOB" />
              </div>
              <!--Phone-->
               <div class="form-group">
               <label for="phone">Phone:</label>
              <input type="tel" class="form-control" id="phone" placeholder="Add number"/>
             </div>
              <!--Flight Start Date-->
               
               <div class="form-group">
              <label for="startDate">Start Date:</label>
              <input type="date" class="form-control" id="startDate"/>
              </div>
              <!--Flight End Date-->
                  
                    <div class="form-group">
                    <label for="endDate">End Date:</label>
                    <input type="date" class="form-control" id="endDate"/>
                    </div>    
                 
              <!--Country-->
                 <div class="form-group">
                 <label for="Country">Country:</label>
                 <select id="country-select" class ="form-control">
                 <option>Select a Country</option></select>
                </div>
             <!--- State--->
               <div class="form-group">
               <label for="State">State:</label>
               <select id="state-select" class ="form-control" disabled="disabled">
               <option>Select a state</option> </select></div>
            <!--Languages known Check box -->
            <label for="languages">Languages Known:</label>
            <div class="form-check">
            <label class="form-check-label">
            <input type="checkbox" class="form-check-input" id="english-checkbox" value="" />English
            </label>
            </div>
            <div class="form-check">
            <label class="form-check-label">
            <input type="checkbox" class="form-check-input" id="french-checkbox" value="" />French
            </label>
            </div>
            <div class="form-check">
            <label class="form-check-label">
            <input type="checkbox" class="form-check-input" id="spanish-checkbox" value="" />Spanish
            </label>
            </div>
           <!--upload folder -->
             <div class="form-group">
             <label for="Upload">Upload a file</label>
             <input type="file" class="form-control-file" id="Upload" /> </div>
           <!--Email form -->
             <div class="form-group">
             <label for="email">Email:</label>
             <input type="email" class="form-control" id="email" placeholder="Enter mail" name="email" /></div>   
            <!--reset-->
              <button type ="reset" class="btn btn-dark" onclick = "newFunction()" value = "Reset" >Reset</button>               
              </div>   
              </form>
            <!--submit-->  
              <button id="submitButton" onclick = "newFunction()" class="btn btn-primary" value = "submit" >Submit</button>
              </div>
              </div>
              </div>
              <div class="card">
              <div class="card-header" id="headingTwo">
              <h2 class="mb-0">
              <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
               Collected Data 
              </button>
              </h2>
              </div>
              <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
              <div class="card-body" id="outputContainer">
              </div>
              </div>
              </div>
              </div>
              </body>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script>
        document.querySelector("#submitButton").addEventListener("click", function () {
            event.preventDefault();
            var firstName = document.querySelector("#usr").value;
            var lastName = document.querySelector("#usr2").value;
            var day = document.querySelector("#DOB").value;
            var p = document.querySelector("#phone").value;
            var startdate = document.querySelector("#startDate").value;
            var enddate = document.querySelector("#endDate").value;
            var country = document.querySelector("#country-select").value;
            var state = document.querySelector("#state-select").value;
            var upload = document.querySelector("#Upload").value;
            var email = document.querySelector("#email").value;
            var valid = true;
            const inputs = document.querySelectorAll("input");
            inputs.forEach(input => {
            input.value = "";
             });
             //Sweet alert 2 
            if (!firstName) {
             valid = false;
             Swal.fire({
             icon: 'error',
             title: 'Oops...',
             text: 'Please enter your first name'
              });
              }
           if (!lastName) {
           valid = false;
           Swal.fire({
           icon: 'error',
           title: 'Oops...',
           text: 'Please enter your last name'
           });
           }
          if (!day) {
          valid = false;
          Swal.fire({
          icon: 'error',
          title: 'Oops...',
          text: 'Please enter your date of birth'
          });
          }
         if (!p) {
         valid = false;
         Swal.fire({
         icon: 'error',
         title: 'Oops...',
         text: 'Please enter your phone number'
         });
         }
         if (!startdate) {
         valid = false;
         Swal.fire({
         icon: 'error',
         title: 'Oops...',
         text: 'Please enter your start date'
          });
          }
         if (!enddate) {
         valid = false;
         Swal.fire({
         icon: 'error',
         title: 'Oops...',
         text: 'Please enter your end date'
          });
          }
         if (!country) {
         valid = false;
         Swal.fire({
         icon: 'error',
         title: 'Oops...',
         text: 'Please select your country'
         });
          }
      if (!state) {
      valid = false;
      Swal.fire({
      icon: 'error',
      title: 'Oops...',
      text: 'Please select your state'
      });
      }
      if (!upload) {
      valid = false;
      Swal.fire({
      icon: 'error',
      title: 'Oops...',
      text: 'Please upload your file'
       });
       }
      if (!email) {
      valid = false;
      Swal.fire({
      icon: 'error',
      title: 'Oops...',
      text: 'Please enter your email'
       });
       }
       // output of HTML string
            var outputHTML = `<p>First Name: ${firstName}</p>`;
            outputHTML += `<p>Last Name: ${lastName}</p>`;
            outputHTML += `<p>DOB: ${day}</p>`;
            outputHTML += `<p>phone:${p}</p>`;
            outputHTML += `<p>Start Date: ${startdate}</p>`;
            outputHTML += `<p>Enddate: ${enddate}</p>`;
            outputHTML += `<p>Country: ${country}</p>`;
            outputHTML += `<p>State: ${state}</p>`;
            outputHTML += `<p>Upload: ${upload}</p>`;
            outputHTML += `<p>Email: ${email}</p>`;
            // Check the selected languages
           var languages = [];
           if (document.querySelector("#english-checkbox").checked) {
           languages.push("English");
           }
           if (document.querySelector("#french-checkbox").checked) {
           languages.push("French");
           }
          if (document.querySelector("#spanish-checkbox").checked) {
          languages.push("Spanish");
           }
          outputHTML += `<p>Languages: ${languages.join(", ")}</p>`;
            //  HTML into the "outputContainer"
            document.querySelector("#outputContainer").innerHTML = outputHTML;
            document.querySelector("#usr").value = "";
            document.querySelector("#usr2").value = "";
            document.querySelector("#DOB").value = "";
            document.querySelector("#phone").value = "";
            document.querySelector("#startDate").value = "";
            document.querySelector("#endDate").value = "";
            document.querySelector("#country-select").value = "";
            document.querySelector("#state-select").value = "";
            document.querySelector("#Upload").value = "";
            document.querySelector("#email").value = "";
            document.querySelector("#english-checkbox").checked = false;
            document.querySelector("#french-checkbox").checked = false;
            document.querySelector("#spanish-checkbox").checked = false;
        });
    </script> 
   <script>  // Reset script
       function newFunction()
       var element = document.getElementById(" form_id ");
       element.reset();
   </script>
  <script>  // Country and State script
      $(document).ready(function () {
          var countries = {
              USA: ['Alabama', 'Alaska', 'Arizona', 'Arkansas'],
              France: ['Alsace', 'Brittany', 'Midi', 'IDF'],
              Italy: ['Venice', 'Naples', 'Milan', 'Genoa']
          };
          Object.keys(countries).forEach(function (country) {
              $('#country-select').append($('<option>', {
                  value: country,
                  text: country
              }));
          });
          $('#country-select').change(function () {
              var selectedCountry = $(this).val();
              var states = countries[selectedCountry];
              $('#state-select').empty();
              $('#state-select').append($('<option>', {
                  value: '',
                  text: 'Select a state'
              }));
              if (states) {
                  states.forEach(function (state) {
                      $('#state-select').append($('<option>', {
                          value: state,
                          text: state
                      }));
                  });
                  $('#state-select').prop('disabled', false);
              } else {
                  $('#state-select').prop('disabled', true);
              }
          });
      });
  </script>
  <script>
    function setMinStartDate() {
      // Get today's date
      var today = new Date();
      document.getElementById("startDate").min = today.toISOString().substr(0, 10);
    }</script>
        <script>
            // Get today's date
            var today = new Date();
            var endDateInput = document.getElementById("endDate");
            endDateInput.min = new Date(today.getFullYear(), today.getMonth() , today.getDate()).toISOString().substr(0, 10);
            endDateInput.onchange = function() {
            var selectedDate = new Date(endDateInput.value);
            if (selectedDate > new Date(today.getFullYear(), today.getMonth() + 3, today.getDate())) {
           endDateInput.value = "";
           Swal.fire(
          'Booking should not extend 3 months',
          'Retry again!',
           'warning'
             )
        }
        };
        </script>
</html>
    

