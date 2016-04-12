" http://vim.wikia.com/wiki/Example_vimrc
" Interprète les fichiers .md comme du Markdown
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
" Thème transparent, default et elflord font plus flashy mais il sont
" installés par défaut
colorscheme twilight256
" Active tous les plugins compris dans le package, notamment netrw (avec
" la commande `:E`)
filetype plugin on
" Style classique de netrw
let g:netrw_liststyle=0
" Change automatiquement le pwd en fonction du fichier actif
set autochdir
set background=dark
" Règle d'éventuels problèmes d'interprétation de la touche retour sous
" d'anciens émulateurs
set backspace=2
" le passer à 2 permet d'éviter d'avoir à taper 'Entrée' lors d'un message
" trop grand
set cmdheight=1
" retire le message d'erreur lorsque l'on essaie de fermer un fichier modifié
" et propose de l'enregistrer
set confirm
" souligne la ligne où se trouve le curseur
set cursorline
" l'encodage, indispensable
set encoding=UTF-8
set fileencoding=UTF-8
" met en surbrillance les résutlats des recherches
set hlsearch
" commence la recherche avant validation par l'utilisateur
set incsearch
" ignore la casse lors d'une recherche
set ignorecase
" affiche des informations sur la barre de commande
set laststatus=2
" pour coller avec la souris
set mouse=a
" désactive le mode de compatibilité avec vi
set nocompatible
" affiche le numéro de la ligne dans une marge à gauche
set number
" ajoute à l'autocomplétion plein texte classique (Ctrl+P) une autocomplétion
" basée sur le langage du fichier en cours d'édition (ne marche pas forcément
" bien, dépend de la version de vim)
set omnifunc=syntaxcomplete#Complete
" menu en bas de l'écran
set ruler
" cette commande indique le nombre d'espace à insérer lorsque l'on essaie de
" convertir les tabulations en espaces (`:set expandtab`)
set shiftwidth=4
" affiche la commande en bas à droite
set showcmd
" lorsque le curseur est sur un symbole marquant la fin ou le début d'un 'bloc'
" (typiquement une parenthèse, un crochet ou une accolade) cette option met
" aussi en surbrillance le symbole correspondant
set showmatch
" affiche le mode actuel
set showmode
" permet de chercher/remplacer sans prendre en compte la casse
set smartcase
" indentation automatique
set smartindent
" calibration du terminal pour les jeux de couleurs
set t_Co=256
" remplace toutes nouvelle tabulation insérée par X espaces (quatre en
" l'occurrence)
set tabstop=4
" facilite l'utilisation de la souris
set ttyfast
set ttymouse=sgr
" active l'autocomplétion des commandes et des fichiers
set wildmenu
" active la coloration syntaxique si besoin est
syntax on
