
function addStyle(style) {

    /* Create style document */
    let css = document.createElement('style');
    css.type = 'text/css';

    if (css.styleSheet)
        css.styleSheet.cssText = styles;
    else
        css.appendChild(document.createTextNode(styles));

    /* Append style to the tag name */
    document.getElementsByTagName("head")[0].appendChild(css);
}
/* Set the style */
let styles = ".screenHeight{height:" + screen.height + "px;}";
/* Function call */
window.onload = function () { addStyle(styles) };
//make a remark
// console.log(link);
// link.addEventListener("click",func());
// function func(){


//     this.className+="border";
// }
// let Links= document.querySelectorAll(".menuLinks");
// for(var val in Links){
//     val.addEventListener("click",function(){
//         this.className+="border";
//     })
// }
function validateForm(e) {
    if (e.preventDefault) {
        e.preventDefault();
    }
    e.returnValue = false; // for IE
}
$(document).ready(function(){
    $(window).scroll(function() {
     let windowHeight=$(window).height();
     let current_height=$(this).scrollTop();
     console.log(current_height);
     if (current_height=0 || current_height<windowHeight) {
         console.log("hello");
         $(`.menuLinks[href='#about']`).removeClass("border");

         $(`.menuLinks[href='#home']`).removeClass("border");
         $(`.menuLinks[href='#home']`).addClass("border");

 
        //  $(".navigation").addClass("desktopbar");
     }
    //  else{
    //      $(".navigation").removeClass("desktopbar");
    //      $(`.nav-link[href='#about']`).removeClass("createline");
    //      $(`.nav-link[href='#home']`).addClass("createline");
    //  }
    
    })
 })


function interaction(){
    let currentSection= $("section");
    // console.log(currentSection);
    currentSection.waypoint(function (direction) { 
        if (direction== "down") {
            let currentSectionId = $(this.element).attr('id');
            // console.log(currentSectionId);
            setInteraction(currentSectionId);
        }
        
    },{upset:"20%"});
    currentSection.waypoint(function (direction) { 
        if (direction== "up") {
            console.log("It is worked ");
            let currentSectionId = $(this.element).attr('id');
          console.log(currentSectionId);
            setInteraction(currentSectionId);
        }
    },{offset:"40%"});
}
function setInteraction(currentId){
    //$(`.menuLinks[href='#home']`).addClass("border");

    $(".menuLinks").removeClass("border");
    $(`.menuLinks[href='#${currentId}']`).addClass("border");
        // $(".menuLinks").removeClass("border");


    
}
interaction();
//timer
