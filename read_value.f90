program read_value
    implicit none

    integer :: age 

    print *, 'Please enter your age: '
    read(*,*) age  ! read from stdin
    print *, 'Your age is: ', age  ! write to stdout
end program read_value