//Randomize frame, animation speed, direction, speed and size
image_index = random(4);
image_speed = 0;
speed = random_range(2, 5);
friction = 0.1;
direction = random(360);
image_xscale = 0.25 + random(0.75) * choose(-1, 1);
image_yscale = image_xscale;