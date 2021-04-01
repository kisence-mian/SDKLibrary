.class public Lcom/bytedance/sdk/openadsdk/h/e/g;
.super Lcom/bytedance/sdk/openadsdk/h/e/a;
.source "VolleyResponseWrapper.java"


# instance fields
.field private c:Lcom/bytedance/sdk/adnet/core/HttpResponse;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/adnet/core/HttpResponse;Lcom/bytedance/sdk/openadsdk/h/e/f;)V
    .registers 8

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/h/e/a;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/e/g;->c:Lcom/bytedance/sdk/adnet/core/HttpResponse;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/e/g;->a:Ljava/util/List;

    .line 20
    const/4 v0, 0x0

    move v1, v0

    :goto_e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/e/g;->c:Lcom/bytedance/sdk/adnet/core/HttpResponse;

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3e

    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/e/g;->c:Lcom/bytedance/sdk/adnet/core/HttpResponse;

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/adnet/core/Header;

    .line 22
    if-eqz v0, :cond_3a

    .line 23
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/e/g;->a:Ljava/util/List;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/h/i$b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/bytedance/sdk/openadsdk/h/i$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_3a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    .line 26
    :cond_3e
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/h/e/g;->b:Lcom/bytedance/sdk/openadsdk/h/e/f;

    .line 27
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/e/g;->c:Lcom/bytedance/sdk/adnet/core/HttpResponse;

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getStatusCode()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/h/e/g;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/h/i$b;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 42
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/h/e/g;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/h/i$b;

    move-result-object v0

    iget-object p2, v0, Lcom/bytedance/sdk/openadsdk/h/i$b;->b:Ljava/lang/String;

    .line 44
    :cond_c
    return-object p2
.end method

.method public b()Z
    .registers 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/e/g;->c:Lcom/bytedance/sdk/adnet/core/HttpResponse;

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_16

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/e/g;->c:Lcom/bytedance/sdk/adnet/core/HttpResponse;

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public c()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/h/i$b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/e/g;->a:Ljava/util/List;

    return-object v0
.end method

.method public d()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/e/g;->c:Lcom/bytedance/sdk/adnet/core/HttpResponse;

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    const-string v0, "http/1.1"

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/e/g;->c:Lcom/bytedance/sdk/adnet/core/HttpResponse;

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/HttpResponse;->getStatusCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/h/e/g;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
