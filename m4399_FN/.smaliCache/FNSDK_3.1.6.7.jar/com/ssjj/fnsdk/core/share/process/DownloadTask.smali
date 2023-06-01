.class public Lcom/ssjj/fnsdk/core/share/process/DownloadTask;
.super Landroid/os/AsyncTask;


# annotations
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
.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Z

.field e:Ljava/lang/String;

.field f:J

.field g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/process/DownloadTask;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/process/DownloadTask;->c:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ssjj/fnsdk/core/share/process/DownloadTask;->d:Z

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/process/DownloadTask;->e:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ssjj/fnsdk/core/share/process/DownloadTask;->f:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/share/process/DownloadTask;->b:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/share/process/DownloadTask;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/process/DownloadTask;->g:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 26

    move-object/from16 v1, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_9
    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v10, "url: "

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v1, Lcom/ssjj/fnsdk/core/share/process/DownloadTask;->b:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v10, "save to: "

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v1, Lcom/ssjj/fnsdk/core/share/process/DownloadTask;->c:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    const-string v0, "start..."

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/net/URL;

    iget-object v10, v1, Lcom/ssjj/fnsdk/core/share/process/DownloadTask;->b:Ljava/lang/String;

    invoke-direct {v0, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/io/File;

    iget-object v11, v1, Lcom/ssjj/fnsdk/core/share/process/DownloadTask;->c:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_4d

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :cond_4d
    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11

    if-eqz v11, :cond_5c

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_5c

    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    :cond_5c
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_65

    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z

    :cond_65
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v11

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    check-cast v13, Ljava/net/HttpURLConnection;

    const/16 v14, 0x1388

    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v14, "Referer"

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v14, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "User-Agent"

    const-string v14, "FNSDK3.1.6.7"

    invoke-virtual {v13, v0, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    iget-boolean v14, v1, Lcom/ssjj/fnsdk/core/share/process/DownloadTask;->d:Z

    if-eqz v14, :cond_91

    goto/16 :goto_21b

    :cond_91
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "exist len: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "total len: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    const/16 v14, 0x64

    const/4 v15, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x1

    move-object/from16 v16, v10

    if-lez v0, :cond_df

    int-to-long v9, v0

    cmp-long v17, v11, v9

    if-nez v17, :cond_df

    new-array v7, v7, [Ljava/lang/Integer;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v15

    invoke-virtual {v1, v7}, Lcom/ssjj/fnsdk/core/share/process/DownloadTask;->publishProgress([Ljava/lang/Object;)V

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_df
    iget-boolean v9, v1, Lcom/ssjj/fnsdk/core/share/process/DownloadTask;->d:Z

    if-nez v9, :cond_21b

    if-lez v0, :cond_109

    int-to-long v9, v0

    cmp-long v17, v11, v9

    if-lez v17, :cond_109

    const-string v9, "len err, start > total"

    invoke-static {v9}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    new-instance v9, Ljava/io/File;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    const-wide/16 v11, 0x0

    :cond_109
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    long-to-int v10, v11

    const/16 v15, 0x1000

    new-array v15, v15, [B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    iget-boolean v8, v1, Lcom/ssjj/fnsdk/core/share/process/DownloadTask;->d:Z

    if-eqz v8, :cond_11c

    goto/16 :goto_21b

    :cond_11c
    new-instance v8, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    move-object/from16 v14, v16

    invoke-direct {v8, v14, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_128
    invoke-virtual {v9, v15}, Ljava/io/InputStream;->read([B)I

    move-result v4

    add-int/2addr v10, v4

    int-to-float v11, v10

    int-to-float v12, v0

    div-float/2addr v11, v12

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float v11, v11, v12

    float-to-int v11, v11

    iget-boolean v12, v1, Lcom/ssjj/fnsdk/core/share/process/DownloadTask;->d:Z

    if-nez v12, :cond_194

    if-gtz v4, :cond_15b

    new-array v4, v7, [Ljava/lang/Integer;

    const/16 v12, 0x64

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v11, 0x0

    aput-object v7, v4, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v10, 0x1

    aput-object v7, v4, v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v10, 0x2

    aput-object v7, v4, v10

    invoke-virtual {v1, v4}, Lcom/ssjj/fnsdk/core/share/process/DownloadTask;->publishProgress([Ljava/lang/Object;)V

    const/4 v11, 0x0

    const/16 v16, 0x1

    goto :goto_19f

    :cond_15b
    const/16 v12, 0x64

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v18

    const-wide/16 v22, 0x3e8

    cmp-long v14, v20, v22

    if-ltz v14, :cond_18b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    new-array v14, v7, [Ljava/lang/Integer;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v16, 0x0

    aput-object v11, v14, v16

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v16, 0x1

    aput-object v11, v14, v16

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v17, 0x2

    aput-object v11, v14, v17

    invoke-virtual {v1, v14}, Lcom/ssjj/fnsdk/core/share/process/DownloadTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_18f

    :cond_18b
    const/16 v16, 0x1

    const/16 v17, 0x2

    :goto_18f
    const/4 v11, 0x0

    invoke-virtual {v8, v15, v11, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_19b

    :cond_194
    const/4 v11, 0x0

    const/16 v12, 0x64

    const/16 v16, 0x1

    const/16 v17, 0x2

    :goto_19b
    iget-boolean v4, v1, Lcom/ssjj/fnsdk/core/share/process/DownloadTask;->d:Z

    if-eqz v4, :cond_128

    :goto_19f
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v14

    int-to-long v11, v0

    cmp-long v0, v14, v11

    if-nez v0, :cond_1aa

    const/4 v6, 0x1

    goto :goto_1ae

    :cond_1aa
    const-string v0, "\u4e0b\u8f7d\u6821\u9a8c\u5927\u5c0f\u5931\u8d25"

    iput-object v0, v1, Lcom/ssjj/fnsdk/core/share/process/DownloadTask;->e:Ljava/lang/String;

    :goto_1ae
    if-eqz v9, :cond_1b3

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    :cond_1b3
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "download "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "ms"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V
    :try_end_1d6
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_1d6} :catch_1fe
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1d6} :catch_1e9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1d6} :catch_1d7

    goto :goto_21b

    :catch_1d7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ssjj/fnsdk/core/share/process/DownloadTask;->e:Ljava/lang/String;

    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x5

    if-ge v5, v4, :cond_1fc

    const-wide/16 v7, 0xbb8

    :try_start_1e5
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1e8
    .catch Ljava/lang/InterruptedException; {:try_start_1e5 .. :try_end_1e8} :catch_1fb

    goto :goto_1fc

    :catch_1e9
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ssjj/fnsdk/core/share/process/DownloadTask;->e:Ljava/lang/String;

    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x5

    if-ge v5, v4, :cond_1fc

    const-wide/16 v7, 0xbb8

    :try_start_1f7
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1fa
    .catch Ljava/lang/InterruptedException; {:try_start_1f7 .. :try_end_1fa} :catch_1fb

    goto :goto_1fc

    :catch_1fb
    move-exception v0

    :cond_1fc
    :goto_1fc
    const/4 v4, 0x5

    goto :goto_211

    :catch_1fe
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ssjj/fnsdk/core/share/process/DownloadTask;->e:Ljava/lang/String;

    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x5

    if-ge v5, v4, :cond_211

    const-wide/16 v7, 0xbb8

    :try_start_20c
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_20f
    .catch Ljava/lang/InterruptedException; {:try_start_20c .. :try_end_20f} :catch_210

    goto :goto_211

    :catch_210
    move-exception v0

    :cond_211
    :goto_211
    if-ge v5, v4, :cond_21b

    iget-boolean v0, v1, Lcom/ssjj/fnsdk/core/share/process/DownloadTask;->d:Z

    if-eqz v0, :cond_218

    goto :goto_21b

    :cond_218
    const/4 v4, 0x0

    goto/16 :goto_9

    :cond_21b
    :goto_21b
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .registers 2

    return-void
.end method

.method protected varargs a([Ljava/lang/Integer;)V
    .registers 2

    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/share/process/DownloadTask;->a([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/share/process/DownloadTask;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/share/process/DownloadTask;->a([Ljava/lang/Integer;)V

    return-void
.end method
