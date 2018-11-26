document.addEventListener("DOMContentLoaded", function(){
  const myCanvas = document.getElementById("mycanvas");
  const ctx = myCanvas.getContext('2d');
  ctx.fillStyle = 'red';
  ctx.fillRect(50,50,400,300)
});


document.addEventListener("DOMContentLoaded", function() {
  const myCanvas = document.getElementById("mycanvas");
  const ctx = myCanvas.getContext('2d');
  ctx.beginPath();

  ctx.arc(100, 410, 50, 0, 2*Math.PI);
  ctx.strokeStyle = "purple";
  ctx.lineWidth = 10;
  ctx.stroke();
});
