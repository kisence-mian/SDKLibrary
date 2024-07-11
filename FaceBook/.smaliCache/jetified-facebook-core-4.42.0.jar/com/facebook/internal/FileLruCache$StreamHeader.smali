.class final Lcom/facebook/internal/FileLruCache$StreamHeader;
.super Ljava/lang/Object;
.source "FileLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/FileLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StreamHeader"
.end annotation


# static fields
.field private static final HEADER_VERSION:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static readHeader(Ljava/io/InputStream;)Lorg/json/JSONObject;
    .registers 13
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 418
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 419
    .local v0, "version":I
    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 420
    return-object v1

    .line 423
    :cond_8
    const/4 v2, 0x0

    .line 424
    .local v2, "headerSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    const/4 v4, 0x3

    if-ge v3, v4, :cond_26

    .line 425
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 426
    .local v4, "b":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_1e

    .line 427
    sget-object v5, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    sget-object v6, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    const-string v7, "readHeader: stream.read returned -1 while reading header size"

    invoke-static {v5, v6, v7}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    return-object v1

    .line 431
    :cond_1e
    shl-int/lit8 v2, v2, 0x8

    .line 432
    and-int/lit16 v5, v4, 0xff

    add-int/2addr v2, v5

    .line 424
    .end local v4    # "b":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 435
    .end local v3    # "i":I
    :cond_26
    new-array v3, v2, [B

    .line 436
    .local v3, "headerBytes":[B
    const/4 v4, 0x0

    .line 437
    .local v4, "count":I
    :goto_29
    array-length v5, v3

    if-ge v4, v5, :cond_61

    .line 438
    array-length v5, v3

    sub-int/2addr v5, v4

    invoke-virtual {p0, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 439
    .local v5, "readCount":I
    const/4 v6, 0x1

    if-ge v5, v6, :cond_5f

    .line 440
    sget-object v6, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    sget-object v7, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readHeader: stream.read stopped at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 443
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " when expected "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 440
    invoke-static {v6, v7, v8}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    return-object v1

    .line 447
    :cond_5f
    add-int/2addr v4, v5

    .line 448
    .end local v5    # "readCount":I
    goto :goto_29

    .line 450
    :cond_61
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    .line 452
    .local v5, "headerString":Ljava/lang/String;
    new-instance v6, Lorg/json/JSONTokener;

    invoke-direct {v6, v5}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 454
    .local v6, "tokener":Lorg/json/JSONTokener;
    :try_start_6b
    invoke-virtual {v6}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v7

    .line 455
    .local v7, "parsed":Ljava/lang/Object;
    instance-of v8, v7, Lorg/json/JSONObject;

    if-nez v8, :cond_96

    .line 456
    sget-object v8, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    sget-object v9, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "readHeader: expected JSONObject, got "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 460
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 456
    invoke-static {v8, v9, v10}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    return-object v1

    .line 463
    :cond_96
    move-object v1, v7

    check-cast v1, Lorg/json/JSONObject;
    :try_end_99
    .catch Lorg/json/JSONException; {:try_start_6b .. :try_end_99} :catch_9b

    .line 466
    .end local v7    # "parsed":Ljava/lang/Object;
    .local v1, "header":Lorg/json/JSONObject;
    nop

    .line 468
    return-object v1

    .line 464
    .end local v1    # "header":Lorg/json/JSONObject;
    :catch_9b
    move-exception v1

    .line 465
    .local v1, "e":Lorg/json/JSONException;
    new-instance v7, Ljava/io/IOException;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_a7

    :goto_a6
    throw v7

    :goto_a7
    goto :goto_a6
.end method

.method static writeHeader(Ljava/io/OutputStream;Lorg/json/JSONObject;)V
    .registers 6
    .param p0, "stream"    # Ljava/io/OutputStream;
    .param p1, "header"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, "headerString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 409
    .local v1, "headerBytes":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 410
    array-length v3, v1

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 411
    array-length v3, v1

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 412
    array-length v3, v1

    shr-int/lit8 v2, v3, 0x0

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 414
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 415
    return-void
.end method
