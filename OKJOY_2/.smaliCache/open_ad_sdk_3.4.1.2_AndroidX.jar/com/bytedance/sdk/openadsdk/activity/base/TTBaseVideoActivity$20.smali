.class Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$20;
.super Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;
.source "TTBaseVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->g()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/x;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/c/j;)V
    .registers 6

    .line 645
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$20;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/x;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/c/j;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 6

    .line 648
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$20;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iput-object p2, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aI:Ljava/lang/String;

    .line 649
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$20;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 650
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$20;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aE:Ljava/lang/String;

    const-string v2, "loading_h5_success"

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    :cond_15
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 653
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 669
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 670
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$20;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;Z)Z

    .line 671
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 4

    .line 663
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 664
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$20;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;Z)Z

    .line 665
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .registers 4

    .line 657
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 658
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$20;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;Z)Z

    .line 659
    return-void
.end method
