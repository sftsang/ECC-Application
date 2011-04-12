var rockwell = {
 src: 'http://ecc.edmontonnextgen.ca/wp-content/themes/communitychallenge/sifr/rockwell.swf'
 ,ratios: [7, 1.32, 11, 1.31, 13, 1.24, 14, 1.25, 19, 1.23, 27, 1.2, 34, 1.19, 42, 1.18, 47, 1.17, 48, 1.18, 69, 1.17, 74, 1.16, 75, 1.17, 1.16]
};


// You probably want to switch this on, but read <http://wiki.novemberborn.net/sifr3/DetectingCSSLoad> first.
sIFR.useStyleCheck = true;
sIFR.activate(rockwell);


sIFR.replace(rockwell, {
      selector: 'h1'
      ,css: {
			'.sIFR-root': { 'color': '#009fc3', 'background-color': 'transparent' },
			'a': { 'color': '#009fc3', 'text-decoration': 'none'},
			'a:hover': { 'color': '#009fc3'}
      }
		,wmode: 'transparent'
		,selectable: true
		,sLinkColor: '#009fc3'
});
sIFR.replace(rockwell, {
      selector: 'h2'
      ,css: {
			'.sIFR-root': { 'color': '#50b948', 'background-color': 'transparent' },
			'a': { 'color': '#50b948', 'text-decoration': 'none'},
			'a:hover': { 'color': '#50b948'}
      }
		,wmode: 'transparent'
		,selectable: true
		,sLinkColor: '#50b948'
});
sIFR.replace(rockwell, {
      selector: 'h4'
      ,css: {
			'.sIFR-root': { 'color': '#ffffff', 'background-color': 'transparent' },
			'a': { 'color': '#ffffff', 'text-decoration': 'none'},
			'a:hover': { 'color': '#ffffff'}
      }
		,wmode: 'transparent'
		,selectable: true
		,sLinkColor: '#ffffff'
});
sIFR.replace(rockwell, {
      selector: 'h5'
      ,css: {
			'.sIFR-root': { 'color': '#009fc3', 'background-color': 'transparent' },
			'a': { 'color': '#009fc3', 'text-decoration': 'none'},
			'a:hover': { 'color': '#009fc3'}
      }
		,wmode: 'transparent'
		,selectable: true
		,sLinkColor: '#009fc3'
});
sIFR.replace(rockwell, {
      selector: 'h6'
      ,css: {
			'.sIFR-root': { 'color': '#ffffff', 'background-color': 'transparent', 'text-align': 'center' },
			'a': { 'color': '#ffffff', 'text-decoration': 'none'},
			'a:hover': { 'color': '#ffffff'}
      }
		,wmode: 'transparent'
		,selectable: true
		,sLinkColor: '#ffffff'
});

