  <!--Main content for login page-->
    <div data-aos="zoom-in-up"
                    data-aos-offset="-100"
                    data-aos-delay="1"
                    data-aos-duration="500"
                    data-aos-easing="ease-in-out"
                    data-aos-mirror="true"
                    data-aos-once="false"
                    data-aos-anchor-placement="top" id = "access-main">
<br><br>
        <h2>Log In</h2><br>
        <p>New to this site? <a href="#" id="registrationPage">Sign up</a> </p>

        <!--Form used for logging in-->
        <form action="../../jsp/LoginAction.jsp" method="post" class="Form">
            <table id="loginFormTable">
            
                <tr>
                    <td>
                        <label for="email">Email: </label><br>
                        <input type="email" name="email" id="email" required>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="password">Password: </label><br>
                        <input type="password" name="password" id="password" required> <br>
                        <div id="viewPassword-container"><input type="checkbox" id="viewPwd"><label for="viewPwd">Show Password</label></div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <br>
                        <a href = "pages/forgotPassword.html" id="forgotpassword">Forgot Password</a>
                    </td>
                </tr>

                <tr>
                    <td><input type="submit" value="Login" id="submit"/>
                    </td>
                </tr>
            </table>
        </form>
       
    </div>

    <script>


            //loads registrationPage on click
            $("#registrationPage").on('click', function(){
            
                $("main").hide().load("pages/states/registrationPage.txt").fadeIn("slow");
            })

            //changes password to Text
            $(function(){
        let viewPwd = false;

            $("#viewPwd").on('click', function(){
            let getPwdType = $("#password");
            if(viewPwd === false) {
                console.log('checked, changed password field to text')
                getPwdType.attr('type', 'text');
                viewPwd = true;
            
            }
            else if(viewPwd === true){
                console.log("Unchecked, changed password field back to password")
                getPwdType.attr('type', 'password');
                viewPwd = false;
            }
            })
        })
    </script>
   
   
  