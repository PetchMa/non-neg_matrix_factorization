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
    integer :: x_1 = 2, y_1=2, x_2 = 2, y_2=2, stuff=1
    real, Dimension(:,:), Allocatable :: array, array2, array3, array4
    
    Allocate(array(x_1,y_1))
    Allocate(array2(x_2,y_2))
    Allocate(array3(x_1,y_2))
    
    array = init_matrix(x_1,y_1)
    stuff = print_matrix(array)
    
    array2 = init_matrix(x_2,y_2)
    stuff = print_matrix(array2)
    print *,""
    print *," Result of Matrix Multiplication"
    array3 = multiply(array,array2)
    stuff = print_matrix(array3)
    
    
end program main


