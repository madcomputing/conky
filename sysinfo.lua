-- Conky, a system monitor https://github.com/brndnmtthws/conky
--
-- This configuration file is Lua code. You can write code in here, and it will
-- execute when Conky loads. You can use it to generate your own advanced
-- configurations.
--
-- Try this (remove the `--`):
--
--   print("test")
--
-- For more on Lua, see:
-- https://www.lua.org/pil/contents.html
-- script for startup: conky --daemonize --quiet --config="/path/to/file/sysInfo.lua"


conky.config = {
    alignment = 'top_right',
    background = false,
    border_width = 1,
    cpu_avg_samples = 2,
    default_color = '#e6ba4c',
    default_outline_color = '#e6ba4c',
    default_shade_color = '#e6ba4c',
    double_buffer = true,
    draw_borders = false,
    draw_graph_borders = true,
    draw_outline = false,
    draw_shades = false,
    extra_newline = false,
    font = 'DejaVu Sans Mono:size=12',
    gap_x = 0,
    gap_y = 1080,
    minimum_height = 1027,
    minimum_width = 4,
    net_avg_samples = 2,
    no_buffers = true,
    out_to_console = false,
    out_to_ncurses = false,
    out_to_stderr = false,
    out_to_x = true,
    own_window = true,
    own_window_class = 'sysInfo',
    own_window_type = 'desktop',
    show_graph_range = false,
    show_graph_scale = false,
    stippled_borders = 0,
    update_interval = 1.0,
    uppercase = false,
    use_spacer = 'none',
    use_xft = true,


    -- My configs --
    own_window_transparent = true,
    own_window_argb_visual = true,
    maximum_width = 458,
    units_spacer = ' ',

    -- FONTS --
    font0 = 'DejaVu Sans Mono:size=10',
    font1 = 'DejaVu Sans Mono:size=11',
    font2 = 'DejaVu Sans Mono:size=12',
    font3 = 'DejaVu Sans Mono:size=13',
    font4 = 'DejaVu Sans Mono:size=14',
    font5 = 'DejaVu Sans Mono:size=15',
    font6 = 'DejaVu Sans Mono:size=16',
    font7 = 'DejaVu Sans Mono:size=17',
    font8 = 'DejaVu Sans Mono:size=18',
    font9 = 'DejaVu Sans Mono:size=19',

    -- COLORS --
    color0 = '#0e4440',
    color1 = '#D96545',
    color2 = '#DF2935',
    color3 = '#95190C',
    color4 = '#DF2935',
    color5 = '#87331C',
    color6 = '#87331C',
    color7 = '#87331C',
    color8 = '#87331C',
    color9 = '#87331C',

    -- TEMPLATES --
    template0 = '±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±',
    template1 = '±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±',
    template2 = '±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±',
    template3 = '±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±',
    template4 = '±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±',
    template5 = '±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±',
    template6 = '±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±',
    template7 = '±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±',
    template8 = '±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±',
    template9 = '±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±',



    
}
-- ${color grey}Info:$color ${scroll 32 Conky $conky_version - $sysname $nodename $kernel $machine}

-- $hr
-- Networking:
-- Up:${upspeed} - Down:${downspeed}
-- $hr

-- $hr
-- Processes:$processes  Running:$running_processes
-- |Name             |PID     CPU%   MEM%
-- |${top name 1} |${top pid 1} ${top cpu 1} ${top mem 1}
-- |${top name 2} |${top pid 2} ${top cpu 2} ${top mem 2}
-- |${top name 3} |${top pid 3} ${top cpu 3} ${top mem 3}
-- |${top name 4} |${top pid 4} ${top cpu 4} ${top mem 4}
-- $hr

conky.text = [[
${template0}

            $sysname $kernel
               $nodename $uptime
           ${time %Y-%m-%d %H:%M:%S} ${time %a}
               Week ${time %U}, Day ${time %j} 

${template0}

              ${font9}CPU & Memory${font}

${font6}${cpu}% ${color2}${acpitemp}°C${color} ${freq_g}GHz${font}
${cpubar cpu0 32,448}
Core0: ${cpu cpu1}%  ${freq_g 1}GHz
${cpubar cpu1 16,448}
Core1: ${cpu cpu2}%  ${freq_g 2}GHz
${cpubar cpu2 16,448}
Core2: ${cpu cpu3}%  ${freq_g 1}GHz
${cpubar cpu3 16,448}
Core3: ${cpu cpu2}%  ${freq_g 4}GHz
${cpubar cpu4 16,448}
Core4: ${cpu cpu5}%  ${freq_g 1}GHz
${cpubar cpu5 16,448}
Core5: ${cpu cpu2}%  ${freq_g 6}GHz
${cpubar cpu6 16,448}
Core6: ${cpu cpu7}%  ${freq_g 1}GHz
${cpubar cpu7 16,448}
Core7: ${cpu cpu2}%  ${freq_g 8}GHz
${cpubar cpu8 16,448}

RAM: $mem/$memmax $memperc% 
${membar 4,448}
Swap: $swap/$swapmax $swapperc% 
${swapbar 4,448}

${template0}

                ${font9}Filesystem ${font}

/root           ${fs_used /}/${fs_size /} 
${fs_bar 4,448 /} 
/home           ${fs_used /home}/${fs_size /home} 
${fs_bar 4,448 /home}
/backup         ${fs_used /media/o/SysBackups}/${fs_size /media/o/SysBackups} 
${fs_bar 4,448 /media/o/SysBackups}
${template0}
]]
