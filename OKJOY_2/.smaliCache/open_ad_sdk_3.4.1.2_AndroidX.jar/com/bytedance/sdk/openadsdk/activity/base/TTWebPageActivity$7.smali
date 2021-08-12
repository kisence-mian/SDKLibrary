.class Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity$7;
.super Lcom/bytedance/sdk/openadsdk/core/widget/webview/b;
.source "TTWebPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;Lcom/bytedance/sdk/openadsdk/core/x;Lcom/bytedance/sdk/openadsdk/c/j;)V
    .registers 4

    .line 238
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity$7;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;

    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/b;-><init>(Lcom/bytedance/sdk/openadsdk/core/x;Lcom/bytedance/sdk/openadsdk/c/j;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 3

    .line 241
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/b;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 242
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity$7;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    if-eqz p1, :cond_38

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity$7;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_38

    .line 243
    const/16 p1, 0x64

    if-ne p2, p1, :cond_2f

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity$7;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->isShown()Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 244
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity$7;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_38

    .line 246
    :cond_2f
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity$7;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/base/TTWebPageActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 249
    :cond_38
    :goto_38
    return-void
.end method
