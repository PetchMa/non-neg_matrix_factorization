!     
! File:   distance.f90
! Author: peter
!
! Created on May 6, 2020, 12:49 PM
!
module add_matrix
    
    implicit none 
    private
    public::add
    
    interface add
        procedure add
    end interface add

contains
    function add(array, scalar) result(array2)
        real, Dimension(:,:), intent(in)::array
        real, Dimension(size(array,1),size(array,2))::array2
        real::scalar
        integer:: n,m
       
        do n = 1, size(array,1)
            do m = 1, size(array,2)
                array2= array(n,m)+scalar
            end do
        end do
    end function add
    
end module add_matrix

