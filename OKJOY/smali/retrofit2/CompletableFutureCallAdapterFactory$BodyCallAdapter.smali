.class final Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter;
.super Ljava/lang/Object;
.source "CompletableFutureCallAdapterFactory.java"

# interfaces
.implements Lretrofit2/CallAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/CompletableFutureCallAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BodyCallAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/CallAdapter",
        "<TR;",
        "Ljava/util/concurrent/CompletableFuture",
        "<TR;>;>;"
    }
.end annotation

.annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
.end annotation


# instance fields
.field private final responseType:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Type;)V
    .registers 2
    .param p1, "responseType"    # Ljava/lang/reflect/Type;

    .prologue
    .line 58
    .local p0, "this":Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter;, "Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter;->responseType:Ljava/lang/reflect/Type;

    .line 60
    return-void
.end method


# virtual methods
.method public bridge synthetic adapt(Lretrofit2/Call;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 54
    .local p0, "this":Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter;, "Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter<TR;>;"
    invoke-virtual {p0, p1}, Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter;->adapt(Lretrofit2/Call;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public adapt(Lretrofit2/Call;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<TR;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter;, "Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter<TR;>;"
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<TR;>;"
    new-instance v0, Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter$1;

    invoke-direct {v0, p0, p1}, Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter$1;-><init>(Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter;Lretrofit2/Call;)V

    .line 76
    .local v0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TR;>;"
    new-instance v1, Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter$2;

    invoke-direct {v1, p0, v0}, Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter$2;-><init>(Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter;Ljava/util/concurrent/CompletableFuture;)V

    invoke-interface {p1, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 90
    return-object v0
.end method

.method public responseType()Ljava/lang/reflect/Type;
    .registers 2

    .prologue
    .line 63
    .local p0, "this":Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter;, "Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter<TR;>;"
    iget-object v0, p0, Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter;->responseType:Ljava/lang/reflect/Type;

    return-object v0
.end method
