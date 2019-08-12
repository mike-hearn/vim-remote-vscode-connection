let s:plugindir = expand('<sfile>:p:h:h')

function! RunCode()
      let s:originalpos = getpos('.')
      let s:originalline = s:originalpos[1]
      let s:originalcurs = s:originalpos[2]

      execute "silent !" .
                        \ s:plugindir .
                        \ "/plugin/run.sh " .
                        \ expand('%:p') . " "
                        \ s:originalline . " " .
                        \ s:originalcurs
      echo ""
      redraw
endfunction

command! -nargs=0 Code call RunCode()
