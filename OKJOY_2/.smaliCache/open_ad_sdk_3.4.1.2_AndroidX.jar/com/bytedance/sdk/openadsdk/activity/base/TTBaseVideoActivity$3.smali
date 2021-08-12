.class Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$3;
.super Ljava/lang/Object;
.source "TTBaseVideoActivity.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/f/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;)V
    .registers 2

    .line 1348
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 1351
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    .line 1352
    const-string v1, "TTBaseVideoActivity"

    if-nez v0, :cond_14

    .line 1353
    const-string v0, "webView has destroy when onPauseWebView"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    return-void

    .line 1356
    :cond_14
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->onPause()V

    .line 1357
    const-string v0, "js make webView onPause OK"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    return-void
.end method

.method public b()V
    .registers 3

    .line 1362
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    .line 1363
    const-string v1, "TTBaseVideoActivity"

    if-nez v0, :cond_14

    .line 1364
    const-string v0, "webView has destroy when onPauseWebViewTimers"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    return-void

    .line 1367
    :cond_14
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->pauseTimers()V

    .line 1368
    const-string v0, "js make webView pauseTimers OK"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    return-void
.end method
