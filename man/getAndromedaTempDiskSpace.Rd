% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/LoadingSaving.R
\name{getAndromedaTempDiskSpace}
\alias{getAndromedaTempDiskSpace}
\title{Get the available disk space in Andromeda temp}
\usage{
getAndromedaTempDiskSpace(andromeda = NULL)
}
\arguments{
\item{andromeda}{Optional: provide an \link{Andromeda} object for which to get the available disk
space. Normally all \link{Andromeda} objects use the same temp folder, but the user
could have altered it.}
}
\value{
The number of bytes of available disk space in the Andromeda temp folder. Returns NA
if unable to determine the amount of available disk space, for example because \code{rJava}
is not installed, or because the user doesn't have the rights to query the available
disk space.
}
\description{
Attempts to determine how much disk space is still available in the Andromeda temp folder.
This function uses Java, so will only work if the \code{rJava} package is installed.

By default the Andromeda temp folder is located in the system temp space, but the location
can be altered using \code{options(andromedaTempFolder = "c:/andromedaTemp")}, where
\code{"c:/andromedaTemp"} is the folder to create the Andromeda objects in.
}
\examples{
# Get the number of available gigabytes:
getAndromedaTempDiskSpace() / 1024^3
#123.456

}
