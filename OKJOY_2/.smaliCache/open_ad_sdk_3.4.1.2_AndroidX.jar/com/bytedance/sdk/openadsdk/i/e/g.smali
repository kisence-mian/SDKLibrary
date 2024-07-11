.class public Lcom/bytedance/sdk/openadsdk/i/e/g;
.super Lcom/bytedance/sdk/openadsdk/i/e/a;
.source "VolleyResponseWrapper.java"


# instance fields
.field private c:Lcom/bytedance/sdk/adnet/core/HttpResponse;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/adnet/core/HttpResponse;Lcom/bytedance/sdk/openadsdk/i/e/f;)V
    .registers 7

    .line 17
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/i/e/a;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/e/g;->c:Lcom/bytedance/sdk/adnet/core/HttpResponse;

    .line 19
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/e/g;->a:Ljava/util/List;

    .line 20
    const/4 p1, 0x0

    :goto_d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/e/g;->c:Lcom/bytedance/sdk/adnet/core/HttpResponse;

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3c

    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/e/g;->c:Lcom/bytedance/sdk/adnet/core/HttpResponse;

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/adnet/core/Header;

    .line 22
    if-eqz v0, :cond_39

    .line 23
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/e/g;->a:Ljava/util/List;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/i/i$b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/i/i$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_39
    add-int/lit8 p1, p1, 0x1

    goto :goto_d

    .line 26
    :cond_3c
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/i/e/g;->b:Lcom/bytedance/sdk/openadsdk/i/e/f;

    .line 27
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/e/g;->c:Lcom/bytedance/sdk/adnet/core/HttpResponse;

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getStatusCode()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 41
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/i/e/g;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/i$b;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 42
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/i/e/g;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/i$b;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/i/i$b;->b:Ljava/lang/String;

    return-object p1

    .line 44
    :cond_d
    return-object p2
.end method

.method public b()Z
    .registers 3

    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/e/g;->c:Lcom/bytedance/sdk/adnet/core/HttpResponse;

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_16

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/e/g;->c:Lcom/bytedance/sdk/adnet/core/HttpResponse;

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public c()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/i/i$b;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/e/g;->a:Ljava/util/List;

    return-object v0
.end method

.method public d()Ljava/io/InputStream;
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/e/g;->c:Lcom/bytedance/sdk/adnet/core/HttpResponse;

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 74
    const-string v0, "http/1.1"

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/e/g;->c:Lcom/bytedance/sdk/adnet/core/HttpResponse;

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getStatusCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/i/e/g;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
