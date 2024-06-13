program loops
    implicit none

    ! do loop counters must be integers, and must be declared just like all other variables
    integer :: i, j

    do i = 1, 10
        print *, i
    end do

    do i = 1, 10, 2
        print *, i
    end do

    ! Conditional loop

    i = 1
    do while (i < 11)
        print *, i
        i = i + 1
    end do
    ! here, i is 11

    ! when loops need to be stopped prematurely...

    ! loop with exit
    do i = 1, 100
        if (i > 10) then
            exit ! stop printing numbers
        end if
        print *, i
    end do

    ! loop with cycle
    i = 1
    do i = 1, 10
        if (mod(i, 2) == 0) then
            cycle  ! dont print even numbers
        end if
        print *, i
    end do

    ! nested loop control
    outer_loop: do i = 1, 10
        inner_loop: do j = 1, 10
            if ((j + i) > 10) then ! Print only pairs of i and j that add up to 10
                cycle outer_loop  ! Go to th enext iteration of the outer loop
            end if
            print *, 'I=', i, ' J=', j, ' Sum=', j + i
        end do inner_loop
    end do outer_loop

   
end program loops
