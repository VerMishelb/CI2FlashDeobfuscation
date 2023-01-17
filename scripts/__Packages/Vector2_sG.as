class Vector2
{
   function Vector2(x_, y_)
   {
      this.x = x_;
      this.y = y_;
   }
   function GetValue()
   {
      return new Vector2(this.x,this.y);
   }
   function Add(val_)
   {
      return new Vector2(this.x + val_.x,this.y + val_.y);
   }
   function Subtract(val_)
   {
      return new Vector2(this.x - val_.x,this.y - val_.y);
   }
   function DistanceSquared(val_)
   {
      return (val_.x - this.x) * (val_.x - this.x) + (val_.y - this.y) * (val_.y - this.y);
   }
   function Distance(val_)
   {
      return Math.sqrt(this.DistanceSquared(val_));
   }
   function NormaliseBy(var_float_)
   {
      var _loc2_ = this.Distance(new Vector2(0,0));
      this.x = this.x / _loc2_ * var_float_;
      this.y = this.y / _loc2_ * var_float_;
   }
   static function Interpolate(start_point_, end_point_, current_step_)
   {
      return new Vector2(Core.ValueInRange(start_point_.x,end_point_.x,current_step_),Core.ValueInRange(start_point_.y,end_point_.y,current_step_));
   }
   static function qI(dT, oW, aX, mB, current_step_)
   {
      var _loc10_ = dT.x + current_step_ * oW.x;
      var _loc11_ = dT.y + current_step_ * oW.y;
      var _loc4_ = dT.x + oW.x + current_step_ * (aX.x - mB.x - (dT.x + oW.x));
      var _loc5_ = dT.y + oW.y + current_step_ * (aX.y - mB.y - (dT.y + oW.y));
      var _loc15_ = aX.x + (current_step_ - 1) * mB.x;
      var _loc13_ = aX.y + (current_step_ - 1) * mB.y;
      var _loc8_ = _loc10_ + current_step_ * (_loc4_ - _loc10_);
      var _loc9_ = _loc11_ + current_step_ * (_loc5_ - _loc11_);
      var _loc12_ = _loc4_ + current_step_ * (_loc15_ - _loc4_);
      var _loc14_ = _loc5_ + current_step_ * (_loc13_ - _loc5_);
      return new Vector2(_loc8_ + current_step_ * (_loc12_ - _loc8_),_loc9_ + current_step_ * (_loc14_ - _loc9_));
   }
}
