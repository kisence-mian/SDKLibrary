.class public Lcom/kwad/sdk/core/diskcache/b/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static b:Lcom/kwad/sdk/core/diskcache/b/a;


# instance fields
.field private a:Lcom/kwad/sdk/core/diskcache/a/a;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lcom/kwad/sdk/core/diskcache/b/a;
    .registers 2

    sget-object v0, Lcom/kwad/sdk/core/diskcache/b/a;->b:Lcom/kwad/sdk/core/diskcache/b/a;

    if-nez v0, :cond_13

    const-class v1, Lcom/kwad/sdk/core/diskcache/b/a;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/kwad/sdk/core/diskcache/b/a;->b:Lcom/kwad/sdk/core/diskcache/b/a;

    if-nez v0, :cond_12

    new-instance v0, Lcom/kwad/sdk/core/diskcache/b/a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/diskcache/b/a;-><init>()V

    sput-object v0, Lcom/kwad/sdk/core/diskcache/b/a;->b:Lcom/kwad/sdk/core/diskcache/b/a;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/kwad/sdk/core/diskcache/b/a;->b:Lcom/kwad/sdk/core/diskcache/b/a;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private d()Z
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/b/a;->a:Lcom/kwad/sdk/core/diskcache/a/a;

    if-nez v0, :cond_d

    const-string v0, "DiskCache"

    const-string v1, "diskLruCache should be init before use"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method


# virtual methods
.method public a()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/b/a;->a:Lcom/kwad/sdk/core/diskcache/a/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/diskcache/a/a;->a()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5
.end method

.method public a(Lcom/kwad/sdk/core/diskcache/b/b;)V
    .registers 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const-wide/16 v6, 0x400

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/b/a;->a:Lcom/kwad/sdk/core/diskcache/a/a;

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    :try_start_7
    iget-object v0, p1, Lcom/kwad/sdk/core/diskcache/b/b;->a:Landroid/content/Context;

    iget-object v0, p1, Lcom/kwad/sdk/core/diskcache/b/b;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p1, Lcom/kwad/sdk/core/diskcache/b/b;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_16
    iget-object v0, p1, Lcom/kwad/sdk/core/diskcache/b/b;->d:Ljava/io/File;

    iget v1, p1, Lcom/kwad/sdk/core/diskcache/b/b;->b:I

    const/4 v2, 0x1

    iget-wide v4, p1, Lcom/kwad/sdk/core/diskcache/b/b;->c:J

    mul-long/2addr v4, v6

    mul-long/2addr v4, v6

    invoke-static {v0, v1, v2, v4, v5}, Lcom/kwad/sdk/core/diskcache/a/a;->a(Ljava/io/File;IIJ)Lcom/kwad/sdk/core/diskcache/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/diskcache/b/a;->a:Lcom/kwad/sdk/core/diskcache/a/a;
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_25} :catch_26

    goto :goto_6

    :catch_26
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lcom/kwad/sdk/core/diskcache/b/a;->d()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/b/a;->a:Lcom/kwad/sdk/core/diskcache/a/a;

    invoke-static {p1}, Lcom/kwad/sdk/core/diskcache/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/kwad/sdk/core/diskcache/b/c;->a(Lcom/kwad/sdk/core/diskcache/a/a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method

.method public b()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/b/a;->a:Lcom/kwad/sdk/core/diskcache/a/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/diskcache/a/a;->c()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/kwad/sdk/core/diskcache/b/a;->d()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    iget-object v1, p0, Lcom/kwad/sdk/core/diskcache/b/a;->a:Lcom/kwad/sdk/core/diskcache/a/a;

    invoke-static {p1}, Lcom/kwad/sdk/core/diskcache/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/kwad/sdk/core/diskcache/b/c;->b(Lcom/kwad/sdk/core/diskcache/a/a;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/diskcache/b/a;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v0, 0x1

    goto :goto_d
.end method

.method public c(Ljava/lang/String;)Ljava/io/File;
    .registers 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/kwad/sdk/core/diskcache/b/a;->d()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/kwad/sdk/core/diskcache/b/a;->b()Ljava/io/File;

    move-result-object v1

    invoke-static {p1}, Lcom/kwad/sdk/core/diskcache/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_d
.end method
