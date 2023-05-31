.class public abstract Lcom/bytedance/sdk/openadsdk/b/b;
.super Ljava/lang/Object;
.source "LruDiskFile.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/b/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/b/b$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/b/b;Ljava/io/File;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/b/b;->b(Ljava/io/File;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .registers 6

    .prologue
    .line 40
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/k;->a(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_30

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_30

    .line 42
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 43
    if-eqz v0, :cond_10

    .line 44
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 45
    const-string v1, "TTFullScreenVideoAdImpl"

    const-string v2, "datastoreGet .........get cache video...."

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :goto_2f
    return-object v0

    :cond_30
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method private b(Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    :try_start_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/k;->b(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_f

    .line 60
    :goto_3
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/k;->a(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    .line 61
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/b/b;->a(Ljava/util/List;)V

    .line 62
    return-void

    .line 57
    :catch_f
    move-exception v0

    .line 58
    const-string v1, "LruDiskFile"

    const-string v2, "setLastModifiedNowError"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/b/b;->b(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/File;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Lcom/bytedance/sdk/openadsdk/i/b;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/b/b$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/bytedance/sdk/openadsdk/b/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/b/b;Ljava/io/File;Lcom/bytedance/sdk/openadsdk/b/b$1;)V

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/i/b;-><init>(Ljava/util/concurrent/Callable;II)V

    .line 25
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/b/b$1;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/i/b;->a()I

    move-result v3

    invoke-direct {v2, p0, v3, v0}, Lcom/bytedance/sdk/openadsdk/b/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/b/b;ILcom/bytedance/sdk/openadsdk/i/b;)V

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/i/a;->b(Lcom/bytedance/sdk/openadsdk/i/c;)V

    .line 31
    return-void
.end method

.method protected abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract a(JI)Z
.end method

.method protected abstract a(Ljava/io/File;JI)Z
.end method

.method b(Ljava/util/List;)J
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 72
    const-wide/16 v0, 0x0

    .line 73
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 74
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    add-long/2addr v0, v2

    move-wide v2, v0

    .line 75
    goto :goto_7

    .line 76
    :cond_1a
    return-wide v2
.end method
