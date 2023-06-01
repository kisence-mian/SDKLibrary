.class Lcom/ssjj/fnsdk/core/FNUpdateManager$b;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ssjj/fnsdk/core/FNUpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
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
.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Z

.field e:Ljava/lang/String;

.field f:J

.field g:Landroid/app/Activity;

.field final synthetic h:Lcom/ssjj/fnsdk/core/FNUpdateManager;


# direct methods
.method public constructor <init>(Lcom/ssjj/fnsdk/core/FNUpdateManager;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ProgressBar;)V
    .registers 8

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$b;->h:Lcom/ssjj/fnsdk/core/FNUpdateManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$b;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$b;->c:Ljava/lang/String;

    const/4 p5, 0x0

    iput-boolean p5, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$b;->d:Z

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$b;->e:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$b;->f:J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$b;->b:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$b;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$b;->g:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 25

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_4
    const/4 v6, 0x3

    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "save to: "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/ssjj/fnsdk/core/FNUpdateManager$b;->c:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/net/URL;

    iget-object v7, v1, Lcom/ssjj/fnsdk/core/FNUpdateManager$b;->b:Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    iget-object v8, v1, Lcom/ssjj/fnsdk/core/FNUpdateManager$b;->c:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_30

    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    :cond_30
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljava/net/HttpURLConnection;

    const-string v9, "HEAD"

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v9, "Connection"

    const-string v10, "close"

    invoke-virtual {v8, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x1388

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v10

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    int-to-long v11, v10

    iput-wide v11, v1, Lcom/ssjj/fnsdk/core/FNUpdateManager$b;->f:J

    iget-boolean v8, v1, Lcom/ssjj/fnsdk/core/FNUpdateManager$b;->d:Z

    if-nez v8, :cond_1d1

    if-lez v10, :cond_65

    iget-object v8, v1, Lcom/ssjj/fnsdk/core/FNUpdateManager$b;->h:Lcom/ssjj/fnsdk/core/FNUpdateManager;

    iget-object v13, v1, Lcom/ssjj/fnsdk/core/FNUpdateManager$b;->g:Landroid/app/Activity;

    invoke-static {v8}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->a(Lcom/ssjj/fnsdk/core/FNUpdateManager;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v13, v14, v11, v12}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->a(Lcom/ssjj/fnsdk/core/FNUpdateManager;Landroid/content/Context;Ljava/lang/String;J)V

    :cond_65
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v13

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v15, "exist len: "

    invoke-direct {v8, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v15, "total len: "

    invoke-direct {v8, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    const/16 v8, 0x64

    const/4 v15, 0x2

    const/16 v16, 0x1

    if-lez v10, :cond_b4

    cmp-long v17, v13, v11

    if-nez v17, :cond_b4

    new-array v0, v6, [Ljava/lang/Integer;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v16

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v15

    invoke-virtual {v1, v0}, Lcom/ssjj/fnsdk/core/FNUpdateManager$b;->publishProgress([Ljava/lang/Object;)V

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_b4
    iget-boolean v4, v1, Lcom/ssjj/fnsdk/core/FNUpdateManager$b;->d:Z

    if-nez v4, :cond_1d1

    if-lez v10, :cond_dd

    cmp-long v4, v13, v11

    if-lez v4, :cond_dd

    const-string v4, "len err, start > total"

    invoke-static {v4}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    new-instance v4, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    const-wide/16 v13, 0x0

    :cond_dd
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    invoke-virtual {v4, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v5, "Referer"

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "RANGE"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "bytes="

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "-"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    long-to-int v4, v13

    const/16 v5, 0x1000

    new-array v5, v5, [B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    iget-boolean v9, v1, Lcom/ssjj/fnsdk/core/FNUpdateManager$b;->d:Z

    if-eqz v9, :cond_120

    goto/16 :goto_1d1

    :cond_120
    new-instance v9, Ljava/io/RandomAccessFile;

    const-string v15, "rw"

    invoke-direct {v9, v7, v15}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9, v13, v14}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_12a
    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v7

    add-int/2addr v4, v7

    int-to-float v13, v4

    int-to-float v14, v10

    div-float/2addr v13, v14

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float v13, v13, v14

    float-to-int v13, v13

    iget-boolean v14, v1, Lcom/ssjj/fnsdk/core/FNUpdateManager$b;->d:Z

    if-nez v14, :cond_184

    if-gtz v7, :cond_156

    new-array v5, v6, [Ljava/lang/Integer;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v16

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v5, v7

    invoke-virtual {v1, v5}, Lcom/ssjj/fnsdk/core/FNUpdateManager$b;->publishProgress([Ljava/lang/Object;)V

    goto :goto_189

    :cond_156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v14, v14, v18

    const-wide/16 v20, 0x3e8

    cmp-long v22, v14, v20

    if-ltz v22, :cond_17f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    new-array v14, v6, [Ljava/lang/Integer;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v14, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v14, v16

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v15, 0x2

    aput-object v13, v14, v15

    invoke-virtual {v1, v14}, Lcom/ssjj/fnsdk/core/FNUpdateManager$b;->publishProgress([Ljava/lang/Object;)V

    goto :goto_180

    :cond_17f
    const/4 v15, 0x2

    :goto_180
    invoke-virtual {v9, v5, v2, v7}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_185

    :cond_184
    const/4 v15, 0x2

    :goto_185
    iget-boolean v7, v1, Lcom/ssjj/fnsdk/core/FNUpdateManager$b;->d:Z

    if-eqz v7, :cond_12a

    :goto_189
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    if-eqz v0, :cond_191

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_191
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    cmp-long v0, v4, v11

    if-nez v0, :cond_19b

    const/4 v2, 0x1

    goto :goto_1d1

    :cond_19b
    const-string v0, "\u4e0b\u8f7d\u6821\u9a8c\u5927\u5c0f\u5931\u8d25"

    iput-object v0, v1, Lcom/ssjj/fnsdk/core/FNUpdateManager$b;->e:Ljava/lang/String;
    :try_end_19f
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_19f} :catch_1bf
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_19f} :catch_1b3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_19f} :catch_1a0

    goto :goto_1d1

    :catch_1a0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ssjj/fnsdk/core/FNUpdateManager$b;->e:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    if-ge v3, v6, :cond_1cb

    :goto_1ab
    const-wide/16 v4, 0x9c4

    :try_start_1ad
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1b0
    .catch Ljava/lang/InterruptedException; {:try_start_1ad .. :try_end_1b0} :catch_1b1

    goto :goto_1cb

    :catch_1b1
    move-exception v0

    goto :goto_1cb

    :catch_1b3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ssjj/fnsdk/core/FNUpdateManager$b;->e:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    if-ge v3, v6, :cond_1cb

    goto :goto_1ab

    :catch_1bf
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ssjj/fnsdk/core/FNUpdateManager$b;->e:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    if-ge v3, v6, :cond_1cb

    goto :goto_1ab

    :cond_1cb
    :goto_1cb
    if-ge v3, v6, :cond_1d1

    iget-boolean v0, v1, Lcom/ssjj/fnsdk/core/FNUpdateManager$b;->d:Z

    if-eqz v0, :cond_4

    :cond_1d1
    :goto_1d1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/FNUpdateManager$b;->a([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/FNUpdateManager$b;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/FNUpdateManager$b;->a([Ljava/lang/Integer;)V

    return-void
.end method
