.class final Lcom/tds/common/reactor/subscriptions/Subscriptions$FutureSubscription;
.super Ljava/lang/Object;
.source "Subscriptions.java"

# interfaces
.implements Lcom/tds/common/reactor/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/subscriptions/Subscriptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FutureSubscription"
.end annotation


# instance fields
.field final f:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    .line 82
    .local p1, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/tds/common/reactor/subscriptions/Subscriptions$FutureSubscription;->f:Ljava/util/concurrent/Future;

    .line 84
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/tds/common/reactor/subscriptions/Subscriptions$FutureSubscription;->f:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .registers 3

    .line 87
    iget-object v0, p0, Lcom/tds/common/reactor/subscriptions/Subscriptions$FutureSubscription;->f:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 88
    return-void
.end method
