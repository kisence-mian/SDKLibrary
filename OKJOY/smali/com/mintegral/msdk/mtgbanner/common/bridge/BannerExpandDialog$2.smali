.class final Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog$2;
.super Lcom/mintegral/msdk/mtgjscommon/b/a;
.source "BannerExpandDialog.java"


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
    .line 145
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog$2;->a:Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;

    invoke-direct {p0}, Lcom/mintegral/msdk/mtgjscommon/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 149
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/mtgjscommon/b/a;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    sget-object v1, Lcom/mintegral/msdk/base/utils/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-gt v1, v2, :cond_22

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 163
    :goto_1c
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog$2;->a:Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;->a(Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog;)V

    .line 164
    return-void

    .line 157
    :cond_22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog$2$1;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog$2$1;-><init>(Lcom/mintegral/msdk/mtgbanner/common/bridge/BannerExpandDialog$2;)V

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_1c
.end method
