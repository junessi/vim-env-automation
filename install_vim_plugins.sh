VIM_HOME=${HOME}/.vim

if [ -d "${VIM_HOME}" ]; then
    # install pathogen
    [ ! -d "/tmp/vim-pathogen" ] && git clone https://github.com/tpope/vim-pathogen.git /tmp/vim-pathogen
    [ ! -d "${VIM_HOME}/autoload" ] && [ ! -f "${VIM_HOME}/autoload/pathogen.vim" ] && cp -r /tmp/vim-pathogen/autoload ${VIM_HOME}
    [ ! -d "${VIM_HOME}/bundle" ] && mkdir ${VIM_HOME}/bundle

    # install plugins
    [ ! -d "${VIM_HOME}/bundle/kalisi" ] && git clone https://github.com/freeo/vim-kalisi ${VIM_HOME}/bundle/kalisi
    [ ! -d "${VIM_HOME}/bundle/syntastic" ] && git clone --depth=1 https://github.com/vim-syntastic/syntastic.git ${VIM_HOME}/bundle/syntastic
    [ ! -d "${VIM_HOME}/bundle/nerdtree" ] && git clone https://github.com/preservim/nerdtree.git ${VIM_HOME}/bundle/nerdtree
fi
