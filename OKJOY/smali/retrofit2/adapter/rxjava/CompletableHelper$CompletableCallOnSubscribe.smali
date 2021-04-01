.class final Lretrofit2/adapter/rxjava/CompletableHelper$CompletableCallOnSubscribe;
.super Ljava/lang/Object;
.source "CompletableHelper.java"

# interfaces
.implements Lrx/Completable$CompletableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/adapter/rxjava/CompletableHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CompletableCallOnSubscribe"
.end annotation


# instance fields
.field private final originalCall:Lretrofit2/Call;


# direct methods
.method constructor <init>(Lretrofit2/Call;)V
    .registers 2
    .param p1, "originalCall"    # Lretrofit2/Call;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lretrofit2/adapter/rxjava/CompletableHelper$CompletableCallOnSubscribe;->originalCall:Lretrofit2/Call;

    .line 41
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 36
    check-cast p1, Lrx/Completable$CompletableSubscriber;

    invoke-virtual {p0, p1}, Lretrofit2/adapter/rxjava/CompletableHelper$CompletableCallOnSubscribe;->call(Lrx/Completable$CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/Completable$CompletableSubscriber;)V
    .registers 7
    .param p1, "subscriber"    # Lrx/Completable$CompletableSubscriber;

    .prologue
    .line 45
    iget-object v4, p0, Lretrofit2/adapter/rxjava/CompletableHelper$CompletableCallOnSubscribe;->originalCall:Lretrofit2/Call;

    invoke-interface {v4}, Lretrofit2/Call;->clone()Lretrofit2/Call;

    move-result-object v0

    .line 48
    .local v0, "call":Lretrofit2/Call;
    new-instance v4, Lretrofit2/adapter/rxjava/CompletableHelper$CompletableCallOnSubscribe$1;

    invoke-direct {v4, p0, v0}, Lretrofit2/adapter/rxjava/CompletableHelper$CompletableCallOnSubscribe$1;-><init>(Lretrofit2/adapter/rxjava/CompletableHelper$CompletableCallOnSubscribe;Lretrofit2/Call;)V

    invoke-static {v4}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v2

    .line 53
    .local v2, "subscription":Lrx/Subscription;
    invoke-interface {p1, v2}, Lrx/Completable$CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 56
    :try_start_12
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v1

    .line 57
    .local v1, "response":Lretrofit2/Response;
    invoke-interface {v2}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v4

    if-nez v4, :cond_25

    .line 58
    invoke-virtual {v1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 59
    invoke-interface {p1}, Lrx/Completable$CompletableSubscriber;->onCompleted()V

    .line 70
    .end local v1    # "response":Lretrofit2/Response;
    :cond_25
    :goto_25
    return-void

    .line 61
    .restart local v1    # "response":Lretrofit2/Response;
    :cond_26
    new-instance v4, Lretrofit2/adapter/rxjava/HttpException;

    invoke-direct {v4, v1}, Lretrofit2/adapter/rxjava/HttpException;-><init>(Lretrofit2/Response;)V

    invoke-interface {p1, v4}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_2e} :catch_2f

    goto :goto_25

    .line 64
    .end local v1    # "response":Lretrofit2/Response;
    :catch_2f
    move-exception v3

    .line 65
    .local v3, "t":Ljava/lang/Throwable;
    invoke-static {v3}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 66
    invoke-interface {v2}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v4

    if-nez v4, :cond_25

    .line 67
    invoke-interface {p1, v3}, Lrx/Completable$CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_25
.end method
