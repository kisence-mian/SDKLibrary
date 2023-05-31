.class final Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$RequestArbiter;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "RxJavaCallAdapterFactory.java"

# interfaces
.implements Lrx/functions/Action0;
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RequestArbiter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lrx/functions/Action0;",
        "Lrx/Producer;"
    }
.end annotation


# instance fields
.field private final call:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final subscriber:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-",
            "Lretrofit2/Response",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lretrofit2/Call;Lrx/Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<TT;>;",
            "Lrx/Subscriber",
            "<-",
            "Lretrofit2/Response",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "this":Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$RequestArbiter;, "Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$RequestArbiter<TT;>;"
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<TT;>;"
    .local p2, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Lretrofit2/Response<TT;>;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 150
    iput-object p1, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$RequestArbiter;->call:Lretrofit2/Call;

    .line 151
    iput-object p2, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$RequestArbiter;->subscriber:Lrx/Subscriber;

    .line 152
    return-void
.end method


# virtual methods
.method public call()V
    .registers 2

    .prologue
    .line 178
    .local p0, "this":Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$RequestArbiter;, "Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$RequestArbiter<TT;>;"
    iget-object v0, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$RequestArbiter;->call:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 179
    return-void
.end method

.method public request(J)V
    .registers 10
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$RequestArbiter;, "Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$RequestArbiter<TT;>;"
    const-wide/16 v4, 0x0

    .line 155
    cmp-long v2, p1, v4

    if-gez v2, :cond_1f

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "n < 0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 156
    :cond_1f
    cmp-long v2, p1, v4

    if-nez v2, :cond_24

    .line 175
    :cond_23
    :goto_23
    return-void

    .line 157
    :cond_24
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$RequestArbiter;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 160
    :try_start_2c
    iget-object v2, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$RequestArbiter;->call:Lretrofit2/Call;

    invoke-interface {v2}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    .line 161
    .local v0, "response":Lretrofit2/Response;, "Lretrofit2/Response<TT;>;"
    iget-object v2, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$RequestArbiter;->subscriber:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_3f

    .line 162
    iget-object v2, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$RequestArbiter;->subscriber:Lrx/Subscriber;

    invoke-virtual {v2, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_3f} :catch_4d

    .line 172
    :cond_3f
    iget-object v2, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$RequestArbiter;->subscriber:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_23

    .line 173
    iget-object v2, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$RequestArbiter;->subscriber:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->onCompleted()V

    goto :goto_23

    .line 164
    .end local v0    # "response":Lretrofit2/Response;, "Lretrofit2/Response<TT;>;"
    :catch_4d
    move-exception v1

    .line 165
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 166
    iget-object v2, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$RequestArbiter;->subscriber:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_23

    .line 167
    iget-object v2, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$RequestArbiter;->subscriber:Lrx/Subscriber;

    invoke-virtual {v2, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_23
.end method
