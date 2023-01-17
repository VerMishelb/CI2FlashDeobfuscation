class bK
{
   var tS = false;
   var xY = null;
   var vM = null;
   var wJ = null;
   var kE = null;
   var qA = null;
   function bK()
   {
   }
   function iH()
   {
      this.fZ();
      false;
   }
   function eO()
   {
      return this.wJ == null;
   }
   function oQ(cQ)
   {
      if(this.wJ == null)
      {
         cQ.xY = cQ.vM = null;
         this.wJ = this.kE = cQ;
      }
      else
      {
         this.aI(this.kE,cQ);
         this.kE = cQ;
      }
      cQ.qA = this;
   }
   function gU(cQ)
   {
      if(this.wJ == null)
      {
         this.wJ = this.kE = cQ;
         cQ.vM = null;
         cQ.xY = null;
      }
      else
      {
         cQ.xY = null;
         cQ.vM = this.wJ;
         this.wJ.xY = cQ;
         this.wJ = cQ;
      }
      cQ.qA = this;
   }
   function sC(cQ, zC)
   {
      if(zC == this.kE)
      {
         this.oQ(cQ);
      }
      else
      {
         cQ.vM = zC.vM;
         cQ.vM.xY = cQ;
         cQ.xY = zC;
         zC.vM = cQ;
         cQ.qA = this;
      }
   }
   function eA(cQ)
   {
      if(this.wJ == this.kE)
      {
         this.wJ = this.kE = null;
      }
      else if(cQ == this.wJ)
      {
         this.wJ = this.wJ.vM;
      }
      else if(cQ == this.kE)
      {
         this.kE = this.kE.xY;
      }
      cQ.dC();
      cQ.qA = null;
   }
   function pD(cQ)
   {
      this.eA(cQ);
      cQ.iH();
   }
   function fZ()
   {
      var _loc2_ = undefined;
      while(this.kE != null)
      {
         _loc2_ = this.kE;
         this.eA(this.kE);
         _loc2_.iH();
      }
   }
   function pV(iZ, eF)
   {
      if(iZ != null)
      {
         iZ.vM = eF;
      }
      if(eF != null)
      {
         eF.xY = iZ;
      }
   }
   function dC()
   {
      if(this.xY != null)
      {
         this.xY.vM = this.vM;
      }
      if(this.vM != null)
      {
         this.vM.xY = this.xY;
      }
   }
   function aI(pK, mP)
   {
      this.pV(mP,pK.vM);
      this.pV(pK,mP);
   }
   function bP()
   {
      var _loc2_ = this.wJ;
      var _loc3_ = 0;
      while(_loc2_ != null)
      {
         _loc3_ = _loc3_ + 1;
         _loc2_ = _loc2_.vM;
      }
      return _loc3_;
   }
   function sK()
   {
      if(this.eO())
      {
         return null;
      }
      var _loc4_ = this.bP();
      if(_loc4_ == 1)
      {
         return this.wJ;
      }
      var _loc3_ = Core.hY(_loc4_);
      var _loc2_ = this.wJ;
      while(_loc2_ != null)
      {
         if(_loc3_ == 0)
         {
            return _loc2_;
         }
         _loc3_ = _loc3_ - 1;
         _loc2_ = _loc2_.vM;
      }
      return null;
   }
}
