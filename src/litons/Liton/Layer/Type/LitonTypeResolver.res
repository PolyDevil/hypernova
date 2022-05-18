type t = LitonType.t
type variant = LitonType.variant

@module("./LitonTypeStyle.css.js") external style: variant = "make"

let make = (. key: t) => switch (key) {
| #primary     => style.primary
| #outline     => style.outline
| #transparent => style.transparent
// | #light       => style.light
}
