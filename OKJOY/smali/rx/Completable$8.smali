.class final Lrx/Completable$8;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$CompletableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->fromAction(Lrx/functions/Action0;)Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$action:Lrx/functions/Action0;


# direct methods
.method constructor <init>(Lrx/functions/Action0;)V
    .registers 2

    .prologue
    .line 483
    iput-object p1, p0, Lrx/Completable$8;->val$action:Lrx/functions/Action0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 483
    check-cast p1, Lrx/Completable$CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Completable$8;->call(Lrx/Completable$CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/Completable$CompletableSubscriber;)V
    .registers 5
    .param p1, "s"    # Lrx/Completable$CompletableSubscriber;

    .prologue
    .line 486
    new-instance v0, Lrx/subscriptions/BooleanSubscription;

    invoke-direct {v0}, Lrx/subscriptions/BooleanSubscription;-><init>()V

    .line 487
    .local v0, "bs":Lrx/subscriptions/BooleanSubscription;
    invoke-interface {p1, v0}, Lrx/Completable$CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 489
    :try_start_8
    iget-object v2, p0, Lrx/Completable$8;->val$action:Lrx/functions/Action0;

    invoke-interface {v2}, Lrx/functions/Action0;->call()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_d} :catch_17

    .line 496
    invoke-virtual {v0}, Lrx/subscriptions/BooleanSubscription;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_16

    .line 497
    invoke-interface {p1}, Lrx/Completable$CompletableSubscriber;->onCompleted()V

    .line 499
    :cond_16
    :goto_16
    return-void

    .line 490
    :catch_17
    move-exception v1

    .line 491
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Lrx/subscriptions/BooleanSubscription;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_16

    .line 492
    invoke-interface {p1, v1}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_16
.end method
