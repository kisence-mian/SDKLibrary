.class public abstract Lcom/kwad/sdk/core/videocache/q/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/core/videocache/q/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/videocache/q/e$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/videocache/q/e;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private a(Ljava/util/List;)J
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

    const-wide/16 v0, 0x0

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

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    add-long/2addr v0, v2

    move-wide v2, v0

    goto :goto_7

    :cond_1a
    return-wide v2
.end method

.method static synthetic a(Lcom/kwad/sdk/core/videocache/q/e;Ljava/io/File;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/videocache/q/e;->b(Ljava/io/File;)V

    return-void
.end method

.method private b(Ljava/io/File;)V
    .registers 3

    invoke-static {p1}, Lcom/kwad/sdk/core/videocache/q/d;->e(Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/videocache/q/d;->a(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kwad/sdk/core/videocache/q/e;->b(Ljava/util/List;)V

    return-void
.end method

.method private b(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/videocache/q/e;->a(Ljava/util/List;)J

    move-result-wide v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v8, v0

    move v1, v2

    move-wide v2, v8

    :cond_f
    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/kwad/sdk/core/videocache/q/e;->a(Ljava/io/File;JI)Z

    move-result v5

    if-nez v5, :cond_f

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_4b

    add-int/lit8 v1, v1, -0x1

    sub-long/2addr v2, v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cache file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " is deleted because it exceeds cache limit"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/videocache/j;->c(Ljava/lang/String;)V

    goto :goto_f

    :cond_4b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error deleting file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " for trimming cache"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/videocache/j;->b(Ljava/lang/String;)V

    goto :goto_f

    :cond_68
    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/q/e;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kwad/sdk/core/videocache/q/e$a;

    invoke-direct {v1, p0, p1}, Lcom/kwad/sdk/core/videocache/q/e$a;-><init>(Lcom/kwad/sdk/core/videocache/q/e;Ljava/io/File;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method protected abstract a(Ljava/io/File;JI)Z
.end method
