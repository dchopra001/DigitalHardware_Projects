library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity kirsch is
  port(
    ------------------------------------------
    -- main inputs and outputs
    i_clock    : in  std_logic;                      
    i_reset    : in  std_logic;                      
    i_valid    : in  std_logic;                 
    i_pixel    : in  std_logic_vector(7 downto 0);
    o_valid    : out std_logic;                 
    o_edge     : out std_logic;	                     
    o_dir      : out std_logic_vector(2 downto 0);                      
    o_mode     : out std_logic_vector(1 downto 0);
    o_row      : out std_logic_vector(7 downto 0);
    ------------------------------------------
    -- debugging inputs and outputs
    debug_key      : in  std_logic_vector( 3 downto 1) ; 
    debug_switch   : in  std_logic_vector(17 downto 0) ; 
    debug_led_red  : out std_logic_vector(17 downto 0) ; 
    debug_led_grn  : out std_logic_vector(5  downto 0) ; 
    debug_num_0    : out std_logic_vector(3 downto 0) ; 
    debug_num_1    : out std_logic_vector(3 downto 0) ; 
    debug_num_2    : out std_logic_vector(3 downto 0) ; 
    debug_num_3    : out std_logic_vector(3 downto 0) ; 
    debug_num_4    : out std_logic_vector(3 downto 0) ;
    debug_num_5    : out std_logic_vector(3 downto 0) 
    ------------------------------------------
  );  
end entity;


architecture main of kirsch is

	--architecture main of lab3 is
  
  	
	signal out_signal 	:std_logic_vector(1 downto 0);
	signal row, col : unsigned (7 downto 0);
	signal state, vBit : std_logic_vector(2 downto 0); 	
	signal we :  std_logic_vector(2 downto 0); 
	signal mem0 : std_logic_vector(7 downto 0); 
	signal mem1: std_logic_vector(7 downto 0); 
	signal s1, s2, second_cw, stage1_wNw, final_dir, stage1_nNe, stage1_eSe, stage1_sSw, first_cw : std_logic_vector(2 downto 0); 
	signal r10, r5, x_r5, r12, a,b,c,d,e,f,g,h,i : std_logic_vector(7 downto 0);
	signal r9, r2, r13, validBit : std_logic_vector(8 downto 0);
	signal x_r6, r18, b_d1, r15, r11, x_r11, r16, x_r3 : std_logic_vector(9 downto 0);
	signal r14 : std_logic_vector(10 downto 0);
	signal x_r12 : std_logic_vector(11 downto 0);
	signal r17, x_r22  : std_logic_vector(12 downto 0);
	subtype vec is std_logic_vector(7 downto 0);
	type memory is array (2 downto 0) of vec;
	signal tempStorage : memory;	

begin
	
	Generate_mem: for i in 0 to 2 generate
		u_mem0 : entity work.mem(main)
		port map (
		address => std_logic_vector(col),
		data 	=> i_pixel,
		clock   => i_clock,
		wren    => we(i),
		q       => tempStorage(i)
		);
	end generate;
	
	vBit(0) <= i_valid; 
	
	process begin
	wait until rising_edge(i_clock);
		vBit(1) <= vBit(0);
		vBit(2) <= vBit(1); 
	end process;


	
	s1 <= state(1 downto 0) & state(2); -- rol 1
	s2 <= state(0) & state(2 downto 1); -- rol 2
	mem0 <= tempStorage(to_integer(unsigned(s1(2 downto 1)))); 
	mem1 <= tempStorage(to_integer(unsigned(s2(2 downto 1)))); 

	process begin
	wait until rising_edge(i_clock);
		if (i_reset = '1') then
			out_signal	<= "01";
		elsif(row > 0 and col > 0) then
			out_signal 	<= "11";
		else
			out_signal	<= "10";
		end if;
	end process;
	o_mode <= out_signal;
	
	process begin
	wait until rising_edge(i_clock); 
		if (i_reset = '1') then
			col <= to_unsigned(0,8); 
		elsif (vBit(1) = '1' and i_reset = '0') then
				col <= col+1;  
		end if; 	
	end process;
	
	process begin
	wait until rising_edge(i_clock);
		if (i_reset = '1') then 
			row <= to_unsigned(0,8);
			state <= "001";	
			
		elsif (i_valid = '1') then
			a <= b;
			h <= i;
			g <= f;
			b <= c;
			i <= d;
			f <= e;
			c <= mem0;
			d <= mem1;
			e <= i_pixel; 
		elsif (vBit(2) = '1') then
			if (col = 0) then
				row <= row +1; 
				state <= state(1 downto 0) & state(2);
			end if; 

		end if;	
	end process; 
	
	o_row <= std_logic_vector(row);
	
	-------Control----------
	process begin
		wait until rising_edge(i_clock);
		if (i_reset = '1') then 
			validBit <= "000000000";
		else
			validBit <= validBit(7 downto 0) & '0';
			if i_valid = '1' and (row > 1  and  col > 1) then
				validBit(0) <= '1';
			
			end if;
		end if;
	end process;

	----------------------------STAGE 1-----------------------
	
	process begin
	wait until rising_edge(i_clock);	
		if(validBit(0) = '1') then 
		
			if (d > a) then  --d/a ...NE/N (N wins)
				r10 <= d;    --
				stage1_nNe <= "110";
			else
				r10<= a;
				stage1_nNe <= "010";
			end if;
			
			r9 <= std_logic_vector(unsigned('0' & b) + unsigned('0' & c));
		
		elsif(validBit(1) = '1') then
		
			r2 <= std_logic_vector(unsigned('0' & h) +unsigned('0' & a));
			
			if(b > g) then  --b/g  ...W/NW.. W wins
				r5 <= b;
				stage1_wNw <= "100";
			else
				r5 <= g;
				stage1_wNw <= "001";
			end if;
			
		elsif(validBit(2) = '1') then
		
			r2 <= std_logic_vector(unsigned('0' & d) + unsigned('0' & e));
			
			if(f > c) then      --E/SE.. E wins
				x_r5 <= f;
				stage1_eSe <= "101";
			else
				x_r5 <= c; --winner is here
				stage1_eSe <= "000";
			end if;
		
		elsif(validBit(3) = '1') then
		
			r13 <= std_logic_vector(unsigned('0' & f) + unsigned('0' & g)); --r13 is 12 bits, and inputs are 8 
			
			if(h > e) then      --S/SW.. S wins
				r12 <= h;
				stage1_sSw <= "111";
			else
				r12 <= e; --winner is here
				stage1_sSw <= "011";
			end if;
			
		
		end if;
	
	end process;

	
