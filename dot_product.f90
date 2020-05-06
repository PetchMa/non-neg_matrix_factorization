!     
! File:   dot_product.f90
! Author: peter
!
! Created on May 6, 2020, 10:56 AM
!

module dot_product
    
    implicit none 
    private
    public::mult
    
    interface mult
        procedure mult
    end interface mult

contains
    function mult(array,array2) result(sum)
        real, Dimension(:), intent(in)::array, array2
        integer:: x,n
        real :: sum 
        sum=0
        if(size(array,1)/=size(array2,1))then
            print*,"incompatable"
            stop
        else
            x = size(array,1)
            do n =1,x
                sum = sum + array(n)*array2(n)
            end do
        end if
        
    end function mult
    
end module dot_product

