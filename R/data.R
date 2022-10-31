#' @title Hamar conflict data
#' @description A database of 160 self-reports of inter-individual conflicts among a
#' Hamar agro-pastoralists society, reported by 99 adults. Data include measures of
#' cause of conflict, if a third-party mediator was involved, if the conflict was
#' resolved, and other conflict-level meta-data.
#' @format A data frame with 160 rows and 25 variables:
#' \describe{
#'   \item{\code{instanceID_conflict2022}}{Identifier for individual participants reporting on conflicts.}
#'   \item{\code{conflict_report_ID}}{Identifier for unique conflicts reported.}
#'   \item{\code{cause_code}}{character Cause of conflict, coded as one of 22 unique causes reported.}
#'   \item{\code{cause_type}}{character Conflict type, coded as "Subsistence resource", "Material resource", or Social."}
#'   \item{\code{ago}}{character Report on how long ago the conflict occured.}
#'   \item{\code{severe}}{character Report on conflict severity compared to most conflicts in the community, coded as "Severe" or "Typical."}
#'   \item{\code{solution}}{character Report on if conflict was resolved, coded as "yes" or "no."}
#'   \item{\code{3P}}{character Report on if a third-party mediator was involved, coded as "yes" or "no."}
#'   \item{\code{3P_gender}}{character Gender of third-party mediator, coded as "female" or "male."}
#'   \item{\code{friends}}{character Report on post=-conflict relationship status between disputants, i.e., "are they friends today?", coded as "yes" or "no."}
#'   \item{\code{type}}{character Type of conflict reported, coded as "self" for first-person reports, "others" for second-hand reports, and "resolved" for conflicts in which the informant acted as third-party mediator.}
#'   \item{\code{person1_gender}}{character Gender of "person 1", one individual involved in conflict, coded as "female" or "male."}
#'   \item{\code{person1clan_major}}{character Moity (higher level clan groupings) of "person 1", coded as "A", "B", or "C."}
#'   \item{\code{person1clan_minor}}{character Clan of "person 1," coded by letters.}
#'   \item{\code{person2_gender}}{character Gender of "person 2", one individual involved in conflict, coded as "female" or "male."}
#'   \item{\code{person2clan_major}}{character Moity (higher level clan groupings) of "person 1", coded as "A", "B", or "C."}
#'   \item{\code{person2clan_minor}}{character Clan of "person 2," coded by letters.}
#'   \item{\code{relation}}{character Relationship between "person 1" and "person 2", coded as "friend", "kin-affine", "kin-biological" (kin-bio), or "other."}
#'   \item{\code{sex}}{character Gender of informant, coded as "female" or "male."}
#'   \item{\code{age_estimated_min}}{double Estimated minimum age of informant.}
#'   \item{\code{age_estimated_max}}{double Estimated maximum age of informant.}
#'   \item{\code{age_boot}}{double Estimated informant age based on bootstrap sampling of estimated range.}
#'   \item{\code{gender_conflict}}{character Gender context of disputants (i.e., "person 1", "person 2"), coded as "female-female", "female-male", "male-male."}
#'   \item{\code{clan_major_conflict}}{character Moity context of disputants (i.e., "person 1", "person 2"), coded as "intra-clan (major)", "intra-clan (major)."}
#'   \item{\code{clan_minor_conflict}}{character Clan context of disputants (i.e., "person 1", "person 2"), coded as "intra-clan (minor)", "intra-clan (minor)."}
#'}
#' @source \url{https://omovalleyresearchproject.org}
"hamarconflictdata"
