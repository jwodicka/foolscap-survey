require 'survey/foolscap'

survey 'Foolscap 14 Panel Survey' do
  stock_questions do
    # Copy this block for every panel. Probably there's a cute Ruby way to automate this?
    # I don't want to copy-paste when we probably need to tweak it first. =)

    q 'Would you like to be a panelist on this panel?', :pick => :one, :display_type => :inline
    a 'Please don\'t put me on this panel.'
    a 'I don\'t care if you put me on this panel.'
    a 'I\'d like to be on this panel.'

    q 'I\'d be willing to moderate this panel.', :pick => :any, :display_type => :inline
    a 'Yes' 
    
    q 'I\'d go to this panel even if I\'m not a panelist', :pick => :any, :display_type => :inline
    a 'Yes'
  end

  section 'Introduction' do
    q 'What is your name?'
    a :string

    q 'What times do you expect to be available for panels?', :pick => :any
    a 'Friday Evening'
    a 'Saturday Morning'
    a 'Saturday Afternoon'
    a 'Saturday Evening'
    a 'Sunday Morning'
    a 'Sunday Afternoon'
    
    q 'How many panels would you be willing to be on over the course of the convention?'
    a :integer
  end

  section 'Art' do
    panel 'The Ever-Changing Landscape of Commercial Art',
      :desc => 'Traditional Roots meet a Digital Age competing with an Overseas Market'

    panel 'The Fine Art of Art Directing'

    panel 'Weird Media',
      :desc => 'People have literally used blood, sweat, and tears in their artwork. What unexpected substances have you used to create art?'

    panel 'Selling and Buying Art'

    panel 'Is Photography Dead - or Ubiquitous?',
      :desc => 'Photography is now available to everyone. Will this mean the death of art photography? How can we tell a good photograph from a poor one?'

    panel 'Alien Genitalia: Daring to draw the bits that others fear to draw'
  end

  section 'Genre' do
    panel 'Good Scenes in Bad Fiction: Bits we love in works we love to hate'

    panel 'Ray Bradbury, an Appreciation'

    panel 'Cooperation vs. Competition: Gender-Driven Stories',
      :desc => 'Competition is seen as masculine; cooperation, as feminine. And yet, both genders engage in both behaviors. How does this conflict affect stories?'

    panel 'Nonlinear Storytelling in Words and Pictures:',
      :desc => 'We\'re used Frog to linear stories jump. But not all Now! stories are. Sometimes they\'re interleaved, or back to front, or only allusively connected. How does this work?'

    panel 'Baseball in SF and Fantasy'

    panel 'What Makes a Great Hero? Explore the qualities of memorable heroic characters'

    panel 'Welcome to the Funhouse: Self-referential SF',
      :desc => 'This is a panel that\'s all about itself. Or about stories that are about themselves. Examples: Diana Wynne Jones\' DEEP SECRET, Hubbard\'s "Typewriter in the Sky", most of K.M. O\'Donnell (Malzberg), Vonnegut\'s BREAKFAST OF CHAMPIONS, Michael Ende\'s THE NEVERENDING STORY, the Sesame Street book THE MONSTER AT THE END OF THIS BOOK, GalaxyQuest. See also <a href="http://www.nesfa.org/Recursion/index.htm">Recursive Science Fiction</a>.'

    panel 'Alien Genitalia',
      :desc => 'When writers tackle sex scenes, is the result risible or touching? When they avoid them, is it laudable or laughable? Bring examples.'
  end

  section 'Social/General' do
    panel 'Orientation for Panelists and Moderators'

    panel 'Respectful Disagreement',
      :desc => 'Techniques for being open and inclusive without giving up your ability to hold strong opinions, and tactics for fostering multi-way discussions (like convention panels) when some of the participants are using abusive discussion tactics.'

    panel 'The Internet and the Third World'

    panel 'Engaging Denial',
      :desc => 'How do you advocate global warming without getting shouted down? Tired of explaining the specific scientific meaning of \'theory\' when it comes to evolution? Wish NASA could get just a smidge more funding? Come discuss how to open minds rather than pound on heads.'

    panel 'Rituals of Death in the Connected World',
      :desc => 'CaringBridge and other services make it easier to get the information out about someone who\'s dying. People\'s Facebook pages live on long after they do. What\'s happening to rituals around death and dying as we get more connected?'

    panel 'What Scares You?'

    panel 'Modernist Cuisine'

    panel 'Alien Genitalia',
      :desc => 'How and why do we make people who have different ideas about how to use their genitalia into The Other? What I want is sexy; what you want is a bit squicky; what they want is obscene.'
  end

  section 'How To...' do
    panel 'Procrastination Busting'
    panel 'Writing Like Van Gogh, Drawing Like Beethoven', :desc => 'Incorporating influences from outside your field.'

    panel 'Crowdsourcing and the Arts', :desc => 'Harnessing the wisdom, creativity, enthusiasm, labor, and funds of crowds.'

    panel 'Increase Your Signal-to-Noise Ratio',
      :desc => 'How do you find the trickle of data you need in the flood of irrelevant information?'

    panel 'Stochastic Conceptualization', :desc => 'Using chance to initiate, to enhance, or to drive your work.'

    panel 'Art of the Hive Mind: Creativity in groups'

    panel 'Devising Future Slang'

    panel 'Alien Genitalia', :desc => 'Putting erotica into stories and art: what works?'

  end

  section 'Fandom' do

    panel 'My Little Bronies and Pegasisters', :desc => 'A meetup for fans of My Little Pony: Friendship is Magic'

    panel 'Browsing in a Post-Newspaper, Post-Bookstore Age'

    panel 'Nichecons', :desc => 'The rise - or is it return? - of the small, tightly-focused convention'

    panel 'The Smell of Pixels',
      :desc => 'Will the last fan with a rotary press please turn off the lights? Ephemeral physical zines vs immediate online ones'

    panel 'The Best Panel Discussion I Ever Saw (- or was on)'

    panel 'Blaise Craze',
      :desc => 'Peter O\'Donnell\'s classic adventure duo Modesty Blaise and Willie Garvin are no strangers to fantastic settings, but now they appear in clever plastic disguises in Charlie Stross\'s new Laundry novel, The Apocalypse Codex. Come to praise Blaise and (something or other that rhymes with--) Garvin.'

    panel 'Alien Genitalia', :desc => 'Dealing socially with those who are sexually different in a respectful manner'

  end



  section 'Science' do

    panel 'Open Source Science',
      :desc => 'The move toward making scientific research available to all, without the hurdles of expensive journals and classified results'

    panel 'Makers, Bring Your Cool Gizmos!',
      :desc => '3-D printer welcome. Terabyte drive on a Swiss army knife welcome. Homebrewed jet engine welcome (outside, please). Oscillation Overthruster definitely welcome.'

    panel 'Creative Algorithms and the Demo Scene',
      :desc => 'If you write a program that creates beautiful fractal art, or composes music, are you the artist, or the tutor? Is the computer the creator, the performer, or the canvas? At what point should the signature on the work change from a hand-drawn scrawl to a digital Q-code?'

    panel 'Tensegrities',
      :desc => 'Show and tell about (relatively) stable three-dimensional structures whose members are under tension'

    panel 'No Reverse Gear: Unidirectional Time Travel'

    panel 'Pursuing a degree in Exo_____ology',
      :desc => 'Determine the appropriate coursework for a degree vital for spacefaring scientists'

    panel 'Orbital NASCAR',
      :desc => 'In space, nobody can hear your engine rev, but that doesn\'t mean pros and amateurs alike will give up racing just \'cause they live in orbit. What kinds of heats are we likely to see in space?'

    panel 'Impending Ubiquitous Computing', :desc => 'To answer the obvious question: no, it\'s not quite here yet'

    panel 'Alien Genitalia',
      :desc => 'What does the range of reproductive methods on Earth suggest to us about how aliens might reproduce?'

  end

  section 'Comics' do

    panel 'How America Embraced the Superhero',
      :desc => 'The social, editorial, and artistic choices that led to a dominance by Superman and his ilk in the U.S. from the 1960s on while Europe and Japan welcomed a multiplicity of genres'

    panel 'Moebius Trips',
      :desc => 'An appreciation of the life and work of European comics artist Jean Giraud, aka Moebius, as important as Carl Barks, Osamu Tezuka, or Jack Kirby, whose huge range of work varied from western to SF to surreal and beyond'

    panel 'Classic (Super)Villain Mistakes and How to Avoid Them',
      :desc => 'First, no monologuing. Health care for minions would be a plus. And where do you stand on the whole cape/no cape divide?'

    panel 'The Webcomic/Traditional Comics Divide'

    panel 'Comics, Not Just for Big Kids Any More', :desc => 'Recent comics enjoyable by young and old'

    panel 'Alien Genitalia', :desc => 'Alien sex in comix and comics: 8-pagers, Underground comics, Heavy Metal, "Man of Steel, Woman of Kleenex"'
  end

end
