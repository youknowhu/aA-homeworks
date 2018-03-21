document.addEventListener("DOMContentLoaded", function(){
  const canvasEl = document.getElementById('mycanvas');
  canvasEl.width = 1000;
  canvasEl.height = 500;

  const ctx = canvasEl.getContext('2d');
  ctx.fillStyle = 'gold';
  // ctx.fillRect(0, 0, 500, 500);


  // ctx.beginPath();
  // ctx.arc(100, 100, 20, 0, 2*Math.PI, true);
  // ctx.strokeStyle = "green";
  // ctx.lineWidth = 5;
  // ctx.stroke();
  // ctx.fillStyle = "blue";
  // ctx.fill();

  ctx.save();
  ctx.beginPath();
  ctx.translate(100, 100);
  ctx.moveTo(0, 0 - 100);

  for (let i = 0; i < 15; i++)
    {
        ctx.rotate(Math.PI / 15);A
        ctx.lineTo(0, 0 - (100*0.5));
        ctx.rotate(Math.PI / 15);
        ctx.lineTo(0, 0 - 100);
    }
    ctx.fill();
    ctx.restore();

});
