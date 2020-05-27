#############################################################################
# Generated by PAGE version 5.3
#  in conjunction with Tcl version 8.6
#  May 27, 2020 12:04:42 PM BST  platform: Windows NT
set vTcl(timestamp) ""


if {!$vTcl(borrow) && !$vTcl(template)} {

set vTcl(actual_gui_bg) #d9d9d9
set vTcl(actual_gui_fg) #000000
set vTcl(actual_gui_analog) #ececec
set vTcl(actual_gui_menu_analog) #ececec
set vTcl(actual_gui_menu_bg) #d9d9d9
set vTcl(actual_gui_menu_fg) #000000
set vTcl(complement_color) #d9d9d9
set vTcl(analog_color_p) #d9d9d9
set vTcl(analog_color_m) #ececec
set vTcl(active_fg) #000000
set vTcl(actual_gui_menu_active_bg)  #ececec
set vTcl(pr,menufgcolor) #000000
set vTcl(pr,menubgcolor) #d9d9d9
set vTcl(pr,menuanalogcolor) #ececec
set vTcl(pr,treehighlight) firebrick
set vTcl(pr,autoalias) 1
set vTcl(pr,relative_placement) 1
set vTcl(mode) Relative
}




proc vTclWindow.top43 {base} {
    global vTcl
    if {$base == ""} {
        set base .top43
    }
    if {[winfo exists $base]} {
        wm deiconify $base; return
    }
    set top $base
    ###################
    # CREATING WIDGETS
    ###################
    vTcl::widgets::core::toplevel::createCmd $top -class Toplevel \
        -background $vTcl(actual_gui_bg) 
    wm focusmodel $top passive
    wm geometry $top 600x450+650+150
    update
    # set in toplevel.wgt.
    global vTcl
    global img_list
    set vTcl(save,dflt,origin) 0
    wm maxsize $top 1924 1055
    wm minsize $top 148 1
    wm overrideredirect $top 0
    wm resizable $top 1 1
    wm deiconify $top
    wm title $top "Chatbot"
    vTcl:DefineAlias "$top" "Form" vTcl:Toplevel:WidgetProc "" 1
    set vTcl(real_top) {}
    vTcl:withBusyCursor {
    ttk::entry $top.tEn45 \
        \
        -font {-family Arial -size 9 -weight normal -slant roman -underline 0 -overstrike 0} \
        -foreground {} -background {} -takefocus {} -cursor ibeam 
    vTcl:DefineAlias "$top.tEn45" "TextBox" vTcl:WidgetProc "Form" 1
    ttk::style configure TButton -background $vTcl(actual_gui_bg)
    ttk::style configure TButton -foreground $vTcl(actual_gui_fg)
    ttk::style configure TButton -font "$vTcl(actual_gui_font_dft_desc)"
    ttk::button $top.tBu46 \
        -takefocus {} -text Enter 
    vTcl:DefineAlias "$top.tBu46" "EnterBtn" vTcl:WidgetProc "Form" 1
    vTcl::widgets::ttk::scrolledtext::CreateCmd $top.scr48 \
        -borderwidth 2 -relief groove -background $vTcl(actual_gui_bg) \
        -cursor heart -height 308 -highlightbackground $vTcl(actual_gui_bg) \
        -highlightcolor black -width 580 
    vTcl:DefineAlias "$top.scr48" "ChatLog" vTcl:WidgetProc "Form" 1

    $top.scr48.01 configure -background white \
        -cursor heart \
        -font "-family {Arial} -size 9 -weight bold" \
        -foreground black \
        -height 3 \
        -highlightbackground #d9d9d9 \
        -highlightcolor black \
        -insertbackground black \
        -insertborderwidth 3 \
        -selectbackground #c4c4c4 \
        -selectforeground black \
        -width 10 \
        -wrap none
    button $top.but49 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background $vTcl(actual_gui_bg) -disabledforeground #a3a3a3 \
        -font TkDefaultFont -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -pady 0 -text {You made a mistake!} 
    vTcl:DefineAlias "$top.but49" "MistakeBtn" vTcl:WidgetProc "Form" 1
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.tEn45 \
        -in $top -x 0 -relx 0.017 -y 0 -rely 0.733 -width 406 -relwidth 0 \
        -height 26 -relheight 0 -anchor nw -bordermode ignore 
    place $top.tBu46 \
        -in $top -x 0 -relx 0.717 -y 0 -rely 0.733 -height 30 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.scr48 \
        -in $top -x 0 -relx 0.017 -y 0 -rely 0.022 -width 0 -relwidth 0.967 \
        -height 0 -relheight 0.684 -anchor nw -bordermode ignore 
    place $top.but49 \
        -in $top -x 0 -relx 0.033 -y 0 -rely 0.822 -height 33 -relheight 0 \
        -anchor nw -bordermode ignore 
    } ;# end vTcl:withBusyCursor 

    vTcl:FireEvent $base <<Ready>>
}

set btop ""
if {$vTcl(borrow)} {
    set btop .bor[expr int([expr rand() * 100])]
    while {[lsearch $btop $vTcl(tops)] != -1} {
        set btop .bor[expr int([expr rand() * 100])]
    }
}
set vTcl(btop) $btop
Window show .
Window show .top43 $btop
if {$vTcl(borrow)} {
    $btop configure -background plum
}

