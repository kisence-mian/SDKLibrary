.class Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$26;
.super Lcom/bytedance/sdk/openadsdk/e/a/e;
.source "TTBaseVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->V()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/openadsdk/e/a/e<",
        "Lorg/json/JSONObject;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;Ljava/lang/ref/WeakReference;)V
    .registers 3

    .line 1272
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$26;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$26;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/e/a/e;-><init>()V

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

    .line 1272
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$26;->a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/e/a/f;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/e/a/f;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1277
    const/4 p2, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$26;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/playable/e;

    if-nez v0, :cond_c

    .line 1278
    return-object p2

    .line 1281
    :cond_c
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$26;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/playable/e;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_15

    return-object p1

    .line 1282
    :catchall_15
    move-exception p1

    .line 1283
    return-object p2
.end method
