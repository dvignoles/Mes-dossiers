# Another .dotfiles repository
Managed using [chezmoi](https://github.com/twpayne/chezmoi). 

## install chezmoi on a new machine
sh -c "$(curl -fsLS git.io/chezmoi)" -- init --apply dvignoles/mes-dossiers

## configuration

```
# ~/.config/chezmoi/chezmoi.toml

[data]
    email = "dvignoles@email.com"
    work = false
    personal = false
    git_username = "dvignoles"
    dual_monitor = false
    monitor_1 = "Virtual1"
    monitor_2 = "Virtual2"
    include_secrets = false
```
