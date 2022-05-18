type options = LitonType.options
type resolve = LitonType.resolve
type variant = LitonType.variant
let { options } = module(LitonType)

@module("@vanilla-extract/css") external styles: (options, resolve) => variant = "styleVariants"

let make = styles(options, (value) => {
  {
    color: value.text,
    backgroundColor: value.background,
    borderColor: value.border,
    outline: value.outline,
  }
})
