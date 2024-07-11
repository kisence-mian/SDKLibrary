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
            "Ljava/util/concurrent/PriorityBlockingQueue<",
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
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/qq/e/comm/net/NetworkClientImpl;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v8, p0, Lcom/qq/e/comm/net/NetworkClientImpl;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    const/4 v3, 0x5

    const/16 v4, 0xa

    const-wide/16 v5, 0xb4

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/qq/e/comm/net/NetworkClientImpl;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static followRedirect(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "User-Agent"

    const/4 v1, 0x0

    if-nez p0, :cond_6

    return-object v1

    :cond_6
    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getConnectTimeout()I

    move-result v3

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getReadTimeout()I

    move-result v4

    :try_start_f
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_13} :catch_14

    goto :goto_15

    :catch_14
    move-exception v5

    :goto_15
    const/4 v5, 0x3

    if-ge v2, v5, :cond_4d

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v7, 0x12e

    if-eq v6, v7, :cond_2b

    const/16 v7, 0x12d

    if-eq v6, v7, :cond_2b

    const/16 v7, 0x12f

    if-ne v6, v7, :cond_4d

    :cond_2b
    const-string v5, "location"

    invoke-virtual {p0, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    new-instance p0, Ljava/net/URL;

    invoke-direct {p0, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p0, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    if-eqz v1, :cond_4a

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_4d
    if-eq v2, v5, :cond_50

    return-object p0

    :cond_50
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HttpURLConnection exceed max redirect "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance()Lcom/qq/e/comm/net/NetworkClient;
    .registers 1

    sget-object v0, Lcom/qq/e/comm/net/NetworkClientImpl;->a:Lcom/qq/e/comm/net/NetworkClient;

    return-object v0
.end method


# virtual methods
.method public submit(Lcom/qq/e/comm/net/rr/Request;)Ljava/util/concurrent/Future;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qq/e/comm/net/rr/Request;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/qq/e/comm/net/rr/Response;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/qq/e/comm/net/NetworkClient$Priority;->Mid:Lcom/qq/e/comm/net/NetworkClient$Priority;

    invoke-virtual {p0, p1, v0}, Lcom/qq/e/comm/net/NetworkClientImpl;->submit(Lcom/qq/e/comm/net/rr/Request;Lcom/qq/e/comm/net/NetworkClient$Priority;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public submit(Lcom/qq/e/comm/net/rr/Request;Lcom/qq/e/comm/net/NetworkClient$Priority;)Ljava/util/concurrent/Future;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qq/e/comm/net/rr/Request;",
            "Lcom/qq/e/comm/net/NetworkClient$Priority;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/qq/e/comm/net/rr/Response;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask;

    new-instance v1, Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;

    invoke-direct {v1, p1}, Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;-><init>(Lcom/qq/e/comm/net/rr/Request;)V

    invoke-direct {v0, v1, p2}, Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask;-><init>(Ljava/util/concurrent/Callable;Lcom/qq/e/comm/net/NetworkClient$Priority;)V

    iget-object p1, p0, Lcom/qq/e/comm/net/NetworkClientImpl;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "QueueSize:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/qq/e/comm/net/NetworkClientImpl;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p2}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    return-object v0
.end method

.method public submit(Lcom/qq/e/comm/net/rr/Request;Lcom/qq/e/comm/net/NetworkCallBack;)V
    .registers 4

    sget-object v0, Lcom/qq/e/comm/net/NetworkClient$Priority;->Mid:Lcom/qq/e/comm/net/NetworkClient$Priority;

    invoke-virtual {p0, p1, v0, p2}, Lcom/qq/e/comm/net/NetworkClientImpl;->submit(Lcom/qq/e/comm/net/rr/Request;Lcom/qq/e/comm/net/NetworkClient$Priority;Lcom/qq/e/comm/net/NetworkCallBack;)V

    return-void
.end method

.method public submit(Lcom/qq/e/comm/net/rr/Request;Lcom/qq/e/comm/net/NetworkClient$Priority;Lcom/qq/e/comm/net/NetworkCallBack;)V
    .registers 5

    iget-object v0, p0, Lcom/qq/e/comm/net/NetworkClientImpl;->b:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/qq/e/comm/net/NetworkClientImpl;->submit(Lcom/qq/e/comm/net/rr/Request;Lcom/qq/e/comm/net/NetworkClient$Priority;Lcom/qq/e/comm/net/NetworkCallBack;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public submit(Lcom/qq/e/comm/net/rr/Request;Lcom/qq/e/comm/net/NetworkClient$Priority;Lcom/qq/e/comm/net/NetworkCallBack;Ljava/util/concurrent/Executor;)V
    .registers 7

    if-nez p4, :cond_8

    const-string v0, "Submit failed for no executor"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_8
    new-instance v0, Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask;

    new-instance v1, Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;

    invoke-direct {v1, p1, p3}, Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;-><init>(Lcom/qq/e/comm/net/rr/Request;Lcom/qq/e/comm/net/NetworkCallBack;)V

    invoke-direct {v0, v1, p2}, Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask;-><init>(Ljava/util/concurrent/Callable;Lcom/qq/e/comm/net/NetworkClient$Priority;)V

    invoke-interface {p4, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "QueueSize:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/qq/e/comm/net/NetworkClientImpl;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p2}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    return-void
.end method
