
{
  'googol' => [%w{googol},            1e100],
  'yebi'   => [%w{Yi Yebi yebi},      2**80],
  'zebi'   => [%w{Zi Zebi zebi},      2**70],
  'exi'    => [%w{Ei Exi exi},        2**60],
  'pebi'   => [%w{Pi Pebi pebi},      2**50],
  'tebi'   => [%w{Ti Tebi tebi},      2**40],
  'gibi'   => [%w{Gi Gibi gibi},      2**30],
  'mebi'   => [%w{Mi Mebi mebi},      2**20],
  'kibi'   => [%w{Ki Kibi kibi},      2**10],
  'yotta'  => [%w{Y Yotta yotta},     1e24],
  'zetta'  => [%w{Z Zetta zetta},     1e21],
  'exa'    => [%w{E Exa exa},         1e18],
  'peta'   => [%w{P Peta peta},       1e15],
  'tera'   => [%w{T Tera tera},       1e12],
  'giga'   => [%w{G Giga giga},       1e9],
  'mega'   => [%w{M Mega mega},       1e6],
  'kilo'   => [%w{k kilo},            1e3],
  'hecto'  => [%w{h Hecto hecto},     1e2],
  'deca'   => [%w{da Deca deca deka}, 1e1],
  '1'      => [%w{1},                 1],
  'deci'   => [%w{d Deci deci},       BigDecimal(1e-1,10)],
  'centi'  => [%w{c Centi centi},     BigDecimal(1e-2,10)],
  'milli'  => [%w{m Milli milli},     BigDecimal(1e-3,10)],
  'micro'  => [%w{u Micro micro},     BigDecimal(1e-6,10)],
  'nano'   => [%w{n Nano nano},       BigDecimal(1e-9,10)],
  'pico'   => [%w{p Pico pico},       BigDecimal(1e-12,10)],
  'femto'  => [%w{f Femto femto},     BigDecimal(1e-15,10)],
  'atto'   => [%w{a Atto atto},       BigDecimal(1e-18,10)],
  'zepto'  => [%w{z Zepto zepto},     BigDecimal(1e-21,10)],
  'yocto'  => [%w{y Yocto yocto},     BigDecimal(1e-24,10)]
}.each do |name, definition|
  Unit.define(name) do |unit|
    aliases, scalar = definition
    unit.aliases    = aliases
    unit.scalar     = scalar
    unit.kind       = :prefix
  end
end