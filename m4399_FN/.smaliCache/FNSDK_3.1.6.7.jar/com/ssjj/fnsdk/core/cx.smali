.class Lcom/ssjj/fnsdk/core/cx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/cx;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 18

    move-object/from16 v1, p0

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_6
    const/4 v7, 0x3

    :try_start_7
    new-instance v0, Ljava/net/URL;

    iget-object v8, v1, Lcom/ssjj/fnsdk/core/cx;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {v8}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->h(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/ssjj/fnsdk/core/cx;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {v8}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->i(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, v1, Lcom/ssjj/fnsdk/core/cx;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {v9}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->j(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    iget-object v9, v1, Lcom/ssjj/fnsdk/core/cx;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {v9}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->k(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v1, Lcom/ssjj/fnsdk/core/cx;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {v10}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->l(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eq v9, v2, :cond_50

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_50

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_50

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    :cond_50
    if-eq v10, v2, :cond_6a

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6a

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_6a

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_6a
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    iget-object v10, v1, Lcom/ssjj/fnsdk/core/cx;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {v10}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->k(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->a()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    iget-object v9, v1, Lcom/ssjj/fnsdk/core/cx;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {v9}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->l(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->b()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v8, Ljava/io/File;

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->b()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    new-instance v8, Ljava/io/File;

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->b()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v9

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    check-cast v10, Ljava/net/HttpURLConnection;

    iget-object v11, v1, Lcom/ssjj/fnsdk/core/cx;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    const-wide/16 v12, 0x0

    invoke-static {v11, v12, v13}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->b(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;J)V

    iget-object v11, v1, Lcom/ssjj/fnsdk/core/cx;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    int-to-long v12, v9

    invoke-static {v11, v12, v13}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->c(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;J)V

    new-instance v11, Ljava/io/RandomAccessFile;

    const-string v14, "rw"

    invoke-direct {v11, v8, v14}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v14

    const/4 v8, 0x2

    cmp-long v16, v14, v12

    if-nez v16, :cond_e0

    iget-object v0, v1, Lcom/ssjj/fnsdk/core/cx;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->m(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_e0
    invoke-virtual {v11, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v12, 0x1388

    invoke-virtual {v10, v12}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v12, "Referer"

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v12, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "RANGE"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "bytes="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v0, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 v10, 0x2000

    new-array v10, v10, [B

    :cond_117
    invoke-virtual {v0, v10}, Ljava/io/InputStream;->read([B)I

    move-result v12

    int-to-long v5, v12

    add-long/2addr v14, v5

    iget-object v5, v1, Lcom/ssjj/fnsdk/core/cx;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {v5, v14, v15}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->b(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;J)V

    iget-object v5, v1, Lcom/ssjj/fnsdk/core/cx;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    long-to-float v6, v14

    int-to-float v13, v9

    div-float/2addr v6, v13

    const/high16 v13, 0x42c80000    # 100.0f

    mul-float v6, v6, v13

    float-to-int v6, v6

    invoke-static {v5, v6}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;I)V

    iget-object v5, v1, Lcom/ssjj/fnsdk/core/cx;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {v5}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->m(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    if-gtz v12, :cond_145

    iget-object v5, v1, Lcom/ssjj/fnsdk/core/cx;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {v5}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->m(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_150

    :cond_145
    invoke-virtual {v11, v10, v3, v12}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-object v5, v1, Lcom/ssjj/fnsdk/core/cx;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {v5}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->n(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Z

    move-result v5

    if-eqz v5, :cond_117

    :goto_150
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V

    if-eqz v0, :cond_174

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_158
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_158} :catch_16c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_158} :catch_166
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_158} :catch_159

    goto :goto_174

    :catch_159
    move-exception v0

    add-int/lit8 v4, v4, 0x1

    if-ge v4, v7, :cond_172

    :goto_15e
    const-wide/16 v5, 0x3e8

    :try_start_160
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_163
    .catch Ljava/lang/InterruptedException; {:try_start_160 .. :try_end_163} :catch_164

    goto :goto_172

    :catch_164
    move-exception v0

    goto :goto_172

    :catch_166
    move-exception v0

    add-int/lit8 v4, v4, 0x1

    if-ge v4, v7, :cond_172

    goto :goto_15e

    :catch_16c
    move-exception v0

    add-int/lit8 v4, v4, 0x1

    if-ge v4, v7, :cond_172

    goto :goto_15e

    :cond_172
    :goto_172
    if-lt v4, v7, :cond_6

    :cond_174
    :goto_174
    return-void
.end method
