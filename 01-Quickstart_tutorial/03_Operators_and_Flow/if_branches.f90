program if_branches
    implicit none

    double precision :: angle

    angle = 1133.0
    
    ! multi-branch if
    ! Note the use if < instead of .LT., per Fortran 90 spec
    if (angle < 90.0) then
        print *, 'Angle is acute'
    else if (angle < 180.0) then
        print *, 'Angle is obtuse'
    else
        print *, 'Angle is reflex'
    end if
end program if_branches
