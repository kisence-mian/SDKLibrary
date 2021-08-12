.class Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity$4;
.super Ljava/lang/Object;
.source "TTWebPageActivity.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;)V
    .registers 2

    .line 660
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 3

    .line 663
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;I)V

    .line 664
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/a;)V
    .registers 4

    .line 668
    if-eqz p1, :cond_25

    .line 671
    const/4 v0, 0x0

    :try_start_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->n(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 672
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->d()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 673
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->o(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/x;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1e} :catch_1f

    .line 676
    goto :goto_25

    .line 674
    :catch_1f
    move-exception p1

    .line 675
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity$4;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;I)V

    .line 678
    :cond_25
    :goto_25
    return-void
.end method
