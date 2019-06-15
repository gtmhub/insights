SELECT sum(story_point_estimate) as story_points
FROM jira_issues
WHERE
    (
        CASE WHEN NULLIF('%%jira_project%%', '') IS NOT NULL
            THEN projectkey IN (SELECT(UNNEST(string_to_array('%%jira_project%%', ','))))
            ELSE TRUE
        END
    )
    AND 
    statusname = 'In Progress'
    AND
    (
        CASE WHEN NULLIF('%%jira_user%%', '') IS NOT NULL
            THEN assigneedisplayname IN (SELECT(UNNEST(string_to_array('%%jira_user%%', ','))))
            ELSE TRUE
        END
    )