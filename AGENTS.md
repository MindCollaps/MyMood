# Project Instructions

These instructions apply to all future AI agents working in this repository.

## Project Context

- This is a Flutter app for Android and iOS.
- The README describes a simple, extensible mood-tracking app with a clear UI and no subscription complexity.
- The current structure is already feature-oriented under `lib/features`, with shared UI in `lib/shared` and app-level wiring in `lib/app`.

## Code Organization

- Keep the codebase modular and easy to navigate.
- Prefer many small, focused files over one large monolithic file.
- Split UI, state, models, services, and helpers into separate files when a feature starts to grow.
- Use feature-first folder structure for new work, for example `lib/features/<feature_name>/`.
- Put reusable widgets in `lib/shared/widgets` and app-wide composition in `lib/app`.
- Avoid deep nesting unless it clearly improves ownership and reuse.

## Code Quality

- Write clean, readable, idiomatic Flutter code.
- Keep widgets small and composable.
- Avoid putting business logic directly in `build` methods.
- Prefer explicit names over abbreviations.
- Remove dead code, unused imports, and temporary debugging output before finishing.
- Preserve the existing design direction unless the task explicitly calls for a redesign.

## Validation

- Always ensure `flutter analyze` completes with no errors before considering a task done.
- If analysis reports errors, fix them before handing the work back.
- Add or update tests when behavior changes.
- If a task cannot be fully validated, explain why and what remains unverified.

## Working Style

- Make the smallest correct change that solves the problem.
- Keep related changes grouped by feature or concern.
- Update documentation when setup, behavior, or project conventions change.