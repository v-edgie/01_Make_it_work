program concurrent_loop
    implicit none

    ! parallelizable loop (do concurrent)
    ! Inside of the loop has no interdependencies, 
    ! compiler may use SIMD or other parallelization to speed up execution of the loop

    real, parameter :: pi = 3.1415926
    integer, parameter :: n = 10
    real :: result_sin(n)
    integer :: i
    
    do concurrent (i = 1:n) ! Careful, different syntax
        result_sin(i) = sin(i * pi/4.)
    end do

    print *, result_sin

end program concurrent_loop