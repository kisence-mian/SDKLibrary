.class public interface abstract Lcom/qq/e/comm/net/NetworkClient;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/e/comm/net/NetworkClient$Priority;
    }
.end annotation


# virtual methods
.method public abstract submit(Lcom/qq/e/comm/net/rr/Request;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qq/e/comm/net/rr/Request;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/qq/e/comm/net/rr/Response;",
            ">;"
        }
    .end annotation
.end method

.method public abstract submit(Lcom/qq/e/comm/net/rr/Request;Lcom/qq/e/comm/net/NetworkClient$Priority;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qq/e/comm/net/rr/Request;",
            "Lcom/qq/e/comm/net/NetworkClient$Priority;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/qq/e/comm/net/rr/Response;",
            ">;"
        }
    .end annotation
.end method

.method public abstract submit(Lcom/qq/e/comm/net/rr/Request;Lcom/qq/e/comm/net/NetworkCallBack;)V
.end method

.method public abstract submit(Lcom/qq/e/comm/net/rr/Request;Lcom/qq/e/comm/net/NetworkClient$Priority;Lcom/qq/e/comm/net/NetworkCallBack;)V
.end method

.method public abstract submit(Lcom/qq/e/comm/net/rr/Request;Lcom/qq/e/comm/net/NetworkClient$Priority;Lcom/qq/e/comm/net/NetworkCallBack;Ljava/util/concurrent/Executor;)V
.end method
