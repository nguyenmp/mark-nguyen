SCSS_IN   = scss/main.scss
CSS_OUT   = main.css

all: theme

theme: 
	sass ${SCSS_IN}:${CSS_OUT}