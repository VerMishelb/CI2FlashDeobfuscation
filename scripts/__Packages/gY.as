class gY extends Object
{
   var uN = null;
   var tY = -1;
   var kX = null;
   var rotation = 0;
   function gY(vH, jF)
   {
      super(vH);
      this.position = new Vector2(0,0);
      this.scale = new Vector2(1,1);
      this.rotation = 0;
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
   function GetPosition()
   {
      return this.position;
   }
   function SetPosition(new_position_)
   {
      this.position.x = new_position_.x;
      this.position.y = new_position_.y;
      this.bU();
   }
   function SetPositionRotation(new_position_, new_rotation_)
   {
      this.position.x = new_position_.x;
      this.position.y = new_position_.y;
      this.rotation = new_rotation_;
      this.bU();
   }
   function GetScale()
   {
      return this.scale.GetValue();
   }
   function SetScale(new_scale_)
   {
      this.scale = new_scale_.GetValue();
      this.bU();
   }
   function SetScaleInt(new_scale_int_)
   {
      this.scale = new Vector2(new_scale_int_,new_scale_int_);
      this.bU();
   }
   function GetRotation()
   {
      return this.rotation;
   }
   function SetRotation(new_rotation_)
   {
      this.rotation = new_rotation_;
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
