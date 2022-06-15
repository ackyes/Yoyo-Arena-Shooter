/// @description Insert description here
// You can write your code in this editor
if !surface_exists(decal_surf)
    {
    decal_surf = surface_create(room_width, room_height);
    surface_set_target(decal_surf);
    draw_clear_alpha(c_black, 0);
    surface_reset_target();
    }
else
    {
    surface_set_target(decal_surf);
    with (obj_par_decal)
        {
        if (speed <= 0)
            {
            draw_self();
            instance_destroy();
            }
        }
    surface_reset_target();
    draw_surface(decal_surf, 0, 0);
    }