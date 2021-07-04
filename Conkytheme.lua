--[[
#=====================================================================================
#                               arcolinux
# Date    : package-date
# Author  : Erik Dubois at http://www.erikdubois.be
# Version : package-version
# License : Distributed under the terms of GNU GPL version 2 or later
# Documentation : http://erikdubois.be/
#======================================================================================
# CONKY
# For commands in conky.config section:
# http://conky.sourceforge.net/config_settings.html
#
# For commands in conky.text section:
# http://conky.sourceforge.net/variables.html
#
# A PDF with all variables is provided
#=====================================================================================
# FONTS
# To avoid copyright infringements you will have to download
# and install the fonts yourself sometimes.
#=====================================================================================
# GENERAL INFO ABOUT FONTS
# Go and look for a nice font on sites like http://www.dafont.com/
# Download and unzip - double click the font to install it (font-manager must be installed)
# No font-manager then put fonts in ~/.fonts
# Change the font name in the conky
# The name can be known with a command in the terminal: fc-list | grep "part of name"
# Change width and height of the conky according to font
# Reboot your system or fc-cache -fv in terminal
# Enjoy
#=====================================================================================
# FONTS FOR THIS CONKY
# http://www.dafont.com/style-bats.font
#======================================================================================
# Titus Modifications
#======================================================================================
# Changed time from Roboto to GE Inspira which is a base Conky Gotham Addon
# Changed Drives from 2 to 3
# Modified one_window_type from desktop to normal for KDE compatibility
# Modified Ethernet settings
# Modified Pink Lines to Bright Blue
# Removed Extra symbols and incorrect formatting
#======================================================================================

]]

conky.config = {

	--Various settings

	background = true, 							-- forked to background
	cpu_avg_samples = 2,						-- The number of samples to average for CPU monitoring.
	diskio_avg_samples = 10,					-- The number of samples to average for disk I/O monitoring.
	double_buffer = true,						-- Use the Xdbe extension? (eliminates flicker)
	if_up_strictness = 'address',				-- how strict if testing interface is up - up, link or address
	net_avg_samples = 2,						-- The number of samples to average for net data
	no_buffers = true,							-- Subtract (file system) buffers from used memory?
	temperature_unit = 'celsius',				-- fahrenheit or celsius
	text_buffer_size = 2048,					-- size of buffer for display of content of large variables - default 256
	update_interval = 1,						-- update interval
	imlib_cache_size = 0,                       -- disable image cache to get a new spotify cover per song


	--Placement

	alignment = 'middle_right',						-- top_left,top_middle,top_right,bottom_left,bottom_middle,bottom_right,
												-- middle_left,middle_middle,middle_right,none
	--Arch Duoscreen
	--gap_x = -1910,
	gap_x = 15,									-- pixels between right or left border
	gap_y = 0,									-- pixels between bottom or left border
	minimum_height = 600,						-- minimum height of window
	minimum_width = 300,						-- minimum height of window
	maximum_width = 300,						-- maximum height of window

	--Graphical

	border_inner_margin = 10, 					-- margin between border and text
	border_outer_margin = 5, 					-- margin between border and edge of window
	border_width = 0, 							-- border width in pixels
	default_bar_width = 80,					-- default is 0 - full width
	default_bar_height = 10,					-- default is 6
	default_gauge_height = 25,					-- default is 25
	default_gauge_width =40,					-- default is 40
	default_graph_height = 40,					-- default is 25
	default_graph_width = 0,					-- default is 0 - full width
	default_shade_color = '#000000',			-- default shading colour
	default_outline_color = '#000000',			-- default outline colour
	draw_borders = false,						-- draw borders around text
	draw_graph_borders = true,					-- draw borders around graphs
	draw_shades = false,						-- draw shades
	draw_outline = false,						-- draw outline
	stippled_borders = 0,						-- dashing the border

	--Textual

	extra_newline = false,						-- extra newline at the end - for asesome's wiboxes
	format_human_readable = true,				-- KiB, MiB rather then number of bytes
	font = 'Roboto Mono:size=10',  				-- font for complete conky unless in code defined
	max_text_width = 0,							-- 0 will make sure line does not get broken if width too smal
	max_user_text = 16384,						-- max text in conky default 16384
	override_utf8_locale = true,				-- force UTF8 requires xft
	short_units = true,							-- shorten units from KiB to k
	top_name_width = 21,						-- width for $top name value default 15
	top_name_verbose = false,					-- If true, top name shows the full command line of  each  process - Default value is false.
	uppercase = false,							-- uppercase or not
	use_spacer = 'none',						-- adds spaces around certain objects to align - default none
	use_xft = true,								-- xft font - anti-aliased font
	xftalpha = 1,								-- alpha of the xft font - between 0-1

	--Windows

	own_window = true,							-- create your own window to draw
	own_window_argb_value = 0,			    -- real transparency - composite manager required 0-255
	own_window_argb_visual = true,				-- use ARGB - composite manager required
	own_window_colour = '#000000',				-- set colour if own_window_transparent no
	own_window_hints = 'undecorated,below,sticky,skip_taskbar,skip_pager',  -- if own_window true - just hints - own_window_type sets it
	own_window_transparent = false,				-- if own_window_argb_visual is true sets background opacity 0%
	own_window_title = 'system_conky',			-- set the name manually  - default conky "hostname"
	own_window_type = 'normal',				-- if own_window true options are: normal/override/dock/desktop/panel


	--Colours

	default_color = '#D9DDE2',  				-- default color and border color
	color1 = '#FF0000',
	color2 = '#597AA1',
	color3 = '#cccccc',
	color4 = '#D9BC83',
	color5 = '#00BFFF',
	color6 = '#FFFFFF',

	--Signal Colours
	color7 = '#1F7411',  						--green
	color8 = '#FFA726',  						--orange
	color9 = '#F1544B',  						--firebrick

    --Lua


};

