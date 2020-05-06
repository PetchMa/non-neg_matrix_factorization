!     
! File:   main.f90
! Author: peter
!
! Created on May 6, 2020, 8:52 AM
!
program main 
    use init
    use print_mat
    use matrix_mult
    
    implicit none
    integer :: x = 3, y=3, stuff=1
    real, Dimension(:,:), Allocatable :: array, array2
    
    Allocate(array(x,y))
    Allocate(array2(x,y))
    
    array = init_matrix(x,y)
    stuff = print_matrix(array)
    
    array2 = init_matrix(x,y)
    stuff = print_matrix(array2)
    
end program main


