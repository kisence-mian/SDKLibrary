.class public final Lrx/subscriptions/CompositeSubscription;
.super Ljava/lang/Object;
.source "CompositeSubscription.java"

# interfaces
.implements Lrx/Subscription;


# instance fields
.field private subscriptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lrx/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field private volatile unsubscribed:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public varargs constructor <init>([Lrx/Subscription;)V
    .registers 4
    .param p1, "subscriptions"    # [Lrx/Subscription;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lrx/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    .line 47
    return-void
.end method

.method private static unsubscribeFromAll(Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lrx/Subscription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "subscriptions":Ljava/util/Collection;, "Ljava/util/Collection<Lrx/Subscription;>;"
    if-nez p0, :cond_3

    .line 195
    :goto_2
    return-void

    .line 183
    :cond_3
    const/4 v1, 0x0

    .line 184
    .local v1, "es":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/Subscription;

    .line 186
    .local v3, "s":Lrx/Subscription;
    :try_start_14
    invoke-interface {v3}, Lrx/Subscription;->unsubscribe()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_17} :catch_18

    goto :goto_8

    .line 187
    :catch_18
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Throwable;
    if-nez v1, :cond_20

    .line 189
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "es":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .restart local v1    # "es":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :cond_20
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 194
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v3    # "s":Lrx/Subscription;
    :cond_24
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfAny(Ljava/util/List;)V

    goto :goto_2
.end method


# virtual methods
.method public add(Lrx/Subscription;)V
    .registers 4
    .param p1, "s"    # Lrx/Subscription;

    .prologue
    .line 64
    invoke-interface {p1}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 80
    :goto_6
    return-void

    .line 67
    :cond_7
    iget-boolean v0, p0, Lrx/subscriptions/CompositeSubscription;->unsubscribed:Z

    if-nez v0, :cond_27

    .line 68
    monitor-enter p0

    .line 69
    :try_start_c
    iget-boolean v0, p0, Lrx/subscriptions/CompositeSubscription;->unsubscribed:Z

    if-nez v0, :cond_26

    .line 70
    iget-object v0, p0, Lrx/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    if-nez v0, :cond_1c

    .line 71
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lrx/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    .line 73
    :cond_1c
    iget-object v0, p0, Lrx/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    monitor-exit p0

    goto :goto_6

    .line 76
    :catchall_23
    move-exception v0

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_23

    throw v0

    :cond_26
    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_23

    .line 79
    :cond_27
    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    goto :goto_6
.end method

.method public varargs addAll([Lrx/Subscription;)V
    .registers 8
    .param p1, "subscriptions"    # [Lrx/Subscription;

    .prologue
    .line 92
    iget-boolean v4, p0, Lrx/subscriptions/CompositeSubscription;->unsubscribed:Z

    if-nez v4, :cond_2d

    .line 93
    monitor-enter p0

    .line 94
    :try_start_5
    iget-boolean v4, p0, Lrx/subscriptions/CompositeSubscription;->unsubscribed:Z

    if-nez v4, :cond_2c

    .line 95
    iget-object v4, p0, Lrx/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    if-nez v4, :cond_15

    .line 96
    new-instance v4, Ljava/util/HashSet;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    iput-object v4, p0, Lrx/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    .line 99
    :cond_15
    move-object v0, p1

    .local v0, "arr$":[Lrx/Subscription;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_18
    if-ge v1, v2, :cond_2a

    aget-object v3, v0, v1

    .line 100
    .local v3, "s":Lrx/Subscription;
    invoke-interface {v3}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v4

    if-nez v4, :cond_27

    .line 101
    iget-object v4, p0, Lrx/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 104
    .end local v3    # "s":Lrx/Subscription;
    :cond_2a
    monitor-exit p0

    .line 112
    :cond_2b
    return-void

    .line 106
    .end local v0    # "arr$":[Lrx/Subscription;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :cond_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_3a

    .line 109
    :cond_2d
    move-object v0, p1

    .restart local v0    # "arr$":[Lrx/Subscription;
    array-length v2, v0

    .restart local v2    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_30
    if-ge v1, v2, :cond_2b

    aget-object v3, v0, v1

    .line 110
    .restart local v3    # "s":Lrx/Subscription;
    invoke-interface {v3}, Lrx/Subscription;->unsubscribe()V

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 106
    .end local v0    # "arr$":[Lrx/Subscription;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "s":Lrx/Subscription;
    :catchall_3a
    move-exception v4

    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v4
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 143
    iget-boolean v1, p0, Lrx/subscriptions/CompositeSubscription;->unsubscribed:Z

    if-nez v1, :cond_f

    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "unsubscribe":Ljava/util/Collection;, "Ljava/util/Collection<Lrx/Subscription;>;"
    monitor-enter p0

    .line 146
    :try_start_6
    iget-boolean v1, p0, Lrx/subscriptions/CompositeSubscription;->unsubscribed:Z

    if-nez v1, :cond_e

    iget-object v1, p0, Lrx/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    if-nez v1, :cond_10

    .line 147
    :cond_e
    monitor-exit p0

    .line 155
    .end local v0    # "unsubscribe":Ljava/util/Collection;, "Ljava/util/Collection<Lrx/Subscription;>;"
    :cond_f
    :goto_f
    return-void

    .line 149
    .restart local v0    # "unsubscribe":Ljava/util/Collection;, "Ljava/util/Collection<Lrx/Subscription;>;"
    :cond_10
    iget-object v0, p0, Lrx/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    .line 150
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    .line 152
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_1a

    .line 153
    invoke-static {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribeFromAll(Ljava/util/Collection;)V

    goto :goto_f

    .line 152
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public hasSubscriptions()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 204
    iget-boolean v1, p0, Lrx/subscriptions/CompositeSubscription;->unsubscribed:Z

    if-nez v1, :cond_18

    .line 205
    monitor-enter p0

    .line 206
    :try_start_6
    iget-boolean v1, p0, Lrx/subscriptions/CompositeSubscription;->unsubscribed:Z

    if-nez v1, :cond_17

    iget-object v1, p0, Lrx/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lrx/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    const/4 v0, 0x1

    :cond_17
    monitor-exit p0

    .line 209
    :cond_18
    return v0

    .line 207
    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public isUnsubscribed()Z
    .registers 2

    .prologue
    .line 51
    iget-boolean v0, p0, Lrx/subscriptions/CompositeSubscription;->unsubscribed:Z

    return v0
.end method

.method public remove(Lrx/Subscription;)V
    .registers 4
    .param p1, "s"    # Lrx/Subscription;

    .prologue
    .line 122
    iget-boolean v1, p0, Lrx/subscriptions/CompositeSubscription;->unsubscribed:Z

    if-nez v1, :cond_f

    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "unsubscribe":Z
    monitor-enter p0

    .line 125
    :try_start_6
    iget-boolean v1, p0, Lrx/subscriptions/CompositeSubscription;->unsubscribed:Z

    if-nez v1, :cond_e

    iget-object v1, p0, Lrx/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    if-nez v1, :cond_10

    .line 126
    :cond_e
    monitor-exit p0

    .line 135
    .end local v0    # "unsubscribe":Z
    :cond_f
    :goto_f
    return-void

    .line 128
    .restart local v0    # "unsubscribe":Z
    :cond_10
    iget-object v1, p0, Lrx/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 129
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_1d

    .line 130
    if-eqz v0, :cond_f

    .line 132
    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    goto :goto_f

    .line 129
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public unsubscribe()V
    .registers 3

    .prologue
    .line 164
    iget-boolean v1, p0, Lrx/subscriptions/CompositeSubscription;->unsubscribed:Z

    if-nez v1, :cond_b

    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "unsubscribe":Ljava/util/Collection;, "Ljava/util/Collection<Lrx/Subscription;>;"
    monitor-enter p0

    .line 167
    :try_start_6
    iget-boolean v1, p0, Lrx/subscriptions/CompositeSubscription;->unsubscribed:Z

    if-eqz v1, :cond_c

    .line 168
    monitor-exit p0

    .line 177
    .end local v0    # "unsubscribe":Ljava/util/Collection;, "Ljava/util/Collection<Lrx/Subscription;>;"
    :cond_b
    :goto_b
    return-void

    .line 170
    .restart local v0    # "unsubscribe":Ljava/util/Collection;, "Ljava/util/Collection<Lrx/Subscription;>;"
    :cond_c
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/subscriptions/CompositeSubscription;->unsubscribed:Z

    .line 171
    iget-object v0, p0, Lrx/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    .line 172
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    .line 173
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_19

    .line 175
    invoke-static {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribeFromAll(Ljava/util/Collection;)V

    goto :goto_b

    .line 173
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method
