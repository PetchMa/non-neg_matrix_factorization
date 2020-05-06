!     
! File:   distance.f90
! Author: peter
!
! Created on May 6, 2020, 12:49 PM
!
module mu_method
    use init
    use print_mat
    use matrix_mult
    use trans
    use distance
    use add
    
    
    implicit none 
    private
    public::factoring
    
    interface factoring
        procedure factoring
    end interface factoring

contains
    function factoring(A, rank)result(array1)
        real, Dimension(:,:), intent(in)::A
        integer, intent(in)::rank, stuff
       
        real, Dimension(size(A,1),rank)::W
        real, Dimension(rank, size(A,2))::H     
        W,H = init_start(size(A,1),rank)
        
        
        
    end function factoring
    
end module mu_method

