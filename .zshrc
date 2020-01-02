#----------------------------------------------------------------------------------#
#                                        zsh.                                      # 
#----------------------------------------------------------------------------------#

export PATH=$HOME/bin:/usr/local/bin:$PATH   # Path.
export ZSH="/home/kyle/.oh-my-zsh"           # Oh My ZSH location.
ZSH_THEME="agnoster"                         # ZSH Theme.
HIST_STAMPS="dd.mm.yyyy"                     # History command timestamps.
COMPLETION_WAITING_DOTS="true"               # Red dots whilst waiting for completion.
ENABLE_CORRECTION="true"                     # Command auto-correction.

# ZSH Plugins.
plugins=(git alias-finder colored-man-pages docker python themes frontend-search copyfile)

source ~/Documents/config/globalAliases      # Custom aliases.
source ~/Documents/config/privateAliases    # Custom private aliases.
source ~/Documents/config/suffixAliases      # Custom suffix aliases. 
source $ZSH/oh-my-zsh.sh                     # Oh My ZSH.

#----------------------------------------------------------------------------------#
#                              Custom Startup Display.                             # 
#----------------------------------------------------------------------------------#

# Prints the ASCII art for my name.
#echo ""
#cat ~/Pictures/ascii/name.txt
#echo ""
echo ""

# Displays neofetch.
neofetch --source ~/Pictures/ascii/goose.txt

# Displays useful commands and todo list.
python ~/Documents/config/startup.py
echo ""

# Displays Git repo statuses.
echo "     \033[95mGit Repos\033[0m"
echo "     ---------------"
mgitstatus -c --no-upstream ~/Documents | sort | sed -e 's/^/     /'
echo ""

cd ~/Documents
