.class public Lcom/kwad/sdk/core/diskcache/b/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/kwad/sdk/core/diskcache/b/a;


# instance fields
.field private b:Lcom/kwad/sdk/core/diskcache/a/a;

.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/kwad/sdk/core/diskcache/b/a;
    .registers 2

    sget-object v0, Lcom/kwad/sdk/core/diskcache/b/a;->a:Lcom/kwad/sdk/core/diskcache/b/a;

    if-nez v0, :cond_17

    const-class v0, Lcom/kwad/sdk/core/diskcache/b/a;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/kwad/sdk/core/diskcache/b/a;->a:Lcom/kwad/sdk/core/diskcache/b/a;

    if-nez v1, :cond_12

    new-instance v1, Lcom/kwad/sdk/core/diskcache/b/a;

    invoke-direct {v1}, Lcom/kwad/sdk/core/diskcache/b/a;-><init>()V

    sput-object v1, Lcom/kwad/sdk/core/diskcache/b/a;->a:Lcom/kwad/sdk/core/diskcache/b/a;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/kwad/sdk/core/diskcache/b/a;->a:Lcom/kwad/sdk/core/diskcache/b/a;

    return-object v0
.end method

.method private d()Z
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/b/a;->b:Lcom/kwad/sdk/core/diskcache/a/a;

    if-nez v0, :cond_d

    const-string v0, "DiskCache"

    const-string v1, "diskLruCache should be init before use"

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/core/diskcache/b/b;)V
    .registers 9

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/b/a;->b:Lcom/kwad/sdk/core/diskcache/a/a;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    iget-object v0, p1, Lcom/kwad/sdk/core/diskcache/b/b;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/kwad/sdk/core/diskcache/b/a;->c:Landroid/content/Context;

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

    iget-wide v3, p1, Lcom/kwad/sdk/core/diskcache/b/b;->c:J

    const-wide/16 v5, 0x400

    mul-long/2addr v3, v5

    mul-long/2addr v3, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/kwad/sdk/core/diskcache/a/a;->a(Ljava/io/File;IIJ)Lcom/kwad/sdk/core/diskcache/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/core/diskcache/b/a;->b:Lcom/kwad/sdk/core/diskcache/a/a;
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_27} :catch_28

    goto :goto_2c

    :catch_28
    move-exception p1

    invoke-static {p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :goto_2c
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lcom/kwad/sdk/core/diskcache/b/a;->d()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_16

    :cond_d
    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/b/a;->b:Lcom/kwad/sdk/core/diskcache/a/a;

    invoke-static {p1}, Lcom/kwad/sdk/core/diskcache/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/kwad/sdk/core/diskcache/b/c;->a(Lcom/kwad/sdk/core/diskcache/a/a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    :goto_16
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/kwad/sdk/core/diskcache/b/c$a;)Z
    .registers 6

    invoke-direct {p0}, Lcom/kwad/sdk/core/diskcache/b/a;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_27

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_27

    :cond_e
    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/b/a;->b:Lcom/kwad/sdk/core/diskcache/a/a;

    invoke-static {p1}, Lcom/kwad/sdk/core/diskcache/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v2, p2}, Lcom/kwad/sdk/core/diskcache/b/c;->a(Lcom/kwad/sdk/core/diskcache/a/a;Ljava/lang/String;Ljava/lang/String;Lcom/kwad/sdk/core/diskcache/b/c$a;)Z

    move-result p2

    if-eqz p2, :cond_27

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/diskcache/b/a;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_27

    const/4 v1, 0x1

    :cond_27
    :goto_27
    return v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/kwad/sdk/core/diskcache/b/c$a;)Z
    .registers 7

    invoke-direct {p0}, Lcom/kwad/sdk/core/diskcache/b/a;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_27

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_27

    :cond_e
    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/b/a;->b:Lcom/kwad/sdk/core/diskcache/a/a;

    invoke-static {p2}, Lcom/kwad/sdk/core/diskcache/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v2, p3}, Lcom/kwad/sdk/core/diskcache/b/c;->a(Lcom/kwad/sdk/core/diskcache/a/a;Ljava/lang/String;Ljava/lang/String;Lcom/kwad/sdk/core/diskcache/b/c$a;)Z

    move-result p1

    if-eqz p1, :cond_27

    invoke-virtual {p0, p2}, Lcom/kwad/sdk/core/diskcache/b/a;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_27

    const/4 v1, 0x1

    :cond_27
    :goto_27
    return v1
.end method

.method public b()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/b/a;->b:Lcom/kwad/sdk/core/diskcache/a/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/diskcache/a/a;->a()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    invoke-direct {p0}, Lcom/kwad/sdk/core/diskcache/b/a;->d()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1b

    :cond_d
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/kwad/sdk/core/diskcache/b/a;->b()Ljava/io/File;

    move-result-object v1

    invoke-static {p1}, Lcom/kwad/sdk/core/diskcache/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :cond_1b
    :goto_1b
    const/4 p1, 0x0

    return-object p1
.end method

.method public c()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/b/a;->b:Lcom/kwad/sdk/core/diskcache/a/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/diskcache/a/a;->c()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-static {v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :goto_a
    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .registers 3

    :try_start_0
    const-string v0, "cacheKey is not allowed empty"

    invoke-static {p1, v0}, Lcom/kwad/sdk/core/diskcache/b/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/b/a;->b:Lcom/kwad/sdk/core/diskcache/a/a;

    invoke-static {p1}, Lcom/kwad/sdk/core/diskcache/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/diskcache/a/a;->b(Ljava/lang/String;)Z

    move-result p1
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_10

    return p1

    :catch_10
    move-exception p1

    invoke-static {p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method
