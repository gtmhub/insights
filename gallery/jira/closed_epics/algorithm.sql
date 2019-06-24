SELECT COUNT(*) as closed_epics
FROM Issues
WHERE
    (
        CASE WHEN NULLIF('%%jira_project%%', '') IS NOT NULL
            THEN projectkey IN (SELECT(UNNEST(string_to_array('%%jira_project%%', ','))))
            ELSE TRUE
        END
    )
    AND
        lower(issuetypename) = 'epic' 
    AND 
        NULLIF(resolutionname, '') IS NOT NULL 
    AND
        resolutiondate @@ '%%date_range%%'