.class final Lcom/anythink/core/common/e/a$1;
.super Lcom/anythink/core/common/g/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/e/a;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/anythink/core/common/e/a;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/e/a;I)V
    .registers 3

    .line 260
    iput-object p1, p0, Lcom/anythink/core/common/e/a$1;->b:Lcom/anythink/core/common/e/a;

    iput p2, p0, Lcom/anythink/core/common/e/a$1;->a:I

    invoke-direct {p0}, Lcom/anythink/core/common/g/a/b;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 11

    .line 299
    const-string v0, "http.loader"

    const-string v1, "9999"

    .line 301
    const/4 v2, 0x0

    :try_start_5
    const-string v3, "REQUEST URL: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_1d
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_1d} :catch_2e7
    .catch Ljava/net/ConnectException; {:try_start_5 .. :try_end_1d} :catch_2ae
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_1d} :catch_298
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_5 .. :try_end_1d} :catch_28c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_1d} :catch_267
    .catch Ljava/lang/StackOverflowError; {:try_start_5 .. :try_end_1d} :catch_242
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_1d} :catch_21d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1d} :catch_1fb
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1f8

    .line 308
    :try_start_1d
    iget-object v2, p0, Lcom/anythink/core/common/e/a$1;->b:Lcom/anythink/core/common/e/a;

    invoke-virtual {v2}, Lcom/anythink/core/common/e/a;->a()I

    move-result v2

    .line 309
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_2a

    if-eq v2, v4, :cond_2a

    .line 310
    move v2, v4

    .line 314
    :cond_2a
    const/4 v6, 0x0

    if-ne v2, v5, :cond_3b

    .line 315
    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 316
    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 317
    const-string v7, "POST"

    invoke-virtual {v3, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v3, v6}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 321
    :cond_3b
    if-ne v2, v4, :cond_40

    .line 322
    invoke-virtual {v3, v6}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 326
    :cond_40
    iget-object v4, p0, Lcom/anythink/core/common/e/a$1;->b:Lcom/anythink/core/common/e/a;

    invoke-virtual {v4}, Lcom/anythink/core/common/e/a;->c()Ljava/util/Map;

    move-result-object v4

    .line 327
    if-eqz v4, :cond_6c

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_6c

    .line 328
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_56
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 329
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    goto :goto_56

    .line 333
    :cond_6c
    iget-object v4, p0, Lcom/anythink/core/common/e/a$1;->b:Lcom/anythink/core/common/e/a;

    iget-boolean v4, v4, Lcom/anythink/core/common/e/a;->k:Z

    if-eqz v4, :cond_7d

    .line 335
    iget-object p1, p0, Lcom/anythink/core/common/e/a$1;->b:Lcom/anythink/core/common/e/a;

    invoke-virtual {p1}, Lcom/anythink/core/common/e/a;->n()V
    :try_end_77
    .catch Ljava/net/UnknownHostException; {:try_start_1d .. :try_end_77} :catch_1f4
    .catch Ljava/net/ConnectException; {:try_start_1d .. :try_end_77} :catch_1f0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1d .. :try_end_77} :catch_1ec
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1d .. :try_end_77} :catch_1e8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1d .. :try_end_77} :catch_1e4
    .catch Ljava/lang/StackOverflowError; {:try_start_1d .. :try_end_77} :catch_1e1
    .catch Ljava/lang/Error; {:try_start_1d .. :try_end_77} :catch_1de
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_77} :catch_1db
    .catchall {:try_start_1d .. :try_end_77} :catchall_1d7

    .line 490
    if-eqz v3, :cond_7c

    .line 492
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 336
    :cond_7c
    return-void

    .line 339
    :cond_7d
    :try_start_7d
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v4

    const-string v6, "ua"

    invoke-virtual {v4, v6}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_90

    .line 340
    const-string v4, "User-Agent"

    const-string v6, "UA_5.7.8"

    invoke-virtual {v3, v4, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_90
    const/16 v4, 0x4e20

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 344
    const v4, 0xea60

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 345
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 348
    if-ne v2, v5, :cond_b5

    .line 349
    iget-object v2, p0, Lcom/anythink/core/common/e/a$1;->b:Lcom/anythink/core/common/e/a;

    invoke-virtual {v2}, Lcom/anythink/core/common/e/a;->d()[B

    move-result-object v2

    .line 350
    if-eqz v2, :cond_b5

    .line 351
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 352
    invoke-virtual {v4, v2}, Ljava/io/OutputStream;->write([B)V

    .line 353
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 354
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 357
    :cond_b5
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 361
    const/16 v4, 0xc8

    if-eq v2, v4, :cond_11a

    .line 363
    const/16 v4, 0x12e

    if-ne v2, v4, :cond_f7

    .line 365
    iget-object v2, p0, Lcom/anythink/core/common/e/a$1;->b:Lcom/anythink/core/common/e/a;

    iget-boolean v2, v2, Lcom/anythink/core/common/e/a;->k:Z

    if-nez v2, :cond_ec

    .line 367
    const-string v2, "Location"

    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 368
    if-eqz v2, :cond_eb

    .line 369
    const-string v4, "http"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e8

    .line 370
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 372
    :cond_e8
    invoke-direct {p0, v2}, Lcom/anythink/core/common/e/a$1;->a(Ljava/lang/String;)V

    .line 375
    :cond_eb
    goto :goto_f1

    .line 376
    :cond_ec
    iget-object p1, p0, Lcom/anythink/core/common/e/a$1;->b:Lcom/anythink/core/common/e/a;

    invoke-virtual {p1}, Lcom/anythink/core/common/e/a;->n()V
    :try_end_f1
    .catch Ljava/net/UnknownHostException; {:try_start_7d .. :try_end_f1} :catch_1f4
    .catch Ljava/net/ConnectException; {:try_start_7d .. :try_end_f1} :catch_1f0
    .catch Ljava/net/SocketTimeoutException; {:try_start_7d .. :try_end_f1} :catch_1ec
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_7d .. :try_end_f1} :catch_1e8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7d .. :try_end_f1} :catch_1e4
    .catch Ljava/lang/StackOverflowError; {:try_start_7d .. :try_end_f1} :catch_1e1
    .catch Ljava/lang/Error; {:try_start_7d .. :try_end_f1} :catch_1de
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_f1} :catch_1db
    .catchall {:try_start_7d .. :try_end_f1} :catchall_1d7

    .line 490
    :goto_f1
    if-eqz v3, :cond_f6

    .line 492
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 378
    :cond_f6
    return-void

    .line 380
    :cond_f7
    :try_start_f7
    iget-object p1, p0, Lcom/anythink/core/common/e/a$1;->b:Lcom/anythink/core/common/e/a;

    const-string v4, "Http respond status code is "

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "9990"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v2, v6}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    invoke-virtual {p1, v4, v2}, Lcom/anythink/core/common/e/a;->a(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V
    :try_end_114
    .catch Ljava/net/UnknownHostException; {:try_start_f7 .. :try_end_114} :catch_1f4
    .catch Ljava/net/ConnectException; {:try_start_f7 .. :try_end_114} :catch_1f0
    .catch Ljava/net/SocketTimeoutException; {:try_start_f7 .. :try_end_114} :catch_1ec
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_f7 .. :try_end_114} :catch_1e8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f7 .. :try_end_114} :catch_1e4
    .catch Ljava/lang/StackOverflowError; {:try_start_f7 .. :try_end_114} :catch_1e1
    .catch Ljava/lang/Error; {:try_start_f7 .. :try_end_114} :catch_1de
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_114} :catch_1db
    .catchall {:try_start_f7 .. :try_end_114} :catchall_1d7

    .line 490
    if-eqz v3, :cond_119

    .line 492
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 381
    :cond_119
    return-void

    .line 387
    :cond_11a
    :try_start_11a
    iget-object v2, p0, Lcom/anythink/core/common/e/a$1;->b:Lcom/anythink/core/common/e/a;

    iget-boolean v2, v2, Lcom/anythink/core/common/e/a;->k:Z

    if-eqz v2, :cond_12b

    .line 388
    iget-object p1, p0, Lcom/anythink/core/common/e/a$1;->b:Lcom/anythink/core/common/e/a;

    invoke-virtual {p1}, Lcom/anythink/core/common/e/a;->n()V
    :try_end_125
    .catch Ljava/net/UnknownHostException; {:try_start_11a .. :try_end_125} :catch_1f4
    .catch Ljava/net/ConnectException; {:try_start_11a .. :try_end_125} :catch_1f0
    .catch Ljava/net/SocketTimeoutException; {:try_start_11a .. :try_end_125} :catch_1ec
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_11a .. :try_end_125} :catch_1e8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11a .. :try_end_125} :catch_1e4
    .catch Ljava/lang/StackOverflowError; {:try_start_11a .. :try_end_125} :catch_1e1
    .catch Ljava/lang/Error; {:try_start_11a .. :try_end_125} :catch_1de
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_125} :catch_1db
    .catchall {:try_start_11a .. :try_end_125} :catchall_1d7

    .line 490
    if-eqz v3, :cond_12a

    .line 492
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 390
    :cond_12a
    return-void

    .line 394
    :cond_12b
    :try_start_12b
    invoke-static {v3}, Lcom/anythink/core/common/e/a;->a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v2

    .line 395
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 396
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 398
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 399
    :goto_13e
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_148

    .line 400
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13e

    .line 404
    :cond_148
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 407
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 409
    if-eqz v2, :cond_153

    .line 410
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 413
    :cond_153
    const-string v2, "https://api.anythinktech.com/v1/open/app"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_181

    const-string v2, "https://api.anythinktech.com/v1/open/placement"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_181

    const-string v2, "https://api.anythinktech.com/v1/open/eu"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_16c

    goto :goto_181

    .line 436
    :cond_16c
    iget-object p1, p0, Lcom/anythink/core/common/e/a$1;->b:Lcom/anythink/core/common/e/a;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/anythink/core/common/e/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 437
    iget-object v2, p0, Lcom/anythink/core/common/e/a$1;->b:Lcom/anythink/core/common/e/a;

    iget v4, p0, Lcom/anythink/core/common/e/a$1;->a:I

    invoke-virtual {v2, v4, p1}, Lcom/anythink/core/common/e/a;->a(ILjava/lang/Object;)V

    goto :goto_1d1

    .line 415
    :cond_181
    :goto_181
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/core/common/g/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 417
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 419
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 420
    const-string v4, "code"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 421
    if-nez v4, :cond_1bc

    .line 422
    sget-object p1, Lcom/anythink/core/common/b/e$a;->d:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 423
    if-nez p1, :cond_1a7

    .line 424
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 426
    :cond_1a7
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 427
    iget-object v2, p0, Lcom/anythink/core/common/e/a$1;->b:Lcom/anythink/core/common/e/a;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    invoke-virtual {v2, p1}, Lcom/anythink/core/common/e/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 428
    iget-object v2, p0, Lcom/anythink/core/common/e/a$1;->b:Lcom/anythink/core/common/e/a;

    iget v4, p0, Lcom/anythink/core/common/e/a$1;->a:I

    invoke-virtual {v2, v4, p1}, Lcom/anythink/core/common/e/a;->a(ILjava/lang/Object;)V

    .line 430
    goto :goto_1d1

    .line 431
    :cond_1bc
    const-string v2, "ATSdk"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v2, p0, Lcom/anythink/core/common/e/a$1;->b:Lcom/anythink/core/common/e/a;

    const-string v5, "9991"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4, p1}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v4

    invoke-virtual {v2, p1, v4}, Lcom/anythink/core/common/e/a;->a(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V
    :try_end_1d0
    .catch Ljava/net/UnknownHostException; {:try_start_12b .. :try_end_1d0} :catch_1f4
    .catch Ljava/net/ConnectException; {:try_start_12b .. :try_end_1d0} :catch_1f0
    .catch Ljava/net/SocketTimeoutException; {:try_start_12b .. :try_end_1d0} :catch_1ec
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_12b .. :try_end_1d0} :catch_1e8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_12b .. :try_end_1d0} :catch_1e4
    .catch Ljava/lang/StackOverflowError; {:try_start_12b .. :try_end_1d0} :catch_1e1
    .catch Ljava/lang/Error; {:try_start_12b .. :try_end_1d0} :catch_1de
    .catch Ljava/lang/Exception; {:try_start_12b .. :try_end_1d0} :catch_1db
    .catchall {:try_start_12b .. :try_end_1d0} :catchall_1d7

    .line 435
    nop

    .line 490
    :goto_1d1
    if-eqz v3, :cond_320

    .line 492
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 490
    :catchall_1d7
    move-exception p1

    move-object v2, v3

    goto/16 :goto_321

    .line 476
    :catch_1db
    move-exception p1

    move-object v2, v3

    goto :goto_1fc

    .line 468
    :catch_1de
    move-exception p1

    move-object v2, v3

    goto :goto_21e

    .line 460
    :catch_1e1
    move-exception p1

    move-object v2, v3

    goto :goto_243

    .line 453
    :catch_1e4
    move-exception p1

    move-object v2, v3

    goto/16 :goto_268

    .line 451
    :catch_1e8
    move-exception p1

    move-object v2, v3

    goto/16 :goto_28d

    .line 449
    :catch_1ec
    move-exception p1

    move-object v2, v3

    goto/16 :goto_299

    .line 445
    :catch_1f0
    move-exception p1

    move-object v2, v3

    goto/16 :goto_2af

    .line 441
    :catch_1f4
    move-exception p1

    move-object v2, v3

    goto/16 :goto_2e8

    .line 490
    :catchall_1f8
    move-exception p1

    goto/16 :goto_321

    .line 476
    :catch_1fb
    move-exception p1

    .line 478
    :goto_1fc
    :try_start_1fc
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 479
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_20a

    .line 480
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 486
    :cond_20a
    iget-object v3, p0, Lcom/anythink/core/common/e/a$1;->b:Lcom/anythink/core/common/e/a;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v1, p1}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p1

    invoke-virtual {v3, v0, p1}, Lcom/anythink/core/common/e/a;->a(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V
    :try_end_217
    .catchall {:try_start_1fc .. :try_end_217} :catchall_1f8

    .line 490
    if-eqz v2, :cond_320

    .line 492
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 468
    :catch_21d
    move-exception p1

    .line 469
    :goto_21e
    :try_start_21e
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 471
    invoke-virtual {p1}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 472
    invoke-virtual {p1}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_22f

    .line 473
    invoke-virtual {p1}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 475
    :cond_22f
    iget-object v3, p0, Lcom/anythink/core/common/e/a$1;->b:Lcom/anythink/core/common/e/a;

    invoke-virtual {p1}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v1, p1}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p1

    invoke-virtual {v3, v0, p1}, Lcom/anythink/core/common/e/a;->a(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V
    :try_end_23c
    .catchall {:try_start_21e .. :try_end_23c} :catchall_1f8

    .line 490
    if-eqz v2, :cond_320

    .line 492
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 460
    :catch_242
    move-exception p1

    .line 461
    :goto_243
    :try_start_243
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 463
    invoke-virtual {p1}, Ljava/lang/StackOverflowError;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 464
    invoke-virtual {p1}, Ljava/lang/StackOverflowError;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_254

    .line 465
    invoke-virtual {p1}, Ljava/lang/StackOverflowError;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 467
    :cond_254
    iget-object v3, p0, Lcom/anythink/core/common/e/a$1;->b:Lcom/anythink/core/common/e/a;

    invoke-virtual {p1}, Ljava/lang/StackOverflowError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v1, p1}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p1

    invoke-virtual {v3, v0, p1}, Lcom/anythink/core/common/e/a;->a(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V
    :try_end_261
    .catchall {:try_start_243 .. :try_end_261} :catchall_1f8

    .line 490
    if-eqz v2, :cond_320

    .line 492
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 453
    :catch_267
    move-exception p1

    .line 454
    :goto_268
    :try_start_268
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 455
    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 456
    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_279

    .line 457
    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 459
    :cond_279
    iget-object v3, p0, Lcom/anythink/core/common/e/a$1;->b:Lcom/anythink/core/common/e/a;

    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v1, p1}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p1

    invoke-virtual {v3, v0, p1}, Lcom/anythink/core/common/e/a;->a(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V
    :try_end_286
    .catchall {:try_start_268 .. :try_end_286} :catchall_1f8

    .line 490
    if-eqz v2, :cond_320

    .line 492
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 451
    :catch_28c
    move-exception p1

    .line 452
    :goto_28d
    :try_start_28d
    iget-object v0, p0, Lcom/anythink/core/common/e/a$1;->b:Lcom/anythink/core/common/e/a;

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/e/a;->a(Lorg/apache/http/conn/ConnectTimeoutException;)V
    :try_end_292
    .catchall {:try_start_28d .. :try_end_292} :catchall_1f8

    .line 490
    if-eqz v2, :cond_320

    .line 492
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 449
    :catch_298
    move-exception p1

    .line 450
    :goto_299
    :try_start_299
    iget-object v0, p0, Lcom/anythink/core/common/e/a$1;->b:Lcom/anythink/core/common/e/a;

    const-string v3, "Connect timeout."

    invoke-virtual {p1}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v1, p1}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lcom/anythink/core/common/e/a;->a(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V
    :try_end_2a8
    .catchall {:try_start_299 .. :try_end_2a8} :catchall_1f8

    .line 490
    if-eqz v2, :cond_320

    .line 492
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 445
    :catch_2ae
    move-exception p1

    .line 446
    :goto_2af
    :try_start_2af
    iget-object v3, p0, Lcom/anythink/core/common/e/a$1;->b:Lcom/anythink/core/common/e/a;

    invoke-virtual {p1}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v1, v4}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/anythink/core/common/e/a;->a(Lcom/anythink/core/api/AdError;)V

    .line 447
    iget-object v3, p0, Lcom/anythink/core/common/e/a$1;->b:Lcom/anythink/core/common/e/a;

    const-string v4, "Connect error."

    invoke-virtual {p1}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v1, v5}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/anythink/core/common/e/a;->a(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "http connect error! "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/ConnectException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e1
    .catchall {:try_start_2af .. :try_end_2e1} :catchall_1f8

    .line 490
    if-eqz v2, :cond_320

    .line 492
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 441
    :catch_2e7
    move-exception p1

    .line 442
    :goto_2e8
    :try_start_2e8
    iget-object v3, p0, Lcom/anythink/core/common/e/a$1;->b:Lcom/anythink/core/common/e/a;

    invoke-virtual {p1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v1, v4}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/anythink/core/common/e/a;->a(Lcom/anythink/core/api/AdError;)V

    .line 443
    iget-object v3, p0, Lcom/anythink/core/common/e/a$1;->b:Lcom/anythink/core/common/e/a;

    const-string v4, "UnknownHostException"

    invoke-virtual {p1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v1, v5}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/anythink/core/common/e/a;->a(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "UnknownHostException "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31a
    .catchall {:try_start_2e8 .. :try_end_31a} :catchall_1f8

    .line 490
    if-eqz v2, :cond_320

    .line 492
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 496
    :cond_320
    return-void

    .line 490
    :goto_321
    if-eqz v2, :cond_326

    .line 492
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 494
    :cond_326
    throw p1
.end method


# virtual methods
.method public final a()V
    .registers 5

    .line 270
    const-string v0, "9999"

    :try_start_2
    iget-object v1, p0, Lcom/anythink/core/common/e/a$1;->b:Lcom/anythink/core/common/e/a;

    invoke-virtual {v1}, Lcom/anythink/core/common/e/a;->b()Ljava/lang/String;

    move-result-object v1

    .line 271
    invoke-direct {p0, v1}, Lcom/anythink/core/common/e/a$1;->a(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_b} :catch_33
    .catch Ljava/lang/StackOverflowError; {:try_start_2 .. :try_end_b} :catch_31
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_c

    .line 291
    return-void

    .line 282
    :catch_c
    move-exception v1

    .line 283
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 284
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 285
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 287
    :cond_1b
    iget-object v3, p0, Lcom/anythink/core/common/e/a$1;->b:Lcom/anythink/core/common/e/a;

    iget-object v3, v3, Lcom/anythink/core/common/e/a;->j:Lcom/anythink/core/common/e/g;

    if-eqz v3, :cond_30

    .line 288
    iget-object v3, p0, Lcom/anythink/core/common/e/a$1;->b:Lcom/anythink/core/common/e/a;

    iget-object v3, v3, Lcom/anythink/core/common/e/a;->j:Lcom/anythink/core/common/e/g;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v0, v1}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    invoke-interface {v3, v2, v0}, Lcom/anythink/core/common/e/g;->a(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V

    .line 292
    :cond_30
    return-void

    .line 273
    :catch_31
    move-exception v1

    goto :goto_34

    :catch_33
    move-exception v1

    .line 274
    :goto_34
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 275
    invoke-virtual {v1}, Ljava/lang/VirtualMachineError;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 276
    invoke-virtual {v1}, Ljava/lang/VirtualMachineError;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_45

    .line 277
    invoke-virtual {v1}, Ljava/lang/VirtualMachineError;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 279
    :cond_45
    iget-object v3, p0, Lcom/anythink/core/common/e/a$1;->b:Lcom/anythink/core/common/e/a;

    iget-object v3, v3, Lcom/anythink/core/common/e/a;->j:Lcom/anythink/core/common/e/g;

    if-eqz v3, :cond_5a

    .line 280
    iget-object v3, p0, Lcom/anythink/core/common/e/a$1;->b:Lcom/anythink/core/common/e/a;

    iget-object v3, v3, Lcom/anythink/core/common/e/a;->j:Lcom/anythink/core/common/e/g;

    invoke-virtual {v1}, Ljava/lang/VirtualMachineError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v0, v1}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    invoke-interface {v3, v2, v0}, Lcom/anythink/core/common/e/g;->a(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V

    .line 291
    :cond_5a
    return-void
.end method
