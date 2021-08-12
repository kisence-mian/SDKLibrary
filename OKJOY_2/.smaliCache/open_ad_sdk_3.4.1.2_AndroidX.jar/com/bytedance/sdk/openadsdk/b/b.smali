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

    .line 18
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/b/b;->b(Ljava/io/File;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .registers 5

    .line 40
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/l;->a(Ljava/io/File;)Ljava/util/List;

    move-result-object p2

    .line 41
    if-eqz p2, :cond_31

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_31

    .line 42
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_10
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 43
    if-eqz v0, :cond_30

    .line 44
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 45
    const-string p1, "TTFullScreenVideoAdImpl"

    const-string p2, "datastoreGet .........get cache video...."

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-object v0

    .line 49
    :cond_30
    goto :goto_10

    .line 51
    :cond_31
    const/4 p1, 0x0

    return-object p1
.end method

.method private b(Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    :try_start_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/l;->b(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 59
    goto :goto_c

    .line 57
    :catchall_4
    move-exception v0

    .line 58
    const-string v1, "LruDiskFile"

    const-string v2, "setLastModifiedNowError"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    :goto_c
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/l;->a(Ljava/io/File;)Ljava/util/List;

    move-result-object p1

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LruDiskFile touchInBackground files.size() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "splashLoadAd"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/b/b;->a(Ljava/util/List;)V

    .line 63
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/b/b;->b(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    new-instance v0, Lcom/bytedance/sdk/openadsdk/j/f;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/b/b$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/bytedance/sdk/openadsdk/b/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/b/b;Ljava/io/File;Lcom/bytedance/sdk/openadsdk/b/b$1;)V

    const/4 p1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/j/f;-><init>(Ljava/util/concurrent/Callable;II)V

    .line 25
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v1, Lcom/bytedance/sdk/openadsdk/b/b$1;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/j/f;->a()I

    move-result v2

    invoke-direct {v1, p0, v2, v0}, Lcom/bytedance/sdk/openadsdk/b/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/b/b;ILcom/bytedance/sdk/openadsdk/j/f;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 31
    return-void
.end method

.method protected abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
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
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)J"
        }
    .end annotation

    .line 73
    nop

    .line 74
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 75
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 76
    goto :goto_7

    .line 77
    :cond_19
    return-wide v0
.end method
