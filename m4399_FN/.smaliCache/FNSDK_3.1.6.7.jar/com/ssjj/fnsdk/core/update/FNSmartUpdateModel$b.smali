.class Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
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
.field a:Lcom/ssjj/fnsdk/core/update/PatchInfo;

.field b:Z

.field c:Ljava/lang/String;

.field d:J

.field e:Landroid/content/Context;

.field f:Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ssjj/fnsdk/core/update/PatchInfo;Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;)V
    .registers 5

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;->b:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;->a:Lcom/ssjj/fnsdk/core/update/PatchInfo;

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;->e:Landroid/content/Context;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;->f:Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 21

    move-object/from16 v1, p0

    const-string v2, "\uff0c "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;->d:J

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_11
    const/4 v7, 0x1

    :try_start_12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "save to: "

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;->a:Lcom/ssjj/fnsdk/core/update/PatchInfo;

    iget-object v8, v8, Lcom/ssjj/fnsdk/core/update/PatchInfo;->patchSavePath:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/net/URL;

    iget-object v8, v1, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;->a:Lcom/ssjj/fnsdk/core/update/PatchInfo;

    iget-object v8, v8, Lcom/ssjj/fnsdk/core/update/PatchInfo;->patchUrl:Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    iget-object v9, v1, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;->a:Lcom/ssjj/fnsdk/core/update/PatchInfo;

    iget-object v9, v9, Lcom/ssjj/fnsdk/core/update/PatchInfo;->patchSavePath:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_43

    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    :cond_43
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljava/net/HttpURLConnection;

    const-string v10, "HEAD"

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v10, "Connection"

    const-string v11, "close"

    invoke-virtual {v9, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0x1388

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v11

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    iget-boolean v9, v1, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;->b:Z

    if-eqz v9, :cond_6a

    goto/16 :goto_20f

    :cond_6a
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v12

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v14, "exist len: "

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v14, "total len: "

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    if-lez v11, :cond_a5

    int-to-long v14, v11

    cmp-long v9, v12, v14

    if-nez v9, :cond_a5

    new-array v0, v7, [Ljava/lang/Integer;

    aput-object v4, v0, v3

    invoke-virtual {v1, v0}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;->publishProgress([Ljava/lang/Object;)V

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_a5
    iget-boolean v9, v1, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;->b:Z

    if-nez v9, :cond_20f

    if-lez v11, :cond_c6

    int-to-long v14, v11

    cmp-long v9, v12, v14

    if-lez v9, :cond_c6

    const-string v9, "len err, start > total"

    invoke-static {v9}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    const-wide/16 v12, 0x0

    :cond_c6
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljava/net/HttpURLConnection;

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v10, "Referer"

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "RANGE"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v14, "bytes="

    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v14, "-"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v0, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 v9, 0x1000

    new-array v9, v9, [B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iget-boolean v10, v1, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;->b:Z

    if-eqz v10, :cond_108

    goto/16 :goto_20f

    :cond_108
    new-instance v10, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v10, v8, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v3, 0x0

    :cond_113
    invoke-virtual {v0, v9}, Ljava/io/InputStream;->read([B)I

    move-result v8

    add-int/2addr v3, v8

    iget-boolean v12, v1, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;->b:Z

    if-nez v12, :cond_149

    if-gtz v8, :cond_128

    new-array v3, v7, [Ljava/lang/Integer;

    const/4 v8, 0x0

    aput-object v4, v3, v8

    invoke-virtual {v1, v3}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;->publishProgress([Ljava/lang/Object;)V

    const/4 v12, 0x0

    goto :goto_14e

    :cond_128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v14

    const-wide/16 v16, 0x3e8

    cmp-long v18, v12, v16

    if-ltz v18, :cond_144

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    new-array v12, v7, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v13, 0x0

    aput-object v3, v12, v13

    invoke-virtual {v1, v12}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;->publishProgress([Ljava/lang/Object;)V
    :try_end_143
    .catch Ljava/net/MalformedURLException; {:try_start_12 .. :try_end_143} :catch_1de
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_143} :catch_196
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_143} :catch_16c

    const/4 v3, 0x0

    :cond_144
    const/4 v12, 0x0

    :try_start_145
    invoke-virtual {v10, v9, v12, v8}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_14a

    :cond_149
    const/4 v12, 0x0

    :goto_14a
    iget-boolean v8, v1, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;->b:Z

    if-eqz v8, :cond_113

    :goto_14e
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    int-to-long v13, v11

    cmp-long v3, v8, v13

    if-nez v3, :cond_159

    const/4 v5, 0x1

    goto :goto_15d

    :cond_159
    const-string v3, "\u4e0b\u8f7d\u6821\u9a8c\u5927\u5c0f\u5931\u8d25"

    iput-object v3, v1, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;->c:Ljava/lang/String;

    :goto_15d
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_163
    .catch Ljava/net/MalformedURLException; {:try_start_145 .. :try_end_163} :catch_169
    .catch Ljava/io/IOException; {:try_start_145 .. :try_end_163} :catch_167
    .catch Ljava/lang/Exception; {:try_start_145 .. :try_end_163} :catch_165

    goto/16 :goto_20f

    :catch_165
    move-exception v0

    goto :goto_16e

    :catch_167
    move-exception v0

    goto :goto_198

    :catch_169
    move-exception v0

    goto/16 :goto_1e0

    :catch_16c
    move-exception v0

    const/4 v12, 0x0

    :goto_16e
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\u4e0b\u8f7d\u5931\u8d25(3003)"

    iput-object v3, v1, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1fa

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;->c:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_187
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    :goto_18f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;->c:Ljava/lang/String;

    goto :goto_1fa

    :catch_196
    move-exception v0

    const/4 v12, 0x0

    :goto_198
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\u4e0b\u8f7d\u5931\u8d25(3002)\uff0c\u6587\u4ef6\u8bfb\u5199\u5f02\u5e38"

    iput-object v3, v1, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1fa

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "permission"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1d2

    const-string v3, "denied"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1d2

    iget-object v0, v1, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/util/ApkUtil;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "\u4e0b\u8f7d\u5931\u8d25\uff0c\u6ca1\u6709\u5f00\u542f{\u5b58\u50a8}\u6743\u9650\u3002\u6743\u9650\u8bbe\u7f6e\u8def\u5f84\uff1a\u8bbe\u7f6e->\u5e94\u7528->"

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "->\u6743\u9650->\u5b58\u50a8"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_18f

    :cond_1d2
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;->c:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_187

    :catch_1de
    move-exception v0

    const/4 v12, 0x0

    :goto_1e0
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\u4e0b\u8f7d\u5931\u8d25(3001)\uff0c\u4e0b\u8f7d\u94fe\u63a5\u8bf7\u6c42\u5f02\u5e38"

    iput-object v3, v1, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1fa

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;->c:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_187

    :cond_1fa
    :goto_1fa
    add-int/2addr v6, v7

    const/4 v3, 0x6

    if-ge v6, v3, :cond_205

    const-wide/16 v7, 0x9c4

    :try_start_200
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_203
    .catch Ljava/lang/InterruptedException; {:try_start_200 .. :try_end_203} :catch_204

    goto :goto_205

    :catch_204
    move-exception v0

    :cond_205
    :goto_205
    if-ge v6, v3, :cond_20f

    iget-boolean v0, v1, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;->b:Z

    if-eqz v0, :cond_20c

    goto :goto_20f

    :cond_20c
    const/4 v3, 0x0

    goto/16 :goto_11

    :cond_20f
    :goto_20f
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .registers 7

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;->f:Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;

    if-nez p1, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;->b:Z

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;->a()V

    return-void

    :cond_d
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;->a:Lcom/ssjj/fnsdk/core/update/PatchInfo;

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/update/PatchInfo;->patchSavePath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;->a:Lcom/ssjj/fnsdk/core/update/PatchInfo;

    iget-wide v0, v0, Lcom/ssjj/fnsdk/core/update/PatchInfo;->patchSize:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2e

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;->a:Lcom/ssjj/fnsdk/core/update/PatchInfo;

    iget-wide v2, p1, Lcom/ssjj/fnsdk/core/update/PatchInfo;->patchSize:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_2e

    const/4 p1, 0x1

    goto :goto_2f

    :cond_2e
    const/4 p1, 0x0

    :goto_2f
    if-eqz p1, :cond_40

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;->d:J

    sub-long/2addr v0, v2

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;->f:Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;->a:Lcom/ssjj/fnsdk/core/update/PatchInfo;

    invoke-virtual {p1, v2, v0, v1}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;->a(Lcom/ssjj/fnsdk/core/update/PatchInfo;J)V

    goto :goto_49

    :cond_40
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;->f:Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;->a:Lcom/ssjj/fnsdk/core/update/PatchInfo;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;->a(Lcom/ssjj/fnsdk/core/update/PatchInfo;Ljava/lang/String;)V

    :goto_49
    return-void
.end method

.method protected varargs a([Ljava/lang/Integer;)V
    .registers 5

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;->b:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;->f:Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;->a(J)V

    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;->a([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .registers 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;->f:Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;->a()V

    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;->a([Ljava/lang/Integer;)V

    return-void
.end method
