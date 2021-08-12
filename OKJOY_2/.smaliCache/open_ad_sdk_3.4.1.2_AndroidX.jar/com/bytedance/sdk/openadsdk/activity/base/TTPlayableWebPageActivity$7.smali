.class Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$7;
.super Lcom/bytedance/sdk/openadsdk/core/widget/webview/b;
.source "TTPlayableWebPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;Lcom/bytedance/sdk/openadsdk/core/x;Lcom/bytedance/sdk/openadsdk/c/j;)V
    .registers 4

    .line 281
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$7;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;

    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/b;-><init>(Lcom/bytedance/sdk/openadsdk/core/x;Lcom/bytedance/sdk/openadsdk/c/j;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 3

    .line 284
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/b;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 286
    :try_start_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$7;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->c(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;)Z

    move-result p1

    if-eqz p1, :cond_3c

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$7;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->D()Z

    move-result p1

    if-eqz p1, :cond_3c

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$7;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;

    .line 287
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->A()Z

    move-result p1

    if-eqz p1, :cond_3c

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$7;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;

    .line 288
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_3c

    .line 289
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$7;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->l(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;)Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    move-result-object p1

    if-eqz p1, :cond_3c

    .line 290
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$7;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->l(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;)Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->setProgress(I)V
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3d

    .line 294
    :cond_3c
    goto :goto_3e

    .line 293
    :catchall_3d
    move-exception p1

    .line 296
    :goto_3e
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$7;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->d(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    if-eqz p1, :cond_78

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$7;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_78

    .line 297
    const/16 p1, 0x64

    if-ne p2, p1, :cond_6f

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$7;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->d(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->isShown()Z

    move-result p1

    if-eqz p1, :cond_6f

    .line 298
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$7;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->d(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 299
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$7;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->f(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;)V

    goto :goto_78

    .line 301
    :cond_6f
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$7;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->d(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 304
    :cond_78
    :goto_78
    return-void
.end method
