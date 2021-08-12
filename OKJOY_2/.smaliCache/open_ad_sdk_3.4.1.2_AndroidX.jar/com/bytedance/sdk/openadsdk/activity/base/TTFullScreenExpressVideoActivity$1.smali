.class Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenExpressVideoActivity$1;
.super Ljava/lang/Object;
.source "TTFullScreenExpressVideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenExpressVideoActivity;->Z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenExpressVideoActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenExpressVideoActivity;Landroid/view/View;)V
    .registers 3

    .line 99
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenExpressVideoActivity$1;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenExpressVideoActivity;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenExpressVideoActivity$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 102
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenExpressVideoActivity$1;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenExpressVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenExpressVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ak()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xf

    if-ne v0, v3, :cond_10

    move v0, v1

    goto :goto_11

    :cond_10
    move v0, v2

    .line 103
    :goto_11
    const/4 v3, 0x2

    new-array v3, v3, [F

    .line 104
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenExpressVideoActivity$1;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenExpressVideoActivity;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenExpressVideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenExpressVideoActivity$1;->a:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ak;->b(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v2

    .line 105
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenExpressVideoActivity$1;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenExpressVideoActivity;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenExpressVideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenExpressVideoActivity$1;->a:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ak;->b(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v1

    .line 106
    aget v4, v3, v2

    aget v5, v3, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 107
    aget v5, v3, v2

    aget v6, v3, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 109
    if-eqz v0, :cond_50

    move v6, v5

    goto :goto_51

    :cond_50
    move v6, v4

    :goto_51
    aput v6, v3, v2

    .line 110
    if-eqz v0, :cond_56

    goto :goto_57

    :cond_56
    move v4, v5

    :goto_57
    aput v4, v3, v1

    .line 112
    aget v2, v3, v2

    const/high16 v4, 0x41200000    # 10.0f

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_67

    aget v1, v3, v1

    cmpg-float v1, v1, v4

    if-gez v1, :cond_76

    .line 113
    :cond_67
    const-string v1, "TTFullScreenExpressVideoActivity"

    const-string v2, "get root view size error, so run backup"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenExpressVideoActivity$1;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenExpressVideoActivity;

    iget v2, v1, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenExpressVideoActivity;->aK:I

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(ZLandroid/app/Activity;I)[F

    move-result-object v3

    .line 116
    :cond_76
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenExpressVideoActivity$1;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenExpressVideoActivity;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenExpressVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenExpressVideoActivity;[F)V

    .line 117
    return-void
.end method
