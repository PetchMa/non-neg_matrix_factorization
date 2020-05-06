!     
! File:   distance.f90
! Author: peter
!
! Created on May 6, 2020, 12:49 PM
!
module random_init
    use init
    implicit none 
    private
    public::init_start_w, init_start_h
    
   

contains
    function init_start_w(A, rank)result(W)
        real, Dimension(:,:), intent(in)::A
        integer, intent(in)::rank
        real, Dimension(size(A,1),rank)::W
        real, Dimension(rank,size(A,1)):: H
        
        W = init_matrix(size(A,1),rank)

    end function init_start_w
    
    function init_start_h(A, rank)result(H)
        real, Dimension(:,:), intent(in)::A
        integer, intent(in)::rank
        real, Dimension(size(A,1),rank)::W
        real, Dimension(rank,size(A,1)):: H
        
        H = init_matrix(rank,size(A,2))   
    end function init_start_h
    
end module random_init

