# Fortran Basics

## Fixed (F77) vs free (F90+) Format
|                |                      |  
| -------------- | -------------------- |
| **File Extension** | **File contents format** |  
| .f, .for | Fixed format |  
| .f90, .f95 | free form |
---  

## Compiler Usage

See https://fortran-lang.org/learn/os_setup/install_gfortran/


** Do NOT mix f77 object file with f90+ object files, they are binary-incompatible **


f77 invokes f2c transparently, like a compiler.

|  |  |
| --- | --- |
| -Ldirectory | Include directory when linking |  
| -o outfile | Send output to outfile |  
  

fort77  [-c]  [-g]  [-v] [-k] [-P] [-cpp] [f2c option ...]  [-L directory ...]  [gcc-option ...]  [link option ...]  [-O optlevel] [-o outfile] [-s] [-w]
       [-Wx,arg1[,arg2]...]  file ...


`man f77` for more info

