program run_func
    implicit none

    real :: v(9)
    real :: vector_norm

    v(:) = 9

    print *, 'Vector norm = ', vector_norm(9,v)

end program run_func

function vector_norm(n, vec) result(norm)
    implicit none
    integer, intent(in) :: n
    real, intent(in) :: vec(n)
    real :: norm

    ! Return value is specified by name:
    norm = sqrt(sum(vec**2))

end function vector_norm

! Good prctice for functions to not modify their args, i.e. intent(in).
! Doing so makes them *pure* functions.
! Use subroutines if you need to modify args.

! It is recommended to place functions and subroutines in modules.