-- example config file for mooOS devilspie2, disabled by default. (see ~/bin/moo)

-- debug_print command does only print anything to stdout
-- if devilspie2 is run using the --debug option
debug_print("Window Name: " .. get_window_name());
debug_print("Window Class: " .. get_window_class());
-- debug_print("Window Class instance: " .. get_class_instance_name());
debug_print("Application name: " .. get_application_name());
debug_print("Window geometry: " .. get_window_client_geometry());
-- debug_print("Screen geometry: " .. get_screen_geometry());

-- Strings are case sensitive, please note this when creating rule scripts.

-- rules for mooOS, tested in xfwm4, enlightenment, plasma-desktop, cinnamon

-- the following rules apply to a setup of 3 displays: (~/.xinitrc)
-- xrandr --output DVI-I-0 --auto --pos 2130x0
--        --output HDMI-0 --auto --pos 0x900
--        --output DVI-D-0 --auto --primary --pos 1920x900

-- Make weechat instance 1 start where it belongs
if (get_window_class()=="URxvt" and get_class_instance_name()=="IRC1") then
	-- remove titlebars, window controls and borders
	undecorate_window();
	-- x,y, xsize, ysize
	set_window_geometry(0,900,964,536);
end

-- Make weechat instance 2 start where it belongs
if (get_window_class()=="URxvt" and get_class_instance_name()=="IRC2") then
	undecorate_window();
	set_window_geometry(948,900,972,340);
end

-- Make gpu monitor start where it belongs
if (get_window_class()=="URxvt" and get_class_instance_name()=="GPU") then
	undecorate_window();
	set_window_geometry(860,1678,418,276);
end

-- Make cpu temperature monitor start where it belongs
if (get_window_class()=="URxvt" and get_class_instance_name()=="CPUS") then
	undecorate_window();
	set_window_geometry(958,1566,320,112);
end

-- Make cpu frequency monitor start where it belongs
if (get_window_class()=="URxvt" and get_class_instance_name()=="CPU Freq") then
	undecorate_window();
	set_window_geometry(958,1436,320,130);
end

-- Make htop start where it belongs
if (get_window_class()=="URxvt" and get_class_instance_name()=="HTOP") then
	undecorate_window();
	set_window_geometry(1920,900,650,238);
end

-- Make root urxvtc start where it belongs
if (get_window_class()=="URxvt" and get_class_instance_name()=="Sysadmin") then
	undecorate_window();
	set_window_geometry(0,1678,860,280);
end

-- Make urxvtc instance 1 start where it belongs
if (get_window_class()=="URxvt" and get_class_instance_name()=="tERM") then
	undecorate_window();
	set_window_geometry(1920,1134,650,266);
end

-- Make urxvtc instance 2 start where it belongs
if (get_window_class()=="URxvt" and get_class_instance_name()=="Term") then
	undecorate_window();
	set_window_geometry(1920,1400,650,266);
end

-- Make journalctl -f start where it belongs
if (get_window_class()=="URxvt" and get_class_instance_name()=="Logs") then
	undecorate_window();
	set_window_geometry(2,1436,956,242);
end

-- Make canto-curses start where it belongs
if (get_window_class()=="URxvt" and get_class_instance_name()=="RSS") then
	undecorate_window();
	set_window_geometry(1920,1134,650.5,268);
end

-- Make mutt start where it belongs
if (get_window_class()=="URxvt" and get_class_instance_name()=="Mail") then
	undecorate_window();
	set_window_geometry(1920,1400,650,266);
end

-- Make ssh LAN or 3rd terminal instance start where it belongs
if (get_window_class()=="URxvt" and (get_class_instance_name()=="TermTerm" or get_class_instance_name()=="ssh 192.168.0.10")) then
	undecorate_window();
	set_window_geometry(964,1240,956,196);
end

-- Make atom editor instances start where they belong
if (get_window_class()=="Atom" and get_class_instance_name()=="atom") then
	set_window_geometry(2568,1312,1270,644);
end

-- Make Firefox instances start where they belong
if ((get_application_name()=="Firefox" or get_application_name()=="Tor Browser") and get_class_instance_name()=="Navigator") then
	set_window_geometry2(2570,900,1268,1052);
end

-- Hide vlc playlist from tasklist, pager
if (get_class_instance_name()=="vlc") then
	if (get_window_name()=="Playlist") then
		set_skip_tasklist(true)
		set_skip_pager(true)
		-- set_on_top();
	elseif (get_window_name()=="Open Directory"
		or get_window_name()=="Open Media"
		or get_window_name()=="Open subtitles...") then
		-- do nothing special :P
		pin_window();
	else
		-- Remove decorations from main vlc instance
		undecorate_window();
		maximize();
	end
end

-- Hide PasswordSafe from tasklist, pager
if (get_window_class()=="Pwsafe" and get_class_instance_name()=="pwsafe") then
	-- set_skip_tasklist(true)
	set_skip_pager(true)
end

-- Kdenlive video editor rules set ---
-- Kdenlive main instance
if (get_window_class()=="Kdenlive" and get_window_name()=="Untitled / HD 1080p 29.97 fps – Kdenlive") then
	undecorate_window();
	set_window_geometry2(518,900,1485,736);
end

-- Kdenlive Clip monitor
if (get_window_class()=="Kdenlive" and get_window_name()=="&Clip Monitor") then
	undecorate_window();
	set_window_geometry2(2000,900,1840,1080);
end

-- Kdenlive Project monitor
if (get_window_class()=="Kdenlive" and get_window_name()=="&Project Monitor") then
	undecorate_window();
	set_window_geometry2(2000,900,1840,1080);
end

-- Kdenlive Project Tree
if (get_window_class()=="Kdenlive" and get_window_name()=="&Project Tree") then
	undecorate_window();
	set_window_geometry2(0,900,524,761);
end

-- Kdenlive Transition
if (get_window_class()=="Kdenlive" and get_window_name()=="&Transition") then
	undecorate_window();
	set_window_geometry2(1200,1636,720,318);
end

-- Kdenlive Effect Stack
if (get_window_class()=="Kdenlive" and get_window_name()=="&Effect Stack") then
	undecorate_window();
	set_window_geometry2(517,1635,688,321);
end

-- Kdenlive Effect List
if (get_window_class()=="Kdenlive" and (get_window_name()=="&Effect List" or get_window_name()=="&Effect List")) then
	undecorate_window();
	set_window_geometry2(0,1650,522,311);
end

-- Wasteland titlebar remove
if (get_window_name()=="Wasteland2" and get_class_instance_name()==nil) then
	undecorate_window();
	set_window_geometry2(1920,900,1920,1080);
end

-- No More Room In Hell titlebar remove
if (get_class_instance_name()=="hl2_linux") then
	undecorate_window();
	set_window_geometry2(1920,900,1920,1080);
end
-- reference manual http://www.gusnan.se/devilspie2/manual.php

-- End
