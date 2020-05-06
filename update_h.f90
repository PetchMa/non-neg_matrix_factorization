!     
! File:   distance.f90
! Author: peter
!
! Created on May 6, 2020, 12:49 PM
!
module update_h
    use init
    use init
    use print_mat
    use matrix_mult
    use trans
    use distance
    use add_matrix
    
    implicit none 
    private
    public::h_update
    
    interface h_update
        procedure h_update
    end interface h_update

contains
    function h_update(H, W, A)result(H_up)
        real, Dimension(:,:), intent(in)::A,H,W
        real, Dimension(size(W,2),size(A,2))::W_TA
        real, Dimension(size(W,2),size(H,2))::W_TWH
        real, Dimension(size(H,1),size(H,2))::H_up
        
        integer::i,j
        print*,"Calculating W_TA ...."
        
        W_TA = multiply(transpose(W),A)
        
        print*,"Calculating W_TWH ...."
        print*," W shape ....", size(W,1), "  - ", size(W,2)
        print*," H shape ....", size(H,1), "  - ", size(H,2)
        W_TWH = multiply(transpose(W),multiply(W,H))+1*10**(-6)
        H_up = H
        
        do i = 1, size(H,1)
            do j = 1, size(H,2)
                H_up(i, j) = H_up(i, j) * W_TA(i, j) / W_TWH(i, j)
            end do
        end do
        
    end function h_update
    
end module update_h

