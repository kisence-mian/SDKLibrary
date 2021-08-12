.class Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask;
.super Ljava/util/concurrent/FutureTask;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/comm/net/NetworkClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetFutureTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TT;>;",
        "Ljava/lang/Comparable<",
        "Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/qq/e/comm/net/NetworkClient$Priority;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;Lcom/qq/e/comm/net/NetworkClient$Priority;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;",
            "Lcom/qq/e/comm/net/NetworkClient$Priority;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object p2, p0, Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask;->a:Lcom/qq/e/comm/net/NetworkClient$Priority;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask<",
            "TT;>;)I"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    iget-object v0, p0, Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask;->a:Lcom/qq/e/comm/net/NetworkClient$Priority;

    invoke-virtual {v0}, Lcom/qq/e/comm/net/NetworkClient$Priority;->value()I

    move-result v0

    iget-object p1, p1, Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask;->a:Lcom/qq/e/comm/net/NetworkClient$Priority;

    invoke-virtual {p1}, Lcom/qq/e/comm/net/NetworkClient$Priority;->value()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask;

    invoke-virtual {p0, p1}, Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask;->compareTo(Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_f

    return v0

    :cond_f
    check-cast p1, Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask;

    invoke-virtual {p0, p1}, Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask;->compareTo(Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask;)I

    move-result p1

    if-nez p1, :cond_19

    const/4 p1, 0x1

    return p1

    :cond_19
    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask;->a:Lcom/qq/e/comm/net/NetworkClient$Priority;

    invoke-virtual {v0}, Lcom/qq/e/comm/net/NetworkClient$Priority;->value()I

    move-result v0

    return v0
.end method
