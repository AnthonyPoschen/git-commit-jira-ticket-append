# Jira Ticket Append

this pre-commit plugin adds jira ticket information to the commit message if it
doesn't alredy exist by looking for the jira ticket in the branch name.

commits will fail with this check if no jira ticket ends up in the commit message

## Usage

add the following to your `.pre-commit-config.yaml`
in all repos you want to enable this hook

```yaml
# commit-msg is required for this hook for pre-commit install to install the hook
default_install_hook_types: [pre-commit, commit-msg]
repos:
  - repo: https://github.com/anthonyposchen/jira-ticket-append
    rev: v0.2.0
    hooks:
      - id: jira-ticket-append
```

Then run `pre-commit install` to install the hook

## Example

![example video](./jira-ticket-append-example.webm)

<video controls width="250">
  <source src="https://github.com/anthonyposhen/jira-ticket-append/jira-ticket-append-example.webm" type="video/webm" />
</video>
