.class public final Lcom/tds/common/reactor/util/SubscriptionList;
.super Ljava/lang/Object;
.source "SubscriptionList.java"

# interfaces
.implements Lcom/tds/common/reactor/Subscription;


# instance fields
.field private subscriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tds/common/reactor/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field private volatile unsubscribed:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/tds/common/reactor/Subscription;)V
    .registers 3
    .param p1, "s"    # Lcom/tds/common/reactor/Subscription;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tds/common/reactor/util/SubscriptionList;->subscriptions:Ljava/util/List;

    .line 52
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public varargs constructor <init>([Lcom/tds/common/reactor/Subscription;)V
    .registers 4
    .param p1, "subscriptions"    # [Lcom/tds/common/reactor/Subscription;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/tds/common/reactor/util/SubscriptionList;->subscriptions:Ljava/util/List;

    .line 44
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

    .line 127
    .local p0, "subscriptions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/tds/common/reactor/Subscription;>;"
    if-nez p0, :cond_3

    .line 128
    return-void

    .line 130
    :cond_3
    const/4 v0, 0x0

    .line 131
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

    .line 133
    .local v2, "s":Lcom/tds/common/reactor/Subscription;
    :try_start_14
    invoke-interface {v2}, Lcom/tds/common/reactor/Subscription;->unsubscribe()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    .line 139
    goto :goto_24

    .line 134
    :catchall_18
    move-exception v3

    .line 135
    .local v3, "e":Ljava/lang/Throwable;
    if-nez v0, :cond_21

    .line 136
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    .line 138
    :cond_21
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    .end local v2    # "s":Lcom/tds/common/reactor/Subscription;
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_24
    goto :goto_8

    .line 141
    :cond_25
    return-void
.end method


# virtual methods
.method public add(Lcom/tds/common/reactor/Subscription;)V
    .registers 4
    .param p1, "s"    # Lcom/tds/common/reactor/Subscription;

    .line 69
    invoke-interface {p1}, Lcom/tds/common/reactor/Subscription;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 70
    return-void

    .line 72
    :cond_7
    iget-boolean v0, p0, Lcom/tds/common/reactor/util/SubscriptionList;->unsubscribed:Z

    if-nez v0, :cond_26

    .line 73
    monitor-enter p0

    .line 74
    :try_start_c
    iget-boolean v0, p0, Lcom/tds/common/reactor/util/SubscriptionList;->unsubscribed:Z

    if-nez v0, :cond_21

    .line 75
    iget-object v0, p0, Lcom/tds/common/reactor/util/SubscriptionList;->subscriptions:Ljava/util/List;

    .line 76
    .local v0, "subs":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/reactor/Subscription;>;"
    if-nez v0, :cond_1c

    .line 77
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    move-object v0, v1

    .line 78
    iput-object v0, p0, Lcom/tds/common/reactor/util/SubscriptionList;->subscriptions:Ljava/util/List;

    .line 80
    :cond_1c
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    monitor-exit p0

    return-void

    .line 83
    .end local v0    # "subs":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/reactor/Subscription;>;"
    :cond_21
    monitor-exit p0

    goto :goto_26

    :catchall_23
    move-exception v0

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_23

    throw v0

    .line 85
    :cond_26
    :goto_26
    invoke-interface {p1}, Lcom/tds/common/reactor/Subscription;->unsubscribe()V

    .line 86
    return-void
.end method

.method public isUnsubscribed()Z
    .registers 2

    .line 57
    iget-boolean v0, p0, Lcom/tds/common/reactor/util/SubscriptionList;->unsubscribed:Z

    return v0
.end method

.method public remove(Lcom/tds/common/reactor/Subscription;)V
    .registers 4
    .param p1, "s"    # Lcom/tds/common/reactor/Subscription;

    .line 89
    iget-boolean v0, p0, Lcom/tds/common/reactor/util/SubscriptionList;->unsubscribed:Z

    if-nez v0, :cond_1f

    .line 91
    monitor-enter p0

    .line 92
    :try_start_5
    iget-object v0, p0, Lcom/tds/common/reactor/util/SubscriptionList;->subscriptions:Ljava/util/List;

    .line 93
    .local v0, "subs":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/reactor/Subscription;>;"
    iget-boolean v1, p0, Lcom/tds/common/reactor/util/SubscriptionList;->unsubscribed:Z

    if-nez v1, :cond_1a

    if-nez v0, :cond_e

    goto :goto_1a

    .line 96
    :cond_e
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    .line 97
    .local v0, "unsubscribe":Z
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_1c

    .line 98
    if-eqz v0, :cond_1f

    .line 100
    invoke-interface {p1}, Lcom/tds/common/reactor/Subscription;->unsubscribe()V

    goto :goto_1f

    .line 94
    .local v0, "subs":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/reactor/Subscription;>;"
    :cond_1a
    :goto_1a
    :try_start_1a
    monitor-exit p0

    return-void

    .line 97
    .end local v0    # "subs":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/reactor/Subscription;>;"
    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_1c

    throw v0

    .line 103
    :cond_1f
    :goto_1f
    return-void
.end method

.method public unsubscribe()V
    .registers 3

    .line 111
    iget-boolean v0, p0, Lcom/tds/common/reactor/util/SubscriptionList;->unsubscribed:Z

    if-nez v0, :cond_1b

    .line 113
    monitor-enter p0

    .line 114
    :try_start_5
    iget-boolean v0, p0, Lcom/tds/common/reactor/util/SubscriptionList;->unsubscribed:Z

    if-eqz v0, :cond_b

    .line 115
    monitor-exit p0

    return-void

    .line 117
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/common/reactor/util/SubscriptionList;->unsubscribed:Z

    .line 118
    iget-object v0, p0, Lcom/tds/common/reactor/util/SubscriptionList;->subscriptions:Ljava/util/List;

    .line 119
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/reactor/Subscription;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tds/common/reactor/util/SubscriptionList;->subscriptions:Ljava/util/List;

    .line 120
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_18

    .line 122
    invoke-static {v0}, Lcom/tds/common/reactor/util/SubscriptionList;->unsubscribeFromAll(Ljava/util/Collection;)V

    goto :goto_1b

    .line 120
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/reactor/Subscription;>;"
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0

    .line 124
    :cond_1b
    :goto_1b
    return-void
.end method
