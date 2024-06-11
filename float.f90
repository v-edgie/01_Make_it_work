program float
    ! use the 'kind' parameter.
    ! iso_fortran_env module provides kind params for 32-bit and 64-bit floats
    !
    ! For c-interoperable kind, use iso_c_binding:
    ! use, intrinsic :: iso_c_binding, only: sp=>c_float, dp=>c_double
    use, intrinsic :: iso_fortran_env, only: sp=>real32, dp=>real64
    implicit none

    real(sp) :: float32
    real(dp) :: float64

    float32 = 1.0_sp  ! explicit suffix for literal constants
    float64 = 1.0_dp



end program float