name = 'ContainersXXL'
description = 'Modify Backpack, Icebox and Treasurechest to 25 or 50 slots.'
author = 'xpolife'
version = '1.1.1'

forumthread = ''

api_version = 6

dont_starve_compatible = true
reign_of_giants_compatible = true
shipwrecked_compatible = true

-- Can specify a custom icon for this mod!
icon_atlas = 'ContainersXXL.xml'
icon = 'ContainersXXL.tex'

configuration_options =
{
  {
    name = 'size',
    label = 'Bag Size',
    options =
    {
      {description = 'XL(25)', data = 'XL'},
      {description = 'XXL(50)', data = 'XXL'},
    },
    default = 'XL(25)',
  },
  {
    name = 'fridge',
    label = 'Delay decay',
    options =
    {
      {description = 'Off', data = false},
      {description = 'On', data = true},
    },
    default = 'Off',
  },
}
