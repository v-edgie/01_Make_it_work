program array_slice
    implicit none

    integer :: i 
    integer :: array1(10)  ! 1D integer array, 10 elements
    integer :: array2(10,10)  ! 2D array of 100 elements

    array1 = [1,2,3,4,5,6,7,8,9,10]  ! array constuctor
    array1 = [(i, i=1,10)] ! implied do-loop constructor
    array1(:) = 0 ! Set all elements to zero
    array1(1:5) = 1 ! set first 5 elements to 1
    array1(6:) = 1 ! set elements 6+ to 1

    print *, array1(1:10:2)  ! print elements with odd indices
    print *, array2(:,1)  ! print 1st columnn
    print *, array1(10:1:-1)  ! print in reverse order

    ! arrays are stored in column-major order, the 1st index varies the fastest
    
end program array_slice