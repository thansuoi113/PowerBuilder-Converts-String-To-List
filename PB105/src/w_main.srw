$PBExportHeader$w_main.srw
forward
global type w_main from window
end type
type lv_list from listview within w_main
end type
type cb_convert from commandbutton within w_main
end type
type st_1 from statictext within w_main
end type
type sle_delimiter from singlelineedit within w_main
end type
type mle_input from multilineedit within w_main
end type
end forward

global type w_main from window
integer width = 1550
integer height = 1712
boolean titlebar = true
string title = "Converts String To List"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
lv_list lv_list
cb_convert cb_convert
st_1 st_1
sle_delimiter sle_delimiter
mle_input mle_input
end type
global w_main w_main

on w_main.create
this.lv_list=create lv_list
this.cb_convert=create cb_convert
this.st_1=create st_1
this.sle_delimiter=create sle_delimiter
this.mle_input=create mle_input
this.Control[]={this.lv_list,&
this.cb_convert,&
this.st_1,&
this.sle_delimiter,&
this.mle_input}
end on

on w_main.destroy
destroy(this.lv_list)
destroy(this.cb_convert)
destroy(this.st_1)
destroy(this.sle_delimiter)
destroy(this.mle_input)
end on

type lv_list from listview within w_main
integer x = 37
integer y = 608
integer width = 1426
integer height = 928
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
listviewview view = listviewlist!
long largepicturemaskcolor = 536870912
long smallpicturemaskcolor = 536870912
long statepicturemaskcolor = 536870912
end type

type cb_convert from commandbutton within w_main
integer x = 1061
integer y = 448
integer width = 402
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Convert"
boolean default = true
end type

event clicked;String ls_list[]
Int li_i

lv_list.DeleteItems()

ls_list = f_convert_stringtolist(mle_input.Text , sle_delimiter.Text)

For li_i = 1 To UpperBound(ls_list)
	lv_list.additem( ls_list[li_i], li_i)
Next
end event

type st_1 from statictext within w_main
integer x = 142
integer y = 472
integer width = 293
integer height = 96
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Delimiter:"
alignment alignment = right!
boolean focusrectangle = false
end type

type sle_delimiter from singlelineedit within w_main
integer x = 439
integer y = 460
integer width = 585
integer height = 100
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "/"
borderstyle borderstyle = stylelowered!
end type

type mle_input from multilineedit within w_main
integer x = 37
integer y = 32
integer width = 1426
integer height = 384
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

