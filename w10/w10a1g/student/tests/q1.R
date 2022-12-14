test = list(
  name = "q1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      code = {
        question.correct <- identical( democrats.only , subset(data, republican == 0) ) 
        testthat::expect_true(question.correct,
                                    info = "democrats.only does not look right.")
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      code = {
        g.correctq1 <- qplot(marriage_opinion, marriage_perception, data = democrats.only)
        question.correct <- all.equal(ggplot_build(g.correctq1), ggplot_build(dem.graph))
        testthat::expect_true(question.correct,
                                    info = "dem.graph does not look right.")
      }
    )
  )
)