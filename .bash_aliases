# Helpful Aliases

#ls expansions
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias e='emacs' && alias se='sudo emacs';;
alias einit='e ~/.emacs.d/init.el'

alias d='dpkg -l | grep'

alias erc='e ~/.bashrc'
alias eba='e ~/.bash_aliases'
alias src='source ~/.bashrc'

## Run ROS Run!
alias cb='roscd && catkin build'
alias cbr='roscd && rm -rf build devel && catkin build'
alias cm='roscd && wr catkin_make -j8 -DCMAKE_CXX_FLAGS:STRING="" && cd -'
alias cmr='roscd && rm -rf build devel && echo "Removed Build and Devel dirs. Running catkin_make on 8 threads." && wr catkin_make -j8 -DCMAKE_CXX_FLAGS:STRING="" && cd -'
alias cmr1='roscd && rm -rf build devel && echo "Removed Build and Devel dirs. Running catkin_make on 1 thread." && wr catkin_make -j1 -DCMAKE_CXX_FLAGS:STRING="" && cd -'
