.class Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity$1;
.super Ljava/lang/Object;
.source "TTMiddlePageActivity.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity$1;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Landroid/view/View;I)V
    .registers 3

    .line 93
    return-void
.end method

.method public onAdShow(Landroid/view/View;I)V
    .registers 3

    .line 98
    return-void
.end method

.method public onRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .registers 4

    .line 102
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity$1;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 103
    return-void

    .line 106
    :cond_9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity$1;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;->b(Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object p1

    if-eqz p1, :cond_34

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity$1;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;

    .line 107
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;->b(Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aA()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_34

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity$1;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;

    .line 108
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;->c(Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;)Lcom/bytedance/sdk/openadsdk/core/a/b;

    move-result-object p1

    if-eqz p1, :cond_34

    .line 110
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity$1;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;Z)Z

    .line 111
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity$1;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;->c(Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;)Lcom/bytedance/sdk/openadsdk/core/a/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/a/b;->e()V

    .line 113
    :cond_34
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity$1;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;->finish()V

    .line 114
    return-void
.end method

.method public onRenderSuccess(Landroid/view/View;FF)V
    .registers 5

    .line 118
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity$1;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;->b(Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object p2

    const-string p3, "feed_video_middle_page"

    const-string v0, "middle_page_show"

    invoke-static {p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method
