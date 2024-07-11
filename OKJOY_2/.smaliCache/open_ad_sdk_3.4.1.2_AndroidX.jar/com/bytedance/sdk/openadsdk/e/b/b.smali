.class public Lcom/bytedance/sdk/openadsdk/e/b/b;
.super Lcom/bytedance/sdk/openadsdk/e/a/d;
.source "DoGetAdsFromNetworkAsyncMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/openadsdk/e/a/d<",
        "Lorg/json/JSONObject;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/core/x;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/x;)V
    .registers 3

    .line 38
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/e/a/d;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/b/b;->a:Ljava/lang/ref/WeakReference;

    .line 40
    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/e/a/q;Lcom/bytedance/sdk/openadsdk/core/x;)V
    .registers 3

    .line 30
    new-instance v0, Lcom/bytedance/sdk/openadsdk/e/b/b$1;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/e/b/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/x;)V

    const-string p1, "getNetworkData"

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/e/a/q;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/e/a/d$b;)Lcom/bytedance/sdk/openadsdk/e/a/q;

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/e/b/b;Ljava/lang/Object;)V
    .registers 2

    .line 20
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/e/b/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/e/b/b;Ljava/lang/Object;)V
    .registers 2

    .line 20
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/e/b/b;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/e/a/f;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/e/b/b;->a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/e/a/f;)V

    return-void
.end method

.method protected a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/e/a/f;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/i;->v()Z

    move-result p2

    const-string v0, "DoGetAdsFromNetwork"

    if-eqz p2, :cond_2b

    .line 53
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[JSB-REQ] version: 3 data="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_20

    :cond_1e
    const-string v1, ""

    :goto_20
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_2b
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/e/b/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/openadsdk/core/x;

    .line 57
    if-nez p2, :cond_3e

    .line 58
    const-string p1, "invoke error"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/e/b/b;->c()V

    .line 60
    return-void

    .line 62
    :cond_3e
    new-instance v0, Lcom/bytedance/sdk/openadsdk/e/b/b$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/e/b/b$2;-><init>(Lcom/bytedance/sdk/openadsdk/e/b/b;)V

    invoke-virtual {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/f/c;)V

    .line 82
    return-void
.end method
