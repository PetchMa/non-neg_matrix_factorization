!     
! File:   distance.f90
! Author: peter
!
! Created on May 6, 2020, 12:49 PM
!
module mu_method
    use random_init
    use print_mat
    use matrix_mult
    use trans
    use distance
    use add_matrix
    use update_h
    use update_w
    
    
    implicit none 
    private
    public::factoring
    
    interface factoring
        procedure factoring
    end interface factoring

contains

    function factoring(A, rank, max_iter)result(stuff)
!        Set all the variables 
        real, Dimension(:,:), intent(in)::A
        integer, intent(in)::rank, max_iter
                
        real, Dimension(size(A,1),rank)::W
        real, Dimension(rank, size(A,2))::H
        integer :: n, i, j
        integer:: stuff
        stuff=1
!          
        W = init_start_w(A,rank)
        H = init_start_h(A,rank)
        
        print*,"Begin Minimizing Loop!"
        do n = 1, max_iter
            print*,"Updates -",n
            H = h_update(H, W, A)
      
            W = w_update(W, H, A)
            
            
            print*,"Error ", error(A, matmul(W,H))**2
        end do
               
    end function factoring
    
end module mu_method

