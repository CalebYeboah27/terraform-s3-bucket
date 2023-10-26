output "output_s3_bucket_names" {
    description = "names of S3 buckets created"

    value =  [
        module.cy_s3_bucket["adventuretech"].s3_bucket_id,
        module.cy_s3_bucket["datasummit"].s3_bucket_id,
        module.cy_s3_bucket["natureescape"].s3_bucket_id
    ]
}