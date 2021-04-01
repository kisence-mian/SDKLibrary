.class final Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity$1;
.super Ljava/lang/Object;
.source "MTGAuthorityActivity.java"

# interfaces
.implements Lcom/mintegral/msdk/mtgjscommon/windvane/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;)V
    .registers 2

    .prologue
    .line 109
    iput-object p1, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity$1;->a:Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    .prologue
    .line 113
    return-void
.end method

.method public final a(I)V
    .registers 2

    .prologue
    .line 157
    return-void
.end method

.method public final a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 122
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity$1;->a:Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->dismissLoadingDialog()V

    .line 123
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity$1;->a:Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity$1;->a:Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->a(Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;)Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 124
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity$1;->a:Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity$1;->a:Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;

    iget-object v1, v1, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->c:Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityCustomView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_30

    .line 125
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity$1;->a:Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity$1;->a:Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;

    iget-object v1, v1, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->c:Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityCustomView;

    iget-object v2, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity$1;->a:Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;

    iget-object v2, v2, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->d:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    :cond_30
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    move-result-object v0

    iget-object v0, v0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->b:Lcom/mintegral/msdk/base/controller/authoritycontroller/CallBackForDeveloper;

    invoke-interface {v0, p3}, Lcom/mintegral/msdk/base/controller/authoritycontroller/CallBackForDeveloper;->onShowPopWindowStatusFaile(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public final a(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 7

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity$1;->a:Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->dismissLoadingDialog()V

    .line 133
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity$1;->a:Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity$1;->a:Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->a(Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;)Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 134
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity$1;->a:Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity$1;->a:Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;

    iget-object v1, v1, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->c:Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityCustomView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_30

    .line 135
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity$1;->a:Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity$1;->a:Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;

    iget-object v1, v1, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->c:Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityCustomView;

    iget-object v2, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity$1;->a:Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;

    iget-object v2, v2, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->d:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    :cond_30
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    move-result-object v0

    iget-object v0, v0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->b:Lcom/mintegral/msdk/base/controller/authoritycontroller/CallBackForDeveloper;

    const-string v1, "Temporarily does not support the popup window"

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/base/controller/authoritycontroller/CallBackForDeveloper;->onShowPopWindowStatusFaile(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public final a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 142
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPageFinished"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity$1;->a:Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->dismissLoadingDialog()V

    .line 144
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity$1;->a:Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity$1;->a:Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->a(Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;)Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->webviewshow(Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;)V

    .line 145
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity$1;->a:Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity$1;->a:Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->b(Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 146
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    move-result-object v0

    iget-object v0, v0, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->b:Lcom/mintegral/msdk/base/controller/authoritycontroller/CallBackForDeveloper;

    invoke-interface {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/CallBackForDeveloper;->onShowPopWindowStatusSucessful()V

    .line 147
    return-void
.end method

.method public final b()Z
    .registers 2

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public final c()V
    .registers 1

    .prologue
    .line 152
    return-void
.end method
