// Camera follows the player
// Puts player in the center of the screen
var cam_x = obj_player.x - camera_get_view_width(view_camera[0]) / 2;
var cam_y = obj_player.y - camera_get_view_height(view_camera[0]) / 2;

if (shake) 
{ 
   shake_time -= 1; 
   var _xval = choose(-shake_magnitude, shake_magnitude); 
   var _yval = choose(-shake_magnitude, shake_magnitude); 
   camera_set_view_pos(view_camera[0], _xval, _yval); 

   if (shake_time <= 0) 
   { 
      shake_magnitude -= shake_fade; 

      if (shake_magnitude <= 0) 
      { 
         camera_set_view_pos(view_camera[0], 0, 0); 
         shake = false; 
      } 
   } 
}