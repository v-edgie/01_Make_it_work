program array_slice
    implicit none

    integer :: i
    integer :: array1(10)  ! 1D array of 10 elements
    integer :: array2(10,10) ! 2D array of 100 integers

    array1 = [1,2,3,4,5,6,7,8,9,10]  ! array constructor
    array1 = [(i, i=1,10)] ! Implied do-loop constructor
    array1(:) = 0 ! Set all elements to zero
    array1(1:5) = 1 !  Set 1st 5 elements to 1
    array1(6:) = 1 ! Set all elements after 5th to 1

    print *, array1(1:10:2)  ! print elements at odd indices
    print *, array2(:,1) ! Print 1st column of 2D array
    print *, array1(10:1:-1) ! Print in reverse-index order

    ! not interesting or distinguishable, so make it so:

    array1 = [(i, i=1,10)]
    print *, array1  ! Print all of array1
    print *, array1(10:1:-1) ! in reverse now that not all values are 1

    ! Fortran arrays are stored in column-major order, the 1st index
    ! varies the fastest.
    
end program array_slice
