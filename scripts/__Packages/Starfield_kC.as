class Starfield extends Object
{
   var nE = 0;
   var cU = 0;
   var zY = 0;
   var mD = null;
   var rD = null;
   var fF = true;
   function Starfield(vH)
   {
      super(vH);
      this.mD = new wS(this,Core.zW);
      this.mD.SetTexture("sky_symbol");
      this.rD = new wS(this,Core.zW);
      this.rD.SetTexture("sky_symbol");
   }
   function Update(iW, delta_)
   {
      if(this.fF != Core.gameWindow.eE.uS)
      {
         this.fF = Core.gameWindow.eE.uS;
         this.mD.SetVisibility(this.fF);
         this.rD.SetVisibility(this.fF);
      }
      if(!this.fF)
      {
         return undefined;
      }
      if(this.cU < this.nE)
      {
         this.cU++;
      }
      else if(this.cU > this.nE)
      {
         this.cU--;
      }
      this.zY += this.cU;
      while(this.zY > Core.gameWindow.height)
      {
         this.zY -= Core.gameWindow.height;
      }
      this.mD.SetPosition(new Vector2(0,- this.zY));
      this.rD.SetPosition(new Vector2(0,- this.zY + Core.gameWindow.height));
      super.Update(iW,delta_);
   }
}
