program variables
    implicit none  ! ALWAYS use this !

    integer :: amount
    real :: pi 
    complex :: frequency
    character :: initial
    logical :: isOkay
    ! fortran is case-insensitive !
    ! but good practice is to keep it consistent  

    ! Assign values
    amount = 10
    pi = 3.141592654
    frequency = (1.0, -0.5)
    initial = 'T'  ! single- or double-quotes are ok
    isOkay = .false.

    ! Watch out for assignment at declaration !
    ! integer :: amount = 1
    ! implies the *save* attribute, meaning the variable retains its
    ! value between procedure calls.
    ! Good practice is to initialise varaibles separately !

    ! print stuff
    print *, 'The value of amount (integer) is:', amount
    print *, 'The value of pi (real) is:', pi
    print *, 'The value of frequency (complex) is:', frequency
    print *, 'The value of initial (character) is:', initial
    print *, 'The value of isOkay (boolean) is:', isOkay
    

end program variables
