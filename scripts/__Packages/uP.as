class uP extends Object
{
   var zH = "";
   var bY = null;
   var mR = null;
   function uP()
   {
      super();
   }
   function lU(oJ)
   {
      oJ.uT = false;
      oJ.SetVisibility(false);
      this.oQ(oJ);
   }
   function xM()
   {
      return eM(this.kE);
   }
   function qZ()
   {
      return eM(this.kE.xY);
   }
   function Update(iW, delta_)
   {
      if(this.xM() != null)
      {
         if(this.xM().iI && (this.xM().zF && Core.gameWindow.yE))
         {
            this.xM().uT = true;
         }
      }
      while(this.xM() != null && this.xM().uT)
      {
         var _loc2_ = this.xM();
         this.eA(_loc2_);
         _loc2_.lW(true);
         this.mR = null;
         if(_loc2_.gD)
         {
            _loc2_.iH();
         }
      }
      if(this.xM() == null)
      {
         return undefined;
      }
      if(this.xM() != this.mR)
      {
         if(this.mR != null)
         {
            this.mR.lW(false);
         }
         this.xM().uK();
         this.mR = this.xM();
      }
      this.bY = this.xM();
      this.bY.Update(iW,delta_);
   }
   function dX()
   {
      if(this.xM() == null)
      {
         return undefined;
      }
      this.bY.dX();
   }
   function qM()
   {
      var _loc2_ = this.first;
      var _loc3_ = 0;
      while(_loc2_ != null)
      {
         if(eM(_loc2_).zJ._visible)
         {
            _loc3_ = _loc3_ + 1;
         }
         _loc2_ = _loc2_.next;
      }
      return _loc3_;
   }
}
