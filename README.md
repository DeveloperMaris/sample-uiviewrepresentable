# UIViewRepresentable sample

This sample project shows how to properly update UIViewRepresentable underlying view properties.

## Output of logs

```
create LabelView
make LabelView
update LabelView
LabelView(text: "0", color: primary) <UILabel: 0x145510010; frame = (0 0; 0 0); autoresize = W+H; userInteractionEnabled = NO; backgroundColor = UIExtendedGrayColorSpace 0 0; layer = <_UILabelLayer: 0x6000028bb8e0>>
create LabelView
update LabelView
LabelView(text: "574", color: #A3FA19FF) <UILabel: 0x145510010; frame = (0 0; 430 839); text = '0'; autoresize = W+H; userInteractionEnabled = NO; backgroundColor = UIExtendedGrayColorSpace 0 0; layer = <_UILabelLayer: 0x6000028bb8e0>>
create LabelView
update LabelView
LabelView(text: "182", color: #F706DEFF) <UILabel: 0x145510010; frame = (0 0; 430 839); text = '574'; autoresize = W+H; userInteractionEnabled = NO; backgroundColor = UIExtendedGrayColorSpace 0 0; layer = <_UILabelLayer: 0x6000028bb8e0>>
create LabelView
update LabelView
LabelView(text: "672", color: #769D1FFF) <UILabel: 0x145510010; frame = (0 0; 430 839); text = '182'; autoresize = W+H; userInteractionEnabled = NO; backgroundColor = UIExtendedGrayColorSpace 0 0; layer = <_UILabelLayer: 0x6000028bb8e0>>
```
