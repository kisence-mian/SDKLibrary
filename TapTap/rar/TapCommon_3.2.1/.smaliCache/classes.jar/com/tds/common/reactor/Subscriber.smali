.class public abstract Lcom/tds/common/reactor/Subscriber;
.super Ljava/lang/Object;
.source "Subscriber.java"

# interfaces
.implements Lcom/tds/common/reactor/Observer;
.implements Lcom/tds/common/reactor/Subscription;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/tds/common/reactor/Observer<",
        "TT;>;",
        "Lcom/tds/common/reactor/Subscription;"
    }
.end annotation


# static fields
.field private static final NOT_SET:J = -0x8000000000000000L


# instance fields
.field private producer:Lcom/tds/common/reactor/Producer;

.field private requested:J

.field private final subscriber:Lcom/tds/common/reactor/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/Subscriber<",
            "*>;"
        }
    .end annotation
.end field

.field private final subscriptions:Lcom/tds/common/reactor/util/SubscriptionList;


# direct methods
.method protected constructor <init>()V
    .registers 3

    .line 17
    .local p0, "this":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tds/common/reactor/Subscriber;-><init>(Lcom/tds/common/reactor/Subscriber;Z)V

    .line 18
    return-void
.end method

.method protected constructor <init>(Lcom/tds/common/reactor/Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "*>;)V"
        }
    .end annotation

    .line 21
    .local p0, "this":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<TT;>;"
    .local p1, "subscriber":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<*>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/tds/common/reactor/Subscriber;-><init>(Lcom/tds/common/reactor/Subscriber;Z)V

    .line 22
    return-void
.end method

.method protected constructor <init>(Lcom/tds/common/reactor/Subscriber;Z)V
    .registers 5
    .param p2, "shareSubscriptions"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "*>;Z)V"
        }
    .end annotation

    .line 24
    .local p0, "this":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<TT;>;"
    .local p1, "subscriber":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/tds/common/reactor/Subscriber;->requested:J

    .line 25
    iput-object p1, p0, Lcom/tds/common/reactor/Subscriber;->subscriber:Lcom/tds/common/reactor/Subscriber;

    .line 26
    if-eqz p2, :cond_10

    if-eqz p1, :cond_10

    iget-object v0, p1, Lcom/tds/common/reactor/Subscriber;->subscriptions:Lcom/tds/common/reactor/util/SubscriptionList;

    goto :goto_15

    :cond_10
    new-instance v0, Lcom/tds/common/reactor/util/SubscriptionList;

    invoke-direct {v0}, Lcom/tds/common/reactor/util/SubscriptionList;-><init>()V

    :goto_15
    iput-object v0, p0, Lcom/tds/common/reactor/Subscriber;->subscriptions:Lcom/tds/common/reactor/util/SubscriptionList;

    .line 27
    return-void
.end method

.method private addToRequested(J)V
    .registers 7
    .param p1, "n"    # J

    .line 79
    .local p0, "this":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<TT;>;"
    iget-wide v0, p0, Lcom/tds/common/reactor/Subscriber;->requested:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    .line 80
    iput-wide p1, p0, Lcom/tds/common/reactor/Subscriber;->requested:J

    goto :goto_1c

    .line 82
    :cond_b
    add-long/2addr v0, p1

    .line 84
    .local v0, "total":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1a

    .line 85
    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, Lcom/tds/common/reactor/Subscriber;->requested:J

    goto :goto_1c

    .line 87
    :cond_1a
    iput-wide v0, p0, Lcom/tds/common/reactor/Subscriber;->requested:J

    .line 90
    .end local v0    # "total":J
    :goto_1c
    return-void
.end method


# virtual methods
.method public final add(Lcom/tds/common/reactor/Subscription;)V
    .registers 3
    .param p1, "s"    # Lcom/tds/common/reactor/Subscription;

    .line 30
    .local p0, "this":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/Subscriber;->subscriptions:Lcom/tds/common/reactor/util/SubscriptionList;

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/util/SubscriptionList;->add(Lcom/tds/common/reactor/Subscription;)V

    .line 31
    return-void
