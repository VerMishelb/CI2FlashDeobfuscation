class Object extends bK
{
   static var vT = 0;
   var fE = 0;
   var zE = 0;
   var eY = 0;
   var yQ = 0;
   function Object(vH)
   {
      super();
      if(vH != undefined)
      {
         vH.oQ(this);
      }
   }
   function Update(iW, delta_)
   {
      this.eG(iW,delta_);
      var _loc2_ = Object(this.first);
      while(_loc2_ != null)
      {
         var _loc3_ = _loc2_;
         _loc2_.Update(iW,delta_);
         _loc2_ = Object(_loc2_.next);
         if(_loc3_.tS)
         {
            this.pD(_loc3_);
         }
      }
   }
   function dX()
   {
      var _loc2_ = Object(this.first);
      while(_loc2_ != null)
      {
         _loc2_.dX();
         _loc2_ = Object(_loc2_.next);
      }
   }
   function lZ()
   {
   }
   function lI(gQ, bH, eC)
   {
      if(bH == undefined)
      {
         bH = 0;
      }
      if(eC == undefined)
      {
         eC = false;
      }
      if(this.yQ == gQ && !eC)
      {
         return undefined;
      }
      this.yQ = gQ;
      this.zE = bH;
      if(this.zE <= 0)
      {
         this.fE = this.yQ;
         this.eY = 0;
         this.lZ();
      }
   }
   function eG(iW, delta_)
   {
      this.eY += delta_;
      if(this.zE > 0)
      {
         this.zE -= delta_;
         if(this.zE <= 0)
         {
            this.fE = this.yQ;
            this.eY = 0;
            this.lZ();
         }
      }
   }
}
