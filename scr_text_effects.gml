
/*---------------------------------------------------------------
	Normal draw_text(), but with rainbow and movement
	If str_width is not equal to 0, text will be in the middle
---------------------------------------------------------------*/

function draw_text_wave(x, y, str, str_width, wave_amplitude=3, wave_speed=0.01) {
	var _xx = x, _yy = y;
	var i = 1, isize = string_length(str);
	repeat(isize) {
		var _char = string_char_at(str, i);
		var _ww = string_width(_char);
		var _wf = (str_width == 0) ? 0 : str_width/2;
		draw_text(_xx - _wf, _yy + sin(i + current_time * wave_speed) * wave_amplitude, _char);
		_xx += _ww;
		i++;
	}
}

function draw_text_wave_colorful(x, y, str, str_width, wave_amplitude=3, wave_speed=0.01, color_speed=0.1) {
	var _xx = x, _yy = y;
	var i = 1, isize = string_length(str);
	repeat(isize) {
		var _char = string_char_at(str, i);
		var _ww = string_width(_char);
		var _wf = (str_width == 0) ? 0 : str_width/2;
		draw_set_color(make_color_hsv(current_time*color_speed % 255, 255, 255));
		draw_text(_xx - _wf, _yy + sin(i + current_time * wave_speed) * wave_amplitude, _char);
		_xx += _ww;
		i++;
	}
}

function draw_text_wave_rainbow(x, y, str, str_width, wave_amplitude=3, wave_speed=0.01, color_speed=0.1) {
	var _xx = x, _yy = y;
	var i = 1, isize = string_length(str);
	repeat(isize) {
		var _char = string_char_at(str, i);
		var _ww = string_width(_char);
		var _wf = (str_width == 0) ? 0 : str_width/2;
		draw_set_color(make_color_hsv((current_time * color_speed + i*10) % 255, 255, 255));
		draw_text(_xx - _wf, _yy + sin(i + current_time * wave_speed) * wave_amplitude, _char);
		_xx += _ww;
		i++;
	}
}

function draw_text_shake(x, y, str, str_width, dist=1) {
	var _xx = x, _yy = y;
	var i = 1, isize = string_length(str);
	repeat(isize) {
		var _char = string_char_at(str, i);
		var _ww = string_width(_char);
		var _wf = (str_width == 0) ? 0 : str_width/2;
		draw_text(_xx-_wf + random_range(-dist, dist), _yy + random_range(-dist, dist), _char);
		_xx += _ww;
		i++;
	}
}
