.class public Lcom/kwad/sdk/core/report/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/report/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/kwad/sdk/core/report/d;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/kwad/sdk/core/report/i<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/report/j;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()J
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/kwad/sdk/core/report/j;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const-string v1, "MemReportCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_22

    int-to-long v0, v0

    monitor-exit p0

    return-wide v0

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/kwad/sdk/core/report/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/kwad/sdk/core/report/j;->a:Ljava/util/Map;

    iget-object v1, p1, Lcom/kwad/sdk/core/report/d;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/kwad/sdk/core/report/d;

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/report/j;->a(Lcom/kwad/sdk/core/report/d;)V

    return-void
.end method

.method public declared-synchronized a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/report/d;

    iget-object v1, p0, Lcom/kwad/sdk/core/report/j;->a:Ljava/util/Map;

    iget-object v0, v0, Lcom/kwad/sdk/core/report/d;->a:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1b

    goto :goto_5

    :cond_19
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/kwad/sdk/core/report/j;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/kwad/sdk/core/report/j;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2c

    goto :goto_16

    :cond_2a
    monitor-exit p0

    return-object v0

    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
