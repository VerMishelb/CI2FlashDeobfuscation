class eM extends Object
{
   var sN = false;
   var uT = false;
   var iI = true;
   var zF = false;
   var gD = false;
   var vK = true;
   var iW = 0;
   static var dN = 77;
   var tY = 0;
   function eM(vH)
   {
      super(vH);
      this.tY = eM.dN;
      eM.dN++;
      this.zJ = _root.createEmptyMovieClip("ctx" + Core.gameWindow.eR(),this.tY);
      this.dF = new Vector2(0,0);
      this.wP = new Vector2(0,0);
   }
   function Update(kH, delta_)
   {
      if(!this.zJ._visible)
      {
         return undefined;
      }
      this.iW += delta_;
      this.wP = this.dF.Add(Core.gameWindow.cX);
      super.Update(this.iW,delta_);
   }
   function SetVisibility(visible_)
   {
      this.zJ._visible = visible_;
   }
   function uK()
   {
      this.SetVisibility(true);
      if(this.sN)
      {
         eM(this.xY).SetVisibility(true);
      }
      Core.gameWindow.SetMouseVisibility(this.vK);
   }
   function lW(lJ)
   {
      this.SetVisibility(false);
      if(this.sN)
      {
         eM(this.xY).SetVisibility(false);
      }
      Core.gameWindow.yE = false;
   }
   function vO(val_)
   {
      this.dF = val_.GetValue();
      this.zJ._x = - this.dF.x;
      this.zJ._y = this.dF.y;
   }
   function gL()
   {
      return this.dF;
   }
}
