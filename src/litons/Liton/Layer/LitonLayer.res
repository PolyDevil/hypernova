@genType
let resolve = (
  ~color: LitonColor.t,
  ~size : LitonSize.t ,
  ~t    : LitonType.t ,
) => Cn.make([
  LitonColorResolver.make( . color ),
  LitonSizeResolver.make ( . size  ),
  LitonTypeResolver.make ( . t     ),
])
