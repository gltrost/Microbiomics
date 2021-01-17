# Install renv, and consent to it doing stuff on our machine
install.packages(
	"renv",
	dependencies=TRUE,
	repos="http://cran.rstudio.com/",
)

renv::consent(provided = TRUE)

# Find packages to install and install them.
renv::init()

# Create an renv.lock file
renv::snapshot()
