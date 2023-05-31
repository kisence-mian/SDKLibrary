.class final Lcom/anythink/core/b/e/a$1;
.super Lcom/anythink/core/b/g/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/e/a;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/anythink/core/b/e/a;


# direct methods
.method constructor <init>(Lcom/anythink/core/b/e/a;I)V
    .registers 3

    .prologue
    .line 324
    iput-object p1, p0, Lcom/anythink/core/b/e/a$1;->b:Lcom/anythink/core/b/e/a;

    iput p2, p0, Lcom/anythink/core/b/e/a$1;->a:I

    invoke-direct {p0}, Lcom/anythink/core/b/g/a/b;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 10

    .prologue
    const/4 v2, 0x2

    const/4 v6, 0x1

    .line 363
    const/4 v1, 0x0

    .line 365
    :try_start_3
    const-string v0, "http.loader"

    const-string v3, "REQUEST URL: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_1d
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_1d} :catch_34b
    .catch Ljava/net/ConnectException; {:try_start_3 .. :try_end_1d} :catch_348
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_1d} :catch_345
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_1d} :catch_342
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_1d} :catch_33f
    .catch Ljava/lang/StackOverflowError; {:try_start_3 .. :try_end_1d} :catch_2a8
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_1d} :catch_2d2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1d} :catch_2fc
    .catchall {:try_start_3 .. :try_end_1d} :catchall_323

    .line 372
    :try_start_1d
    iget-object v1, p0, Lcom/anythink/core/b/e/a$1;->b:Lcom/anythink/core/b/e/a;

    invoke-virtual {v1}, Lcom/anythink/core/b/e/a;->a()I

    move-result v1

    .line 373
    if-eq v1, v6, :cond_34e

    if-eq v1, v2, :cond_34e

    move v3, v2

    .line 378
    :goto_28
    if-ne v3, v6, :cond_3b

    .line 379
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 380
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 381
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 382
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 385
    :cond_3b
    if-ne v3, v2, :cond_41

    .line 386
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 390
    :cond_41
    iget-object v1, p0, Lcom/anythink/core/b/e/a$1;->b:Lcom/anythink/core/b/e/a;

    invoke-virtual {v1}, Lcom/anythink/core/b/e/a;->c()Ljava/util/Map;

    move-result-object v4

    .line 391
    if-eqz v4, :cond_b3

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_b3

    .line 392
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_57
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 393
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6c
    .catch Ljava/net/UnknownHostException; {:try_start_1d .. :try_end_6c} :catch_6d
    .catch Ljava/net/ConnectException; {:try_start_1d .. :try_end_6c} :catch_12b
    .catch Ljava/net/SocketTimeoutException; {:try_start_1d .. :try_end_6c} :catch_1c5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1d .. :try_end_6c} :catch_25a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1d .. :try_end_6c} :catch_27b
    .catch Ljava/lang/StackOverflowError; {:try_start_1d .. :try_end_6c} :catch_339
    .catch Ljava/lang/Error; {:try_start_1d .. :try_end_6c} :catch_334
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_6c} :catch_32f
    .catchall {:try_start_1d .. :try_end_6c} :catchall_32a

    goto :goto_57

    .line 501
    :catch_6d
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 502
    :goto_71
    :try_start_71
    iget-object v2, p0, Lcom/anythink/core/b/e/a$1;->b:Lcom/anythink/core/b/e/a;

    const-string v3, "9999"

    const-string v4, "9999"

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/anythink/core/b/e/a;->b(Lcom/anythink/core/api/AdError;)V

    .line 503
    iget-object v2, p0, Lcom/anythink/core/b/e/a$1;->b:Lcom/anythink/core/b/e/a;

    const-string v3, "UnknownHostException"

    const-string v4, "9999"

    const-string v5, "9999"

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/anythink/core/b/e/a;->a(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V

    .line 504
    const-string v2, "http.loader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UnknownHostException "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/anythink/core/b/g/d;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ad
    .catchall {:try_start_71 .. :try_end_ad} :catchall_323

    .line 550
    if-eqz v1, :cond_b2

    .line 552
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 556
    :cond_b2
    :goto_b2
    return-void

    .line 397
    :cond_b3
    :try_start_b3
    iget-object v1, p0, Lcom/anythink/core/b/e/a$1;->b:Lcom/anythink/core/b/e/a;

    iget-boolean v1, v1, Lcom/anythink/core/b/e/a;->F:Z

    if-eqz v1, :cond_c4

    .line 399
    iget-object v1, p0, Lcom/anythink/core/b/e/a$1;->b:Lcom/anythink/core/b/e/a;

    invoke-virtual {v1}, Lcom/anythink/core/b/e/a;->n()V
    :try_end_be
    .catch Ljava/net/UnknownHostException; {:try_start_b3 .. :try_end_be} :catch_6d
    .catch Ljava/net/ConnectException; {:try_start_b3 .. :try_end_be} :catch_12b
    .catch Ljava/net/SocketTimeoutException; {:try_start_b3 .. :try_end_be} :catch_1c5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_b3 .. :try_end_be} :catch_25a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b3 .. :try_end_be} :catch_27b
    .catch Ljava/lang/StackOverflowError; {:try_start_b3 .. :try_end_be} :catch_339
    .catch Ljava/lang/Error; {:try_start_b3 .. :try_end_be} :catch_334
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_be} :catch_32f
    .catchall {:try_start_b3 .. :try_end_be} :catchall_32a

    .line 550
    if-eqz v0, :cond_b2

    .line 552
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_b2

    .line 403
    :cond_c4
    const/16 v1, 0x4e20

    :try_start_c6
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 404
    const v1, 0xea60

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 405
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 408
    if-ne v3, v6, :cond_e9

    .line 409
    iget-object v1, p0, Lcom/anythink/core/b/e/a$1;->b:Lcom/anythink/core/b/e/a;

    invoke-virtual {v1}, Lcom/anythink/core/b/e/a;->d()[B

    move-result-object v1

    .line 410
    if-eqz v1, :cond_e9

    .line 411
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 412
    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 413
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 414
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 417
    :cond_e9
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 421
    const/16 v2, 0xc8

    if-eq v1, v2, :cond_196

    .line 423
    const/16 v2, 0x12e

    if-ne v1, v2, :cond_172

    .line 425
    iget-object v1, p0, Lcom/anythink/core/b/e/a$1;->b:Lcom/anythink/core/b/e/a;

    iget-boolean v1, v1, Lcom/anythink/core/b/e/a;->F:Z

    if-nez v1, :cond_125

    .line 427
    const-string v1, "Location"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 428
    if-eqz v1, :cond_11f

    .line 429
    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11c

    .line 430
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 432
    :cond_11c
    invoke-direct {p0, v1}, Lcom/anythink/core/b/e/a$1;->a(Ljava/lang/String;)V
    :try_end_11f
    .catch Ljava/net/UnknownHostException; {:try_start_c6 .. :try_end_11f} :catch_6d
    .catch Ljava/net/ConnectException; {:try_start_c6 .. :try_end_11f} :catch_12b
    .catch Ljava/net/SocketTimeoutException; {:try_start_c6 .. :try_end_11f} :catch_1c5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_c6 .. :try_end_11f} :catch_25a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c6 .. :try_end_11f} :catch_27b
    .catch Ljava/lang/StackOverflowError; {:try_start_c6 .. :try_end_11f} :catch_339
    .catch Ljava/lang/Error; {:try_start_c6 .. :try_end_11f} :catch_334
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_11f} :catch_32f
    .catchall {:try_start_c6 .. :try_end_11f} :catchall_32a

    .line 550
    :cond_11f
    :goto_11f
    if-eqz v0, :cond_b2

    .line 552
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_b2

    .line 436
    :cond_125
    :try_start_125
    iget-object v1, p0, Lcom/anythink/core/b/e/a$1;->b:Lcom/anythink/core/b/e/a;

    invoke-virtual {v1}, Lcom/anythink/core/b/e/a;->n()V
    :try_end_12a
    .catch Ljava/net/UnknownHostException; {:try_start_125 .. :try_end_12a} :catch_6d
    .catch Ljava/net/ConnectException; {:try_start_125 .. :try_end_12a} :catch_12b
    .catch Ljava/net/SocketTimeoutException; {:try_start_125 .. :try_end_12a} :catch_1c5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_125 .. :try_end_12a} :catch_25a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_125 .. :try_end_12a} :catch_27b
    .catch Ljava/lang/StackOverflowError; {:try_start_125 .. :try_end_12a} :catch_339
    .catch Ljava/lang/Error; {:try_start_125 .. :try_end_12a} :catch_334
    .catch Ljava/lang/Exception; {:try_start_125 .. :try_end_12a} :catch_32f
    .catchall {:try_start_125 .. :try_end_12a} :catchall_32a

    goto :goto_11f

    .line 505
    :catch_12b
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 506
    :goto_12f
    :try_start_12f
    iget-object v2, p0, Lcom/anythink/core/b/e/a$1;->b:Lcom/anythink/core/b/e/a;

    const-string v3, "9999"

    const-string v4, "9999"

    invoke-virtual {v0}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/anythink/core/b/e/a;->b(Lcom/anythink/core/api/AdError;)V

    .line 507
    iget-object v2, p0, Lcom/anythink/core/b/e/a$1;->b:Lcom/anythink/core/b/e/a;

    const-string v3, "Connect error."

    const-string v4, "9999"

    const-string v5, "9999"

    invoke-virtual {v0}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/anythink/core/b/e/a;->a(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V

    .line 508
    const-string v2, "http.loader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http connect error! "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/ConnectException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/anythink/core/b/g/d;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16b
    .catchall {:try_start_12f .. :try_end_16b} :catchall_323

    .line 550
    if-eqz v1, :cond_b2

    .line 552
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_b2

    .line 440
    :cond_172
    :try_start_172
    iget-object v2, p0, Lcom/anythink/core/b/e/a$1;->b:Lcom/anythink/core/b/e/a;

    const-string v3, "Http respond status code is "

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "9990"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v1, v5}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/anythink/core/b/e/a;->a(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V
    :try_end_18f
    .catch Ljava/net/UnknownHostException; {:try_start_172 .. :try_end_18f} :catch_6d
    .catch Ljava/net/ConnectException; {:try_start_172 .. :try_end_18f} :catch_12b
    .catch Ljava/net/SocketTimeoutException; {:try_start_172 .. :try_end_18f} :catch_1c5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_172 .. :try_end_18f} :catch_25a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_172 .. :try_end_18f} :catch_27b
    .catch Ljava/lang/StackOverflowError; {:try_start_172 .. :try_end_18f} :catch_339
    .catch Ljava/lang/Error; {:try_start_172 .. :try_end_18f} :catch_334
    .catch Ljava/lang/Exception; {:try_start_172 .. :try_end_18f} :catch_32f
    .catchall {:try_start_172 .. :try_end_18f} :catchall_32a

    .line 550
    if-eqz v0, :cond_b2

    .line 552
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_b2

    .line 447
    :cond_196
    :try_start_196
    iget-object v1, p0, Lcom/anythink/core/b/e/a$1;->b:Lcom/anythink/core/b/e/a;

    iget-boolean v1, v1, Lcom/anythink/core/b/e/a;->F:Z

    if-eqz v1, :cond_1a8

    .line 448
    iget-object v1, p0, Lcom/anythink/core/b/e/a$1;->b:Lcom/anythink/core/b/e/a;

    invoke-virtual {v1}, Lcom/anythink/core/b/e/a;->n()V
    :try_end_1a1
    .catch Ljava/net/UnknownHostException; {:try_start_196 .. :try_end_1a1} :catch_6d
    .catch Ljava/net/ConnectException; {:try_start_196 .. :try_end_1a1} :catch_12b
    .catch Ljava/net/SocketTimeoutException; {:try_start_196 .. :try_end_1a1} :catch_1c5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_196 .. :try_end_1a1} :catch_25a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_196 .. :try_end_1a1} :catch_27b
    .catch Ljava/lang/StackOverflowError; {:try_start_196 .. :try_end_1a1} :catch_339
    .catch Ljava/lang/Error; {:try_start_196 .. :try_end_1a1} :catch_334
    .catch Ljava/lang/Exception; {:try_start_196 .. :try_end_1a1} :catch_32f
    .catchall {:try_start_196 .. :try_end_1a1} :catchall_32a

    .line 550
    if-eqz v0, :cond_b2

    .line 552
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_b2

    .line 454
    :cond_1a8
    :try_start_1a8
    invoke-static {v0}, Lcom/anythink/core/b/e/a;->a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v1

    .line 455
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 456
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 458
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 459
    :goto_1bb
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1e3

    .line 460
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1c4
    .catch Ljava/net/UnknownHostException; {:try_start_1a8 .. :try_end_1c4} :catch_6d
    .catch Ljava/net/ConnectException; {:try_start_1a8 .. :try_end_1c4} :catch_12b
    .catch Ljava/net/SocketTimeoutException; {:try_start_1a8 .. :try_end_1c4} :catch_1c5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1a8 .. :try_end_1c4} :catch_25a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1a8 .. :try_end_1c4} :catch_27b
    .catch Ljava/lang/StackOverflowError; {:try_start_1a8 .. :try_end_1c4} :catch_339
    .catch Ljava/lang/Error; {:try_start_1a8 .. :try_end_1c4} :catch_334
    .catch Ljava/lang/Exception; {:try_start_1a8 .. :try_end_1c4} :catch_32f
    .catchall {:try_start_1a8 .. :try_end_1c4} :catchall_32a

    goto :goto_1bb

    .line 509
    :catch_1c5
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 510
    :goto_1c9
    :try_start_1c9
    iget-object v2, p0, Lcom/anythink/core/b/e/a$1;->b:Lcom/anythink/core/b/e/a;

    const-string v3, "Connect timeout."

    const-string v4, "9999"

    const-string v5, "9999"

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/anythink/core/b/e/a;->a(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V
    :try_end_1dc
    .catchall {:try_start_1c9 .. :try_end_1dc} :catchall_323

    .line 550
    if-eqz v1, :cond_b2

    .line 552
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_b2

    .line 464
    :cond_1e3
    :try_start_1e3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 467
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 469
    if-eqz v1, :cond_1ee

    .line 470
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 473
    :cond_1ee
    const-string v1, "https://aa.toponad.com/v1/open/app"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_206

    const-string v1, "https://aa.toponad.com/v1/open/placement"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_206

    const-string v1, "https://aa.toponad.com/v1/open/eu"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_26a

    .line 475
    :cond_206
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/b/g/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 477
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 479
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 480
    const-string v3, "code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 481
    if-nez v3, :cond_245

    .line 482
    sget-object v1, Lcom/anythink/core/b/a/d$a;->d:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 483
    if-nez v1, :cond_22c

    .line 484
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 486
    :cond_22c
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 487
    iget-object v2, p0, Lcom/anythink/core/b/e/a$1;->b:Lcom/anythink/core/b/e/a;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    invoke-virtual {v2, v1}, Lcom/anythink/core/b/e/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 488
    iget-object v2, p0, Lcom/anythink/core/b/e/a$1;->b:Lcom/anythink/core/b/e/a;

    invoke-virtual {v2, v1}, Lcom/anythink/core/b/e/a;->a(Ljava/lang/Object;)V
    :try_end_23e
    .catch Ljava/net/UnknownHostException; {:try_start_1e3 .. :try_end_23e} :catch_6d
    .catch Ljava/net/ConnectException; {:try_start_1e3 .. :try_end_23e} :catch_12b
    .catch Ljava/net/SocketTimeoutException; {:try_start_1e3 .. :try_end_23e} :catch_1c5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1e3 .. :try_end_23e} :catch_25a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1e3 .. :try_end_23e} :catch_27b
    .catch Ljava/lang/StackOverflowError; {:try_start_1e3 .. :try_end_23e} :catch_339
    .catch Ljava/lang/Error; {:try_start_1e3 .. :try_end_23e} :catch_334
    .catch Ljava/lang/Exception; {:try_start_1e3 .. :try_end_23e} :catch_32f
    .catchall {:try_start_1e3 .. :try_end_23e} :catchall_32a

    .line 550
    :goto_23e
    if-eqz v0, :cond_b2

    .line 552
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_b2

    .line 491
    :cond_245
    :try_start_245
    const-string v2, "ATSdk"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v2, p0, Lcom/anythink/core/b/e/a$1;->b:Lcom/anythink/core/b/e/a;

    const-string v4, "9991"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v1}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/anythink/core/b/e/a;->a(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V
    :try_end_259
    .catch Ljava/net/UnknownHostException; {:try_start_245 .. :try_end_259} :catch_6d
    .catch Ljava/net/ConnectException; {:try_start_245 .. :try_end_259} :catch_12b
    .catch Ljava/net/SocketTimeoutException; {:try_start_245 .. :try_end_259} :catch_1c5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_245 .. :try_end_259} :catch_25a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_245 .. :try_end_259} :catch_27b
    .catch Ljava/lang/StackOverflowError; {:try_start_245 .. :try_end_259} :catch_339
    .catch Ljava/lang/Error; {:try_start_245 .. :try_end_259} :catch_334
    .catch Ljava/lang/Exception; {:try_start_245 .. :try_end_259} :catch_32f
    .catchall {:try_start_245 .. :try_end_259} :catchall_32a

    goto :goto_23e

    .line 511
    :catch_25a
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 512
    :goto_25e
    :try_start_25e
    iget-object v2, p0, Lcom/anythink/core/b/e/a$1;->b:Lcom/anythink/core/b/e/a;

    invoke-virtual {v2, v0}, Lcom/anythink/core/b/e/a;->a(Lorg/apache/http/conn/ConnectTimeoutException;)V
    :try_end_263
    .catchall {:try_start_25e .. :try_end_263} :catchall_323

    .line 550
    if-eqz v1, :cond_b2

    .line 552
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_b2

    .line 496
    :cond_26a
    :try_start_26a
    iget-object v1, p0, Lcom/anythink/core/b/e/a$1;->b:Lcom/anythink/core/b/e/a;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/anythink/core/b/e/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 497
    iget-object v2, p0, Lcom/anythink/core/b/e/a$1;->b:Lcom/anythink/core/b/e/a;

    invoke-virtual {v2, v1}, Lcom/anythink/core/b/e/a;->a(Ljava/lang/Object;)V
    :try_end_27a
    .catch Ljava/net/UnknownHostException; {:try_start_26a .. :try_end_27a} :catch_6d
    .catch Ljava/net/ConnectException; {:try_start_26a .. :try_end_27a} :catch_12b
    .catch Ljava/net/SocketTimeoutException; {:try_start_26a .. :try_end_27a} :catch_1c5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_26a .. :try_end_27a} :catch_25a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_26a .. :try_end_27a} :catch_27b
    .catch Ljava/lang/StackOverflowError; {:try_start_26a .. :try_end_27a} :catch_339
    .catch Ljava/lang/Error; {:try_start_26a .. :try_end_27a} :catch_334
    .catch Ljava/lang/Exception; {:try_start_26a .. :try_end_27a} :catch_32f
    .catchall {:try_start_26a .. :try_end_27a} :catchall_32a

    goto :goto_23e

    .line 513
    :catch_27b
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 514
    :goto_27f
    :try_start_27f
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 515
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 516
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_290

    .line 517
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 519
    :cond_290
    iget-object v3, p0, Lcom/anythink/core/b/e/a$1;->b:Lcom/anythink/core/b/e/a;

    const-string v4, "9999"

    const-string v5, "9999"

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lcom/anythink/core/b/e/a;->a(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V
    :try_end_2a1
    .catchall {:try_start_27f .. :try_end_2a1} :catchall_323

    .line 550
    if-eqz v1, :cond_b2

    .line 552
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_b2

    .line 520
    :catch_2a8
    move-exception v0

    .line 521
    :goto_2a9
    :try_start_2a9
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 523
    invoke-virtual {v0}, Ljava/lang/StackOverflowError;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 524
    invoke-virtual {v0}, Ljava/lang/StackOverflowError;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2ba

    .line 525
    invoke-virtual {v0}, Ljava/lang/StackOverflowError;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 527
    :cond_2ba
    iget-object v3, p0, Lcom/anythink/core/b/e/a$1;->b:Lcom/anythink/core/b/e/a;

    const-string v4, "9999"

    const-string v5, "9999"

    invoke-virtual {v0}, Ljava/lang/StackOverflowError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lcom/anythink/core/b/e/a;->a(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V
    :try_end_2cb
    .catchall {:try_start_2a9 .. :try_end_2cb} :catchall_323

    .line 550
    if-eqz v1, :cond_b2

    .line 552
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_b2

    .line 528
    :catch_2d2
    move-exception v0

    .line 529
    :goto_2d3
    :try_start_2d3
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 531
    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 532
    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2e4

    .line 533
    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 535
    :cond_2e4
    iget-object v3, p0, Lcom/anythink/core/b/e/a$1;->b:Lcom/anythink/core/b/e/a;

    const-string v4, "9999"

    const-string v5, "9999"

    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lcom/anythink/core/b/e/a;->a(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V
    :try_end_2f5
    .catchall {:try_start_2d3 .. :try_end_2f5} :catchall_323

    .line 550
    if-eqz v1, :cond_b2

    .line 552
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_b2

    .line 536
    :catch_2fc
    move-exception v0

    .line 538
    :goto_2fd
    :try_start_2fd
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 539
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_30b

    .line 540
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 546
    :cond_30b
    iget-object v3, p0, Lcom/anythink/core/b/e/a$1;->b:Lcom/anythink/core/b/e/a;

    const-string v4, "9999"

    const-string v5, "9999"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lcom/anythink/core/b/e/a;->a(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V
    :try_end_31c
    .catchall {:try_start_2fd .. :try_end_31c} :catchall_323

    .line 550
    if-eqz v1, :cond_b2

    .line 552
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_b2

    .line 550
    :catchall_323
    move-exception v0

    :goto_324
    if-eqz v1, :cond_329

    .line 552
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_329
    throw v0

    .line 550
    :catchall_32a
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_324

    .line 536
    :catch_32f
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2fd

    .line 528
    :catch_334
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2d3

    .line 520
    :catch_339
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto/16 :goto_2a9

    .line 513
    :catch_33f
    move-exception v0

    goto/16 :goto_27f

    .line 511
    :catch_342
    move-exception v0

    goto/16 :goto_25e

    .line 509
    :catch_345
    move-exception v0

    goto/16 :goto_1c9

    .line 505
    :catch_348
    move-exception v0

    goto/16 :goto_12f

    .line 501
    :catch_34b
    move-exception v0

    goto/16 :goto_71

    :cond_34e
    move v3, v1

    goto/16 :goto_28
.end method


# virtual methods
.method public final a()V
    .registers 6

    .prologue
    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/b/e/a$1;->b:Lcom/anythink/core/b/e/a;

    iget-object v0, v0, Lcom/anythink/core/b/e/a;->E:Lcom/anythink/core/b/e/e;

    if-eqz v0, :cond_d

    .line 331
    iget-object v0, p0, Lcom/anythink/core/b/e/a$1;->b:Lcom/anythink/core/b/e/a;

    iget-object v0, v0, Lcom/anythink/core/b/e/a;->E:Lcom/anythink/core/b/e/e;

    invoke-interface {v0}, Lcom/anythink/core/b/e/e;->a()V

    .line 334
    :cond_d
    iget-object v0, p0, Lcom/anythink/core/b/e/a$1;->b:Lcom/anythink/core/b/e/a;

    invoke-virtual {v0}, Lcom/anythink/core/b/e/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 335
    invoke-direct {p0, v0}, Lcom/anythink/core/b/e/a$1;->a(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_16} :catch_6d
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_16} :catch_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_43

    .line 356
    :cond_16
    :goto_16
    return-void

    .line 337
    :catch_17
    move-exception v0

    .line 338
    :goto_18
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 339
    invoke-virtual {v0}, Ljava/lang/VirtualMachineError;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 340
    invoke-virtual {v0}, Ljava/lang/VirtualMachineError;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 341
    invoke-virtual {v0}, Ljava/lang/VirtualMachineError;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 343
    :cond_29
    iget-object v2, p0, Lcom/anythink/core/b/e/a$1;->b:Lcom/anythink/core/b/e/a;

    iget-object v2, v2, Lcom/anythink/core/b/e/a;->E:Lcom/anythink/core/b/e/e;

    if-eqz v2, :cond_16

    .line 344
    iget-object v2, p0, Lcom/anythink/core/b/e/a$1;->b:Lcom/anythink/core/b/e/a;

    iget-object v2, v2, Lcom/anythink/core/b/e/a;->E:Lcom/anythink/core/b/e/e;

    const-string v3, "9999"

    const-string v4, "9999"

    invoke-virtual {v0}, Ljava/lang/VirtualMachineError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/anythink/core/b/e/e;->a(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V

    goto :goto_16

    .line 346
    :catch_43
    move-exception v0

    move-object v1, v0

    .line 347
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 348
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_53

    .line 349
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 351
    :cond_53
    iget-object v2, p0, Lcom/anythink/core/b/e/a$1;->b:Lcom/anythink/core/b/e/a;

    iget-object v2, v2, Lcom/anythink/core/b/e/a;->E:Lcom/anythink/core/b/e/e;

    if-eqz v2, :cond_16

    .line 352
    iget-object v2, p0, Lcom/anythink/core/b/e/a$1;->b:Lcom/anythink/core/b/e/a;

    iget-object v2, v2, Lcom/anythink/core/b/e/a;->E:Lcom/anythink/core/b/e/e;

    const-string v3, "9999"

    const-string v4, "9999"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lcom/anythink/core/b/e/e;->a(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V

    goto :goto_16

    .line 337
    :catch_6d
    move-exception v0

    goto :goto_18
.end method
