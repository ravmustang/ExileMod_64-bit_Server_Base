//  Fix for 64bit Servers, more info @
//  http://www.exilemod.com/topic/21761-168-bugs-megathread-discussion/?do=findComment&comment=156590
//  You could also use toFixed, but will have trailing zeros + random crap after 6-7 decimal points, (float precision?)

private "_arr";
if (_this isEqualTo 0) exitWith {"0"};
_arr = toArray str abs (_this % 1);
_arr set [0, 32];
toString (toArray str (abs (_this - _this % 1) * _this / abs _this) + _arr - [32])