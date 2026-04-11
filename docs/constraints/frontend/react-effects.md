# React Effects — Constraint

## Purpose

Prevent non-deterministic UI behavior and unnecessary render cycles by strictly limiting the use of `useEffect`.

This constraint ensures React components remain:

- deterministic
- declarative
- verifiable
- free of hidden state transitions

---

## 🔒 Core Rule (Enforced)

> `useEffect` is only allowed for synchronization with systems outside React.

If logic can be expressed within React’s render cycle, it **must not use `useEffect`.**

---

## 🧠 System Principle

React is a pure rendering system:

- UI = function of state + props
- Rendering must remain side-effect free
- Effects run after render and introduce timing

Effects are therefore treated as a **controlled escape hatch**, not a default tool.

---

## 🚫 Disallowed Patterns

### 1. Derived Data in State

```tsx
useEffect(() => {
  setFiltered(items.filter(x => x.active));
}, [items]);
```

✅ Replace with:

```tsx
const filtered = items.filter(x => x.active);
```

---

### 2. Derived State Synchronization

```tsx
useEffect(() => {
  setFullName(first + " " + last);
}, [first, last]);
```

✅ Replace with:

```tsx
const fullName = `${first} ${last}`;
```

---

### 3. Event Logic in Effects

```tsx
useEffect(() => {
  if (clicked) submitForm();
}, [clicked]);
```

✅ Replace with:

```tsx
function handleClick() {
  submitForm();
}
```

---

### 4. Pure Computation in Effects

```tsx
useEffect(() => {
  setResult(expensiveCalc(data));
}, [data]);
```

✅ Replace with:

```tsx
const result = useMemo(() => expensiveCalc(data), [data]);
```

---

### 5. Prop → State Mirroring

```tsx
useEffect(() => {
  setValue(propValue);
}, [propValue]);
```

🚫 Avoid unless explicitly required and justified.

---

## ⚠️ Suspicious Patterns (Require Justification)

The following patterns are often incorrect and must be explicitly justified:

- “when X changes, set Y”
- copying props into state
- filtering/mapping data into state
- triggering actions based on state flags
- chains of effects updating other state

If encountered, attempt refactor before accepting.

---

## ✅ Allowed Use Cases (Strict)

Effects are permitted only for:

- API calls / network synchronization
- subscriptions (events, sockets, observers)
- timers (`setInterval`, `setTimeout`)
- imperative DOM APIs
- third-party library lifecycle management

---

## 🧭 Preferred Alternatives

Before using `useEffect`, prefer:

- Derived values in render
- Event handlers for user-triggered logic
- `useMemo` for expensive pure computations
- `key`-based resets for component state
- Controlled components
- Server-side data loading where applicable

---

## 🧪 Verification Requirements

Before introducing an effect, answer:

1. What external system is being synchronized?
2. Why can this not be computed during render?
3. What breaks if this runs multiple times?
4. Is this introducing a hidden state transition?

If these cannot be clearly answered, the effect is not allowed.

---

## ⚡ Performance Constraint

Each unnecessary effect introduces:

render → commit → effect → state update → re-render

This is considered avoidable system overhead.

---

## 🔁 Refactor Directive

During review:

1. Identify all `useEffect` usage
2. Classify each as:
   - external synchronization → allowed
   - internal logic → must refactor
3. Remove all non-essential effects

---

## 🧱 Architectural Alignment

This constraint supports:

- predictable rendering behavior
- reduced timing-dependent bugs
- easier reasoning and debugging
- alignment with spec-driven and verification-first workflows

---

## 🧾 One-Line Rule

> If it does not touch the outside world, it does not belong in an effect.
