@module("@vanilla-extract/css") external style: ('a) => string = "style"

let className = style({
  "cursor": "pointer",
  "border-radius": "4px",
  "border-width": "1px",
  "border-style": "solid",
  "display": "flex",
  "align-items": "center",
  "justify-content": "center",
  "inline-size": "fit-content",
  "text-decoration": "none",
})
