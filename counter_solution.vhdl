```vhdl
entity counter_safe is
  Port ( clk : in  STD_LOGIC;
              reset : in  STD_LOGIC;
              count : out  INTEGER range 0 to 15);end entity;

architecture behavioral of counter_safe is

signal internal_count : INTEGER range 0 to 15 := 0;

begin

process (clk, reset)
begin
  if reset = '1' then
    internal_count <= 0;
  elsif rising_edge(clk) then
    internal_count <= (internal_count + 1) mod 16; --Modulo operation for wrap-around
  end if;
end process;

count <= internal_count;

end architecture; 
```