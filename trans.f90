!     
! File:   trans.f90
! Author: peter
!
! Created on May 6, 2020, 12:00 PM
!

!     
! File:   dot_product.f90
! Author: peter
!
! Created on May 6, 2020, 10:56 AM
!

module trans
    
    implicit none 
    private
    public::transpose
    
    interface transpose
        procedure transpose
    end interface transpose

contains
    function transpose(array) result(array_1)
        real, Dimension(:,:), intent(in)::array
        real, Dimension(size(array,2),size(array,1))::array_1
        integer:: row, n
        
        row = size(array,2)
        do n = 1, row
            array_1(n,:) = array(:,n)
        end do    
        
        
    end function transpose
    
end module trans