.end method

.method public final isUnsubscribed()Z
    .registers 2

    .line 54
    .local p0, "this":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/Subscriber;->subscriptions:Lcom/tds/common/reactor/util/SubscriptionList;

    invoke-virtual {v0}, Lcom/tds/common/reactor/util/SubscriptionList;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public onStart()V
    .registers 1

    .line 40
    .local p0, "this":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<TT;>;"
    return-void
.end method

.method protected final request(J)V
    .registers 6
    .param p1, "n"    # J

    .line 58
    .local p0, "this":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<TT;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_19

    .line 65
    monitor-enter p0

    .line 66
    :try_start_7
    iget-object v0, p0, Lcom/tds/common/reactor/Subscriber;->producer:Lcom/tds/common/reactor/Producer;

    if-eqz v0, :cond_11

    .line 67
    nop

    .line 72
    .local v0, "producerToRequestFrom":Lcom/tds/common/reactor/Producer;
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_16

    .line 74
    invoke-interface {v0, p1, p2}, Lcom/tds/common/reactor/Producer;->request(J)V

    .line 75
    return-void

    .line 69
    .end local v0    # "producerToRequestFrom":Lcom/tds/common/reactor/Producer;
    :cond_11
    :try_start_11
    invoke-direct {p0, p1, p2}, Lcom/tds/common/reactor/Subscriber;->addToRequested(J)V

    .line 70
    monitor-exit p0

    return-void

    .line 72
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_16

    throw v0

    .line 59
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "number requested cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProducer(Lcom/tds/common/reactor/Producer;)V
    .registers 9
    .param p1, "p"    # Lcom/tds/common/reactor/Producer;

    .line 94
    .local p0, "this":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<TT;>;"
    const/4 v0, 0x0

    .line 95
    .local v0, "passToSubscriber":Z
    monitor-enter p0

    .line 96
    :try_start_2
    iget-wide v1, p0, Lcom/tds/common/reactor/Subscriber;->requested:J

    .line 97
    .local v1, "toRequest":J
    iput-object p1, p0, Lcom/tds/common/reactor/Subscriber;->producer:Lcom/tds/common/reactor/Producer;

    .line 98
    iget-object v3, p0, Lcom/tds/common/reactor/Subscriber;->subscriber:Lcom/tds/common/reactor/Subscriber;

    const-wide/high16 v4, -0x8000000000000000L

    if-eqz v3, :cond_11

    .line 100
    cmp-long v6, v1, v4

    if-nez v6, :cond_11

    .line 102
    const/4 v0, 0x1

    .line 105
    :cond_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_29

    .line 107
    if-eqz v0, :cond_18

    .line 108
    invoke-virtual {v3, p1}, Lcom/tds/common/reactor/Subscriber;->setProducer(Lcom/tds/common/reactor/Producer;)V

    goto :goto_28

    .line 111
    :cond_18
    cmp-long v3, v1, v4

    if-nez v3, :cond_25

    .line 112
    const-wide v3, 0x7fffffffffffffffL

    invoke-interface {p1, v3, v4}, Lcom/tds/common/reactor/Producer;->request(J)V

    goto :goto_28

    .line 114
    :cond_25
    invoke-interface {p1, v1, v2}, Lcom/tds/common/reactor/Producer;->request(J)V

    .line 117
    :goto_28
    return-void

    .line 105
    .end local v1    # "toRequest":J
    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public final unsubscribe()V
    .registers 2

    .line 44
    .local p0, "this":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/Subscriber;->subscriptions:Lcom/tds/common/reactor/util/SubscriptionList;

    invoke-virtual {v0}, Lcom/tds/common/reactor/util/SubscriptionList;->unsubscribe()V

    .line 45
    return-void
.end method
