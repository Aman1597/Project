<style>
    /*#saver
    {
        width:320px;
        height: 400px;
        background: black;
        margin: auto;//position: 
        //top: 50%;
        //left: 50%;
        border: 1px solid black;
        color: white;
        padding-top: 0px;
    }*/
    #ttt
    {
        width: 320px;
        height: 400px;
        margin: 0 auto;
        background: white;//black;
        color: black;//white;
        font-family: sans-serif;
        //border-radius: 0px;
        box-shadow: /*-3px 5px 10px rgba(192,192,192,1) , 3px 5px 10px rgba(192,192,192,1);*/2px 4px 7px gray , -2px 4px 7px gray;
    }
    #ttt:hover
    {
        box-shadow: /*-7px 13px 20px rgba(128,128,128,1) , 7px 13px 20px rgba(128,128,128,1); */ 4.5px 5px 20px rgba(128,128,128,0.5) , -4.5px 5px 20px rgba(128,128,128,0.5) , 3px 4px 25px gray , -3px 4px 25px gray;
    }
    #ttt td
    {
        padding-top: 0px;
        padding-bottom: 5px;
        padding-left: 30px;
        padding-right: 30px;
        font-weight: bold;
        font-size: 17.5px;
    }
    #ttt input
    {
        height: 40px;
        font-size: 16px;
        width: 100%;
        outline: none;
        margin-bottom: 20px;
    }
    .logini
    {
        background: transparent;
        border-left: none;
        border-top: none;
        border-right: none;
        border-bottom: 2px solid black;//white;
        color: #1DA1F2;
    }
    .logini:focus
    {
        border-left: none;
        border-top: none;
        border-right: none;
        //border-bottom: 2px solid white;
        border-bottom-color: red;
        transition: border-bottom-color 2s;
        //transition-timing-function: ease-in-out;
    }
    .avatar
    {   
        width: 100px;
        height: 100px;
        border-radius: 50%;
        margin: auto; //position: absolute;
        margin-top: -55px;//top: -40px;//-50px;
        margin-left: 73px;//left:100px;
        //left:calc(50%,-50px);
    }
    /*h1
    {
        margin: 0;
        padding: 0;
        text-align: center;
        font-size: 22px;
    }*/
    #ttt input[type="submit"]
    {
        border: none;
        color:white;//black;
        background: red;
        border-radius: 20px;
        font-size: 18px;
    }
    #ttt input[type="submit"]:hover
    {
        cursor: pointer;
        color: red;
        background: lightblue;
    }
</style>
<form action="generalcode/logincode.jsp" method="post">    
    <!--<div id="saver" style="margin-top: 10%;">
        <img src="images/avatar.png" class="avatar"/>
            <h1>LOGIN HERE</h1>-->

    <table border="0" id="ttt" style="border: 1px solid silver;margin-top: 10%;margin-left: 350px;">
        <tr><td><img src="images/avatar.png" class="avatar"/></td></tr>
        <tr>
            <td style="text-align: center;font-size: 22px;padding-top: 20px;padding-bottom: 10px;">LOGIN HERE</td>
        </tr>
        <tr>
            <td>User ID</td>
        </tr>
        <tr>
            <td><input class="logini" type="text" name="userid" required="" placeholder="Enter Contact Number"/></td>
        </tr>
        <tr>
            <td>Password</td>
        </tr>
        <tr>
            <td><input class="logini" type="password" name="password" required="" placeholder="Enter Your Password"/></td>
        </tr>
        <tr>
            <td style="padding-bottom: 30px;padding-top: 20px;"><input type="submit" value="Login"/></td>
        </tr>
    </table> 
    <!--</div>-->
</form>
