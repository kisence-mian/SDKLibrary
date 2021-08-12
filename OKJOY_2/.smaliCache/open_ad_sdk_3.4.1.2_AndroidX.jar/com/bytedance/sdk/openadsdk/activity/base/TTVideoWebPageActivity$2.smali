.class Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity$2;
.super Ljava/lang/Object;
.source "TTVideoWebPageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;->i()V
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

    .line 620
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10

    .line 624
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;->f:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;

    if-eqz p1, :cond_4f

    .line 625
    const/4 p1, 0x0

    .line 626
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;->f:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 627
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;->g(Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;->f:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;

    .line 628
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->o()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;->f:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;

    .line 629
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v2

    .line 627
    invoke-static {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;JLcom/bytedance/sdk/openadsdk/core/video/d/d;)Ljava/util/Map;

    move-result-object p1

    move-object v7, p1

    goto :goto_36

    .line 626
    :cond_35
    move-object v7, p1

    .line 631
    :goto_36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;->g(Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;

    .line 632
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;->n(Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;)J

    move-result-wide v4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;->o(Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;)I

    move-result v6

    .line 631
    const-string v2, "embeded_ad"

    const-string v3, "detail_skip"

    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;JILjava/util/Map;)V

    .line 635
    :cond_4f
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;->finish()V

    .line 636
    return-void
.end method
