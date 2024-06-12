# Compiler and flags to use:
FC = gfortran
FFLAGS = --std=f2018

# Executable file names we want to create
execs = allocatable allocatable_string array_slice arrays string string_array

# Default is to compile all of the files in $(execs)
all: $(execs)

# Each executable depends on the .f90 source file.
# Compilation only occurs when the source is newer than the executable.
$(execs): %: %.f90

# Compile each .f90 but do not link (no libraries required for this project)
%:
	$(FC) -c $(FFLAGS) $< -o $@

# Remove the executables we previously created
clean:
	rm -f $(execs)
