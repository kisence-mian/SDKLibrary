.class Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$23;
.super Lcom/bytedance/sdk/openadsdk/core/widget/webview/b;
.source "TTBaseVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;Lcom/bytedance/sdk/openadsdk/core/x;Lcom/bytedance/sdk/openadsdk/c/j;)V
    .registers 4

    .line 912
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$23;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/b;-><init>(Lcom/bytedance/sdk/openadsdk/core/x;Lcom/bytedance/sdk/openadsdk/c/j;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 3

    .line 915
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/b;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 918
    :try_start_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$23;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->D()Z

    move-result p1

    if-eqz p1, :cond_2c

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$23;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 919
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->A()Z

    move-result p1

    if-eqz p1, :cond_2c

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$23;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    .line 920
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_2c

    .line 921
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$23;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->b:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    if-eqz p1, :cond_2c

    .line 922
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$23;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->b:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->setProgress(I)V
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2d

    .line 926
    :cond_2c
    goto :goto_2e

    .line 925
    :catchall_2d
    move-exception p1

    .line 927
    :goto_2e
    return-void
.end method
