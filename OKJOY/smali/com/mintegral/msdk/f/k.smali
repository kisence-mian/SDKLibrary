.class Lcom/mintegral/msdk/f/k;
.super Ljava/lang/Object;
.source "Pinger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/f/k$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/concurrent/ExecutorService;

.field private final c:Ljava/lang/String;

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoCache"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/mintegral/msdk/f/k;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/f/k;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/f/k;->b:Ljava/util/concurrent/ExecutorService;

    .line 38
    invoke-static {p1}, Lcom/mintegral/msdk/f/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mintegral/msdk/f/k;->c:Ljava/lang/String;

    .line 39
    iput p2, p0, Lcom/mintegral/msdk/f/k;->d:I

    .line 40
    return-void
.end method

.method static a(Ljava/net/Socket;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 81
    const-string v1, "HTTP/1.1 200 OK\n\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 82
    const-string v1, "ping ok"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 83
    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/f/k;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mintegral/msdk/f/n;
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/mintegral/msdk/f/k;->c()Z

    move-result v0

    return v0
.end method

.method static a(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 76
    const-string v0, "ping"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private b()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    :try_start_0
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    .line 69
    new-instance v1, Ljava/net/URI;

    invoke-direct {p0}, Lcom/mintegral/msdk/f/k;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;
    :try_end_10
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_10} :catch_12

    move-result-object v0

    return-object v0

    .line 70
    :catch_12
    move-exception v0

    .line 71
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private c()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mintegral/msdk/f/n;
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/mintegral/msdk/f/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 87
    new-instance v1, Lcom/mintegral/msdk/f/h;

    invoke-direct {v1, v0}, Lcom/mintegral/msdk/f/h;-><init>(Ljava/lang/String;)V

    .line 89
    :try_start_9
    const-string v0, "ping ok"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 90
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/mintegral/msdk/f/h;->a(J)V

    .line 91
    array-length v2, v0

    new-array v2, v2, [B

    .line 92
    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/f/h;->a([B)I

    .line 93
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_1d
    .catch Lcom/mintegral/msdk/f/n; {:try_start_9 .. :try_end_1d} :catch_22
    .catchall {:try_start_9 .. :try_end_1d} :catchall_28

    move-result v0

    .line 98
    invoke-virtual {v1}, Lcom/mintegral/msdk/f/h;->b()V

    .line 96
    :goto_21
    return v0

    .line 98
    :catch_22
    move-exception v0

    invoke-virtual {v1}, Lcom/mintegral/msdk/f/h;->b()V

    .line 96
    const/4 v0, 0x0

    goto :goto_21

    .line 98
    :catchall_28
    move-exception v0

    invoke-virtual {v1}, Lcom/mintegral/msdk/f/h;->b()V

    throw v0
.end method

.method private d()Ljava/lang/String;
    .registers 6

    .prologue
    .line 103
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "http://%s:%d/%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mintegral/msdk/f/k;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/mintegral/msdk/f/k;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "ping"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final a()Z
    .registers 10

    .prologue
    const/4 v8, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 46
    const/16 v0, 0x46

    move v3, v2

    move v4, v0

    .line 48
    :goto_7
    if-ge v3, v8, :cond_2e

    .line 50
    :try_start_9
    iget-object v0, p0, Lcom/mintegral/msdk/f/k;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/mintegral/msdk/f/k$a;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/mintegral/msdk/f/k$a;-><init>(Lcom/mintegral/msdk/f/k;B)V

    invoke-interface {v0, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 51
    int-to-long v6, v4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v6, v7, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_21
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_9 .. :try_end_21} :catch_50
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_21} :catch_26
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_9 .. :try_end_21} :catch_4e

    move-result v0

    .line 52
    if-eqz v0, :cond_27

    move v0, v1

    .line 63
    :goto_25
    return v0

    :catch_26
    move-exception v0

    .line 58
    :cond_27
    :goto_27
    add-int/lit8 v0, v3, 0x1

    .line 59
    mul-int/lit8 v3, v4, 0x2

    move v4, v3

    move v3, v0

    goto :goto_7

    .line 61
    :cond_2e
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, ""

    new-array v6, v8, [Ljava/lang/Object;

    .line 62
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    div-int/lit8 v3, v4, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v1

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/mintegral/msdk/f/k;->b()Ljava/util/List;

    move-result-object v3

    aput-object v3, v6, v1

    .line 61
    invoke-static {v0, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move v0, v2

    .line 63
    goto :goto_25

    :catch_4e
    move-exception v0

    goto :goto_27

    .line 57
    :catch_50
    move-exception v0

    goto :goto_27
.end method
