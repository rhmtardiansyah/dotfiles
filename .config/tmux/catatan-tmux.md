# Tmux
```
prefix = ctrl+b
prefix = ctrl+a
```
## plagins
git clone https://github.com/tmux-plugins/tpm


## pane
```
### vertical
prefix + %
prefix + |
```
### horizontal
```
prefix + "
prefix + -
```
### show pane number
```
prefix + q
```
### change pane layout
```
prefix + space
```
### change pane focus

#### next
```
prefix + o
```
#### prev
```
prefix + ;
```
#### use arrow key

#### use h,j,k,l

#### zoom-in/zoom-out pane
```
prefix + z
```
#### pane resizing
```
prefix + hold(Ctrl) + arrow
prefix + Shift + h,j,k,l
```
#### pane movement
```
prefix + {/}
```
## window

### new window
```
prefix + c
```
### next window
```
prefix + n
```
### prev window
```
prefix + p
```
### show window
```
prefix + w
```
### rename window

```
prefix + ,
```
### close window
```
prefix + &
```

### swap window
```
prefix + >
prefix + <
```

## session

### create name
```
prefix + $
```

### session detach/close
```
prefix + d
```

### attach session
```
tmux attach-session -t [session name]
```

### kill session
```
tmux kill-session -t [session name]
```

## costum bind
### source config file
```
prefix + r
```

### install plugin
```
prefix + I
```

### update plugin
```
prefix + U
```

### remove plugin not on plugin list
```
prefix + alt + u
```
