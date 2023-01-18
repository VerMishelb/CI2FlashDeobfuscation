class wS extends gY
{
   var qE = 0;
   var eD = 0;
   var zJ = null;
   var uM = 0.75;
   var collisionSize = 0;
   var sV = null;
   var oV = null;
   var tD = null;
   function wS(vH, jF)
   {
      super(vH,jF);
   }
   function fT()
   {
      if(this.zJ != null)
      {
         this.zJ.removeMovieClip();
         this.zJ = null;
      }
   }
   function SetTexture(lA)
   {
      this.fT();
      this.zJ = this.kX.zJ.attachMovie(lA,"obj" + Core.gameWindow.eR(),this.tY);
      if(this.zJ == null || this.zJ == undefined)
      {
         Core.gameWindow.PrintError("attachMovie failed with \'" + lA + "\', tY " + this.tY);
      }
      this.nX(1);
      this.bU();
      this.collisionSize = this.uM * Math.max(this.qE / 2,this.eD / 2);
   }
   function nX(yM)
   {
      this.zJ.gotoAndStop(yM);
   }
   function bU()
   {
      if(this.zJ != null)
      {
         this.zJ._x = Core.gameWindow.middleX + this.position.x;
         this.zJ._y = Core.gameWindow.middleY - this.position.y;
         this.zJ._xscale = 100 * this.scale.x;
         this.zJ._yscale = 100 * this.scale.y;
         this.zJ._rotation = (- this.rotation) * 360 / 6.283185307179586;
         this.qE = this.zJ._width;
         this.eD = this.zJ._height;
      }
   }
   function fI()
   {
      if(this.sV == null)
      {
         this.sV = new xH(-1);
         this.oV = new Color(this.zJ);
         this.tD = new Object();
         this.tD = this.oV.getTransform();
      }
   }
   function fN()
   {
      this.fI();
      return this.sV;
   }
   function xU(color_)
   {
      this.fI();
      this.sV = color_;
      this.tD.rb = 0;
      this.tD.gb = 0;
      this.tD.bb = 0;
      this.tD.wD = 0;
      this.tD.ra = this.sV.zA * 100 / 255;
      this.tD.ga = this.sV.rH * 100 / 255;
      this.tD.ba = this.sV.uS * 100 / 255;
      this.tD.aa = this.sV.jI * 100 / 255;
      this.oV.setTransform(this.tD);
   }
   function SetVisibility(visible_)
   {
      this.zJ._visible = visible_;
   }
   function PlayAnimation()
   {
      this.zJ.gotoAndPlay(1 + Core.hY(this.zJ._totalframes));
   }
   function aH()
   {
      return this.zJ.hitTest(_root._xmouse,_root._ymouse,false);
   }
   function CollidesWith(other_obj_)
   {
      if(this.position.x + this.collisionSize < other_obj_.position.x - other_obj_.collisionSize)
      {
         return false;
      }
      if(this.position.x - this.collisionSize > other_obj_.position.x + other_obj_.collisionSize)
      {
         return false;
      }
      if(this.position.y + this.collisionSize < other_obj_.position.y - other_obj_.collisionSize)
      {
         return false;
      }
      if(this.position.y - this.collisionSize > other_obj_.position.y + other_obj_.collisionSize)
      {
         return false;
      }
      return true;
   }
   function eH()
   {
      return !(this.position.y + this.eD < this.kX.gL().y - Core.gameWindow.middleY || this.position.y - this.eD > this.kX.gL().y + Core.gameWindow.middleY);
   }
}
