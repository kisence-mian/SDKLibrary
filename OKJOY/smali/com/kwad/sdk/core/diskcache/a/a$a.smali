.class Lcom/kwad/sdk/core/diskcache/a/a$a;
.super Ljava/lang/Object;
.source ""

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
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/diskcache/a/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/diskcache/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/diskcache/a/a$a;->a:Lcom/kwad/sdk/core/diskcache/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/core/diskcache/a/a$a;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/kwad/sdk/core/diskcache/a/a$a;->a:Lcom/kwad/sdk/core/diskcache/a/a;

    monitor-enter v1

    :try_start_4
    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a$a;->a:Lcom/kwad/sdk/core/diskcache/a/a;

    invoke-static {v0}, Lcom/kwad/sdk/core/diskcache/a/a;->a(Lcom/kwad/sdk/core/diskcache/a/a;)Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_e

    monitor-exit v1

    :goto_d
    return-object v3

    :cond_e
    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a$a;->a:Lcom/kwad/sdk/core/diskcache/a/a;

    invoke-static {v0}, Lcom/kwad/sdk/core/diskcache/a/a;->b(Lcom/kwad/sdk/core/diskcache/a/a;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a$a;->a:Lcom/kwad/sdk/core/diskcache/a/a;

    invoke-static {v0}, Lcom/kwad/sdk/core/diskcache/a/a;->e(Lcom/kwad/sdk/core/diskcache/a/a;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a$a;->a:Lcom/kwad/sdk/core/diskcache/a/a;

    invoke-static {v0}, Lcom/kwad/sdk/core/diskcache/a/a;->f(Lcom/kwad/sdk/core/diskcache/a/a;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a$a;->a:Lcom/kwad/sdk/core/diskcache/a/a;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/kwad/sdk/core/diskcache/a/a;->a(Lcom/kwad/sdk/core/diskcache/a/a;I)I

    :cond_26
    monitor-exit v1

    goto :goto_d

    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_28

    throw v0
.end method
