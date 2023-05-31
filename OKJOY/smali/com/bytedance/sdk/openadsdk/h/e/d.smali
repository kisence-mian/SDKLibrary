.class public Lcom/bytedance/sdk/openadsdk/h/e/d;
.super Ljava/lang/Object;
.source "NetworkSoureVolleyImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/h/e/b;


# instance fields
.field private a:Lcom/bytedance/sdk/adnet/face/IHttpStack;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/e;->a()Lcom/bytedance/sdk/adnet/face/IHttpStack;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/e/d;->a:Lcom/bytedance/sdk/adnet/face/IHttpStack;

    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/e/d;->a:Lcom/bytedance/sdk/adnet/face/IHttpStack;

    if-nez v0, :cond_14

    .line 21
    new-instance v0, Lcom/bytedance/sdk/adnet/core/h;

    invoke-direct {v0}, Lcom/bytedance/sdk/adnet/core/h;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/e/d;->a:Lcom/bytedance/sdk/adnet/face/IHttpStack;

    .line 23
    :cond_14
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/h/e/f;)Lcom/bytedance/sdk/openadsdk/h/e/a;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/bytedance/sdk/adnet/err/VAdError;
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/e/e;

    iget v1, p1, Lcom/bytedance/sdk/openadsdk/h/e/f;->a:I

    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/h/e/f;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/h/e/e;-><init>(ILjava/lang/String;)V

    .line 29
    iget-wide v2, p1, Lcom/bytedance/sdk/openadsdk/h/e/f;->c:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_20

    .line 30
    new-instance v1, Lcom/bytedance/sdk/adnet/core/e;

    invoke-direct {v1}, Lcom/bytedance/sdk/adnet/core/e;-><init>()V

    iget-wide v2, p1, Lcom/bytedance/sdk/openadsdk/h/e/f;->c:J

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/adnet/core/e;->a(I)Lcom/bytedance/sdk/adnet/core/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/e/e;->setRetryPolicy(Lcom/bytedance/sdk/adnet/face/d;)Lcom/bytedance/sdk/adnet/core/Request;

    .line 32
    :cond_20
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/e/d;->a:Lcom/bytedance/sdk/adnet/face/IHttpStack;

    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/h/e/f;->e:Ljava/util/Map;

    invoke-interface {v1, v0, v2}, Lcom/bytedance/sdk/adnet/face/IHttpStack;->performRequest(Lcom/bytedance/sdk/adnet/core/Request;Ljava/util/Map;)Lcom/bytedance/sdk/adnet/core/HttpResponse;

    move-result-object v0

    .line 33
    new-instance v1, Lcom/bytedance/sdk/openadsdk/h/e/g;

    invoke-direct {v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/h/e/g;-><init>(Lcom/bytedance/sdk/adnet/core/HttpResponse;Lcom/bytedance/sdk/openadsdk/h/e/f;)V

    return-object v1
.end method
