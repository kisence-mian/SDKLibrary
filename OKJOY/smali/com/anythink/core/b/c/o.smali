.class public final Lcom/anythink/core/b/c/o;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Lcom/anythink/core/c/c;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/anythink/core/b/c/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/anythink/core/b/c/b;Lcom/anythink/core/c/c;Lcom/anythink/core/c/c$b;)V
    .registers 12

    .prologue
    .line 70
    monitor-enter p0

    .line 71
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 72
    iget v0, p3, Lcom/anythink/core/c/c$b;->a:I

    iput v0, p0, Lcom/anythink/core/b/c/o;->a:I

    .line 73
    invoke-virtual {p1}, Lcom/anythink/core/b/c/b;->E()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/b/c/o;->b:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/anythink/core/b/c/o;->c:Lcom/anythink/core/c/c;

    .line 75
    iget-object v0, p0, Lcom/anythink/core/b/c/o;->d:Ljava/util/List;

    if-eqz v0, :cond_58

    .line 77
    iget-object v0, p0, Lcom/anythink/core/b/c/o;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1c
    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/b/c/a;

    .line 79
    invoke-virtual {v0}, Lcom/anythink/core/b/c/a;->a()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-virtual {v0}, Lcom/anythink/core/b/c/a;->g()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/anythink/core/b/c/a;->c()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_1c

    invoke-virtual {v0}, Lcom/anythink/core/b/c/a;->j()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 81
    invoke-virtual {v0}, Lcom/anythink/core/b/c/a;->h()Lcom/anythink/core/b/a/b;

    move-result-object v3

    .line 83
    invoke-virtual {v3, p1}, Lcom/anythink/core/b/a/b;->setTrackingInfo(Lcom/anythink/core/b/c/b;)V

    .line 84
    iget v3, p0, Lcom/anythink/core/b/c/o;->a:I

    invoke-virtual {v0, v3}, Lcom/anythink/core/b/c/a;->b(I)V

    .line 85
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 91
    :catchall_55
    move-exception v0

    monitor-exit p0
    :try_end_57
    .catchall {:try_start_1 .. :try_end_57} :catchall_55

    throw v0

    .line 90
    :cond_58
    :try_start_58
    iput-object v1, p0, Lcom/anythink/core/b/c/o;->d:Ljava/util/List;

    .line 91
    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_55

    return-void
.end method

.method private declared-synchronized d()V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 97
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/b/c/o;->d:Ljava/util/List;

    if-eqz v0, :cond_56

    .line 98
    iget-object v0, p0, Lcom/anythink/core/b/c/o;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_e
    if-ltz v1, :cond_56

    .line 99
    iget-object v0, p0, Lcom/anythink/core/b/c/o;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/b/c/a;

    .line 100
    invoke-virtual {v0}, Lcom/anythink/core/b/c/a;->i()Lcom/anythink/core/b/c/e;

    move-result-object v2

    .line 101
    invoke-virtual {v0}, Lcom/anythink/core/b/c/a;->h()Lcom/anythink/core/b/a/b;

    move-result-object v3

    .line 102
    invoke-virtual {v0}, Lcom/anythink/core/b/c/a;->e()I

    move-result v0

    .line 104
    if-eqz v2, :cond_3d

    if-nez v0, :cond_3d

    .line 105
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    new-instance v3, Lcom/anythink/core/b/c/o$1;

    invoke-direct {v3, p0, v2}, Lcom/anythink/core/b/c/o$1;-><init>(Lcom/anythink/core/b/c/o;Lcom/anythink/core/b/c/e;)V

    invoke-virtual {v0, v3}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 111
    iget-object v0, p0, Lcom/anythink/core/b/c/o;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 98
    :cond_39
    :goto_39
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_e

    .line 114
    :cond_3d
    if-eqz v3, :cond_39

    if-nez v0, :cond_39

    .line 115
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    new-instance v2, Lcom/anythink/core/b/c/o$2;

    invoke-direct {v2, p0, v3}, Lcom/anythink/core/b/c/o$2;-><init>(Lcom/anythink/core/b/c/o;Lcom/anythink/core/b/a/b;)V

    invoke-virtual {v0, v2}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 121
    iget-object v0, p0, Lcom/anythink/core/b/c/o;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_52
    .catchall {:try_start_1 .. :try_end_52} :catchall_53

    goto :goto_39

    .line 97
    :catchall_53
    move-exception v0

    monitor-exit p0

    throw v0

    .line 126
    :cond_56
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/anythink/core/b/c/a;
    .registers 4

    .prologue
    .line 29
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/b/c/o;->d:Ljava/util/List;

    if-eqz v0, :cond_35

    .line 30
    iget-object v0, p0, Lcom/anythink/core/b/c/o;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/b/c/a;

    .line 31
    invoke-virtual {v0}, Lcom/anythink/core/b/c/a;->e()I

    move-result v2

    if-gtz v2, :cond_b

    .line 33
    iget-object v1, p0, Lcom/anythink/core/b/c/o;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lcom/anythink/core/b/c/o;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_33

    const/4 v1, 0x1

    :goto_2e
    invoke-virtual {v0, v1}, Lcom/anythink/core/b/c/a;->a(Z)V
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_37

    .line 38
    :goto_31
    monitor-exit p0

    return-object v0

    .line 33
    :cond_33
    const/4 v1, 0x0

    goto :goto_2e

    .line 38
    :cond_35
    const/4 v0, 0x0

    goto :goto_31

    .line 29
    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/anythink/core/b/c/a;)V
    .registers 3

    .prologue
    .line 19
    monitor-enter p0

    :try_start_1
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_1 .. :try_end_2} :catchall_18

    .line 20
    :try_start_2
    iget-object v0, p0, Lcom/anythink/core/b/c/o;->d:Ljava/util/List;

    if-nez v0, :cond_d

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/b/c/o;->d:Ljava/util/List;

    .line 23
    :cond_d
    iget-object v0, p0, Lcom/anythink/core/b/c/o;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    :try_start_17
    throw v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_18

    .line 19
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Lcom/anythink/core/b/c/a;
    .registers 4

    .prologue
    .line 42
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/b/c/o;->d:Ljava/util/List;

    if-eqz v0, :cond_1f

    .line 43
    iget-object v0, p0, Lcom/anythink/core/b/c/o;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/b/c/a;

    .line 44
    invoke-virtual {v0}, Lcom/anythink/core/b/c/a;->e()I
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_21

    move-result v2

    if-lez v2, :cond_b

    .line 49
    :goto_1d
    monitor-exit p0

    return-object v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1d

    .line 42
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .registers 2

    .prologue
    .line 56
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/b/c/o;->d:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 57
    iget-object v0, p0, Lcom/anythink/core/b/c/o;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 59
    :cond_a
    monitor-exit p0

    return-void

    .line 56
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
