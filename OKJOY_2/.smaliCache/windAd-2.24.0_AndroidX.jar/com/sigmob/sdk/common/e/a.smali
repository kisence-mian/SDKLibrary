.class public Lcom/sigmob/sdk/common/e/a;
.super Lcom/sigmob/sdk/common/e/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/common/e/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/sdk/common/e/k<",
        "Lcom/sigmob/volley/j;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Ljava/lang/String;

.field private final c:Lcom/sigmob/sdk/common/e/a$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/common/e/a$a;)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sigmob/sdk/common/e/k;-><init>(Ljava/lang/String;ILcom/sigmob/volley/o$a;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/sigmob/sdk/common/e/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sigmob/sdk/common/e/a;->c:Lcom/sigmob/sdk/common/e/a$a;

    iput-object p2, p0, Lcom/sigmob/sdk/common/e/a;->b:Ljava/lang/String;

    new-instance p1, Lcom/sigmob/volley/d;

    const/16 p2, 0x2710

    const/4 p3, 0x2

    const/4 v0, 0x0

    invoke-direct {p1, p2, p3, v0}, Lcom/sigmob/volley/d;-><init>(IIF)V

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/common/e/a;->a(Lcom/sigmob/volley/q;)Lcom/sigmob/volley/m;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/common/e/a;->a(Z)Lcom/sigmob/volley/m;

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/sigmob/sdk/common/e/a$a;)V
    .registers 5

    const-string v0, "network is disconnect "

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_16

    :cond_a
    if-eqz p1, :cond_16

    new-instance v1, Lcom/sigmob/volley/t;

    const-string v2, "body is empty"

    invoke-direct {v1, v2}, Lcom/sigmob/volley/t;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/sigmob/sdk/common/e/a$a;->onErrorResponse(Lcom/sigmob/volley/t;)V

    :cond_16
    invoke-static {}, Lcom/sigmob/sdk/common/e/f;->f()Lcom/sigmob/sdk/common/e/l;

    move-result-object v1

    if-nez v1, :cond_29

    if-eqz p1, :cond_28

    new-instance p0, Lcom/sigmob/volley/t;

    const-string v0, "BuriedPointRequestQueue is empty"

    invoke-direct {p0, v0}, Lcom/sigmob/volley/t;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/sigmob/sdk/common/e/a$a;->onErrorResponse(Lcom/sigmob/volley/t;)V

    :cond_28
    return-void

    :cond_29
    :try_start_29
    new-instance v1, Ljava/net/URL;

    invoke-static {}, Lcom/sigmob/sdk/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/common/SDKConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/common/SDKConfig;->getLogUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/common/e/m;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4b

    if-eqz p1, :cond_4a

    new-instance p0, Lcom/sigmob/volley/t;

    invoke-direct {p0, v0}, Lcom/sigmob/volley/t;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/sigmob/sdk/common/e/a$a;->onErrorResponse(Lcom/sigmob/volley/t;)V

    :cond_4a
    return-void

    :cond_4b
    new-instance v1, Lcom/sigmob/sdk/common/e/a;

    invoke-static {}, Lcom/sigmob/sdk/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/common/SDKConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/common/SDKConfig;->getLogUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0, p1}, Lcom/sigmob/sdk/common/e/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/common/e/a$a;)V

    invoke-static {}, Lcom/sigmob/sdk/common/e/f;->f()Lcom/sigmob/sdk/common/e/l;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/common/e/l;->a(Lcom/sigmob/volley/m;)Lcom/sigmob/volley/m;
    :try_end_5f
    .catchall {:try_start_29 .. :try_end_5f} :catchall_60

    goto :goto_72

    :catchall_60
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    if-eqz p1, :cond_72

    new-instance p0, Lcom/sigmob/volley/t;

    invoke-direct {p0, v0}, Lcom/sigmob/volley/t;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/sigmob/sdk/common/e/a$a;->onErrorResponse(Lcom/sigmob/volley/t;)V

    :cond_72
    :goto_72
    return-void
.end method


# virtual methods
.method protected a(Lcom/sigmob/volley/j;)Lcom/sigmob/volley/o;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/j;",
            ")",
            "Lcom/sigmob/volley/o<",
            "Lcom/sigmob/volley/j;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sigmob/volley/o;->a(Ljava/lang/Object;Lcom/sigmob/volley/b$a;)Lcom/sigmob/volley/o;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/sigmob/volley/t;)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/common/e/a;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/sigmob/sdk/common/e/a;->c:Lcom/sigmob/sdk/common/e/a$a;

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send dclog: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/e/a;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " onErrorResponse"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    if-eqz v1, :cond_2b

    invoke-interface {v1, p1}, Lcom/sigmob/sdk/common/e/a$a;->onErrorResponse(Lcom/sigmob/volley/t;)V

    :cond_2b
    return-void

    :catchall_2c
    move-exception p1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method protected synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/sigmob/volley/j;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/common/e/a;->b(Lcom/sigmob/volley/j;)V

    return-void
.end method

.method protected b(Lcom/sigmob/volley/j;)V
    .registers 4

    iget-object p1, p0, Lcom/sigmob/sdk/common/e/a;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    iget-object v0, p0, Lcom/sigmob/sdk/common/e/a;->c:Lcom/sigmob/sdk/common/e/a$a;

    monitor-exit p1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_2c

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send dclog: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/e/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " success"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    if-eqz v0, :cond_2b

    invoke-interface {v0}, Lcom/sigmob/sdk/common/e/a$a;->onSuccess()V

    :cond_2b
    return-void

    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit p1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public b()[B
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/e/a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/sigmob/sdk/common/e/k;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "gz"

    const-string v2, "on"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public d()I
    .registers 2

    const/16 v0, 0x64

    return v0
.end method
