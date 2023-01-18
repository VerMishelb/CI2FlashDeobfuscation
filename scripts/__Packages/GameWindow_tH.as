class GameWindow
{
   var uA = true;
   var width = 0;
   var height = 0;
   var middle_x = 0;
   var middle_y = 0;
   var fps = 0;
   var qK = 0;
   var iW = 0;
   var delta_ = 0;
   var isMousePressed = false;
   var uJ = null;
   var eE = null;
   var yE = false;
   var cX = null;
   var pJ = null;
   var rJ = null;
   var bG = 0;
   var dB = 0;
   function GameWindow(rB, xN, target_fps)
   {
      this.width = rB;
      this.height = xN;
      this.middle_x = this.width / 2;
      this.middle_y = this.height / 2;
      this.fps = target_fps;
      this.uJ = new wG(true);
      this.eE = new wG(true);
      this.pJ = new Object();
      this.rJ = new Object();
      Mouse.addListener(this);
   }
   function onMouseDown()
   {
      this.isMousePressed = true;
   }
   function mW(rG)
   {
      var _loc3_ = getTimer();
      this.yE = this.isMousePressed;
      this.isMousePressed = false;
      this.cX = new Vector2(_root._xmouse - this.middle_x,- (_root._ymouse - this.middle_y));
      this.qK++;
      this.delta_ = 1 / this.fps;
      this.iW += this.delta_;
      rG.Update(this.iW,this.delta_);
      this.bG = _loc3_;
   }
   function eR()
   {
      this.dB++;
      return this.dB;
   }
   function PrintError(sB)
   {
   }
   function PlaySound(qT)
   {
      if(this.uJ.uS)
      {
         if(this.pJ[qT] != undefined)
         {
            if(this.iW < this.rJ[qT] + this.pJ[qT])
            {
               return undefined;
            }
            this.rJ[qT] = this.iW;
         }
         var _loc3_ = new Sound();
         _loc3_.attachSound(qT);
         _loc3_.start();
      }
   }
   function SetMouseVisibility(visible_)
   {
      if(visible_)
      {
         Mouse.show();
      }
      else
      {
         Mouse.hide();
      }
   }
}
