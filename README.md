# My-vimrc

Download repo
```
git clone https://github.com/chengh233/My-vimrc.git
```

## Basic vimrc

Copy `basic-vimrc` to ~/.vim/vimrc
```
mkdir -p ~/.vim && cp basic-vimrc ~/.vim/vimrc
```

Source the vimrc
```
#Press shift + R to source vimrc
#Press shift + S to save vimrc
#Press shift + Q to quit vim
```

Done.

## Plugin vimrc

Copy `plugin-vimrc` to ~/.vim/vimrc
```
mkdir -p ~/.vim && cp plugin-vimrc ~/.vim/vimrc
```

Install PlugIn
```
cd ~/.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Source the vimrc
```
#Press shift + R to source vimrc
# Enter command inside vim to install plugins
:PlugInstall
#Press shift + S to save vimrc
#Press shift + Q to quit vim
```

Done.

## Key Mapping

```
[Save] :w => S
[Quit] :q => Q
[:] : => ;
Fast move: H/J/K/L
Move to end of line: [SHIFT] + '
Move to start of line: [SHIFT] + ;
```

Split window:
```
To Left: [SPACE] + l
To Right: [SPACE] + h
To Up: [SPACE] + k
To Down: [SPACE] + j
```

Switch among splitted windows:
```
To Left: [CTRL] + l
To Right: [CTRL] + h
To Up: [CTRL] + k
To Down: [CTRL] + j
```

Adjust splitted window size:
```
To Left: [CTRL] + a
To Right: [CTRL] + d
To Up: [CTRL] + w
To Down: [CTRL] + s
```

Open a buffer:
```
:e <file>
```

Switch buffer:
```
Switch to left: =
Switch to right: -
```

Find:
```
/<something>
move to next: n
move to previous: N
```


