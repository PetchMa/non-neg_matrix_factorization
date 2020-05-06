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
    
    implicit none 
    private
    public::h_update
    
    interface h_update
        procedure h_update
    end interface h_update

contains
    function h_update(H, W, A, e)result(H_up)
        real, Dimension(:,:), intent(in)::A,H,W
        real, Dimension(size(W,2),size(A,2))::W_TA
        real, Dimension(size(W,2),size(H,2))::W_TWH
        real, Dimension(size(H,1),size(H,2))::H_up
        real, intent(in), e
        integer::i,j
        
        W_TA = multiply(transpose(W),A)
        W_TWH = add(multiply(transpose(W),H),e)
        H_up = H
        
        do i = 1, size(H,1)
            do j = 1, size(H,2)
                H_up(i, j) = H_up(i, j) * W_TA(i, j) / W_TWH(i, j)
            end do
        end do
        
    end subroutine h_update
    
end module update_h

