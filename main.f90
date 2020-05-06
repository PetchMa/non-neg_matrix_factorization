!     
! File:   main.f90
! Author: peter
!
! Created on May 6, 2020, 8:52 AM
!
program main 
    use init, only: init_matrix
    implicit none
    integer :: x = 3, y=3
    real, Dimension(:,:), Allocatable :: array1
    Allocate(array(x,y))
    
    array = init_matrix(x,y)
    
end program main


