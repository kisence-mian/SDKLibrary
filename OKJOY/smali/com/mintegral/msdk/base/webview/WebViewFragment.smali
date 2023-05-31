.class public Lcom/mintegral/msdk/base/webview/WebViewFragment;
.super Lcom/mintegral/msdk/base/fragment/BaseFragment;
.source "WebViewFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/mintegral/msdk/base/fragment/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/mintegral/msdk/base/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 22
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    .prologue
    .line 27
    new-instance v0, Lcom/mintegral/msdk/base/webview/BrowserView;

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/webview/WebViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/base/webview/BrowserView;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/webview/WebViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "msg"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/webview/BrowserView;->loadUrl(Ljava/lang/String;)V

    .line 31
    new-instance v1, Lcom/mintegral/msdk/base/webview/WebViewFragment$1;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/base/webview/WebViewFragment$1;-><init>(Lcom/mintegral/msdk/base/webview/WebViewFragment;)V

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/webview/BrowserView;->setListener(Lcom/mintegral/msdk/base/webview/BrowserView$a;)V

    .line 53
    return-object v0
.end method
