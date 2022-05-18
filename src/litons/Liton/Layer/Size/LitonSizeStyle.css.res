type options = LitonSize.options
type resolve = LitonSize.resolve
type variant = LitonSize.variant
let { options } = module(LitonSize)

@module("@vanilla-extract/css") external styles: (options, resolve) => variant = "styleVariants"

let make = styles(options, (value) => {
  {
    fontSize     : value.fontSize,
    paddingBlock : value.paddingBlock,
    paddingInline: value.paddingInline,
    minWidth     : value.minWidth,
  }
})
