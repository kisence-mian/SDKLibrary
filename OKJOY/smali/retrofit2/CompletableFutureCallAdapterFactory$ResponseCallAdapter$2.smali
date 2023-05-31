.class Lretrofit2/CompletableFutureCallAdapterFactory$ResponseCallAdapter$2;
.super Ljava/lang/Object;
.source "CompletableFutureCallAdapterFactory.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/CompletableFutureCallAdapterFactory$ResponseCallAdapter;->adapt(Lretrofit2/Call;)Ljava/util/concurrent/CompletableFuture;
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
.field final synthetic this$0:Lretrofit2/CompletableFutureCallAdapterFactory$ResponseCallAdapter;

.field final synthetic val$future:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method constructor <init>(Lretrofit2/CompletableFutureCallAdapterFactory$ResponseCallAdapter;Ljava/util/concurrent/CompletableFuture;)V
    .registers 3
    .param p1, "this$0"    # Lretrofit2/CompletableFutureCallAdapterFactory$ResponseCallAdapter;

    .prologue
    .line 117
    .local p0, "this":Lretrofit2/CompletableFutureCallAdapterFactory$ResponseCallAdapter$2;, "Lretrofit2/CompletableFutureCallAdapterFactory$ResponseCallAdapter$2;"
    iput-object p1, p0, Lretrofit2/CompletableFutureCallAdapterFactory$ResponseCallAdapter$2;->this$0:Lretrofit2/CompletableFutureCallAdapterFactory$ResponseCallAdapter;

    iput-object p2, p0, Lretrofit2/CompletableFutureCallAdapterFactory$ResponseCallAdapter$2;->val$future:Ljava/util/concurrent/CompletableFuture;

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
    .line 123
    .local p0, "this":Lretrofit2/CompletableFutureCallAdapterFactory$ResponseCallAdapter$2;, "Lretrofit2/CompletableFutureCallAdapterFactory$ResponseCallAdapter$2;"
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<TR;>;"
    iget-object v0, p0, Lretrofit2/CompletableFutureCallAdapterFactory$ResponseCallAdapter$2;->val$future:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 124
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .registers 4
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
    .line 119
    .local p0, "this":Lretrofit2/CompletableFutureCallAdapterFactory$ResponseCallAdapter$2;, "Lretrofit2/CompletableFutureCallAdapterFactory$ResponseCallAdapter$2;"
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<TR;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<TR;>;"
    iget-object v0, p0, Lretrofit2/CompletableFutureCallAdapterFactory$ResponseCallAdapter$2;->val$future:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method
