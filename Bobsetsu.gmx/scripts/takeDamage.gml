//takeDamage(damage);
//If augmenting player's health: set global.greyHealthBarDowning to false;

if(!global.greyHealthBarDowning) {
    global.greyHealthBarDowning = true;

    global.oldXHealthBar = global.endXHealthBar;
    
    oControlHUD.alarm[8] = room_speed;
    hbStartToDown = false;
}

audio_play_sound(soBobHurt, 1, 0);
playerHealth -= argument0;
global.endXHealthBar = (264*(playerHealth/100));

if(playerHealth <= 0) {
    playerHealth = 0;
    //Dying
    instance_deactivate_all(true);
    audio_stop_all();
    
    audio_play_sound(soGameOver,10,false);   
     
    draw_set_halign(fa_left);
    instance_create(view_xview[0], view_yview[0], oGameOverFade);
    var button1 = instance_create(view_xview[0]+325, view_yview[0]+500, oButton_Continue);
    button1.image_xscale = 2;
    button1.image_yscale = 2;
    var button2 = instance_create(view_xview[0]+view_wview[0]-517, view_yview[0]+500, oButton_MainMenu);
    button2.image_xscale = 2;
    button2.image_yscale = 2;
    
    oBob.depth = -51;
}
