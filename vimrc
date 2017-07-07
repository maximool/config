" http://vim.wikia.com/wiki/Example_vimrc
" Interprète les fichiers .md comme du Markdown
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
" Thème transparent, default fait plus flashy mais il est
" installé par défaut
colorscheme default
" Active tous les plugins compris dans le package, notamment netrw (avec
" la commande `:E`)
filetype plugin indent on
" Configuration de netrw
let g:netrw_banner=0
let g:netrw_liststyle=0
let g:netrw_winsize=15
" Change automatiquement le pwd en fonction du fichier actif
set autochdir
" L'arrière plan peut être foncé ("dark") ou clair ("light"), la
" plupart des jeux de couleurs s'adapteront en conséquence
set background=dark
" Règle d'éventuels problèmes d'interprétation de la touche retour sous
" d'anciens émulateurs
set backspace=2
" Le passer à 2 permet d'éviter d'avoir à taper 'Entrée' lors d'un
" message trop grand
set cmdheight=1
" Retire le message d'erreur lorsque l'on essaie de fermer un fichier
" modifié et propose de l'enregistrer
set confirm
" Souligne la ligne où se trouve le curseur
set cursorline
" L'encodage, indispensable
set encoding=UTF-8
set fileencoding=UTF-8
" Met en surbrillance les résultats des recherches
set hlsearch
" Commence la recherche avant validation par l'utilisateur
set incsearch
" Ignore la casse lors d'une recherche
set ignorecase
" Affiche des informations sur la barre de commande
set laststatus=2
" Pour coller avec la souris
set mouse=a
" Désactive le mode de compatibilité avec vi
set nocompatible
" Affiche le numéro de la ligne dans une marge à gauche
set number
" Ajoute à l'autocomplétion plein texte classique (Ctrl+P) une
" autocomplétion basée sur le langage du fichier en cours d'édition
" (ne marche pas forcément bien, dépend de la version de vim)
set omnifunc=syntaxcomplete#Complete
" Menu en bas de l'écran
set ruler
" Cette commande indique le nombre d'espace à insérer lorsque l'on
" essaie de convertir les tabulations en espaces (`:set expandtab`)
set shiftwidth=4
set expandtab
" Affiche la commande en bas à droite
set showcmd
" Lorsque le curseur est sur un symbole marquant la fin ou le début
" d'un bloc (typiquement une parenthèse, un crochet ou une accolade)
" cette option met aussi en surbrillance le symbole correspondant
set showmatch
" Affiche le mode actuel
set showmode
" Permet de chercher/remplacer sans prendre en compte la casse
set smartcase
" Indentation automatique
set smartindent
" Calibration du terminal pour les jeux de couleurs
set t_Co=256
" Remplace toutes nouvelle tabulation insérée par X espaces (quatre en
" l'occurrence)
set tabstop=4
" Ces deux options facilitent l'utilisation de la souris
set ttyfast
set ttymouse=sgr
" Active l'autocomplétion des commandes et des fichiers
set wildmenu
" Active la coloration syntaxique si besoin est
syntax on
" Colore la colonne 80 (pour rappel des bonnes règles d'indentation)
set colorcolumn=80
