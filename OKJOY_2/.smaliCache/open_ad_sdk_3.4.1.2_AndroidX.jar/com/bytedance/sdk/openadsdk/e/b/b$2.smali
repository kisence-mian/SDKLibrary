.class Lcom/bytedance/sdk/openadsdk/e/b/b$2;
.super Ljava/lang/Object;
.source "DoGetAdsFromNetworkAsyncMethod.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/f/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/e/b/b;->a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/e/a/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/e/b/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/e/b/b;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/e/b/b$2;->a:Lcom/bytedance/sdk/openadsdk/e/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/d/l;",
            ">;)V"
        }
    .end annotation

    .line 66
    const-string v0, "DoGetAdsFromNetwork"

    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 67
    if-eqz p1, :cond_18

    .line 68
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/x;->b(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p1

    .line 69
    const-string p2, "creatives"

    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/e/b/b$2;->a:Lcom/bytedance/sdk/openadsdk/e/b/b;

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/e/b/b;->a(Lcom/bytedance/sdk/openadsdk/e/b/b;Ljava/lang/Object;)V

    .line 71
    goto :goto_1d

    .line 72
    :cond_18
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/e/b/b$2;->a:Lcom/bytedance/sdk/openadsdk/e/b/b;

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/e/b/b;->b(Lcom/bytedance/sdk/openadsdk/e/b/b;Ljava/lang/Object;)V

    .line 74
    :goto_1d
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/i;->v()Z

    move-result p1

    if-eqz p1, :cond_41

    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[JSB-RSP] version: 3 data="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_2 .. :try_end_41} :catchall_42

    .line 79
    :cond_41
    goto :goto_48

    .line 77
    :catchall_42
    move-exception p1

    .line 78
    const-string p2, "onAdLoaded error"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    :goto_48
    return-void
.end method
