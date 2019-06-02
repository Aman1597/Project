<style>
    #tt font
    {
       font-size: 16px;  
       color: red;
    }
    .rhs
    {
       text-align: left;
    }
    #tt
    {
       text-align: center;
       border-radius: 20px;
       margin-left: 25%;
       background-color: whitesmoke;
       //background-image: url("../images/img4.jpeg");
       //background-size: 100% 100%;
    }
    .rhs input
    {
       height: 17.8px;
    }
    .i
    {
        background-color: transparent;
        width: 80%;
        border-left: none;
        border-top: none;
        border-right: none;
        border-bottom: 1px solid;
        outline: none;
    }
    .i:focus
    {
        background-color: transparent;
        border-left: none;
        border-top: none;
        border-right: none;
        border-bottom: 1px solid blue;
        transition: border-bottom 2s;
        transition-timing-function: ease-in-out;
    }
    #tt h6
    {
        display: inline
    }
    #arl
    {
        margin-left: 25%;
        margin-top: 0px;
        width: 50%;
        text-align: left;
        color: yellow;
        text-decoration: none;
        font-size: 18px;
    }
    #arl:hover
    {
        color: purple;
    }
</style>
<form action="generalcode/registrationcode.jsp" method="post">
    <table border="0" id="tt" style="color:black;margin-top:70px; width: 50%;">
        <tr>
            <td colspan="2" style="padding-top: 25px;padding-bottom: 10px;font-size: 25px;"><b>REGISTRATION FORM</b></td>
        </tr>
        <tr>
            <td></td>
            <td style="padding-bottom: 12.5px;"><h6>Fields marked with</h6> <font>*</font> <h6>are Mandatory.</h6></td>
        </tr>
        <tr>
            <td style="width: 50%;">Patient's Name</td>
            <td class="rhs">
                <font>*</font><input class="i" type="text" name="patientname" required=""/>
            </td>
        </tr>
        <tr>
            <td>Gender</td>
            <td class="rhs" style="height:22px; padding-top: 4px;">
                <font>*</font><input style="height:13px;" type="radio" name="gender" value="Male" required=""/>Male
                <input style="height:13px;" type="radio" name="gender" value="Female"/>Female
            </td>
        </tr>
        <tr>
            <td>Father's Name</td>
            <td class="rhs">
                <font>*</font><input class="i" type="text" name="fathername" required=""/>
            </td>
        </tr>
        <tr>
            <td>Address 1</td>
            <td class="rhs">
                <font>*</font><textarea class="i" name="address1" required=""></textarea>
            </td>
        </tr>
        <tr>
            <td>Address 2</td>
            <td class="rhs">
                &nbsp;&nbsp;<textarea class="i" name="address2"></textarea>
            </td>
        </tr>
        <tr>
            <td>Disease</td>
            <td class="rhs">
                <font>*</font><input class="i" type="text" name="disease" required=""/>
            </td>
        </tr>
        <tr>
            <td>Referred By</td>
            <td class="rhs">
                &nbsp;&nbsp;<input class="i" type="text" name="referedby"/>
            </td>
        </tr>
        <tr>
            <td>Hospital Name</td>
            <td class="rhs">
                &nbsp;&nbsp;<input class="i" type="text" name="hospitalname"/>
            </td>
        </tr>
        <tr>
            <td>Contact Number</td>
            <td class="rhs">
                <font>*</font><input class="i" type="number" name="contactno" required=""/>
            </td>
        </tr>
        <tr>
            <td>Email Address</td>
            <td class="rhs">
                &nbsp;&nbsp;<input class="i" type="email" name="emailaddress"/>
            </td>
        </tr>
        <tr>
            <td>Aadhaar Number</td>
            <td class="rhs">
                <font>*</font><input class="i" type="number" name="adharno" required=""/>
            </td>
        </tr>
        <tr>
            <td>Password</td>
            <td class="rhs">
                <font>*</font><input class="i" type="password" name="password" required=""/>
            </td>
        </tr>
        <tr>
            <td>Confirm Password</td>
            <td class="rhs">
                <font>*</font><input class="i" type="password" name="confirmpassword" required=""/>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="padding: 13px;">
                <input type="submit" value="Submit" style="border: 1px solid grey;font-size: 13px;height: 22px;font-weight: bold;"/>
            </td>
        </tr>
    </table>
    <a id="arl" href="#login">&nbsp;&nbsp;&nbsp;<b>Already Registered? / Login</b></a><a><b id="arl" href="index.jsp" style="margin-left: 21%;text-align: right;">Home</b></a>
</form>