--------------------------------STAGE2---------------------------------------------

	process begin
		wait until rising_edge(i_clock);
	
		if(validBit(1) = '1') then 
		
			b_d1 <= std_logic_vector(unsigned('0' & r9) + unsigned('0' & r10));
		
		elsif(validBit(2) = '1') then 
		
			x_r3 <= std_logic_vector(unsigned('0' & r2) + unsigned('0' & r5));
		
		elsif(validBit(3) = '1') then 
		
			r11 <= std_logic_vector(unsigned('0' & x_r5) + unsigned('0' & r2));
		
		elsif(validBit(4) = '1') then 
		
			r16 <= std_logic_vector(unsigned('0' & r12) + unsigned('0' & r13));
		
		end if;

	end process;

	--------------------STAGE3--------------------------------------------------------
	

	process begin
		wait until rising_edge(i_clock);
		
		if(validBit(2) = '1') then
		
			x_r6 <= std_logic_vector(unsigned('0' & r9) + unsigned('0' & r2));
		
		elsif(validBit(3) = '1') then
	
			r14 <= std_logic_vector((unsigned('0' &  r2)) + unsigned('0' & x_r6)); ----- LOOOOOOK HHEEHEEHHEKUIHFK
		
		elsif(validBit(4) = '1') then
		
			x_r12 <= std_logic_vector(unsigned('0' & r13) + unsigned('0' & r14));
		
		elsif(validBit(5) = '1') then
			x_r22 <= std_logic_vector(unsigned('0' & x_r12) + unsigned(x_r12 & '0'));
		end if;
	end process;
	
	-------------------------------------STAGE4----------------------------------------------
	
	process begin
		wait until rising_edge(i_clock);
		
		if(validBit(3) = '1') then
		
			if(b_d1 > x_r3 ) then--b/g vs a/d... b/g wins
		
				r15 <= b_d1;
				first_cw <= stage1_nNe;
			
			else
				r15 <= x_r3;
				first_cw <= stage1_wNw;
			end if;
		
		elsif(validBit(5) = '1') then
	
			if(r16 > r11 ) then--f/c vs h/e... f/c wins
		
				x_r11 <= r16;
				second_cw <= stage1_sSw;
			else
			
				x_r11 <= r11;
				second_cw <= stage1_eSe;
			
			end if;
		
		elsif(validBit(6) = '1') then
			
			if(x_r11 > r15 ) then          --(b/g  vs a/d) vs (h/e vs f/c)... b/g vs a/d wins
		
				r18 <= x_r11;
				final_dir <= second_cw;
			else
			
				r18 <= r15;               --NVM:
				final_dir <= first_cw;
			end if;
		end if;
		
		
	end process;
	
	---------------------STAGE5-----------------------------

	process begin
		wait until rising_edge(i_clock);
		
		if(validBit(7) = '1') then
		
			r17 <= std_logic_vector((unsigned(r18 & '0' & '0' &'0')) - unsigned(x_r22));
		
		end if;
	end process;
	
	process (r17,validBit(8), final_dir) begin           --can optimize/narrow down dfd state here)
	
		if(validBit(8) = '1' and unsigned(r17(12 downto 7)) >= 3) then
			o_dir <= final_dir;
            o_edge <= '1';
		else
			o_dir <= "000";
			o_edge <= '0';
		end if;
	
	end process;
	
	o_valid <= validBit(8);	
	
	we(0) <= state(0) and i_valid;
	we(1) <= state(1) and i_valid;
	we(2) <= state(2) and i_valid;



end architecture;
