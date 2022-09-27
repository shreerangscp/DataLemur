select page_id from pages 
where page_id not in (select page_id from page_likes);