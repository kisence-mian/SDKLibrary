.class final Lcom/mintegral/msdk/base/webview/WebViewFragment$1;
.super Ljava/lang/Object;
.source "WebViewFragment.java"

# interfaces
.implements Lcom/mintegral/msdk/base/webview/BrowserView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/base/webview/WebViewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/base/webview/WebViewFragment;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/base/webview/WebViewFragment;)V
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lcom/mintegral/msdk/base/webview/WebViewFragment$1;->a:Lcom/mintegral/msdk/base/webview/WebViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/WebViewFragment$1;->a:Lcom/mintegral/msdk/base/webview/WebViewFragment;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/webview/WebViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 35
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 39
    invoke-static {p1}, Lcom/mintegral/msdk/base/utils/j$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/WebViewFragment$1;->a:Lcom/mintegral/msdk/base/webview/WebViewFragment;

    .line 41
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/webview/WebViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 40
    invoke-static {v0, p1, v1}, Lcom/mintegral/msdk/base/utils/j$a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 43
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/WebViewFragment$1;->a:Lcom/mintegral/msdk/base/webview/WebViewFragment;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/webview/WebViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 45
    :cond_20
    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method
