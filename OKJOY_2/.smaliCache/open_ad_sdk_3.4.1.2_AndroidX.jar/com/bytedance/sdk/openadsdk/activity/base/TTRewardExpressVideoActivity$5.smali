.class Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$5;
.super Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;
.source "TTRewardExpressVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/d/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;I)V
    .registers 6

    .line 568
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;IIII)V
    .registers 12

    .line 571
    invoke-super/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Landroid/view/View;IIII)V

    .line 572
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity$5;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;->a(Landroid/view/View;IIII)V

    .line 573
    return-void
.end method
