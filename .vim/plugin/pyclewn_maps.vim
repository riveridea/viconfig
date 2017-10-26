" This files contains key mappings specific to Cavium debugging

" Target Thief Octeon 0 debug agent
nmap <F9> :Ctarget octeon 172.30.44.92:38026<CR>
" Target Thief Octeon 1 debug agent
nmap <F10> :Ctarget octeon 172.30.44.92:38027<CR>
" Target Bee Octeon debug agent
nmap <F11> :Ctarget octeon 172.30.44.70:38026<CR>

" Load ppx-flow-mgr symbols into gdb session
nmap <F5> :Cfile <C-R>=$CC_BASE<CR>/npsoft/target/cavium/usbc_gnu_octeon/image/ppx-flow-mgr<CR>

" Set cores to step-all on
nmap <C-S> :Cset step-all on<CR>
" Set active core to control core
nmap <C-A-c> :Cset active-cores 0<CR>
" Set active core to timer core
nmap <C-A-t> :Cset active-cores 1<CR>
" Set active core to scanner core
nmap <C-A-s> :Cset active-cores 2<CR>
" Set active core to single data core (image hopefully running in single datacore mode)
nmap <C-A-d> :Cset active-cores 3<CR>
