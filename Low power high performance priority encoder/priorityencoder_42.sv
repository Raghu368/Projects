module priorityencoder_42(a0,a1,a2,a3,y0,y1);
input logic a0,a1,a2,a3;
output logic y0,y1;
always_comb
    begin        
        if(a3==1) 
		  begin
		  y0=1;y1=1;
		  end
		  else if(a2==1) 
		  begin
		  y0=0;y1=1;
		  end
        else if(a1==1) 
		  begin
		  y0=1;y1=0;
		  end
        else 
		  begin
		  y0=0;y1=0;
		  end
    end
endmodule
