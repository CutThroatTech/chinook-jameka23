--top_media_type.sql: Provide a query that shows the most purchased Media Type.



select TOP 1 MAX(mediaCount) as Media_Count, medCount.Name
from (select COUNT(t.MediaTypeId) as mediaCount, t.MediaTypeId, m.Name
from Track t
left join MediaType m on m.MediaTypeId = t.MediaTypeId
group by t.MediaTypeId, m.Name) as medCount
group by medCount.Name
order by Media_Count DESC