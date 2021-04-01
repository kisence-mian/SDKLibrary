.class Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask;
.super Ljava/util/concurrent/FutureTask;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/comm/net/NetworkClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetFutureTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask",
        "<TT;>;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/qq/e/comm/net/NetworkClient$Priority;

.field private synthetic b:Lcom/qq/e/comm/net/NetworkClientImpl;


# direct methods
.method public constructor <init>(Lcom/qq/e/comm/net/NetworkClientImpl;Ljava/util/concurrent/Callable;Lcom/qq/e/comm/net/NetworkClient$Priority;)V
    .registers 4
    .param p3, "priority"    # Lcom/qq/e/comm/net/NetworkClient$Priority;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;",
            "Lcom/qq/e/comm/net/NetworkClient$Priority;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask;, "Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask<TT;>;"
    .local p2, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    iput-object p1, p0, Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask;->b:Lcom/qq/e/comm/net/NetworkClientImpl;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object p3, p0, Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask;->a:Lcom/qq/e/comm/net/NetworkClient$Priority;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask;, "Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask<TT;>;"
    .local p1, "another":Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask;, "Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask<TT;>;"
    if-nez p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    iget-object v0, p0, Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask;->a:Lcom/qq/e/comm/net/NetworkClient$Priority;

    invoke-virtual {v0}, Lcom/qq/e/comm/net/NetworkClient$Priority;->value()I

    move-result v0

    iget-object v1, p1, Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask;->a:Lcom/qq/e/comm/net/NetworkClient$Priority;

    invoke-virtual {v1}, Lcom/qq/e/comm/net/NetworkClient$Priority;->value()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_3
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .local p0, "this":Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask;, "Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask<TT;>;"
    check-cast p1, Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask;

    invoke-virtual {p0, p1}, Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask;->compareTo(Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask;)I

    move-result v0

    return v0
.end method
