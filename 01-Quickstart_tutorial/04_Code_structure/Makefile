# Compiler and flags to use-
# We want Fortran, and enforce the 2018 standards:
FC = gfortran
FFLAGS = --std=f2018

# This is a collection of small independent applications-
# Executable file names we want to create
execs = subroutines functions my_mod use_mod

# Default is to compile all of the files in $(execs)
all: $(execs)

# Each executable depends on the .f90 source file.
# Compilation only occurs when the source is newer than the executable.
# Follow the standard filename extension for free-form Fortran (.f90)
$(execs): %: %.f90

# Compile each .f90 but do not link (no libraries required for this project)
# These are stand-alone apps, they do not link to each other or to external libraries.
%:
	$(FC) $(FFLAGS) $< -o $@

# Normally there would be a link target, but we do not need one for these independent small apps.
# TODO How to link my_mod to use_mod? Do that here?

# Remove the executables we previously created
clean:
	rm -f $(execs)
