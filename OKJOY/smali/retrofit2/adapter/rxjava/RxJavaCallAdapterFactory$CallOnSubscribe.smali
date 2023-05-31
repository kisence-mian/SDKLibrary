.class final Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$CallOnSubscribe;
.super Ljava/lang/Object;
.source "RxJavaCallAdapterFactory.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CallOnSubscribe"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Lretrofit2/Response",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final originalCall:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lretrofit2/Call;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$CallOnSubscribe;, "Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$CallOnSubscribe<TT;>;"
    .local p1, "originalCall":Lretrofit2/Call;, "Lretrofit2/Call<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$CallOnSubscribe;->originalCall:Lretrofit2/Call;

    .line 132
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 127
    .local p0, "this":Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$CallOnSubscribe;, "Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$CallOnSubscribe<TT;>;"
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$CallOnSubscribe;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lretrofit2/Response",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "this":Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$CallOnSubscribe;, "Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$CallOnSubscribe<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Lretrofit2/Response<TT;>;>;"
    iget-object v2, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$CallOnSubscribe;->originalCall:Lretrofit2/Call;

    invoke-interface {v2}, Lretrofit2/Call;->clone()Lretrofit2/Call;

    move-result-object v0

    .line 139
    .local v0, "call":Lretrofit2/Call;, "Lretrofit2/Call<TT;>;"
    new-instance v1, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$RequestArbiter;

    invoke-direct {v1, v0, p1}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$RequestArbiter;-><init>(Lretrofit2/Call;Lrx/Subscriber;)V

    .line 140
    .local v1, "requestArbiter":Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$RequestArbiter;, "Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$RequestArbiter<TT;>;"
    invoke-static {v1}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v2

    invoke-virtual {p1, v2}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 141
    invoke-virtual {p1, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 142
    return-void
.end method
