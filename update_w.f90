!     
! File:   distance.f90
! Author: peter
!
! Created on May 6, 2020, 12:49 PM
!
module update_w
    use init
    use init
    use print_mat
    use matrix_mult
    use trans
    use distance
    use add_matrix
    
    implicit none 
    private
    public::w_update
    
    interface w_update
        procedure w_update
    end interface w_update

contains
    function w_update(W, H, A)result(W_up)
        real, Dimension(:,:), intent(in)::A,H,W
!        Shape is (A first and Rank or H first)
        real, Dimension(size(A,1),size(H,1))::AH_T
        real, Dimension(size(A,1),size(H,1))::WHH_T
        
        real, Dimension(size(W,1),size(W,2))::W_up
        
        integer::i,j
        
        AH_T = matmul(A, transpose(H))
        
        WHH_T = matmul(matmul(W,H), transpose(H))+1*10**(-3)
        
        W_up = W
        print*,"updating loop ...."
        do i = 1, size(H,1)
            do j = 1, size(H,2)
                W_up(i, j) = W_up(i, j) * AH_T(i, j) / WHH_T(i, j)
            end do
        end do
        print*,"End loop ...."
    end function w_update
    
end module update_w

