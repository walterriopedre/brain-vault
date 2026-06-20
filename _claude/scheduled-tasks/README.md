# Scheduled Tasks

This folder contains prompt files for automated tasks that run on a cron schedule.

Each file is a self-contained prompt that Claude executes without a human in the loop.
The file is the source of truth. The schedule is registered separately in your Claude Code
settings or via a cron job / task scheduler.

## File format

```yaml
---
name: task-name
schedule: "0 7 * * 1-5"    # cron expression — weekdays at 7:00 AM
model: haiku                 # use the lightest model sufficient for the task
---

Prompt text here. Write it as if you were giving instructions to Claude for a task
it must complete without asking any clarifying questions.

Always end with: "Save the output to reports/<task-name>-{date}.md."
```

## Model guidance for scheduled tasks

Most scheduled tasks are reads + reports — they scan files and produce structured summaries.
These do not require a powerful model. Use `model: haiku` unless the task involves:
- Synthesizing across many documents (use sonnet)
- Making recommendations with real consequences (use sonnet or opus)

A daily scan that lists 5 open deadlines does not need Opus. Save Opus for tasks where
missing something would have a real cost.

## Activating a schedule

After running the setup ritual (see `INSTALL.md`), register each task file with your
Claude Code administrator or set up a system cron job that runs:

```
claude --print "$(cat _claude/scheduled-tasks/<task-name>.md)" > /dev/null
```

The setup ritual will generate your first task file. Add more as the team discovers
recurring work they want automated.
