class mF extends hH
{
   var qY = null;
   var tC = false;
   var vP = null;
   function mF(vH, new_position_, wE, cE)
   {
      super(vH,new_position_,wE);
      this.qY = cE;
      this.tC = !this.qY.uS;
      this.vP = new sT(this,Core.kD,"fontBool_symbol");
      this.vP.aJ = sT.jP;
      this.vP.iU = sT.jP;
      this.vP.SetPosition(new_position_.Add(new Vector2(-75,0)));
      this.vP.SetScaleInt(0.45);
   }
   function Update(iW, delta_)
   {
      if(this.qY.uS != this.tC)
      {
         this.zP();
         this.tC = this.qY.uS;
      }
      super.Update(iW,delta_);
   }
   function mI()
   {
      this.qY.uS = !this.qY.uS;
   }
   function zP()
   {
      if(this.qY.uS)
      {
         this.vP.nN("3");
         this.vP.xU(new xH(4293982463));
      }
      else
      {
         this.vP.nN("7");
         this.vP.xU(new xH(4290772992));
      }
   }
}
