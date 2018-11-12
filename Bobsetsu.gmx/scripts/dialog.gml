//dialog("Text",speed,x,y);

txt = instance_create(argument2,argument3,oDialog);
with (txt)
{
    padding = 16;
    maxLength = view_wview[0]-argument2-padding-48;
    text = argument0;
    spd = argument1;
    font = font_mm;
    
    text_length = string_length(text);
    font_size = font_get_size(font);
    
    draw_set_font(font);
    
    text_width = string_width_ext(text, font_size+(font_size/2), maxLength);
    text_height = string_height_ext(text, font_size+(font_size/2), maxLength);

    boxWidth = text_width + (padding*2);
    boxHeight = text_height + (padding*2);
}
