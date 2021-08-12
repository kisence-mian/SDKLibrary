.class public Lcom/bytedance/sdk/openadsdk/e/b/d;
.super Lcom/bytedance/sdk/openadsdk/e/a/e;
.source "GetAppManageModelMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/openadsdk/e/a/e<",
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
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/e/a/e;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/b/d;->a:Ljava/lang/ref/WeakReference;

    .line 40
    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/e/a/q;Lcom/bytedance/sdk/openadsdk/core/x;)V
    .registers 3

    .line 29
    new-instance v0, Lcom/bytedance/sdk/openadsdk/e/b/d;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/e/b/d;-><init>(Lcom/bytedance/sdk/openadsdk/core/x;)V

    const-string p1, "getAppManage"

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/e/a/q;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/e/a/e;)Lcom/bytedance/sdk/openadsdk/e/a/q;

    .line 30
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/e/a/f;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/e/b/d;->a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/e/a/f;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5

    .line 43
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 45
    :try_start_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/b/d;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_a

    .line 46
    return-object p1

    .line 48
    :cond_a
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/x;

    .line 49
    if-nez v0, :cond_13

    .line 50
    return-object p1

    .line 52
    :cond_13
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/x;->k()Lorg/json/JSONObject;

    move-result-object p1

    .line 53
    const-string v0, "GetAppManageModelMethod"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetAppManageModelMethod analysisJson resultJsonObject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_34

    .line 54
    return-object p1

    .line 56
    :catchall_34
    move-exception v0

    .line 59
    return-object p1
.end method

.method public a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/e/a/f;)Lorg/json/JSONObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/e/b/d;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
