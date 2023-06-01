.class Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ssjj/fnsdk/core/update/FNUpdateModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
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

.field c:Z

.field d:Ljava/lang/String;

.field e:J

.field f:Landroid/content/Context;

.field g:Lcom/ssjj/fnsdk/core/SsjjFNListener;

.field h:J

.field final synthetic i:Lcom/ssjj/fnsdk/core/update/FNUpdateModel;


# direct methods
.method public constructor <init>(Lcom/ssjj/fnsdk/core/update/FNUpdateModel;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 8

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->i:Lcom/ssjj/fnsdk/core/update/FNUpdateModel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->c:Z

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->d:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->e:J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->f:Landroid/content/Context;

    iput-object p5, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->g:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 24

    move-object/from16 v1, p0

    const-string v2, "\uff0c "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->h:J

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "\u4e0b\u8f7d\u524d\uff0c\u5df2\u7ecf\u4e0b\u8f7d\u7684\u65f6\u95f4\uff1a "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->i:Lcom/ssjj/fnsdk/core/update/FNUpdateModel;

    iget-object v4, v1, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->f:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;->getSpendTime(Landroid/content/Context;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_26
    const/4 v5, 0x1

    :try_start_27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "save to: "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/net/URL;

    iget-object v6, v1, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->a:Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    iget-object v7, v1, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->b:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_52

    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    :cond_52
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;

    const-string v8, "HEAD"

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v8, "Connection"

    const-string v9, "close"

    invoke-virtual {v7, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x1388

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v9

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    int-to-long v10, v9

    iput-wide v10, v1, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->e:J

    iget-boolean v7, v1, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->c:Z

    if-nez v7, :cond_1c3

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v12

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v14, "exist len: "

    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v14, "total len: "

    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    const/16 v7, 0x64

    const/4 v14, 0x2

    const/4 v15, 0x3

    if-lez v9, :cond_c8

    cmp-long v16, v12, v10

    if-nez v16, :cond_c8

    new-array v0, v15, [Ljava/lang/Integer;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v14

    invoke-virtual {v1, v0}, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->publishProgress([Ljava/lang/Object;)V

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_c8
    iget-boolean v14, v1, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->c:Z

    if-nez v14, :cond_1c3

    if-lez v9, :cond_f1

    cmp-long v14, v12, v10

    if-lez v14, :cond_f1

    const-string v12, "len err, start > total"

    invoke-static {v12}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    new-instance v12, Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    new-instance v12, Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->createNewFile()Z

    const-wide/16 v12, 0x0

    :cond_f1
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v14

    check-cast v14, Ljava/net/HttpURLConnection;

    invoke-virtual {v14, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v8, "Referer"

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v8, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "RANGE"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v5, "bytes="

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v0, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    long-to-int v5, v12

    const/16 v8, 0x1000

    new-array v8, v8, [B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    iget-boolean v14, v1, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->c:Z

    if-eqz v14, :cond_134

    goto/16 :goto_1c3

    :cond_134
    new-instance v14, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v14, v6, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v14, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_13e
    invoke-virtual {v0, v8}, Ljava/io/InputStream;->read([B)I

    move-result v3

    add-int/2addr v5, v3

    int-to-float v6, v5

    int-to-float v12, v9

    div-float/2addr v6, v12

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float v6, v6, v12

    float-to-int v6, v6

    iget-boolean v12, v1, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->c:Z

    if-nez v12, :cond_19e

    if-gtz v3, :cond_16d

    new-array v3, v15, [Ljava/lang/Integer;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v3, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v3, v6

    invoke-virtual {v1, v3}, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->publishProgress([Ljava/lang/Object;)V

    const/4 v6, 0x0

    goto :goto_1a4

    :cond_16d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v12, v12, v17

    const-wide/16 v19, 0x3e8

    cmp-long v21, v12, v19

    if-ltz v21, :cond_198

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    new-array v12, v15, [Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v13, 0x0

    aput-object v6, v12, v13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v13, 0x1

    aput-object v6, v12, v13

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v13, 0x2

    aput-object v6, v12, v13

    invoke-virtual {v1, v12}, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->publishProgress([Ljava/lang/Object;)V
    :try_end_197
    .catch Ljava/net/MalformedURLException; {:try_start_27 .. :try_end_197} :catch_22a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_197} :catch_1e2
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_197} :catch_1c6

    goto :goto_199

    :cond_198
    const/4 v13, 0x2

    :goto_199
    const/4 v6, 0x0

    :try_start_19a
    invoke-virtual {v14, v8, v6, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_1a0

    :cond_19e
    const/4 v6, 0x0

    const/4 v13, 0x2

    :goto_1a0
    iget-boolean v3, v1, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->c:Z

    if-eqz v3, :cond_13e

    :goto_1a4
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V

    if-eqz v0, :cond_1ac

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1ac
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    cmp-long v0, v7, v10

    if-nez v0, :cond_1b7

    const/4 v3, 0x1

    goto/16 :goto_26a

    :cond_1b7
    const-string v0, "\u4e0b\u8f7d\u6821\u9a8c\u5927\u5c0f\u5931\u8d25"

    iput-object v0, v1, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->d:Ljava/lang/String;
    :try_end_1bb
    .catch Ljava/net/MalformedURLException; {:try_start_19a .. :try_end_1bb} :catch_1c1
    .catch Ljava/io/IOException; {:try_start_19a .. :try_end_1bb} :catch_1bf
    .catch Ljava/lang/Exception; {:try_start_19a .. :try_end_1bb} :catch_1bd

    goto/16 :goto_269

    :catch_1bd
    move-exception v0

    goto :goto_1c8

    :catch_1bf
    move-exception v0

    goto :goto_1e4

    :catch_1c1
    move-exception v0

    goto :goto_22c

    :cond_1c3
    :goto_1c3
    const/4 v6, 0x0

    goto/16 :goto_269

    :catch_1c6
    move-exception v0

    const/4 v6, 0x0

    :goto_1c8
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\u4e0b\u8f7d\u5931\u8d25(3003)"

    iput-object v3, v1, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_253

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->d:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_245

    :catch_1e2
    move-exception v0

    const/4 v6, 0x0

    :goto_1e4
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\u4e0b\u8f7d\u5931\u8d25(3002)\uff0c\u6587\u4ef6\u8bfb\u5199\u5f02\u5e38"

    iput-object v3, v1, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_253

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "permission"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_21e

    const-string v3, "denied"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_21e

    iget-object v0, v1, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/util/ApkUtil;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "\u4e0b\u8f7d\u5931\u8d25\uff0c\u6ca1\u6709\u5f00\u542f{\u5b58\u50a8}\u6743\u9650\u3002\u6743\u9650\u8bbe\u7f6e\u8def\u5f84\uff1a\u8bbe\u7f6e->\u5e94\u7528->"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "->\u6743\u9650->\u5b58\u50a8"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_24d

    :cond_21e
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->d:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_245

    :catch_22a
    move-exception v0

    const/4 v6, 0x0

    :goto_22c
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\u4e0b\u8f7d\u5931\u8d25(3001)\uff0c\u4e0b\u8f7d\u94fe\u63a5\u8bf7\u6c42\u5f02\u5e38"

    iput-object v3, v1, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_253

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->d:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_245
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    :goto_24d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->d:Ljava/lang/String;

    :cond_253
    const/4 v3, 0x1

    add-int/2addr v4, v3

    const/4 v3, 0x6

    if-ge v4, v3, :cond_25f

    const-wide/16 v7, 0x9c4

    :try_start_25a
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_25d
    .catch Ljava/lang/InterruptedException; {:try_start_25a .. :try_end_25d} :catch_25e

    goto :goto_25f

    :catch_25e
    move-exception v0

    :cond_25f
    :goto_25f
    if-ge v4, v3, :cond_269

    iget-boolean v0, v1, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->c:Z

    if-eqz v0, :cond_266

    goto :goto_269

    :cond_266
    const/4 v3, 0x0

    goto/16 :goto_26

    :cond_269
    :goto_269
    const/4 v3, 0x0

    :goto_26a
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .registers 12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->h:J

    sub-long/2addr v0, v2

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->i:Lcom/ssjj/fnsdk/core/update/FNUpdateModel;

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;->a(Lcom/ssjj/fnsdk/core/update/FNUpdateModel;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->i:Lcom/ssjj/fnsdk/core/update/FNUpdateModel;

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;->b(Lcom/ssjj/fnsdk/core/update/FNUpdateModel;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-interface {p1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "\u4e0b\u8f7d\u540e\uff0c\u5df2\u7ecf\u4e0b\u8f7d\u7684\u65f6\u95f4\uff1a "

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v8, 0x3e8

    div-long/2addr v0, v8

    add-long/2addr v6, v0

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->i:Lcom/ssjj/fnsdk/core/update/FNUpdateModel;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;->b(Lcom/ssjj/fnsdk/core/update/FNUpdateModel;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->g:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-nez p1, :cond_4c

    return-void

    :cond_4c
    iget-boolean p1, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->c:Z

    const-string v0, ""

    const-string v1, "updatetype"

    if-eqz p1, :cond_74

    new-instance p1, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->i:Lcom/ssjj/fnsdk/core/update/FNUpdateModel;

    iget v3, v3, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;->a:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->g:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    const/4 v2, 0x5

    invoke-interface {v1, v2, v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    return-void

    :cond_74
    new-instance p1, Ljava/io/File;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->b:Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->e:J

    cmp-long v2, v6, v4

    if-lez v2, :cond_8c

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->e:J

    cmp-long p1, v4, v6

    if-nez p1, :cond_8c

    const/4 v3, 0x1

    :cond_8c
    const-string p1, "downurl"

    if-eqz v3, :cond_bc

    new-instance v2, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->i:Lcom/ssjj/fnsdk/core/update/FNUpdateModel;

    iget v4, v4, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;->a:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "tempfile"

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->a:Ljava/lang/String;

    invoke-virtual {v2, p1, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->g:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    const/4 v1, 0x6

    invoke-interface {p1, v1, v0, v2}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    goto :goto_ef

    :cond_bc
    new-instance v0, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->i:Lcom/ssjj/fnsdk/core/update/FNUpdateModel;

    iget v3, v3, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;->a:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->g:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-interface {p1, v2, v1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :goto_ef
    return-void
.end method

.method protected varargs a([Ljava/lang/Integer;)V
    .registers 7

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->c:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
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

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->g:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz v2, :cond_68

    new-instance v2, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->i:Lcom/ssjj/fnsdk/core/update/FNUpdateModel;

    iget v4, v4, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;->a:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "updatetype"

    invoke-virtual {v2, v4, v3}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "progress"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->putObj(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "cursize"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->putObj(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "totalsize"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->putObj(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "downurl"

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->a:Ljava/lang/String;

    invoke-virtual {v2, p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v4, p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->g:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    const/4 v0, 0x4

    const-string v1, ""

    invoke-interface {p1, v0, v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_68
    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->a([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .registers 5

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->g:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz v0, :cond_2a

    new-instance v0, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->i:Lcom/ssjj/fnsdk/core/update/FNUpdateModel;

    iget v2, v2, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "updatetype"

    invoke-virtual {v0, v2, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->g:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    const/4 v2, 0x5

    const-string v3, ""

    invoke-interface {v1, v2, v3, v0}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_2a
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->a([Ljava/lang/Integer;)V

    return-void
.end method
