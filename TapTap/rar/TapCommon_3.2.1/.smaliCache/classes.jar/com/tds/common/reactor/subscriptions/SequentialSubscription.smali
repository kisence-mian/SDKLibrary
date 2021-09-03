.class public final Lcom/tds/common/reactor/subscriptions/SequentialSubscription;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SequentialSubscription.java"

# interfaces
.implements Lcom/tds/common/reactor/Subscription;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lcom/tds/common/reactor/Subscription;",
        ">;",
        "Lcom/tds/common/reactor/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xdcfadb4b3205d9dL


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/tds/common/reactor/Subscription;)V
    .registers 2
    .param p1, "initial"    # Lcom/tds/common/reactor/Subscription;

    .line 45
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 46
    invoke-virtual {p0, p1}, Lcom/tds/common/reactor/subscriptions/SequentialSubscription;->lazySet(Ljava/lang/Object;)V

    .line 47
    return-void
.end method


# virtual methods
.method public current()Lcom/tds/common/reactor/Subscription;
    .registers 3

    .line 55
    invoke-super {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/common/reactor/Subscription;

    .line 56
    .local v0, "current":Lcom/tds/common/reactor/Subscription;
    sget-object v1, Lcom/tds/common/reactor/subscriptions/Unsubscribed;->INSTANCE:Lcom/tds/common/reactor/subscriptions/Unsubscribed;

    if-ne v0, v1, :cond_f

    .line 57
    invoke-static {}, Lcom/tds/common/reactor/subscriptions/Subscriptions;->unsubscribed()Lcom/tds/common/reactor/Subscription;

    move-result-object v1

    return-object v1

    .line 59
    :cond_f
    return-object v0
.end method

.method public isUnsubscribed()Z
    .registers 3

    .line 187
    invoke-virtual {p0}, Lcom/tds/common/reactor/subscriptions/SequentialSubscription;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/tds/common/reactor/subscriptions/Unsubscribed;->INSTANCE:Lcom/tds/common/reactor/subscriptions/Unsubscribed;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public replace(Lcom/tds/common/reactor/Subscription;)Z
    .registers 4
    .param p1, "next"    # Lcom/tds/common/reactor/Subscription;

    .line 98
    :goto_0
    invoke-virtual {p0}, Lcom/tds/common/reactor/subscriptions/SequentialSubscription;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/common/reactor/Subscription;

    .line 100
    .local v0, "current":Lcom/tds/common/reactor/Subscription;
    sget-object v1, Lcom/tds/common/reactor/subscriptions/Unsubscribed;->INSTANCE:Lcom/tds/common/reactor/subscriptions/Unsubscribed;

    if-ne v0, v1, :cond_11

    .line 101
    if-eqz p1, :cond_f

    .line 102
    invoke-interface {p1}, Lcom/tds/common/reactor/Subscription;->unsubscribe()V

    .line 104
    :cond_f
    const/4 v1, 0x0

    return v1

    .line 107
    :cond_11
    invoke-virtual {p0, v0, p1}, Lcom/tds/common/reactor/subscriptions/SequentialSubscription;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 108
    const/4 v1, 0x1

    return v1

    .line 110
    .end local v0    # "current":Lcom/tds/common/reactor/Subscription;
    :cond_19
    goto :goto_0
.end method

.method public replaceWeak(Lcom/tds/common/reactor/Subscription;)Z
    .registers 6
    .param p1, "next"    # Lcom/tds/common/reactor/Subscription;

    .line 153
    invoke-virtual {p0}, Lcom/tds/common/reactor/subscriptions/SequentialSubscription;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/common/reactor/Subscription;

    .line 154
    .local v0, "current":Lcom/tds/common/reactor/Subscription;
    sget-object v1, Lcom/tds/common/reactor/subscriptions/Unsubscribed;->INSTANCE:Lcom/tds/common/reactor/subscriptions/Unsubscribed;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_11

    .line 155
    if-eqz p1, :cond_10

    .line 156
    invoke-interface {p1}, Lcom/tds/common/reactor/Subscription;->unsubscribe()V

    .line 158
    :cond_10
    return v2

    .line 160
    :cond_11
    invoke-virtual {p0, v0, p1}, Lcom/tds/common/reactor/subscriptions/SequentialSubscription;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_19

    .line 161
    return v3

    .line 164
    :cond_19
    invoke-virtual {p0}, Lcom/tds/common/reactor/subscriptions/SequentialSubscription;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/tds/common/reactor/Subscription;

    .line 165
    sget-object v1, Lcom/tds/common/reactor/subscriptions/Unsubscribed;->INSTANCE:Lcom/tds/common/reactor/subscriptions/Unsubscribed;

    if-ne v0, v1, :cond_2a

    .line 166
    if-eqz p1, :cond_29

    .line 167
    invoke-interface {p1}, Lcom/tds/common/reactor/Subscription;->unsubscribe()V

    .line 169
    :cond_29
    return v2

    .line 171
    :cond_2a
    return v3
.end method

.method public unsubscribe()V
    .registers 3

    .line 176
    invoke-virtual {p0}, Lcom/tds/common/reactor/subscriptions/SequentialSubscription;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/common/reactor/Subscription;

    .line 177
    .local v0, "current":Lcom/tds/common/reactor/Subscription;
    sget-object v1, Lcom/tds/common/reactor/subscriptions/Unsubscribed;->INSTANCE:Lcom/tds/common/reactor/subscriptions/Unsubscribed;

    if-eq v0, v1, :cond_1c

    .line 178
    sget-object v1, Lcom/tds/common/reactor/subscriptions/Unsubscribed;->INSTANCE:Lcom/tds/common/reactor/subscriptions/Unsubscribed;

    invoke-virtual {p0, v1}, Lcom/tds/common/reactor/subscriptions/SequentialSubscription;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/tds/common/reactor/Subscription;

    .line 179
    if-eqz v0, :cond_1c

    sget-object v1, Lcom/tds/common/reactor/subscriptions/Unsubscribed;->INSTANCE:Lcom/tds/common/reactor/subscriptions/Unsubscribed;

    if-eq v0, v1, :cond_1c

    .line 180
    invoke-interface {v0}, Lcom/tds/common/reactor/Subscription;->unsubscribe()V

    .line 183
    :cond_1c
    return-void
.end method

.method public update(Lcom/tds/common/reactor/Subscription;)Z
    .registers 4
    .param p1, "next"    # Lcom/tds/common/reactor/Subscription;

    .line 71
    :goto_0
    invoke-virtual {p0}, Lcom/tds/common/reactor/subscriptions/SequentialSubscription;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/common/reactor/Subscription;

    .line 73
    .local v0, "current":Lcom/tds/common/reactor/Subscription;
    sget-object v1, Lcom/tds/common/reactor/subscriptions/Unsubscribed;->INSTANCE:Lcom/tds/common/reactor/subscriptions/Unsubscribed;

    if-ne v0, v1, :cond_11

    .line 74
    if-eqz p1, :cond_f

    .line 75
    invoke-interface {p1}, Lcom/tds/common/reactor/Subscription;->unsubscribe()V

    .line 77
    :cond_f
    const/4 v1, 0x0

    return v1

    .line 80
    :cond_11
    invoke-virtual {p0, v0, p1}, Lcom/tds/common/reactor/subscriptions/SequentialSubscription;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 81
    if-eqz v0, :cond_1c

    .line 82
    invoke-interface {v0}, Lcom/tds/common/reactor/Subscription;->unsubscribe()V

    .line 84
    :cond_1c
    const/4 v1, 0x1

    return v1

    .line 86
    .end local v0    # "current":Lcom/tds/common/reactor/Subscription;
    :cond_1e
    goto :goto_0
.end method

.method public updateWeak(Lcom/tds/common/reactor/Subscription;)Z
    .registers 6
    .param p1, "next"    # Lcom/tds/common/reactor/Subscription;

    .line 123
    invoke-virtual {p0}, Lcom/tds/common/reactor/subscriptions/SequentialSubscription;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/common/reactor/Subscription;

    .line 124
    .local v0, "current":Lcom/tds/common/reactor/Subscription;
    sget-object v1, Lcom/tds/common/reactor/subscriptions/Unsubscribed;->INSTANCE:Lcom/tds/common/reactor/subscriptions/Unsubscribed;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_11

    .line 125
    if-eqz p1, :cond_10

    .line 126
    invoke-interface {p1}, Lcom/tds/common/reactor/Subscription;->unsubscribe()V

    .line 128
    :cond_10
    return v2

    .line 130
    :cond_11
    invoke-virtual {p0, v0, p1}, Lcom/tds/common/reactor/subscriptions/SequentialSubscription;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_19

    .line 131
    return v3

    .line 134
    :cond_19
    invoke-virtual {p0}, Lcom/tds/common/reactor/subscriptions/SequentialSubscription;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/tds/common/reactor/Subscription;

    .line 136
    if-eqz p1, :cond_25

    .line 137
    invoke-interface {p1}, Lcom/tds/common/reactor/Subscription;->unsubscribe()V

    .line 139
    :cond_25
    sget-object v1, Lcom/tds/common/reactor/subscriptions/Unsubscribed;->INSTANCE:Lcom/tds/common/reactor/subscriptions/Unsubscribed;

    if-ne v0, v1, :cond_2a

    move v2, v3

    :cond_2a
    return v2
.end method
