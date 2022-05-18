---

title: Button


---

# Button

## color

```tsx
import React from 'react'
import { Button } from '@polydevil/hypernova'

export default () => (<div style={{ display: "grid", gap: 10 }}>
	<Button color="warning">
		Кнопка
	</Button>
	<Button color="danger">
		Кнопка
	</Button>
	<Button color="accent">
		Кнопка
	</Button>
</div>)
```

## size

```tsx
import React from 'react'
import { Button } from '@polydevil/hypernova'

export default () => (<div style={{ display: "grid", gap: 10 }}>
	<Button size="xl">
		Кнопка
	</Button>
	<Button size="l16">
		Кнопка
	</Button>
	<Button size="l14">
		Кнопка
	</Button>
	<Button size="m">
		Кнопка
	</Button>
	<Button size="s">
		Кнопка
	</Button>
</div>)
```

## t

```tsx
import React from 'react'
import { Button } from '@polydevil/hypernova'

export default () => (<div style={{ display: "grid", gap: 10 }}>
	<Button t="primary">
		Кнопка
	</Button>
	<Button t="outline">
		Кнопка
	</Button>
	<Button t="transparent">
		Кнопка
	</Button>
</div>)
```
