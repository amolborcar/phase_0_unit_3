## Evaluate a Website! 
 
1) How does this website follow HTML Best Practices? Are there any places where 
it does not?  Provide examples of the "bad" code.

The first thing I noticed related to Best Practices is that there is not much change when resizing my browser window.  The test just moves onto the next line if it can't fit, making it hard(er) to read.  I checked on my phone and there doesn't appear to be a mobile site either, rather it's just the same webpage but smaller on my phone.  The developer also re-used some CSS unnecessarily.  For example, .yclinks and .comhead are two separate classes but have all the exact same stylings.  Same with .default and .title.  This happens a lot in the CSS.  In addition, many styles are done inline as opposed to with CSS.  
 
2) What do you think of the HTML? Did the writers use IDs and Classes properly? 
Did you like the way they used HTML tags?  Please use examples with your arguments.

I think the HTML is very hard to read since everything is split into tables, so it's hard to really visualize what it will look like and it appears that one small change would throw everything off.  I don't think IDs and Classes are used correctly.  For example, I see span tags with the id = score_7781104.  This ID is never assigned in the CSS, so the text it envelops is still formatted under the class "subtext" which is a line above that (lines 242-245 in my index.html code viewed in Sublime)
 
3) How did the authors handle formatting? Did they include it in the HTML or 
separate it into a CSS file? Or did they do both?  Again, include examples.

The authors did both, there are some formats in the CSS but I still see a lot in the HTML.  For example, the td tag on line 36 has inline styles for padding and width.  These styles are repeated a couple lines below.  In addition, the first td tag on line 33 has a bgcolor style. I looked it up and the bgcolor attribute is out of date, so this line doesn't actually do anything.
 
4) Did the authors include anything you didn't immediately understand? 
If so, what?

I mentioned the bgcolor above, it stands out by not being in quotes so I assume it can't be functional.  I didn't understand the javascript that is included, at least code-wise, but I understand its purpose and what it actually does related to voting.  I think I understand everything in the body of the HTML except maybe some formatting.  
 
5) How did the authors organize the CSS file? Was it DRY?

Definitely not, as I mentioned above in 1)
 
6) Did the authors incorporate any responsive design into the site?

It doesn't look like it, the site does not re-size and like I mentioned there is no mobile site or anything for another device. 
 
7) What are your overall thoughts on the HTML/CSS from this website based on 
what you've read?

It doesn't look great, it's meant to be very utilitarian and only viewed on certain devices.  It makes sense, because the page is just a repository for links to other pages, but it doesn't seem like it would hurt or be too much work to pretty it up a bit more...