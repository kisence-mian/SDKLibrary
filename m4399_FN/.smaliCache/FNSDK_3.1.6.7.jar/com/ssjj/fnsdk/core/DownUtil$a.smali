.class abstract Lcom/ssjj/fnsdk/core/DownUtil$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ssjj/fnsdk/core/DownUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Z

.field e:Ljava/lang/String;

.field f:J

.field g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/DownUtil$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/DownUtil$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/DownUtil$a;->c:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ssjj/fnsdk/core/DownUtil$a;->d:Z

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/DownUtil$a;->e:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/ssjj/fnsdk/core/DownUtil$a;->f:J

    iput v1, p0, Lcom/ssjj/fnsdk/core/DownUtil$a;->g:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/DownUtil$a;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/DownUtil$a;->b:Ljava/lang/String;

    iput v1, p0, Lcom/ssjj/fnsdk/core/DownUtil$a;->g:I

    return-void
.end method

.method private a(Ljava/lang/String;I)I
    .registers 7

    if-lez p2, :cond_3

    return p2

    :cond_3
    const/4 p2, 0x0

    const/4 v0, 0x0

    :try_start_5
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_34
    .catchall {:try_start_5 .. :try_end_10} :catchall_32

    const/16 v0, 0x1388

    :try_start_12
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v0, "Referer"

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result p2

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_28} :catch_30
    .catchall {:try_start_12 .. :try_end_28} :catchall_60

    if-eqz p1, :cond_5f

    :goto_2a
    :try_start_2a
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_5f

    :catch_2e
    move-exception p1

    goto :goto_5f

    :catch_30
    move-exception v0

    goto :goto_38

    :catchall_32
    move-exception p2

    goto :goto_62

    :catch_34
    move-exception p1

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    :goto_38
    :try_start_38
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getLength err: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/DownUtil;->a(Ljava/lang/String;)V
    :try_end_5c
    .catchall {:try_start_38 .. :try_end_5c} :catchall_60

    if-eqz p1, :cond_5f

    goto :goto_2a

    :cond_5f
    :goto_5f
    return p2

    :catchall_60
    move-exception p2

    move-object v0, p1

    :goto_62
    if-eqz v0, :cond_69

    :try_start_64
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_67} :catch_68

    goto :goto_69

    :catch_68
    move-exception p1

    :cond_69
    :goto_69
    throw p2
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 24

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_5
    const/4 v7, 0x1

    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "start download, url: "

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/ssjj/fnsdk/core/DownUtil$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/DownUtil;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/net/URL;

    iget-object v8, v1, Lcom/ssjj/fnsdk/core/DownUtil$a;->a:Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    iget-object v9, v1, Lcom/ssjj/fnsdk/core/DownUtil$a;->b:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_31

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_31
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    if-eqz v8, :cond_40

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_40

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    :cond_40
    const-string v9, ".down.temp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/ssjj/fnsdk/core/DownUtil$a;->a:Ljava/lang/String;

    invoke-static {v11}, Lcom/ssjj/fnsdk/core/DownUtil;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/ssjj/fnsdk/core/DownUtil$a;->c:Ljava/lang/String;

    new-instance v10, Ljava/io/File;

    iget-object v11, v1, Lcom/ssjj/fnsdk/core/DownUtil$a;->c:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "save temp to: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v1, Lcom/ssjj/fnsdk/core/DownUtil$a;->c:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/ssjj/fnsdk/core/DownUtil;->a(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    if-eqz v8, :cond_d6

    array-length v11, v8

    const/4 v12, 0x0

    :goto_8c
    if-lt v12, v11, :cond_8f

    goto :goto_d6

    :cond_8f
    aget-object v13, v8, v12

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d3

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_d3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v13}, Ljava/io/File;->lastModified()J

    move-result-wide v16

    sub-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    const-wide/32 v16, 0x240c8400

    cmp-long v18, v14, v16

    if-lez v18, :cond_d3

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "del downtemp: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/ssjj/fnsdk/core/DownUtil;->a(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    :cond_d3
    add-int/lit8 v12, v12, 0x1

    goto :goto_8c

    :cond_d6
    :goto_d6
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_df

    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z

    :cond_df
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v8

    iget-object v11, v1, Lcom/ssjj/fnsdk/core/DownUtil$a;->a:Ljava/lang/String;

    iget v12, v1, Lcom/ssjj/fnsdk/core/DownUtil$a;->g:I

    invoke-direct {v1, v11, v12}, Lcom/ssjj/fnsdk/core/DownUtil$a;->a(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    check-cast v12, Ljava/net/HttpURLConnection;

    const/16 v13, 0x1388

    invoke-virtual {v12, v13}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v13, "Referer"

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v13, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v13, 0x0

    cmp-long v0, v8, v13

    if-lez v0, :cond_125

    if-lez v11, :cond_125

    const-string v0, "RANGE"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v13, "bytes="

    invoke-direct {v15, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v0, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_125
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->connect()V

    iget-boolean v0, v1, Lcom/ssjj/fnsdk/core/DownUtil$a;->d:Z

    if-eqz v0, :cond_12e

    goto/16 :goto_282

    :cond_12e
    const/16 v13, 0x64

    const/4 v14, 0x2

    const/4 v15, 0x3

    if-lez v11, :cond_155

    int-to-long v5, v11

    cmp-long v20, v8, v5

    if-nez v20, :cond_155

    new-array v0, v15, [Ljava/lang/Integer;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v14

    invoke-virtual {v1, v0}, Lcom/ssjj/fnsdk/core/DownUtil$a;->publishProgress([Ljava/lang/Object;)V

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_155
    if-nez v0, :cond_282

    if-lez v11, :cond_178

    int-to-long v5, v11

    cmp-long v0, v8, v5

    if-lez v0, :cond_178

    new-instance v0, Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    const-wide/16 v8, 0x0

    :cond_178
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    long-to-int v5, v8

    const/16 v6, 0x1000

    new-array v6, v6, [B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    iget-boolean v14, v1, Lcom/ssjj/fnsdk/core/DownUtil$a;->d:Z

    if-eqz v14, :cond_18b

    goto/16 :goto_282

    :cond_18b
    new-instance v14, Ljava/io/RandomAccessFile;

    const-string v7, "rw"

    invoke-direct {v14, v10, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v14, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_195
    invoke-virtual {v0, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    add-int/2addr v5, v7

    int-to-float v8, v5

    int-to-float v9, v11

    div-float/2addr v8, v9

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float v8, v8, v9

    float-to-int v8, v8

    iget-boolean v9, v1, Lcom/ssjj/fnsdk/core/DownUtil$a;->d:Z

    if-nez v9, :cond_1f1

    if-gtz v7, :cond_1c2

    new-array v6, v15, [Ljava/lang/Integer;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v6, v7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v6, v7

    invoke-virtual {v1, v6}, Lcom/ssjj/fnsdk/core/DownUtil$a;->publishProgress([Ljava/lang/Object;)V

    goto :goto_1f6

    :cond_1c2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v9, v9, v16

    const-wide/16 v18, 0x3e8

    cmp-long v21, v9, v18

    if-ltz v21, :cond_1ec

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    new-array v9, v15, [Ljava/lang/Integer;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v9, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v10, 0x1

    aput-object v8, v9, v10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v10, 0x2

    aput-object v8, v9, v10

    invoke-virtual {v1, v9}, Lcom/ssjj/fnsdk/core/DownUtil$a;->publishProgress([Ljava/lang/Object;)V

    goto :goto_1ed

    :cond_1ec
    const/4 v10, 0x2

    :goto_1ed
    invoke-virtual {v14, v6, v2, v7}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_1f2

    :cond_1f1
    const/4 v10, 0x2

    :goto_1f2
    iget-boolean v7, v1, Lcom/ssjj/fnsdk/core/DownUtil$a;->d:Z

    if-eqz v7, :cond_195

    :goto_1f6
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    int-to-long v7, v11

    cmp-long v9, v5, v7

    if-nez v9, :cond_201

    :goto_1ff
    const/4 v3, 0x1

    goto :goto_236

    :cond_201
    if-lez v11, :cond_223

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u4e0b\u8f7d\u6821\u9a8c\u5927\u5c0f\u5931\u8d25: expect "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " but down "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/ssjj/fnsdk/core/DownUtil$a;->e:Ljava/lang/String;

    goto :goto_236

    :cond_223
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "down as succ, but getContentLength = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ssjj/fnsdk/core/DownUtil;->a(Ljava/lang/String;)V

    goto :goto_1ff

    :goto_236
    if-eqz v0, :cond_23b

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_23b
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_241
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_241} :catch_242

    goto :goto_282

    :catch_242
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "\u4e0b\u8f7d\u56fe\u7247\u5931\u8d25, \u8bf7\u68c0\u67e5Url: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/ssjj/fnsdk/core/DownUtil$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", \u662f\u5426\u6709\u6548"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ssjj/fnsdk/core/DownUtil$a;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "err: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/ssjj/fnsdk/core/DownUtil$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    const/4 v5, 0x1

    add-int/2addr v4, v5

    const/4 v5, 0x5

    if-ge v4, v5, :cond_27c

    const-wide/16 v6, 0x3e8

    :try_start_277
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_27a
    .catch Ljava/lang/InterruptedException; {:try_start_277 .. :try_end_27a} :catch_27b

    goto :goto_27c

    :catch_27b
    move-exception v0

    :cond_27c
    :goto_27c
    if-ge v4, v5, :cond_282

    iget-boolean v0, v1, Lcom/ssjj/fnsdk/core/DownUtil$a;->d:Z

    if-eqz v0, :cond_5

    :cond_282
    :goto_282
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(III)V
.end method

.method protected a(Ljava/lang/Boolean;)V
    .registers 4

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/DownUtil$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/DownUtil;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "release cache: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/DownUtil$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cache size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/ssjj/fnsdk/core/DownUtil;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/DownUtil;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/DownUtil$a;->d:Z

    if-eqz v0, :cond_30

    return-void

    :cond_30
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_88

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/DownUtil$a;->c:Ljava/lang/String;

    if-eqz p1, :cond_88

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/DownUtil$a;->c:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/DownUtil$a;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_76

    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_5a

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/DownUtil$a;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/DownUtil$a;->a(Ljava/lang/String;)V

    goto :goto_98

    :cond_5a
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "rename "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/DownUtil$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/DownUtil$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " fail!"

    goto :goto_7f

    :cond_76
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "not exists "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/DownUtil$a;->c:Ljava/lang/String;

    :goto_7f
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_95

    :cond_88
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/DownUtil$a;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/DownUtil;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_93

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/DownUtil$a;->e:Ljava/lang/String;

    goto :goto_95

    :cond_93
    const-string p1, "fail"

    :goto_95
    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/DownUtil$a;->b(Ljava/lang/String;)V

    :goto_98
    return-void
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method protected varargs a([Ljava/lang/Integer;)V
    .registers 5

    if-eqz p1, :cond_1e

    array-length v0, p1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1e

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/ssjj/fnsdk/core/DownUtil$a;->a(III)V

    :cond_1e
    return-void
.end method

.method public abstract b(Ljava/lang/String;)V
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/DownUtil$a;->a([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/DownUtil$a;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/DownUtil$a;->a([Ljava/lang/Integer;)V

    return-void
.end method
