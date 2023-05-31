.class Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter$2;
.super Ljava/lang/Object;
.source "CompletableFutureCallAdapterFactory.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter;->adapt(Lretrofit2/Call;)Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter;

.field final synthetic val$future:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method constructor <init>(Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter;Ljava/util/concurrent/CompletableFuture;)V
    .registers 3
    .param p1, "this$0"    # Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter;

    .prologue
    .line 76
    .local p0, "this":Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter$2;, "Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter$2;"
    iput-object p1, p0, Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter$2;->this$0:Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter;

    iput-object p2, p0, Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter$2;->val$future:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .registers 4
    .param p2, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<TR;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter$2;, "Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter$2;"
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<TR;>;"
    iget-object v0, p0, Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter$2;->val$future:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 87
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<TR;>;",
            "Lretrofit2/Response",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter$2;, "Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter$2;"
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<TR;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<TR;>;"
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 79
    iget-object v0, p0, Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter$2;->val$future:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 83
    :goto_f
    return-void

    .line 81
    :cond_10
    iget-object v0, p0, Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter$2;->val$future:Ljava/util/concurrent/CompletableFuture;

    new-instance v1, Lretrofit2/HttpException;

    invoke-direct {v1, p2}, Lretrofit2/HttpException;-><init>(Lretrofit2/Response;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    goto :goto_f
.end method
