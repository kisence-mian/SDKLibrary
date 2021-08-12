.class public Lcom/kwad/sdk/e;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Lcom/kwad/sdk/export/proxy/AdInstallProxy;Z)Lcom/kwad/sdk/export/proxy/AdDownloadProxy;
    .registers 4

    :try_start_0
    invoke-static {p0}, Lcom/kwad/sdk/utils/z;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/kwad/sdk/core/download/b/e;->a(Landroid/content/Context;Ljava/io/File;Lcom/ksad/download/a;Z)Lcom/kwad/sdk/export/proxy/AdDownloadProxy;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    return-object p0

    :catchall_9
    move-exception p0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a()Lcom/kwad/sdk/export/proxy/AdHttpProxy;
    .registers 1

    :try_start_0
    invoke-static {}, Lcom/kwad/sdk/core/network/a/b;->a()Lokhttp3/OkHttpClient;

    move-result-object v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/kwad/sdk/core/network/b/b;

    invoke-direct {v0}, Lcom/kwad/sdk/core/network/b/b;-><init>()V

    goto :goto_18

    :cond_c
    new-instance v0, Lcom/kwad/sdk/core/network/b/a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/network/b/a;-><init>()V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    goto :goto_18

    :catchall_12
    move-exception v0

    new-instance v0, Lcom/kwad/sdk/core/network/b/a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/network/b/a;-><init>()V

    :goto_18
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    const-string v0, ""

    :try_start_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_6} :catch_9
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_2 .. :try_end_6} :catch_7

    goto :goto_a

    :catch_7
    move-exception v1

    goto :goto_a

    :catch_9
    move-exception v1

    :goto_a
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_19

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-nez v0, :cond_29

    :cond_19
    :try_start_19
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1d} :catch_1e

    goto :goto_23

    :catch_1e
    move-exception v0

    invoke-static {v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_23
    if-eqz v0, :cond_29

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    :cond_29
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    :cond_37
    new-instance p0, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ksadsdk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public static b()Lcom/kwad/sdk/export/proxy/AdInstallProxy;
    .registers 1

    new-instance v0, Lcom/kwad/sdk/core/download/d/b;

    invoke-direct {v0}, Lcom/kwad/sdk/core/download/d/b;-><init>()V

    return-object v0
.end method
