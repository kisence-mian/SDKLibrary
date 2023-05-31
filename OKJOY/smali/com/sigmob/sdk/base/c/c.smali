.class public Lcom/sigmob/sdk/base/c/c;
.super Lcom/sigmob/sdk/base/c/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/sdk/base/c/s",
        "<",
        "Lcom/sigmob/volley/n;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private final c:Lcom/sigmob/sdk/base/c/m;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/c/m;)V
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sigmob/sdk/base/c/s;-><init>(Ljava/lang/String;ILcom/sigmob/volley/y;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/sdk/base/c/c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/sigmob/sdk/base/c/c;->c:Lcom/sigmob/sdk/base/c/m;

    iput-object p2, p0, Lcom/sigmob/sdk/base/c/c;->a:Ljava/lang/String;

    new-instance v0, Lcom/sigmob/volley/g;

    const/16 v1, 0x2710

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/volley/g;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/c/c;->a(Lcom/sigmob/volley/ab;)Lcom/sigmob/volley/q;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/c/c;->a(Z)Lcom/sigmob/volley/q;

    return-void
.end method


# virtual methods
.method protected a(Lcom/sigmob/volley/n;)Lcom/sigmob/volley/x;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/n;",
            ")",
            "Lcom/sigmob/volley/x",
            "<",
            "Lcom/sigmob/volley/n;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sigmob/volley/x;->a(Ljava/lang/Object;Lcom/sigmob/volley/c;)Lcom/sigmob/volley/x;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/sigmob/volley/ae;)V
    .registers 5

    iget-object v1, p0, Lcom/sigmob/sdk/base/c/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/sigmob/sdk/base/c/c;->c:Lcom/sigmob/sdk/base/c/m;

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_2c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send dclog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/c/c;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onErrorResponse"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    if-eqz v0, :cond_2b

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/base/c/m;->a(Lcom/sigmob/volley/ae;)V

    :cond_2b
    return-void

    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method protected synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/sigmob/volley/n;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/c/c;->b(Lcom/sigmob/volley/n;)V

    return-void
.end method

.method public a_()I
    .registers 2

    const/16 v0, 0x64

    return v0
.end method

.method public bridge synthetic b()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Lcom/sigmob/sdk/base/c/s;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/sigmob/volley/n;)V
    .registers 5

    iget-object v1, p0, Lcom/sigmob/sdk/base/c/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/sigmob/sdk/base/c/c;->c:Lcom/sigmob/sdk/base/c/m;

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_2c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send dclog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/c/c;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " success"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    if-eqz v0, :cond_2b

    invoke-interface {v0}, Lcom/sigmob/sdk/base/c/m;->a()V

    :cond_2b
    return-void

    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public c()[B
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/sigmob/sdk/base/c/s;->d()Ljava/util/Map;

    move-result-object v0

    const-string v1, "gz"

    const-string v2, "on"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic e()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Lcom/sigmob/sdk/base/c/s;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
