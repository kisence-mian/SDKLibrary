.class public final Lcom/anythink/core/common/d/ab;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/common/d/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/anythink/core/common/d/b;
    .registers 5

    monitor-enter p0

    .line 29
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/common/d/ab;->c:Ljava/util/List;

    if-eqz v0, :cond_33

    .line 30
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/common/d/b;

    .line 31
    invoke-virtual {v1}, Lcom/anythink/core/common/d/b;->e()I

    move-result v2

    if-gtz v2, :cond_32

    .line 33
    iget-object v0, p0, Lcom/anythink/core/common/d/ab;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v2, p0, Lcom/anythink/core/common/d/ab;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-lt v0, v2, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v3, 0x0

    :goto_2d
    invoke-virtual {v1, v3}, Lcom/anythink/core/common/d/b;->a(Z)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_36

    .line 34
    monitor-exit p0

    return-object v1

    .line 36
    :cond_32
    goto :goto_9

    .line 38
    :cond_33
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 28
    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/anythink/core/common/d/b;)V
    .registers 3

    monitor-enter p0

    .line 58
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/common/d/ab;->c:Ljava/util/List;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_10

    .line 59
    iget-object v0, p0, Lcom/anythink/core/common/d/ab;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 61
    :cond_10
    monitor-exit p0

    return-void

    .line 57
    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Lcom/anythink/core/common/d/d;I)V
    .registers 10

    .line 70
    monitor-enter p0

    .line 71
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    iput p2, p0, Lcom/anythink/core/common/d/ab;->a:I

    .line 73
    invoke-virtual {p1}, Lcom/anythink/core/common/d/d;->F()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/d/ab;->b:Ljava/lang/String;

    .line 74
    iget-object v1, p0, Lcom/anythink/core/common/d/ab;->c:Ljava/util/List;

    if-eqz v1, :cond_5d

    .line 76
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/common/d/b;

    .line 78
    invoke-virtual {v2}, Lcom/anythink/core/common/d/b;->a()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-virtual {v2}, Lcom/anythink/core/common/d/b;->f()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/anythink/core/common/d/b;->c()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_5c

    invoke-virtual {v2}, Lcom/anythink/core/common/d/b;->i()Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 80
    invoke-virtual {v2}, Lcom/anythink/core/common/d/b;->g()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v3

    .line 82
    invoke-virtual {v3, p1}, Lcom/anythink/core/api/ATBaseAdAdapter;->setTrackingInfo(Lcom/anythink/core/common/d/d;)V

    .line 84
    invoke-virtual {v2}, Lcom/anythink/core/common/d/b;->h()Lcom/anythink/core/api/BaseAd;

    move-result-object v4

    .line 85
    if-eqz v4, :cond_4f

    .line 86
    invoke-virtual {v4, p1}, Lcom/anythink/core/api/BaseAd;->setTrackingInfo(Lcom/anythink/core/common/d/d;)V

    .line 89
    :cond_4f
    invoke-virtual {v3}, Lcom/anythink/core/api/ATBaseAdAdapter;->getNetworkPlacementId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/anythink/core/common/d/d;->c(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v2, p2}, Lcom/anythink/core/common/d/b;->b(I)V

    .line 91
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_5c
    goto :goto_16

    .line 96
    :cond_5d
    iput-object v0, p0, Lcom/anythink/core/common/d/ab;->c:Ljava/util/List;

    .line 97
    monitor-exit p0

    return-void

    :catchall_61
    move-exception p1

    monitor-exit p0
    :try_end_63
    .catchall {:try_start_1 .. :try_end_63} :catchall_61

    throw p1
.end method

.method public final declared-synchronized a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/d/b;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 23
    :try_start_1
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_1 .. :try_end_2} :catchall_a

    .line 24
    :try_start_2
    iput-object p1, p0, Lcom/anythink/core/common/d/ab;->c:Ljava/util/List;

    .line 25
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception p1

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    :try_start_9
    throw p1
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_a

    .line 22
    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()V
    .registers 2

    monitor-enter p0

    .line 46
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/common/d/ab;->c:Ljava/util/List;

    if-eqz v0, :cond_b

    .line 47
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/core/common/d/ab;->c:Ljava/util/List;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 50
    :cond_b
    monitor-exit p0

    return-void

    .line 45
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Z
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/anythink/core/common/d/ab;->c:Ljava/util/List;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 102
    const/4 v0, 0x1

    return v0

    .line 104
    :cond_c
    const/4 v0, 0x0

    return v0
.end method
