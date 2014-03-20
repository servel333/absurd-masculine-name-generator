
class String
  def titleize
    split(/(\W)/).map(&:capitalize).join
  end
end

class Array
  def sample!
    delete_at rand length
  end
end

$names = [
  'arm',
  'beef',
  'boar',
  'brother',
  'buck',
  'bull',
  'bullock',
  'duke',
  'hammer',
  'heart',
  'he',
  'leg',
  'lion',
  'man',
  'meat',
  'steve',
  'strong',
  'thor',
  'sire',
  'son',
  'stallion',
  'stag',
]

$first_names = $names.clone
$first_names.push(
  'mr.',
  'sir',
  'uncle',
)

def random_name
  names = $names.clone
  "#{$first_names.sample.titleize} #{['Mc','','',''].sample}#{names.sample!.titleize}#{names.sample!}"
end

10.times.each{ puts random_name }
