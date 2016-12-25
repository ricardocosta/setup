# Alfred

After installing Alfred, some configurations are still needed.
* Add PowerPack licence key

## General
* Alfred Hotkey > `⌘ Space`

## Features
* Default Results > Essentials > Select `Applications` and `Preferences`

* Web Search > Add Custom Search:

|         Search URL                                   |           Title           |  Keyword  |
|------------------------------------------------------|---------------------------|-----------|
|`https://www.instagram.com`                           |`instagram`                |`instagram`|
|`https://instagram.com/{query}`                       |`Instagram Open Profile`   |`instagram`|
|`https://talkdesk.atlassian.net/browse/{query}`       |`JIRA`                     |   `jira`  |
|`https://developer.mozilla.org/en-US/search?q={query}`|`Mozilla Developer Network`|   `mdn`   |

* Clipboard > Viewer Hotkey > `⌥ ⌘ V`

* Terminal / Shell > Prefix > `>`
* Terminal / Shell > Application:
```
on alfred_script(q)
  if application "iTerm2" is running or application "iTerm" is running then
    run script "
      on run {q}
        tell application \":Applications:iTerm.app\"
          activate
          try
            select first window
            set onlywindow to false
          on error
            create window with default profile
            select first window
            set onlywindow to true
          end try
          tell the first window
            if onlywindow is false then
              create tab with default profile
            end if
            tell current session to write text q
          end tell
        end tell
      end run
    " with parameters {q}
  else
    run script "
      on run {q}
        tell application \":Applications:iTerm.app\"
          activate
          try
            select first window
          on error
            create window with default profile
            select first window
          end try
          tell the first window
            tell current session to write text q
          end tell
        end tell
      end run
    " with parameters {q}
  end if
end alfred_script
```

## Workflows
* [GitHub Workflow for Alfred 3](https://github.com/gharlan/alfred-github-workflow)
* [ObjectId Analyzer](https://github.com/haizi-zh/alfred-workflow-objectid) 

## Appearance
* [Material Blue Grey Dark](https://github.com/deerawan/alfred-material-themes)
