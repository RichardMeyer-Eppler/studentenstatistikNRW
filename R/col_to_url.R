#' Converts a column with URL fragments into the full URL
#'
#' This function relies on `gt:::resolve_cols_c` from the gt package
#'
#' @param df A data frame or tibble
#' @param columns Unquoted column names
#'
#' @return A data frame with the columns turned into full URLs
#' @export
#'
#' @examples
#' col_to_url(hochschulen, dplyr::everything())
col_to_url <- function(df, columns) {

  resolved_columns <- gt:::resolve_cols_c(
    expr = {{ columns }},
    data = df,
    excl_stub = FALSE
  )

  columns_to_format <- resolved_columns

  for (i in seq_along(columns_to_format)) {
    col_name <- columns_to_format[i]

    col_vec <- df[[columns_to_format[i]]]

    col_vec_char <- as.character(
      df[[columns_to_format[i]]]
    )

    df[[columns_to_format[i]]] <- dplyr::case_when(
      col_name == "ROR_ID" &
        !is.na(
          df[[columns_to_format[i]]]
        ) ~ glue::glue(
          "https://ror.org/{col_vec_char}"
        ),
      col_name == "RISIS_ORGREG_ENTITY_ID" &
        !is.na(
          df[[columns_to_format[i]]]
        ) ~ glue::glue(
          "https://register.orgreg.joanneum.at/#/entity-details/{col_vec_char}"
        ),
      col_name == "WHED_ID" &
        !is.na(
          df[[columns_to_format[i]]]
        ) ~ glue::glue(
          "https://www.whed.net/institutions/{col_vec_char}"
        ),
      col_name == "Wiki_ID_DE" &
        !is.na(
          df[[columns_to_format[i]]]
        ) ~ glue::glue(
          "https://de.wikipedia.org/?curid={col_vec_char}"
        ),
      col_name == "Wiki_ID_EN" &
        !is.na(
          df[[columns_to_format[i]]]
        ) ~ glue::glue(
          "https://en.wikipedia.org/?curid={col_vec_char}"
        ),
      col_name == "Wikidata_ID" &
        !is.na(
          df[[columns_to_format[i]]]
        ) ~ glue::glue(
          "https://www.wikidata.org/wiki/{col_vec_char}"
        ),
      col_name == "Wiki_Logo_DE" &
        !is.na(
          df[[columns_to_format[i]]]
        ) ~ glue::glue(
          "https://de.wikipedia.org/wiki/Datei:{col_vec_char}"
        ),
      col_name == "Multirank" &
        !is.na(
          df[[columns_to_format[i]]]
        ) ~ glue::glue(
          "https://www.umultirank.org/study-at/{col_vec_char}-rankings/"
        ),
      col_name == "CHE_DAAD_University_ID" &
        !is.na(
          df[[columns_to_format[i]]]
        ) ~ glue::glue(
          "https://www.daad.de/en/studying-in-germany/universities/che-ranking/?che-a=university-detail&che-university-id={col_vec_char}"
        ),
      col_name == "CHE_DAAD_Town_ID" &
        !is.na(
          df[[columns_to_format[i]]]
        ) ~ glue::glue(
          "https://www.daad.de/en/studying-in-germany/universities/che-ranking/?che-a=town-detail&che-town-id={col_vec_char}"
        ),
      col_name == "gepris_id" &
        !is.na(
          df[[columns_to_format[i]]]
        ) ~ glue::glue(
          "https://gepris.dfg.de/gepris/institution/{col_vec_char}"
        ),
      col_name == "eu_pic" &
        !is.na(
          df[[columns_to_format[i]]]
        ) ~ glue::glue(
          "https://ec.europa.eu/info/funding-tenders/opportunities/portal/screen/how-to-participate/org-details/{col_vec_char}?isExactMatch=true&type=ORGANISATION"
        ),
      col_name == "the_id" &
        !is.na(
          df[[columns_to_format[i]]]
        ) ~ glue::glue(
          "https://www.timeshighereducation.com/world-university-rankings/{col_vec_char}"
        ),
      col_name == "arwu_id" &
        !is.na(
          df[[columns_to_format[i]]]
        ) ~ glue::glue(
          "https://www.shanghairanking.com/institution/{col_vec_char}"
        ),
      col_name == "qs_world_id" &
        !is.na(
          df[[columns_to_format[i]]]
        ) ~ glue::glue(
          "https://www.topuniversities.com/universities/{col_vec_char}"
        ),
      col_name == "x_user" &
        !is.na(
          df[[columns_to_format[i]]]
        ) ~ glue::glue(
          "https://x.com/{col_vec_char}"
        ),
      col_name == "facebook_id" &
        !is.na(
          df[[columns_to_format[i]]]
        ) ~ glue::glue(
          "https://www.facebook.com/{col_vec_char}"
        ),
      col_name == "youtube_channel_id" &
        !is.na(
          df[[columns_to_format[i]]]
        ) ~ glue::glue(
          "https://www.youtube.com/channel/{col_vec_char}"
        ),
      col_name == "insta_id" &
        !is.na(
          df[[columns_to_format[i]]]
        ) ~ glue::glue(
          "https://www.instagram.com/{col_vec_char}"
        ),
      col_name == "mastodon_id" &
        !is.na(
          df[[columns_to_format[i]]]
        ) ~ glue::glue(
          "https://wikidata-externalid-url.toolforge.org/?p=4033&id={col_vec_char}"
        ),
      .default = col_vec_char
    )
  }

  return(df)
}
