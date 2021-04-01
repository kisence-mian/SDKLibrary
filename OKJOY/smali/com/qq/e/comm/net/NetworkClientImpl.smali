.class public Lcom/qq/e/comm/net/NetworkClientImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/comm/net/NetworkClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask;,
        Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;
    }
.end annotation


# static fields
.field private static final a:Lcom/qq/e/comm/net/NetworkClient;


# instance fields
.field private final b:Ljava/util/concurrent/ExecutorService;

.field private c:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/qq/e/comm/net/NetworkClientImpl;

    invoke-direct {v0}, Lcom/qq/e/comm/net/NetworkClientImpl;-><init>()V

    sput-object v0, Lcom/qq/e/comm/net/NetworkClientImpl;->a:Lcom/qq/e/comm/net/NetworkClient;

    return-void
.end method

.method private constructor <init>()V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/qq/e/comm/net/NetworkClientImpl;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x5

    const/16 v3, 0xa

    const-wide/16 v4, 0xb4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lcom/qq/e/comm/net/NetworkClientImpl;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/qq/e/comm/net/NetworkClientImpl;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static followRedirect(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    .registers 8
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    if-nez p0, :cond_5

    const/4 v0, 0x0

    :cond_4
    return-object v0

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getConnectTimeout()I

    move-result v2

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getReadTimeout()I

    move-result v3

    move v1, v0

    move-object v0, p0

    :goto_10
    if-ge v1, v6, :cond_42

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0x12e

    if-eq v4, v5, :cond_25

    const/16 v5, 0x12d

    if-eq v4, v5, :cond_25

    const/16 v5, 0x12f

    if-ne v4, v5, :cond_42

    :cond_25
    const-string v4, "location"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_42
    if-ne v1, v6, :cond_4

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HttpURLConnection exceed max redirect "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInstance()Lcom/qq/e/comm/net/NetworkClient;
    .registers 1

    sget-object v0, Lcom/qq/e/comm/net/NetworkClientImpl;->a:Lcom/qq/e/comm/net/NetworkClient;

    return-object v0
.end method


# virtual methods
.method public submit(Lcom/qq/e/comm/net/rr/Request;)Ljava/util/concurrent/Future;
    .registers 3
    .param p1, "req"    # Lcom/qq/e/comm/net/rr/Request;
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

    .prologue
    sget-object v0, Lcom/qq/e/comm/net/NetworkClient$Priority;->Mid:Lcom/qq/e/comm/net/NetworkClient$Priority;

    invoke-virtual {p0, p1, v0}, Lcom/qq/e/comm/net/NetworkClientImpl;->submit(Lcom/qq/e/comm/net/rr/Request;Lcom/qq/e/comm/net/NetworkClient$Priority;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public submit(Lcom/qq/e/comm/net/rr/Request;Lcom/qq/e/comm/net/NetworkClient$Priority;)Ljava/util/concurrent/Future;
    .registers 6
    .param p1, "req"    # Lcom/qq/e/comm/net/rr/Request;
    .param p2, "priority"    # Lcom/qq/e/comm/net/NetworkClient$Priority;
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

    .prologue
    new-instance v0, Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask;

    new-instance v1, Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;

    invoke-direct {v1, p1}, Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;-><init>(Lcom/qq/e/comm/net/rr/Request;)V

    invoke-direct {v0, p0, v1, p2}, Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask;-><init>(Lcom/qq/e/comm/net/NetworkClientImpl;Ljava/util/concurrent/Callable;Lcom/qq/e/comm/net/NetworkClient$Priority;)V

    iget-object v1, p0, Lcom/qq/e/comm/net/NetworkClientImpl;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "QueueSize:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/qq/e/comm/net/NetworkClientImpl;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    return-object v0
.end method

.method public submit(Lcom/qq/e/comm/net/rr/Request;Lcom/qq/e/comm/net/NetworkCallBack;)V
    .registers 4
    .param p1, "req"    # Lcom/qq/e/comm/net/rr/Request;
    .param p2, "callBack"    # Lcom/qq/e/comm/net/NetworkCallBack;

    .prologue
    sget-object v0, Lcom/qq/e/comm/net/NetworkClient$Priority;->Mid:Lcom/qq/e/comm/net/NetworkClient$Priority;

    invoke-virtual {p0, p1, v0, p2}, Lcom/qq/e/comm/net/NetworkClientImpl;->submit(Lcom/qq/e/comm/net/rr/Request;Lcom/qq/e/comm/net/NetworkClient$Priority;Lcom/qq/e/comm/net/NetworkCallBack;)V

    return-void
.end method

.method public submit(Lcom/qq/e/comm/net/rr/Request;Lcom/qq/e/comm/net/NetworkClient$Priority;Lcom/qq/e/comm/net/NetworkCallBack;)V
    .registers 5
    .param p1, "req"    # Lcom/qq/e/comm/net/rr/Request;
    .param p2, "priority"    # Lcom/qq/e/comm/net/NetworkClient$Priority;
    .param p3, "callBack"    # Lcom/qq/e/comm/net/NetworkCallBack;

    .prologue
    iget-object v0, p0, Lcom/qq/e/comm/net/NetworkClientImpl;->b:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/qq/e/comm/net/NetworkClientImpl;->submit(Lcom/qq/e/comm/net/rr/Request;Lcom/qq/e/comm/net/NetworkClient$Priority;Lcom/qq/e/comm/net/NetworkCallBack;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public submit(Lcom/qq/e/comm/net/rr/Request;Lcom/qq/e/comm/net/NetworkClient$Priority;Lcom/qq/e/comm/net/NetworkCallBack;Ljava/util/concurrent/Executor;)V
    .registers 7
    .param p1, "req"    # Lcom/qq/e/comm/net/rr/Request;
    .param p2, "priority"    # Lcom/qq/e/comm/net/NetworkClient$Priority;
    .param p3, "callBack"    # Lcom/qq/e/comm/net/NetworkCallBack;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    if-nez p4, :cond_8

    const-string v0, "Submit failed for no executor"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :goto_7
    return-void

    :cond_8
    new-instance v0, Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask;

    new-instance v1, Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;

    invoke-direct {v1, p1, p3}, Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;-><init>(Lcom/qq/e/comm/net/rr/Request;Lcom/qq/e/comm/net/NetworkCallBack;)V

    invoke-direct {v0, p0, v1, p2}, Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask;-><init>(Lcom/qq/e/comm/net/NetworkClientImpl;Ljava/util/concurrent/Callable;Lcom/qq/e/comm/net/NetworkClient$Priority;)V

    invoke-interface {p4, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "QueueSize:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qq/e/comm/net/NetworkClientImpl;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    goto :goto_7
.end method
