//outlinedText(x, y, text, outlinedColor, textColor);
draw_set_color(argument3);
draw_text(argument0+1, argument1+1, argument2);
draw_text(argument0-1, argument1-1, argument2);
draw_text(argument0, argument1+1, argument2);
draw_text(argument0+1, argument1, argument2);
draw_text(argument0, argument1-1, argument2);
draw_text(argument0-1, argument1, argument2);
draw_text(argument0-1, argument1+1, argument2);
draw_text(argument0+1, argument1-1, argument2);

draw_set_color(argument4);
draw_text(argument0, argument1, argument2);
