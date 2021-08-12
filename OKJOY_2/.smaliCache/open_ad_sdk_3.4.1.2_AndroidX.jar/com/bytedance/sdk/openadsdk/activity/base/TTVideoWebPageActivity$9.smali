.class Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity$9;
.super Lcom/bytedance/sdk/openadsdk/core/widget/webview/b;
.source "TTVideoWebPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;Lcom/bytedance/sdk/openadsdk/core/x;Lcom/bytedance/sdk/openadsdk/c/j;)V
    .registers 4

    .line 346
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity$9;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;

    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/b;-><init>(Lcom/bytedance/sdk/openadsdk/core/x;Lcom/bytedance/sdk/openadsdk/c/j;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 3

    .line 349
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/b;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 350
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity$9;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    if-eqz p1, :cond_38

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity$9;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_38

    .line 351
    const/16 p1, 0x64

    if-ne p2, p1, :cond_2f

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity$9;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->isShown()Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 352
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity$9;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_38

    .line 354
    :cond_2f
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity$9;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/base/TTVideoWebPageActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 357
    :cond_38
    :goto_38
    return-void
.end method
