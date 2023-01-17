var percent = getBytesLoaded() / getBytesTotal();
progressBar_mc.progressMask_mc._x = -208 + 208 * percent;
if(_framesloaded < _totalframes)
{
   gotoAndPlay(2);
}
if(!vXml.loaded)
{
   gotoAndPlay(2);
}
