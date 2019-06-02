var imgArr=["bigimg3.jpg","bigimg4.jpg","bigimg2.jpg","bigimg5.jpg","bigimg1.jpg","bigimg7.jpg"];
var index=0;
function moveSlider()
{
    if(index==imgArr.length)
        index=0;
    document.getElementById("abe_khisak").src="images/"+imgArr[index];
    index++;
    window.setTimeout("moveSlider()",1500);
}
   //$('#abe_khisak').animate({'margin-left': '-=1000px'},1000);
    //window.setInterval("moveSlider()",1500);
/*$(moveSlider()
{
 setInterval(moveSlider()
 {
     $('#slider .slides').animate({'margin-left': '-=1000px'}, 1000);
 }, 3000);    
});
*/