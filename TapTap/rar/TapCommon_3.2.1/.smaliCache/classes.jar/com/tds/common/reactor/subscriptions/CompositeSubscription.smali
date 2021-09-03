.class public final Lcom/tds/common/reactor/subscriptions/CompositeSubscription;
.super Ljava/lang/Object;
.source "CompositeSubscription.java"

# interfaces
.implements Lcom/tds/common/reactor/Subscription;


# instance fields
.field private subscriptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/tds/common/reactor/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field private volatile unsubscribed:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public varargs constructor <init>([Lcom/tds/common/reactor/Subscription;)V
    .registers 4
    .param p1, "subscriptions"    # [Lcom/tds/common/reactor/Subscription;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    .line 47
    return-void
.end method

.method private static unsubscribeFromAll(Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/tds/common/reactor/Subscription;",
            ">;)V"
        }
    .end annotation

    .line 180
    .local p0, "subscriptions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/tds/common/reactor/Subscription;>;"
    if-nez p0, :cond_3

    .line 181
    return-void

    .line 183
    :cond_3
    const/4 v0, 0x0

    .line 184
    .local v0, "es":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tds/common/reactor/Subscription;

    .line 186
    .local v2, "s":Lcom/tds/common/reactor/Subscription;
    :try_start_14
    invoke-interface {v2}, Lcom/tds/common/reactor/Subscription;->unsubscribe()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    .line 192
    goto :goto_24

    .line 187
    :catchall_18
    move-exception v3

    .line 188
    .local v3, "e":Ljava/lang/Throwable;
    if-nez v0, :cond_21

    .line 189
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    .line 191
    :cond_21
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    .end local v2    # "s":Lcom/tds/common/reactor/Subscription;
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_24
    goto :goto_8

    .line 194
    :cond_25
    invoke-static {v0}, Lcom/tds/common/reactor/exceptions/Exceptions;->throwIfAny(Ljava/util/List;)V

    .line 195
    return-void
.end method


# virtual methods
.method public add(Lcom/tds/common/reactor/Subscription;)V
    .registers 4
    .param p1, "s"    # Lcom/tds/common/reactor/Subscription;

    .line 64
    invoke-interface {p1}, Lcom/tds/common/reactor/Subscription;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 65
    return-void

    .line 67
    :cond_7
    iget-boolean v0, p0, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;->unsubscribed:Z

    if-nez v0, :cond_28

    .line 68
    monitor-enter p0

    .line 69
    :try_start_c
    iget-boolean v0, p0, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;->unsubscribed:Z

    if-nez v0, :cond_23

    .line 70
    iget-object v0, p0, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    if-nez v0, :cond_1c

    .line 71
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    .line 73
    :cond_1c
    iget-object v0, p0, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    monitor-exit p0

    return-void

    .line 76
    :cond_23
    monitor-exit p0

    goto :goto_28

    :catchall_25
    move-exception v0

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_25

    throw v0

    .line 79
    :cond_28
    :goto_28
    invoke-interface {p1}, Lcom/tds/common/reactor/Subscription;->unsubscribe()V

    .line 80
    return-void
.end method

.method public varargs addAll([Lcom/tds/common/reactor/Subscription;)V
    .registers 6
    .param p1, "subscriptions"    # [Lcom/tds/common/reactor/Subscription;

    .line 92
    iget-boolean v0, p0, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;->unsubscribed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_30

    .line 93
    monitor-enter p0

    .line 94
    :try_start_6
    iget-boolean v0, p0, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;->unsubscribed:Z

    if-nez v0, :cond_2b

    .line 95
    iget-object v0, p0, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    if-nez v0, :cond_16

    .line 96
    new-instance v0, Ljava/util/HashSet;

    array-length v2, p1

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    .line 99
    :cond_16
    array-length v0, p1

    :goto_17
    if-ge v1, v0, :cond_29

    aget-object v2, p1, v1

    .line 100
    .local v2, "s":Lcom/tds/common/reactor/Subscription;
    invoke-interface {v2}, Lcom/tds/common/reactor/Subscription;->isUnsubscribed()Z

    move-result v3

    if-nez v3, :cond_26

    .line 101
    iget-object v3, p0, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    .end local v2    # "s":Lcom/tds/common/reactor/Subscription;
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 104
    :cond_29
    monitor-exit p0

    return-void

    .line 106
    :cond_2b
    monitor-exit p0

    goto :goto_30

    :catchall_2d
    move-exception v0

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_6 .. :try_end_2f} :catchall_2d

    throw v0

    .line 109
    :cond_30
    :goto_30
    array-length v0, p1

    :goto_31
    if-ge v1, v0, :cond_3b

    aget-object v2, p1, v1

    .line 110
    .restart local v2    # "s":Lcom/tds/common/reactor/Subscription;
    invoke-interface {v2}, Lcom/tds/common/reactor/Subscription;->unsubscribe()V

    .line 109
    .end local v2    # "s":Lcom/tds/common/reactor/Subscription;
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 112
    :cond_3b
    return-void
.end method

.method public clear()V
    .registers 3

    .line 143
    iget-boolean v0, p0, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;->unsubscribed:Z

    if-nez v0, :cond_1c

    .line 145
    monitor-enter p0

    .line 146
    :try_start_5
    iget-boolean v0, p0, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;->unsubscribed:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    if-nez v0, :cond_e

    goto :goto_17

    .line 149
    :cond_e
    nop

    .line 150
    .local v0, "unsubscribe":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/tds/common/reactor/Subscription;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    .line 152
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_19

    .line 153
    invoke-static {v0}, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;->unsubscribeFromAll(Ljava/util/Collection;)V

    goto :goto_1c

    .line 147
    .end local v0    # "unsubscribe":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/tds/common/reactor/Subscription;>;"
    :cond_17
    :goto_17
    :try_start_17
    monitor-exit p0

    return-void

    .line 152
    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_19

    throw v0

    .line 155
    :cond_1c
    :goto_1c
    return-void
.end method

.method public hasSubscriptions()Z
    .registers 3

    .line 204
    iget-boolean v0, p0, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;->unsubscribed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    .line 205
    monitor-enter p0

    .line 206
    :try_start_6
    iget-boolean v0, p0, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;->unsubscribed:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v1, 0x1

    :cond_15
    monitor-exit p0

    return v1

    .line 207
    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_17

    throw v0

    .line 209
    :cond_1a
    return v1
.end method

.method public isUnsubscribed()Z
    .registers 2

    .line 51
    iget-boolean v0, p0, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;->unsubscribed:Z

    return v0
.end method

.method public remove(Lcom/tds/common/reactor/Subscription;)V
    .registers 3
    .param p1, "s"    # Lcom/tds/common/reactor/Subscription;

    .line 122
    iget-boolean v0, p0, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;->unsubscribed:Z

    if-nez v0, :cond_1e

    .line 124
    monitor-enter p0

    .line 125
    :try_start_5
    iget-boolean v0, p0, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;->unsubscribed:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    if-nez v0, :cond_e

    goto :goto_19

    .line 128
    :cond_e
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 129
    .local v0, "unsubscribe":Z
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_1b

    .line 130
    if-eqz v0, :cond_1e

    .line 132
    invoke-interface {p1}, Lcom/tds/common/reactor/Subscription;->unsubscribe()V

    goto :goto_1e

    .line 126
    .end local v0    # "unsubscribe":Z
    :cond_19
    :goto_19
    :try_start_19
    monitor-exit p0

    return-void

    .line 129
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_1b

    throw v0

    .line 135
    :cond_1e
    :goto_1e
    return-void
.end method

.method public unsubscribe()V
    .registers 3

    .line 164
    iget-boolean v0, p0, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;->unsubscribed:Z

    if-nez v0, :cond_1b

    .line 166
    monitor-enter p0

    .line 167
    :try_start_5
    iget-boolean v0, p0, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;->unsubscribed:Z

    if-eqz v0, :cond_b

    .line 168
    monitor-exit p0

    return-void

    .line 170
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;->unsubscribed:Z

    .line 171
    iget-object v0, p0, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    .line 172
    .local v0, "unsubscribe":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/tds/common/reactor/Subscription;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    .line 173
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_18

    .line 175
    invoke-static {v0}, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;->unsubscribeFromAll(Ljava/util/Collection;)V

    goto :goto_1b

    .line 173
    .end local v0    # "unsubscribe":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/tds/common/reactor/Subscription;>;"
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0

    .line 177
    :cond_1b
    :goto_1b
    return-void
.end method
