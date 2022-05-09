# config ------------------------------------------------------------------

flight_dir <- "~/data/ontime/flight"


# execution ---------------------------------------------------------------


data_files <- list(
  variable_description.csv = "https://dataverse.harvard.edu/api/access/datafile/:persistentId?persistentId=doi:10.7910/DVN/HG7NV7/YZWKHN",
  plane_data.csv = "https://dataverse.harvard.edu/api/access/datafile/:persistentId?persistentId=doi:10.7910/DVN/HG7NV7/XXSL8A",
  carriers.csv = "https://dataverse.harvard.edu/api/access/datafile/:persistentId?persistentId=doi:10.7910/DVN/HG7NV7/3NOQ6Q",
  airports.csv = "https://dataverse.harvard.edu/api/access/datafile/:persistentId?persistentId=doi:10.7910/DVN/HG7NV7/XTPZZY"
)

flight_url <- list(
  year_2008.csv.bz2 = "https://dataverse.harvard.edu/api/access/datafile/:persistentId?persistentId=doi:10.7910/DVN/HG7NV7/EIR0RA",
  year_2007.csv.bz2 = "https://dataverse.harvard.edu/api/access/datafile/:persistentId?persistentId=doi:10.7910/DVN/HG7NV7/2BHLWK"
)


dir.create(flight_dir, showWarnings = FALSE)

flight_files <- list()
for (i in seq_along(flight_url)) {
  file_name <- names(flight_url)[[i]]
  file_path <- file.path(flight_dir, file_name)
  url <- flight_url[[i]] 
  download.file(url, destfile = file_path)
  flight_files[file_name] <- file_path
  Sys.sleep(10)
}

df <- readr::read_csv(flight_files[1])
