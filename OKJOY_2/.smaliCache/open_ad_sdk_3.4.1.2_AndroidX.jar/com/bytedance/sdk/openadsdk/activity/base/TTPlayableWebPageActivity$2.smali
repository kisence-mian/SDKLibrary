.class Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$2;
.super Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;
.source "TTPlayableWebPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->g()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/x;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/c/j;)V
    .registers 6

    .line 622
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/x;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/c/j;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .line 625
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 626
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->o(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 627
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;

    const-string p2, "loading_h5_success"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;Ljava/lang/String;)V

    .line 629
    :cond_12
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 645
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 646
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->b(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;Z)Z

    .line 647
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 4

    .line 639
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 640
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->b(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;Z)Z

    .line 641
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .registers 4

    .line 633
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 634
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$2;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->b(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;Z)Z

    .line 635
    return-void
.end method
