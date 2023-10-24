test_that("Transcription from DNA to RNA works", {
 # Basic DNA to RNA transcription
  DNA_seq_1 <-'ATGCTTAGCTAGT'
  expect_equal(transcribe(DNA_seq_1),'AUGCUUAGCUAGU')

  # DNA_seq does not contain Ts
  DNA_seq_2 <-'AGGCAGAGCAAGA'
  expect_equal(transcribe(DNA_seq_2),'AGGCAGAGCAAGA')

  # DNA_seq is an empty string
  DNA_seq_3 <-''
  expect_equal(transcribe(DNA_seq_3),'')

})

