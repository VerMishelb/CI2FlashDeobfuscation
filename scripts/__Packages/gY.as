class gY extends Object
{
   var uN = null;
   var tY = -1;
   var kX = null;
   var vJ = 0;
   function gY(vH, jF)
   {
      super(vH);
      this.mN = new Vector2(0,0);
      this.eK = new Vector2(1,1);
      this.vJ = 0;
      this.uN = jF;
      if(this.uN == undefined)
      {
         Core.gameWindow.PrintError("uN is undefined");
      }
      this.tY = this.uN.gE();
      this.kX = this.xP();
   }
   function fT()
   {
   }
   function bU()
   {
   }
   function iH()
   {
      this.fT();
      this.uN.jO(this.tY);
      super.iH();
   }
   function position()
   {
      return this.mN;
   }
   function SetPosition(new_position_)
   {
      this.mN.x = new_position_.x;
      this.mN.y = new_position_.y;
      this.bU();
   }
   function rN(new_position_, zU)
   {
      this.mN.x = new_position_.x;
      this.mN.y = new_position_.y;
      this.vJ = zU;
      this.bU();
   }
   function iM()
   {
      return this.eK.GetValue();
   }
   function pL(aC)
   {
      this.eK = aC.GetValue();
      this.bU();
   }
   function cA(sX)
   {
      this.eK = new Vector2(sX,sX);
      this.bU();
   }
   function cF()
   {
      return this.vJ;
   }
   function lY(zU)
   {
      this.vJ = zU;
      this.bU();
   }
   function dX()
   {
      super.dX();
   }
   function xP()
   {
      var _loc2_ = this;
      while(_loc2_ != null)
      {
         if(_loc2_ instanceof eM)
         {
            return eM(_loc2_);
         }
         _loc2_ = Object(_loc2_.qA);
      }
      Core.gameWindow.PrintError("No eM qA.");
      return null;
   }
   function jX()
   {
      var _loc2_ = this;
      while(_loc2_ != null)
      {
         if(_loc2_ instanceof nZ)
         {
            return nZ(_loc2_);
         }
         _loc2_ = Object(_loc2_.qA);
      }
      Core.gameWindow.PrintError("No Depthpool qA.");
      return null;
   }
}
