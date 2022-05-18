---

title: ButtonLink


---

# ButtonLink

## color

```tsx
import React from 'react'
import { ButtonLink } from '@polydevil/hypernova'

export default () => (<div style={{ display: "grid", gap: 10 }}>
	<ButtonLink color="warning" href="https://hyper.nova">
		Ссылка
	</ButtonLink>
	<ButtonLink color="danger" href="https://hyper.nova">
		Ссылка
	</ButtonLink>
	<ButtonLink color="accent" href="https://hyper.nova">
		Ссылка
	</ButtonLink>
</div>)
```

## size

```tsx
import React from 'react'
import { ButtonLink } from '@polydevil/hypernova'

export default () => (<div style={{ display: "grid", gap: 10 }}>
	<ButtonLink size="xl" href="https://hyper.nova">
		Ссылка
	</ButtonLink>
	<ButtonLink size="l16" href="https://hyper.nova">
		Ссылка
	</ButtonLink>
	<ButtonLink size="l14" href="https://hyper.nova">
		Ссылка
	</ButtonLink>
	<ButtonLink size="m" href="https://hyper.nova">
		Ссылка
	</ButtonLink>
	<ButtonLink size="s" href="https://hyper.nova">
		Ссылка
	</ButtonLink>
</div>)
```

## t

```tsx
import React from 'react'
import { ButtonLink } from '@polydevil/hypernova'

export default () => (<div style={{ display: "grid", gap: 10 }}>
	<ButtonLink t="primary" href="https://hyper.nova">
		Ссылка
	</ButtonLink>
	<ButtonLink t="outline" href="https://hyper.nova">
		Ссылка
	</ButtonLink>
	<ButtonLink t="transparent" href="https://hyper.nova">
		Ссылка
	</ButtonLink>
</div>)
```
