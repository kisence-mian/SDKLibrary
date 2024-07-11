.class public Lcom/qq/e/comm/services/RetCodeService;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/e/comm/services/RetCodeService$SendTask;,
        Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;,
        Lcom/qq/e/comm/services/RetCodeService$Holder;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/Random;


# direct methods
.method private constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1000162"

    iput-object v0, p0, Lcom/qq/e/comm/services/RetCodeService;->a:Ljava/lang/String;

    const-string v0, "http://wspeed.qq.com/w.cgi"

    iput-object v0, p0, Lcom/qq/e/comm/services/RetCodeService;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/qq/e/comm/services/RetCodeService;->c:Ljava/util/Random;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lcom/qq/e/comm/services/RetCodeService;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    const-string p0, "0.0.0.0"

    return-object p0
.end method

.method static synthetic a(Lcom/qq/e/comm/services/RetCodeService;Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;I)V
    .registers 8

    const-string v0, "utf-8"

    invoke-direct {p0, p2}, Lcom/qq/e/comm/services/RetCodeService;->a(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_91

    new-instance v1, Lcom/qq/e/comm/net/rr/PlainRequest;

    sget-object v3, Lcom/qq/e/comm/net/rr/Request$Method;->GET:Lcom/qq/e/comm/net/rr/Request$Method;

    const-string v4, "http://wspeed.qq.com/w.cgi"

    invoke-direct {v1, v4, v3, v2}, Lcom/qq/e/comm/net/rr/PlainRequest;-><init>(Ljava/lang/String;Lcom/qq/e/comm/net/rr/Request$Method;[B)V

    const-string v3, "appid"

    const-string v4, "1000162"

    invoke-interface {v1, v3, v4}, Lcom/qq/e/comm/net/rr/Request;->addQuery(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p1, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;->d:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "resultcode"

    invoke-interface {v1, v4, v3}, Lcom/qq/e/comm/net/rr/Request;->addQuery(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/qq/e/comm/managers/status/SDKStatus;->getSDKVersion()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sdkversion"

    invoke-interface {v1, v4, v3}, Lcom/qq/e/comm/net/rr/Request;->addQuery(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "touin"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Lcom/qq/e/comm/net/rr/Request;->addQuery(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p1, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;->e:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tmcost"

    invoke-interface {v1, v4, v3}, Lcom/qq/e/comm/net/rr/Request;->addQuery(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p1, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;->f:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "reqsize"

    invoke-interface {v1, v4, v3}, Lcom/qq/e/comm/net/rr/Request;->addQuery(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p1, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;->g:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "rspsize"

    invoke-interface {v1, v4, v3}, Lcom/qq/e/comm/net/rr/Request;->addQuery(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "frequency"

    invoke-interface {v1, v4, v3}, Lcom/qq/e/comm/net/rr/Request;->addQuery(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_5e
    iget-object v3, p1, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;->b:Ljava/lang/String;

    invoke-static {v3, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "commandid"

    invoke-interface {v1, v4, v3}, Lcom/qq/e/comm/net/rr/Request;->addQuery(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "releaseversion"

    iget-object v4, p1, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;->c:Ljava/lang/String;

    invoke-static {v4, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/qq/e/comm/net/rr/Request;->addQuery(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "serverip"

    iget-object v4, p1, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/qq/e/comm/services/RetCodeService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lcom/qq/e/comm/net/rr/Request;->addQuery(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/qq/e/comm/net/NetworkClientImpl;->getInstance()Lcom/qq/e/comm/net/NetworkClient;

    move-result-object v0

    sget-object v3, Lcom/qq/e/comm/net/NetworkClient$Priority;->Low:Lcom/qq/e/comm/net/NetworkClient$Priority;

    invoke-interface {v0, v1, v3}, Lcom/qq/e/comm/net/NetworkClient;->submit(Lcom/qq/e/comm/net/rr/Request;Lcom/qq/e/comm/net/NetworkClient$Priority;)Ljava/util/concurrent/Future;
    :try_end_8c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5e .. :try_end_8c} :catch_8d

    goto :goto_91

    :catch_8d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_91
    :goto_91
    invoke-direct {p0, p2}, Lcom/qq/e/comm/services/RetCodeService;->a(I)Z

    move-result p0

    if-eqz p0, :cond_e1

    new-instance p0, Lcom/qq/e/comm/net/rr/PlainRequest;

    sget-object v0, Lcom/qq/e/comm/net/rr/Request$Method;->GET:Lcom/qq/e/comm/net/rr/Request$Method;

    const-string v1, "http://c.isdspeed.qq.com/code.cgi"

    invoke-direct {p0, v1, v0, v2}, Lcom/qq/e/comm/net/rr/PlainRequest;-><init>(Ljava/lang/String;Lcom/qq/e/comm/net/rr/Request$Method;[B)V

    iget-object v0, p1, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;->a:Ljava/lang/String;

    const-string v1, "domain"

    invoke-interface {p0, v1, v0}, Lcom/qq/e/comm/net/rr/Request;->addQuery(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;->b:Ljava/lang/String;

    const-string v1, "cgi"

    invoke-interface {p0, v1, v0}, Lcom/qq/e/comm/net/rr/Request;->addQuery(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;->h:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    invoke-interface {p0, v1, v0}, Lcom/qq/e/comm/net/rr/Request;->addQuery(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;->d:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "code"

    invoke-interface {p0, v1, v0}, Lcom/qq/e/comm/net/rr/Request;->addQuery(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p1, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;->e:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "time"

    invoke-interface {p0, v0, p1}, Lcom/qq/e/comm/net/rr/Request;->addQuery(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "rate"

    invoke-interface {p0, p2, p1}, Lcom/qq/e/comm/net/rr/Request;->addQuery(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/qq/e/comm/net/NetworkClientImpl;->getInstance()Lcom/qq/e/comm/net/NetworkClient;

    move-result-object p1

    sget-object p2, Lcom/qq/e/comm/net/NetworkClient$Priority;->Low:Lcom/qq/e/comm/net/NetworkClient$Priority;

    invoke-interface {p1, p0, p2}, Lcom/qq/e/comm/net/NetworkClient;->submit(Lcom/qq/e/comm/net/rr/Request;Lcom/qq/e/comm/net/NetworkClient$Priority;)Ljava/util/concurrent/Future;

    :cond_e1
    return-void
.end method

.method private a(I)Z
    .registers 8

    iget-object v0, p0, Lcom/qq/e/comm/services/RetCodeService;->c:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    int-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double/2addr v4, v2

    cmpg-double p1, v0, v4

    if-gez p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public static getInstance()Lcom/qq/e/comm/services/RetCodeService;
    .registers 1

    sget-object v0, Lcom/qq/e/comm/services/RetCodeService$Holder;->a:Lcom/qq/e/comm/services/RetCodeService;

    return-object v0
.end method


# virtual methods
.method public send(Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;)V
    .registers 5

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/qq/e/comm/services/RetCodeService$SendTask;

    const/16 v2, 0x64

    invoke-direct {v1, p0, p1, v2}, Lcom/qq/e/comm/services/RetCodeService$SendTask;-><init>(Lcom/qq/e/comm/services/RetCodeService;Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
