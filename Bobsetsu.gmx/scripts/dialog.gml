//dialog("Text",speed,x,y,facesprite,backgroundsprite);

txt = instance_create(argument2,argument3,oDialog);
with (txt)
{
    padding = 16;
    maxLength = view_wview[0]-(padding*4);
    if(argument4 != noone) {
        maxLength -= argument4.sprite_width-padding;
    }
    
    text = argument0;
    spd = argument1;
    font = font_mm;
    
    face = argument4;
    bSprite = argument5;
    
    text_length = string_length(text);
    font_size = font_get_size(font);
    
    draw_set_font(font);
    
    text_width = string_width_ext(text, font_size+(font_size/2), maxLength);
    text_height = string_height_ext(text, font_size+(font_size/2), maxLength);

    //boxWidth = text_width + (padding*2);
    //boxHeight = text_height + (padding*2);
    boxWidth = view_wview[0]-(padding*2);
    boxHeight = view_hview[0]-y-padding;
}
