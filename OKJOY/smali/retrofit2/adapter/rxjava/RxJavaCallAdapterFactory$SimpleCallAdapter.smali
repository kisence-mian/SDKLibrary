.class final Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$SimpleCallAdapter;
.super Ljava/lang/Object;
.source "RxJavaCallAdapterFactory.java"

# interfaces
.implements Lretrofit2/CallAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SimpleCallAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/CallAdapter",
        "<",
        "Lrx/Observable",
        "<*>;>;"
    }
.end annotation


# instance fields
.field private final responseType:Ljava/lang/reflect/Type;

.field private final scheduler:Lrx/Scheduler;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Type;Lrx/Scheduler;)V
    .registers 3
    .param p1, "responseType"    # Ljava/lang/reflect/Type;
    .param p2, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object p1, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$SimpleCallAdapter;->responseType:Ljava/lang/reflect/Type;

    .line 210
    iput-object p2, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$SimpleCallAdapter;->scheduler:Lrx/Scheduler;

    .line 211
    return-void
.end method


# virtual methods
.method public bridge synthetic adapt(Lretrofit2/Call;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 204
    invoke-virtual {p0, p1}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$SimpleCallAdapter;->adapt(Lretrofit2/Call;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public adapt(Lretrofit2/Call;)Lrx/Observable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Call",
            "<TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 218
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<TR;>;"
    new-instance v1, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$CallOnSubscribe;

    invoke-direct {v1, p1}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$CallOnSubscribe;-><init>(Lretrofit2/Call;)V

    invoke-static {v1}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v1

    .line 219
    invoke-static {}, Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError;->instance()Lretrofit2/adapter/rxjava/OperatorMapResponseToBodyOrError;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    .line 220
    .local v0, "observable":Lrx/Observable;, "Lrx/Observable<TR;>;"
    iget-object v1, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$SimpleCallAdapter;->scheduler:Lrx/Scheduler;

    if-eqz v1, :cond_1b

    .line 221
    iget-object v1, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$SimpleCallAdapter;->scheduler:Lrx/Scheduler;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 223
    .end local v0    # "observable":Lrx/Observable;, "Lrx/Observable<TR;>;"
    :cond_1b
    return-object v0
.end method

.method public responseType()Ljava/lang/reflect/Type;
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory$SimpleCallAdapter;->responseType:Ljava/lang/reflect/Type;

    return-object v0
.end method
