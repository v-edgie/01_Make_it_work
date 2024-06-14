program call_sub
    implicit none

    real :: mat(10,20)

    mat(:,:) = 0.0

    ! subroutines invoked witha call statement:
    call print_matrix(10, 20, mat)

end program call_sub

! subroutine input args are dummy args
! they must be declared within the body of the subroutine just like local variables.
! Use intent, even though technically it is optional, because it enables some additional compiler checks.
subroutine print_matrix(n,m,A)
    implicit none
    integer, intent(in) :: n
    integer, intent(in) :: m
    real, intent(in) :: A(n,m)

    integer :: i

    do i = 1, n
        print *, A(i, 1:m)
    end do

end subroutine print_matrix

! It is recommended to place functions and subroutines in modules.