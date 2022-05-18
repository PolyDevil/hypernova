---

title: Button


---

# Button

## color

```tsx
import React from 'react'
import { Button } from '@rekamarket/sber-business-ui'

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
import { Button } from '@rekamarket/sber-business-ui'

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

## type

```tsx
import React from 'react'
import { Button } from '@rekamarket/sber-business-ui'

export default () => (<div style={{ display: "grid", gap: 10 }}>
	<Button type="primary">
		Кнопка
	</Button>
	<Button type="outline">
		Кнопка
	</Button>
	<Button type="transparent">
		Кнопка
	</Button>
</div>)
```
