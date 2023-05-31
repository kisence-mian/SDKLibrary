.class final Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog$3;
.super Ljava/lang/Object;
.source "BannerExpandDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;)V
    .registers 2

    .prologue
    .line 169
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog$3;->a:Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 172
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog$3;->a:Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->b(Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;)Lcom/mintegral/msdk/mtgbanner/common/b/a;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 173
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog$3;->a:Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->b(Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;)Lcom/mintegral/msdk/mtgbanner/common/b/a;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/mintegral/msdk/mtgbanner/common/b/a;->a(Z)V

    .line 176
    :cond_13
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog$3;->a:Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->c(Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;)Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    move-result-object v0

    const-string v2, ""

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog$3;->a:Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->d(Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog$3;->a:Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->c(Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;)Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 178
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog$3;->a:Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->c(Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;)Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->release()V

    .line 179
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog$3;->a:Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->e(Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;)Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    .line 180
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog$3;->a:Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->f(Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;)Lcom/mintegral/msdk/mtgbanner/common/b/a;

    .line 181
    return-void
.end method
