# stdodump.vim
For environment in which cannot be associated with clipboard, dump selected text or text on cursor line into Stdout.  
Then its easy to copy them into clipboard.  

# Installation via dein
dein.toml
```
[[plugins]]
repo = 'kentaro-a/stdodump.vim'
```

# Usage
Enter keymap "<Space><Space>y" to dump into stdout.
- vmode: Dump selected text.
- nmode: Dump text on cursor line.
