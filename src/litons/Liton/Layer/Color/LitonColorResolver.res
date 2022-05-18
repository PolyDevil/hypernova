type t = LitonColor.t
type variant = LitonColor.variant

@module("./LitonColorStyle.css.js") external style: variant = "make"

let make = (. key: t) => switch (key) {
// | #normal  => style.normal
| #warning => style.warning
| #danger  => style.danger
| #accent  => style.accent
}
