.class Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity$6;
.super Ljava/lang/Object;
.source "TTVideoWebPageActivity.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;)V
    .registers 2

    .line 1190
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity$6;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 3

    .line 1193
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity$6;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;->f(Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;I)V

    .line 1194
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/a;)V
    .registers 4

    .line 1198
    if-eqz p1, :cond_25

    .line 1201
    const/4 v0, 0x0

    :try_start_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity$6;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;->y(Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1202
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->d()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1203
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity$6;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;->z(Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/x;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1e} :catch_1f

    .line 1206
    goto :goto_25

    .line 1204
    :catch_1f
    move-exception p1

    .line 1205
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity$6;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;->f(Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;I)V

    .line 1208
    :cond_25
    :goto_25
    return-void
.end method
