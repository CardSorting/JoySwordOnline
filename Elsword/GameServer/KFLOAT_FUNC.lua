function ASSIGN_KFLOAT_FLOAT( lhs, rhs )
	
	lhs:Update( rhs )
	
end 


function ASSIGN_KFLOAT_KFLOAT( lhs, rhs )
	
	lhs.m_data 			= rhs.m_data
	lhs.m_verifyData 	= rhs.m_verifyData
	lhs.m_ucTableIndex	= rhs.m_ucTableIndex
	
end 


function ADD_KFLOAT_FLOAT( lhs, rhs )
	
	lhs:Update( lhs.m_data + rhs )
	
end 


function SUBTRACT_KFLOAT_FLOAT( lhs, rhs )
	
	lhs:Update( lhs.m_data - rhs )
	
end 


function MULTIPLY_KFLOAT_FLOAT( lhs, rhs )

	lhs:Update( lhs.m_data * rhs )
	
end 


function DIVIDE_KFLOAT_FLOAT( lhs, rhs )
	
	lhs:Update( lhs.m_data / rhs )

end 