conky.text = [[
${color6}${voffset 4}${font GE Inspira:size=36}${alignc}${time %H}:${time %M} ${time %p}${font}${color}
${color6}${voffset 4}${font GE Inspira:size=12}${alignc}${time %A} ${time %B} ${time %e}, ${time %Y}${font}${color}

${color5}${font Roboto:size=10}${voffset 2}S Y S T E M   ${hr 2}${font}${color}
${color2}${voffset 8}Hostname:${color} ${alignr}${nodename}
${color2}Distro:${color}                                       Ubuntu 20.04.2 LTS
${color2}Kernel:${color}${alignr}${exec uname} ${exec uname -r}
#Nvidia: ${alignr}${execp  nvidia-smi --query-supported-clocks=gpu_name --format=csv,noheader}
#Nvidia Driver: ${alignr}${execi 60000 nvidia-smi | grep "Driver Version"| awk {'print $3'}}
${color2}Uptime:${color} ${alignr}${uptime}
${color5}${font Roboto:size=10}P R O C E S S O R S  ${hr 2}${font}${color}
${color2}CPU Freq:${color} $alignr${freq}MHz
${color2}${offset 30}CPU Core 1:${color} ${alignr}${offset -10}${cpu cpu1}%${alignr}${cpubar cpu1}
${color2}${offset 30}CPU Core 2:${color} ${alignr}${offset -10}${cpu cpu2}%${alignr}${cpubar cpu2}
${color2}${offset 30}CPU Core 3:${color} ${alignr}${offset -10}${cpu cpu3}%${alignr}${cpubar cpu3}
${color2}${offset 30}CPU Core 4:${color} ${alignr}${offset -10}${cpu cpu4}%${alignr}${cpubar cpu4}
${color2}${offset 30}CPU Core 5:${color} ${alignr}${offset -10}${cpu cpu5}%${alignr}${cpubar cpu5}
${color2}${offset 30}CPU Core 6:${color} ${alignr}${offset -10}${cpu cpu6}%${alignr}${cpubar cpu6}
${color2}Top Processes${goto 222}cpu%${goto 274}mem%${color}
${voffset 4}     1  -  ${top name 1}${alignr}${goto 170} ${goto 222}${top cpu 1} ${goto 274}${top mem 1}
     2  -  ${top name 2}${alignr} ${goto 222}${top cpu 2} ${goto 274}${top mem 2}
     3  -  ${top name 3}${alignr} ${goto 222}${top cpu 3} ${goto 274}${top mem 3}
     4  -  ${top name 4}${alignr} ${goto 222}${top cpu 4} ${goto 274}${top mem 4}
     5  -  ${top name 5}${alignr} ${goto 222}${top cpu 5} ${goto 274}${top mem 5}
${color5}${font Roboto:size=10}M E M O R Y   ${hr 2}${font}${color}
${color2}${offset 30}RAM: ${color}${alignr}${offset -10}${mem} / ${memmax}${alignr}${membar}
${color2}Top Processes${goto 222}cpu%${goto 274}mem%${color}
${voffset 4}     1  -  ${top_mem name 1}${alignr}${goto 170} ${goto 222}${top_mem cpu 1} ${goto 274}${top_mem mem 1}
     2  -  ${top_mem name 2}${alignr}${goto 170} ${goto 222}${top_mem cpu 2} ${goto 274}${top_mem mem 2}
     3  -  ${top_mem name 3}${alignr}${goto 170} ${goto 222}${top_mem cpu 3} ${goto 274}${top_mem mem 3}
     4  -  ${top_mem name 4}${alignr}${goto 170} ${goto 222}${top_mem cpu 4} ${goto 274}${top_mem mem 4}
     5  -  ${top_mem name 5}${alignr}${goto 170} ${goto 222}${top_mem cpu 5} ${goto 274}${top_mem mem 5}
${color5}${font Roboto:size=10}D R I V E S   ${hr 2}${font}${color}
${offset 30}${color2}Root  -  SSD:${color} ${alignr}${offset -10}${fs_used /} / ${fs_size /}${alignr}${fs_bar}
${offset 30}${color2}I/O Read:${color} ${alignr}${offset -10}${diskio_read /dev/nvme1n1p2}${alignr}${diskiograph_read nvme1n1p2 8,100}
${offset 30}${color2}I/O Write:${color} ${alignr}${offset -10}${diskio_write /dev/nvme1n1p2}${alignr}${diskiograph_write nvme1n1p2 8,100}

${offset 30}${color2}SSD  -  D:${color} ${alignr}${offset -10}${fs_used /mnt/nvme0n1p1} / ${fs_size /mnt/nvme0n1p1}${alignr}${fs_bar}
${offset 30}${color2}I/O Read:${color} ${alignr}${offset -10}${diskio_read /dev/nvme0n1p1}${alignr}${diskiograph_read nvme0n1p1 8,100}
${offset 30}${color2}I/O Write:${color} ${alignr}${offset -10}${diskio_write /dev/nvme0n1p1}${alignr}${diskiograph_write nvme0n1p1 8,100}

${offset 30}${color2}Flashdisk :${color} ${alignr}${offset -10}${fs_used /media/luke/SanDisk-LJ} / ${fs_size /media/luke/SanDisk-LJ}${alignr}${fs_bar /home/titus/1tb}
${offset 30}${color2}I/O Read:${color} ${alignr}${offset -10}${diskio_read /dev/sda1}${alignr}${diskiograph_read sda1 8,100}
${offset 30}${color2}I/O Write:${color} ${alignr}${offset -10}${diskio_write /dev/sda1}${alignr}${diskiograph_write sda1 8,100}
${color5}${color5}${font Roboto:size=10}N E T W O R K   ${hr 2}${font}${color}
${color2}${offset 30}Private IP Address: ${color} ${alignr}${offset -10$}${addrs enp5s0}
${color2}${offset 30}Public IP Address: ${color} ${alignr}${offset -10$}${curl canhazip.com}
${color2}${offset 30}Eth Up:${color} ${alignr}${offset -10$}${upspeed enp5s0}${alignr}${upspeedgraph enp5s0 8,100}
${color2}${offset 30}Eth Down:${color} ${alignr}${offset -10$}${downspeed enp5s0}${alignr}${downspeedgraph enp5s0 8,100}
#${font Roboto:size=10}N V I D I A   ${hr 2}${font}
#${font Roboto:size=10,weight:bold}${color5}${execp  nvidia-smi --query-supported-clocks=gpu_name --format=csv,noheader}${font}
#${font StyleBats:size=20}u${font}${offset 8}${voffset -12}GPU Temp ${alignr}${execi 60 nvidia-smi --query-gpu=temperature.gpu --format=csv,noheader} °C
#${offset 30}Fan Speed ${alignr}${execi 60 nvidia-settings -q [fan:0]/GPUCurrentFanSpeed -t} %
#${offset 30}GPU Clock ${alignr}${execi 60 nvidia-settings -q GPUCurrentClockFreqs | grep -m 1 Attribute | awk '{print $4}' | sed -e 's/\.//' | cut -d, -f1} MHz
#${offset 30}Mem Clock ${alignr}${execi 86400 nvidia-settings -q all| grep -m 1 GPUCurrentProcessorClockFreqs | awk '{print $4}' | sed 's/.$//'} MHz
#${offset 30}Mem Used ${alignr}${execi 60 nvidia-settings -q [gpu:0]/UsedDedicatedGPUMemory -t} / ${exec nvidia-settings -q [gpu:0]/TotalDedicatedGPUMemory -t} MiB0
]];
