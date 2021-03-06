exports.config = 
  rabbitMq:
    connect: process.env.RABBITMQ_BIGWIG_URL
    ingestorQ: process.env.INGESTOR_Q || 'ingestor'
    priceBookQ: process.env.PRICEBOOKQ || 'pricebook'
    errorQ: process.env.ERROR_Q || process.env.INGESTOR_Q || 'ingestor'
  aws:
    shiftBucket: process.env.SHIFT_INGESTOR_BUCKET || 'xsiteingestor'
    access_key_id: process.env.AWSAccessKeyId 
    secret_access_key: process.env.AWSSecretKey 
  parallel:
    uploadFiles: process.env.MAX_SFTP_UPLOAD_FILES || 5
    uploadSites: process.env.MAX_SFTP_UPLOAD_SITES || 5
    uploadAtTimes: process.env.MAX_AT_TIMES_PER_SITE || null
