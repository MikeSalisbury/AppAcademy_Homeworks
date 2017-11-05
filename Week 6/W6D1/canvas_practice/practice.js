document.addEventListener("DOMContentLoaded", function(){
const myCanvas = document.getElementById("mycanvas");
myCanvas.width = 500;
myCanvas.height = 500;
let ctx = myCanvas.getContext('2d');
ctx.fillStyle = 'blue';
ctx.fillRect(100, 100, 300, 300);
ctx.beginPath();
ctx.arc(300,300,100,0,4*Math.PI);
ctx.strokeStyle = 'red';
ctx.lineWidth = 2;
ctx.stroke();
ctx.fillStyle = 'red';
ctx.fill();


});
