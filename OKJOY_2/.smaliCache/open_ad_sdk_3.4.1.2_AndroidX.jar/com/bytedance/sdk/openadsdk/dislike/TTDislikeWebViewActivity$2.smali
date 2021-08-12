.class Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity$2;
.super Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;
.source "TTDislikeWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/x;Ljava/lang/String;)V
    .registers 5

    .line 81
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity$2;->a:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;

    invoke-direct {p0, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/x;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    .line 84
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity$2;->a:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;->a(Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object p1

    if-eqz p1, :cond_24

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity$2;->a:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;->b(Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;)Z

    move-result p1

    if-nez p1, :cond_24

    .line 86
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity$2;->a:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;->a(Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity$2;->a:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;->c(Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ad_explation_url_show"

    invoke-static {p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_24
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 4

    .line 92
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 93
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity$2;->a:Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;->a(Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeWebViewActivity;Z)Z

    .line 94
    return-void
.end method
