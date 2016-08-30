name = 'ContainersXXL'
description = 'Modify Backpack, Icebox and Treasurechest to 50 slots.'
author = 'xpolife'
version = '1.0.1'

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
