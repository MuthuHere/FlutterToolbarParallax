## Parallax

![Alt Text](https://media.giphy.com/media/j2Go4RmUVRxShiRsQE/giphy.gif)

#### Page Transition
Using Hero Widget we can meke this page transition! Have to add a tag for that particular Image widget the same tag to be used in next page image to animate by tag.


#### Parallax
 To crate toolbar collapsing like above we should use CustomScrollView and have to remove appbar if you added already and mention like below,
 
       SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(widget.title),
              background: Hero(
                tag: widget.title,
                child: Image.asset(widget.assetImage),
              ),
            ),
          ),
          
  Happie Coding:)        
