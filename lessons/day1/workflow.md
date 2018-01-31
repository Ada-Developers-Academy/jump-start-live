_JumpStart Live (JSL)_
# Day 1
## Workflow

### MacOSX splitting your screen
There are number of ways to split your screen, and move your windows around, a few options are listed below
* Native to MacOSX, use Desktops and Split Views
* Install [Spectacle](https://www.spectacleapp.com/) (Free)
* Install [Moom](https://manytricks.com/moom/) ($10)
* Install [Divvy](http://mizage.com/divvy/) ($13.99)

### Terminal
When programming you should always have a Terminal window open

#### Opening Terminal
* `cmd+spacebar` to open spotlight, then type Terminal
* Drag Terminal to your Dock (if it's not already there)

#### Terminal commands

| Command | Description |
| :--- | :--- |
| `cmd` + `K` | clear your screen |
| `touch <filename>` | creates a new file named filename |
| `pwd` | <b>p</b>rints the <b>w</b>orking <b>d</b>irectory (displays the full path of the current directory) |
| `cd` | <b>c</b>hoose a <b>d</b>irectory |
| `cd ..` | go back a directory |
| `cd ~` | choose home directory |
| `ls` | list the items in the directory |
| `ls -a` | list the items in the directory, including hidden files |
| `mkdir` | make a new directory |
| `rm <filename>` | removes the file named filename |
| `rm -r <dirname>` | removes the directory (and everything in it) named dirname |
| &#8593; | view the previous command |
| `ctrl` + `a` | go to beginning of line |
| `ctrl` + `e` | go to end of line |
| `alt` + &#8594; | move to the right, one word |
| `alt` + &#8592; | move to the left, one word |
| `ctrl` + `c` | interrupt or stop a command |

#### irb commands

| Command | Description |
| :--- | :--- |
| `irb` | start interactive ruby session |
| `exit` | exit an `irb` session |
| `ctrl` + `c` | interrupt or stop a command |

#### Running Ruby files in Terminal
* Type `ruby` followed by the name of the Ruby file (e.g., `ruby hello_world.rb`)

### Atom
* If Atom is not already in your Applications folder move it there
* In Atom, click the Atom menu and then _Install Shell Commands_
* Now, to launch Atom from terminal, type `atom` followed by the file name or directory name

### Bash Profile
* `.bash_profile` is a hidden file in your user directoy that you can edit to customize the terminal prompt (among a number of other things)
* Type `atom ~/.bash_profile` to open it (if it doesn't already exist, this command will create it)

#### PS1
* `PS1` is the enviornment variable for the bash prompt
* `PS1` stands for _Prompt String 1_, there is also `PS2`, `PS3`, and `PS4`
* The default string stored in `PS1` is `\s-\v\$`
* To change `PS1`, add `export PS1=" "` to your `.bash_profile` (no spaces on either side of the equal sign)
* Add anything in the quotes that you would like (some options below)
  * `\s` – name of shell (e.g., bash)
  * `\v` – version of bash
  * `\d` – current date
  * `\t` – current time
  * `\u` – user name
  * `\W` – current working directory
  * You can even add emoji, in Atom, click Edit > Emjoi & Symbols
* When you are done editing, save in Atom and then type `source ~/.bash_profile` in Terminal to apply the changes

### Resources
* [Ada Workflow Video](https://adaacademy.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=6dae66cc-d38a-4308-bea1-a0ce3202ff64) (8:34)
