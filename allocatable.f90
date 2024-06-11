program allocatable
    implicit none

    integer, allocatable :: array1(:)
    integer, allocatable :: array2(:,:)

    allocate(array1(10))
    allocate(array2(10,10))

    ! do stuff with array1 and array2 ...

    ! deallcoate when done:
    deallocate(array1)
    deallocate(array2)

end program allocatable
! arrays are deallocated automatically when they go out of scope