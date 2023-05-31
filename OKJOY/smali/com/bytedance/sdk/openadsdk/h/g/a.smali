.class public Lcom/bytedance/sdk/openadsdk/h/g/a;
.super Ljava/lang/Object;
.source "FileHelper.java"


# static fields
.field static a:Landroid/content/Context;


# direct methods
.method public static a()Ljava/io/File;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 59
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/g/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/g/a;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .prologue
    .line 125
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/g/a;->c()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/g/a;->d()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 126
    :cond_12
    const/4 v0, 0x0

    .line 129
    :goto_13
    return-object v0

    .line 127
    :cond_14
    new-instance v0, Ljava/io/File;

    if-nez p0, :cond_1c

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/g/a;->a()Ljava/io/File;

    move-result-object p0

    :cond_1c
    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 128
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/g/a;->a(Ljava/io/File;)V

    goto :goto_13
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 50
    if-nez p0, :cond_8

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51
    :cond_8
    sput-object p0, Lcom/bytedance/sdk/openadsdk/h/g/a;->a:Landroid/content/Context;

    .line 52
    return-void
.end method

.method public static a(Ljava/io/File;)V
    .registers 2

    .prologue
    .line 286
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    .line 287
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 289
    :cond_9
    return-void
.end method

.method public static b()Ljava/io/File;
    .registers 3

    .prologue
    .line 91
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/g/a;->c()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/g/a;->d()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x0

    .line 94
    :goto_d
    return-object v0

    .line 92
    :cond_e
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/g/a;->a()Ljava/io/File;

    move-result-object v1

    const-string v2, "video"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 93
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/g/a;->a(Ljava/io/File;)V

    goto :goto_d
.end method

.method public static b(Landroid/content/Context;)Ljava/io/File;
    .registers 2

    .prologue
    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 81
    if-nez v0, :cond_a

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 84
    :cond_a
    return-object v0
.end method

.method public static c()Z
    .registers 2

    .prologue
    .line 297
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 298
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "mounted_ro"

    .line 299
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_18

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    .line 303
    :goto_15
    return v0

    .line 299
    :cond_16
    const/4 v0, 0x0

    goto :goto_15

    .line 300
    :catch_18
    move-exception v0

    .line 301
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/g/c;->a()Lcom/bytedance/sdk/openadsdk/h/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/h/g/c;->b()Z

    move-result v0

    goto :goto_15
.end method

.method public static d()Z
    .registers 2

    .prologue
    .line 312
    :try_start_0
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v0

    .line 315
    :goto_a
    return v0

    .line 313
    :catch_b
    move-exception v0

    .line 315
    const/4 v0, 0x0

    goto :goto_a
.end method
