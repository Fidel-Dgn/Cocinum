
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package Virgule_pkg is

    subtype byte_t               is std_logic_vector(7 downto 0);
    subtype half_word_t          is std_logic_vector(15 downto 0);
    subtype word_t               is std_logic_vector(31 downto 0);
    subtype signed_byte_t        is signed(7 downto 0);
    subtype signed_half_word_t   is signed(15 downto 0);
    subtype signed_word_t        is signed(31 downto 0);
    subtype unsigned_byte_t      is unsigned(7 downto 0);
    subtype unsigned_half_word_t is unsigned(15 downto 0);
    subtype unsigned_word_t      is unsigned(31 downto 0);
    subtype word_address_t       is std_logic_vector(29 downto 0);

    type    byte_vector_t        is array(natural range <>) of byte_t;
    type    word_vector_t        is array(natural range <>) of word_t;

    constant WORD0 : word_t := (others => '0');
    constant WORD1 : word_t := (0 => '1', others => '0');
    constant BYTE0 : byte_t := (others => '0');

    -- -------------------------------------------------------------------------
    -- Utility functions and operators.
    -- -------------------------------------------------------------------------

    function to_unsigned_word(a : std_logic_vector) return word_t;
    function to_unsigned_word(a : natural) return word_t;
    function to_signed_word(a : std_logic_vector) return word_t;
    function to_signed_word(a : integer) return word_t;
    function to_natural(a : std_logic_vector) return natural;

    procedure update_word(signal dest : inout word_t; src : word_t; strb : std_logic_vector(3 downto 0));
    procedure update_unsigned_word(signal dest : inout unsigned_word_t; src : word_t; strb : std_logic_vector(3 downto 0));
end Virgule_pkg;

package body Virgule_pkg is

    function to_unsigned_word(a : std_logic_vector) return word_t is
    begin
        return word_t(resize(unsigned(a), word_t'length));
    end to_unsigned_word;

    function to_unsigned_word(a : natural) return word_t is
    begin
        return word_t(to_unsigned(a, word_t'length));
    end to_unsigned_word;

    function to_signed_word(a : std_logic_vector) return word_t is
    begin
        return word_t(resize(signed(a), word_t'length));
    end to_signed_word;

    function to_signed_word(a : integer) return word_t is
    begin
        return word_t(to_signed(a, word_t'length));
    end to_signed_word;

    function to_natural(a : std_logic_vector) return natural is
        variable u : unsigned(a'length - 1 downto 0) := unsigned(a);
    begin
        return to_integer(u);
    end to_natural;

    function update_word_priv(orig, src : word_t; strb : std_logic_vector(3 downto 0)) return word_t is
        variable dest : word_t;
    begin
        dest := orig;
        for i in strb'range loop
            if strb(i) = '1' then
                dest(i * 8 + 7 downto i * 8) := src(i * 8 + 7 downto i * 8);
            end if;
        end loop;
        return dest;
    end update_word_priv;

    procedure update_word(signal dest : inout word_t; src : word_t; strb : std_logic_vector(3 downto 0)) is
    begin
        dest <= update_word_priv(dest, src, strb);
    end update_word;

    procedure update_unsigned_word(signal dest : inout unsigned_word_t; src : word_t; strb : std_logic_vector(3 downto 0)) is
    begin
        dest <= unsigned_word_t(update_word_priv(word_t(dest), src, strb));
    end update_unsigned_word;
end Virgule_pkg;
