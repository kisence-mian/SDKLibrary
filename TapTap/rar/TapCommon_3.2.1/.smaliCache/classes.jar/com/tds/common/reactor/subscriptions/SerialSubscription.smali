.class public final Lcom/tds/common/reactor/subscriptions/SerialSubscription;
.super Ljava/lang/Object;
.source "SerialSubscription.java"

# interfaces
.implements Lcom/tds/common/reactor/Subscription;


# instance fields
.field final state:Lcom/tds/common/reactor/subscriptions/SequentialSubscription;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/tds/common/reactor/subscriptions/SequentialSubscription;

    invoke-direct {v0}, Lcom/tds/common/reactor/subscriptions/SequentialSubscription;-><init>()V

    iput-object v0, p0, Lcom/tds/common/reactor/subscriptions/SerialSubscription;->state:Lcom/tds/common/reactor/subscriptions/SequentialSubscription;

    return-void
.end method


# virtual methods
.method public get()Lcom/tds/common/reactor/Subscription;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/tds/common/reactor/subscriptions/SerialSubscription;->state:Lcom/tds/common/reactor/subscriptions/SequentialSubscription;

    invoke-virtual {v0}, Lcom/tds/common/reactor/subscriptions/SequentialSubscription;->current()Lcom/tds/common/reactor/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public isUnsubscribed()Z
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/tds/common/reactor/subscriptions/SerialSubscription;->state:Lcom/tds/common/reactor/subscriptions/SequentialSubscription;

    invoke-virtual {v0}, Lcom/tds/common/reactor/subscriptions/SequentialSubscription;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public set(Lcom/tds/common/reactor/Subscription;)V
    .registers 4
    .param p1, "s"    # Lcom/tds/common/reactor/Subscription;

    .line 46
    if-eqz p1, :cond_8

    .line 49
    iget-object v0, p0, Lcom/tds/common/reactor/subscriptions/SerialSubscription;->state:Lcom/tds/common/reactor/subscriptions/SequentialSubscription;

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/subscriptions/SequentialSubscription;->update(Lcom/tds/common/reactor/Subscription;)Z

    .line 50
    return-void

    .line 47
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Subscription can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unsubscribe()V
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/tds/common/reactor/subscriptions/SerialSubscription;->state:Lcom/tds/common/reactor/subscriptions/SequentialSubscription;

    invoke-virtual {v0}, Lcom/tds/common/reactor/subscriptions/SequentialSubscription;->unsubscribe()V

    .line 36
    return-void
.end method
