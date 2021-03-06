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
    use trans
    use distance
    use mu_method
    
    implicit none
    integer :: x_1 = 10, y_1=10, stuff
    integer :: rank =20
    integer :: max_iter =300
    real, Dimension(:,:), Allocatable :: A, W, H
    Allocate(A(x_1,y_1))
    Allocate(W(x_1,rank))
    Allocate(H(rank, y_1))
       
    A = init_matrix(x_1,y_1)
    print*,"Matrix A =>>"
    
    
    stuff= factoring(A,rank, max_iter)
    
    
    
end program main


