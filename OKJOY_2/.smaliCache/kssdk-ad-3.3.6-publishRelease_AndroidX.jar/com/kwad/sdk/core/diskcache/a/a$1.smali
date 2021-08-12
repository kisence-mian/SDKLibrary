.class Lcom/kwad/sdk/core/diskcache/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/diskcache/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/diskcache/a/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/diskcache/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/diskcache/a/a$1;->a:Lcom/kwad/sdk/core/diskcache/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a$1;->a:Lcom/kwad/sdk/core/diskcache/a/a;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/kwad/sdk/core/diskcache/a/a$1;->a:Lcom/kwad/sdk/core/diskcache/a/a;

    invoke-static {v1}, Lcom/kwad/sdk/core/diskcache/a/a;->a(Lcom/kwad/sdk/core/diskcache/a/a;)Ljava/io/Writer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    monitor-exit v0

    return-object v2

    :cond_e
    iget-object v1, p0, Lcom/kwad/sdk/core/diskcache/a/a$1;->a:Lcom/kwad/sdk/core/diskcache/a/a;

    invoke-static {v1}, Lcom/kwad/sdk/core/diskcache/a/a;->b(Lcom/kwad/sdk/core/diskcache/a/a;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/diskcache/a/a$1;->a:Lcom/kwad/sdk/core/diskcache/a/a;

    invoke-static {v1}, Lcom/kwad/sdk/core/diskcache/a/a;->c(Lcom/kwad/sdk/core/diskcache/a/a;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/kwad/sdk/core/diskcache/a/a$1;->a:Lcom/kwad/sdk/core/diskcache/a/a;

    invoke-static {v1}, Lcom/kwad/sdk/core/diskcache/a/a;->d(Lcom/kwad/sdk/core/diskcache/a/a;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/diskcache/a/a$1;->a:Lcom/kwad/sdk/core/diskcache/a/a;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/kwad/sdk/core/diskcache/a/a;->a(Lcom/kwad/sdk/core/diskcache/a/a;I)I

    :cond_26
    monitor-exit v0

    return-object v2

    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/core/diskcache/a/a$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
