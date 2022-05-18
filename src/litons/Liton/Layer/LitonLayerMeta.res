let make: (
  ~tag: string,
  ~children: option<string>,
  ~props: option<array<R.prop>>,
) => array<R.t> = (~tag, ~children, ~props) => [
  {
    title: LitonColorMeta.name,
    description: LitonColorMeta.description,

    root: Root({
      tag: R.defaultTag,
      props: R.defaultProps,

      children: R.block(.
        ~tag,
        ~children,
        ~key = LitonColorMeta.name,
        ~values = LitonColorMeta.args,
        ~staticProps = switch props {
        | Some(a) => a -> Belt.Array.keep(e => {
            let (key, _) = e
            key != LitonColorMeta.name
          }) -> Some
        | None => None
        },
      ) -> Some,
    }),
  },

  {
    title: LitonSizeMeta.name,
    description: LitonSizeMeta.description,

    root: Root({
      tag: R.defaultTag,
      props: R.defaultProps,

      children: R.block(.
        ~tag,
        ~children,
        ~key = LitonSizeMeta.name,
        ~values = LitonSizeMeta.args,
        ~staticProps = switch props {
        | Some(a) => a -> Belt.Array.keep(e => {
            let (key, _) = e
            key != LitonSizeMeta.name
          }) -> Some
        | None => None
        },
      ) -> Some,
    }),
  },

  {
    title: LitonTypeMeta.name,
    description: LitonTypeMeta.description,

    root: Root({
      tag: R.defaultTag,
      props: R.defaultProps,

      children: R.block(.
        ~tag,
        ~children,
        ~key = LitonTypeMeta.name,
        ~values = LitonTypeMeta.args,
        ~staticProps = switch props {
        | Some(a) => a -> Belt.Array.keep(e => {
            let (key, _) = e
            key != LitonTypeMeta.name
          }) -> Some
        | None => None
        },
      ) -> Some,
    }),
  },
]
