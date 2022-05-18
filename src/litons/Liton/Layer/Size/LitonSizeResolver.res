type t = LitonSize.t
type variant = LitonSize.variant

@module("./LitonSizeStyle.css.js") external style: variant = "make"

let make = (. key: t) => switch (key) {
| #xl  => style.xl
| #l16 => style.l16
| #l14 => style.l14
| #m   => style.m
| #s   => style.s
}