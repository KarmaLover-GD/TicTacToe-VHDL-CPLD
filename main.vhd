library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity Tictactoe is port
(
    clk : in std_logic;
    rows : out std_logic_vector (5 downto 0);
    cols : out std_logic_vector (5 downto 0);
    buttons : in std_logic_vector (8 downto 0);
	reset : in std_logic;
    victory_led : out std_logic := '0'
);
end entity Tictactoe;

architecture game_tictactoe_arch of Tictactoe is

    -- Manages clock crequency
    constant clk_freq : integer := 2;
    signal   clk_counter : integer := 0;

    -- Used to refresh rows at a given time
    signal row_counter : unsigned (5 downto 0);

    -- Matrix storing the state of the LEDmatrix at a given time
    type matrix_type  is array (0 to 5) of std_logic_vector(0 to 5);
    signal matrix : matrix_type ;

    -- States initialised to init at the beginning
    type states is (reset_st, init, play, display, check);
    signal state : states := init;


	 -- signals for player and the grid
	 signal player : integer range 0 to 1 := 0;
	 type grid_type is array(0 to 8) of integer range 0 to 2;
	 signal grid : grid_type := (2,2,2,2,2,2,2,2,2);
    
	 -- we put 6 as value because we count this as uninizialised
	 signal x : integer range 0 to 7 := 6; 
	 signal y : integer range 0 to 7 := 6;


begin


-- Used to know which row to reset
COUNTER_PROC : process(clk)
    begin
        if rising_edge(clk) then
                    row_counter <= row_counter+1;
       
         end if;
    end process;


OUTPUT_PROC : process(row_counter)
    begin

        if rising_edge(clk) then
            
            case state is
				--Matrix storing the state of the matrix at a given time
                when reset_st =>
                matrix <=  
                (
                    ('1', '1', '1', '1', '1', '1'),
                    ('1', '1', '1', '1', '1', '1'),
                    ('1', '1', '1', '1', '1', '1'),
                    ('1', '1', '1', '1', '1', '1'),
                    ('1', '1', '1', '1', '1', '1'),
                    ('1', '1', '1', '1', '1', '1')
                );
                victory_led <= '0';
                state <= play;
                -- Containes players places of marks for win conditions
                grid <=  (2, 2, 2, 2, 2, 2, 2, 2, 2);
                when init =>
						if(reset = '0') then 							
                            victory_led <= '0';
                            state <= play; -- We change the state
									 
						end if;
                -- Buttons actions
                when play =>		
                    if(buttons(0) = '0' and matrix(0)(0) = '1') then 
                        x <= 0; 
                        y <= 0;		
                        grid(0) <= player;
                        state <= display;
                    elsif (buttons(1) = '0' and matrix(2)(0) = '1') then 
                        x <= 2; 
                        y <= 0;
                        grid(1) <= player;
                        state <= display;
                    elsif (buttons(2)  = '0' and matrix(4)(0) = '1') then
                        x <= 4;
                        y <= 0;
                        grid(2) <= player;
                        state <= display;
                    elsif (buttons(3)  = '0' and matrix(0)(2) = '1') then 
                        x <= 0; 
                        y <= 2;
                        grid(3) <= player;
                        state <= display;
                    elsif (buttons(4) = '0' and matrix(2)(2) = '1') then
                        x <= 2;
                        y <= 2;
                        grid(4) <= player;
                        state <= display;
                    elsif (buttons(5)  = '0' and matrix(4)(2) = '1') then 
                        x <= 4; 
                        y <= 2;
                        grid(5) <= player;
                        state <= display;
                    elsif (buttons(6)  = '0' and matrix(0)(4) = '1') then
                        x <= 0;
                        y <= 4;
                        grid(6) <= player;
                        state <= display;
                    elsif (buttons(7) = '0' and matrix(2)(4) = '1') then 
                        x <= 2; 
                        y <= 4;
                        grid(7) <= player;
                        state <= display;
                    elsif (buttons(8) = '0' and matrix(4)(4) = '1') then 
                        x <= 4; 
                        y <= 4;
                        grid(8) <= player;
                        state <= display;
                    elsif (reset = '0') then
                       
                        state <= reset_st;
                    end if;
                   
                -- Displays the contant of the user input on the matrix
                when display =>
            
                    case player  is
                        --player 1
                        when 0 =>
                            player <= 1;
                            matrix(x)(y) <= '0';
                            matrix(x+1)(y+1) <= '0';
                            state <= check;
                        --player 2
                        when others =>
                           player <= 0;
                            matrix(x)(y) <= '0';
                            matrix(x+1)(y) <= '0';
                            matrix(x)(y+1) <= '0';
                            matrix(x+1)(y+1) <= '0';
                            state <= check;
                        end case;
                -- Win conditions
                  when check =>
                    
                     -- row conditions
                     if ((grid(0) /= 2) and (((grid(0) = grid(1)) and (grid(1) = grid(2))) or
                                             ((grid(0) = grid(4)) and (grid(4) = grid(8))) or
                                             ((grid(0) = grid(3)) and (grid(3) = grid(6))))) then
                         victory_led <= '1';
								 
                     elsif ((grid(3) /= 2) and ((grid(3) = grid(4)) and (grid(4) = grid(5)))) then
                         victory_led <= '1';
								 
                     elsif ((grid(6) /= 2) and ((grid(6) = grid(7)) and (grid(7) = grid(8)))) then
                         victory_led <= '1';
                    
                     -- col condition
                    elsif ((grid(1) /= 2) and ((grid(1) = grid(4)) and (grid(4) = grid(7)))) then
                         victory_led <= '1';
                    
                     elsif ((grid(2) /= 2) and ((grid(2) = grid(5)) and (grid(5) = grid(8)))) then
                         victory_led <= '1';
                    
                     -- left diagonal cond

                     elsif ((grid(2) /= 2) and ((grid(2) = grid(4)) and (grid(4) = grid(6)))) then 
                         victory_led <= '1';

                         
                    
                     end if;
							state <= play;
             end case;


        end if;
        -- Refreshes the ledmatrix
        rows <= matrix(to_integer(row_counter));
        cols <= (others => '0'); 
        cols(to_integer(row_counter)) <= '1';

    end process;

end architecture;
