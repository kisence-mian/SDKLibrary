.class Lcom/kwad/sdk/reward/c/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/utils/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/reward/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/reward/c/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/reward/c/a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/reward/c/a$1;->a:Lcom/kwad/sdk/reward/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/reward/c/a$1;->a:Lcom/kwad/sdk/reward/c/a;

    invoke-static {v0}, Lcom/kwad/sdk/reward/c/a;->a(Lcom/kwad/sdk/reward/c/a;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/kwad/sdk/reward/c/a$1;->a:Lcom/kwad/sdk/reward/c/a;

    invoke-static {v1}, Lcom/kwad/sdk/reward/c/a;->a(Lcom/kwad/sdk/reward/c/a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kwad/sdk/utils/g$a;

    invoke-interface {v2}, Lcom/kwad/sdk/utils/g$a;->a()V

    goto :goto_11

    :cond_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public b()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/reward/c/a$1;->a:Lcom/kwad/sdk/reward/c/a;

    invoke-static {v0}, Lcom/kwad/sdk/reward/c/a;->a(Lcom/kwad/sdk/reward/c/a;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/kwad/sdk/reward/c/a$1;->a:Lcom/kwad/sdk/reward/c/a;

    invoke-static {v1}, Lcom/kwad/sdk/reward/c/a;->a(Lcom/kwad/sdk/reward/c/a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kwad/sdk/utils/g$a;

    invoke-interface {v2}, Lcom/kwad/sdk/utils/g$a;->b()V

    goto :goto_11

    :cond_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw v1
.end method
