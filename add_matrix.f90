!     
! File:   distance.f90
! Author: peter
!
! Created on May 6, 2020, 12:49 PM
!
module add_matrix
    
    implicit none 
    private
    public::add_mat_and_scal
    
    interface add_mat_and_scal
        procedure add_mat_and_scal
    end interface add_mat_and_scal

contains
    function add_mat_and_scal(array, scalar) result(array2)
        real, Dimension(:,:), intent(in)::array
        real, intent(in)::scalar
        real, Dimension(size(array,1),size(array,2))::array2
        
        integer:: n,m
       
        do n = 1, size(array,1)
            do m = 1, size(array,2)
                array2= array(n,m)+scalar
            end do
        end do
    end function add_mat_and_scal
    
end module add_matrix

