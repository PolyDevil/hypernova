type options = LitonColor.options
type resolve = LitonColor.resolve
type variant = LitonColor.variant
let { options } = module(LitonColor)

@module("@vanilla-extract/css") external styles: (options, resolve) => variant = "styleVariants"

let make = styles(options, (value) => {
  {
    text: value.normal.text,
    background: value.normal.background,
    border: value.normal.border,
    outline: value.normal.outline,
    transition: ".2s color ease-in, .2s background ease-in, .2s border ease-in",

    hover: {
      text: value.hover.text,
      background: value.hover.background,
      border: value.hover.border,
      outline: value.hover.outline,
    },

    disabled: {
      text: value.disabled.text,
      background: value.disabled.background,
      border: value.disabled.border,
      outline: value.disabled.outline,
    },

    focused: {
      text: value.focused.text,
      background: value.focused.background,
      border: value.focused.border,
      outline: value.focused.outline,
    },

    pressed: {
      text: value.pressed.text,
      background: value.pressed.background,
      border: value.pressed.border,
      outline: value.pressed.outline,
    },
  }
})
