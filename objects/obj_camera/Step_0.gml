// Camera follows the player
// Puts player in the center of the screen
var cam_x = obj_player.x - camera_get_view_width(view_camera[0]) / 2;
var cam_y = obj_player.y - camera_get_view_height(view_camera[0]) / 2;

if (shake) 
{ 
   shake_time -= 1; 
   cam_x += choose(-shake_magnitude, shake_magnitude); 
   cam_y += choose(-shake_magnitude, shake_magnitude); 

   if (shake_time <= 0) 
   { 
      shake_magnitude -= shake_fade; 

      if (shake_magnitude <= 0) 
      { 
		  // go back to just following player
		 cam_x = obj_player.x - camera_get_view_width(view_camera[0]) / 2;
		 cam_y = obj_player.y - camera_get_view_height(view_camera[0]) / 2;
         shake = false; 
      } 
   } 
}
// set the camera's view after all the processing
camera_set_view_pos(view_camera[0], cam_x, cam_y); 