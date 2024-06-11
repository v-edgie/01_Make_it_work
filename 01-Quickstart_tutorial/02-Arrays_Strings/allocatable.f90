program allocatable
    implicit none

    ! Allocatable added in Fortran 2003, so this is not valid Fortran 90.
    ! Since 4.6 (c. 2011) gfortran will compile this.
    integer, allocatable :: array1(:)
    integer, allocatable :: array2(:,:)

    allocate(array1(10))
    allocate(array2(10,10))

    ! .. do stuff

    deallocate(array1)
    deallocate(array2)

    ! Allocatable arrays are deallocated automatically when they go out of scope.

end program allocatable
