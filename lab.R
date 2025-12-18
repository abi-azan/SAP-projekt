winners <- oscars_dataset %>%
  filter(Award=="Winner") %>%
  count()

winners_genres <- oscars_dataset %>%
  filter(Award=="Winner") %>%
  count(Main.Genre, sort=TRUE)

prvo_pitanje <- chisq.test(winners_genres$n)

genres <- oscars_dataset %>%
  count(Main.Genre, sort=TRUE) 

time <- oscars_dataset %>%
  group_by(Main.Genre) %>%
  summarise(Prosjek = mean(Movie.Time), Broj_Filmova = n()) %>%
  arrange(desc(Prosjek))

winners_producer <- oscars_dataset %>%
  filter(Award=="Winner") %>%
  separate_rows(Film.Studio.Producer.s.,sep= ",") %>%
  count(Film.Studio.Producer.s., sort=TRUE)

