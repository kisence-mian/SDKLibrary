.class Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;


# direct methods
.method private constructor <init>(Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView$c;->a:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView$c;-><init>(Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;)V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 11

    invoke-static {}, Lcom/kwad/sdk/KsAdSDK;->getProxyForDownload()Lcom/kwad/sdk/export/proxy/AdDownloadProxy;

    move-result-object v0

    if-eqz v0, :cond_53

    iget-object v1, p0, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView$c;->a:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    invoke-static {v1}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->b(Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;)Z

    move-result v1

    if-eqz v1, :cond_53

    new-instance v1, Lcom/kwad/sdk/core/download/DownloadParams;

    invoke-direct {v1}, Lcom/kwad/sdk/core/download/DownloadParams;-><init>()V

    invoke-static {p1}, Lcom/kwad/sdk/e/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/kwad/sdk/core/download/DownloadParams;->mDownloadid:Ljava/lang/String;

    iget-object v2, p0, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView$c;->a:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    invoke-static {v2}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->a(Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v2

    invoke-static {v2}, Lcom/kwad/sdk/c/g/b/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object v3, v2, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appName:Ljava/lang/String;

    iput-object v3, v1, Lcom/kwad/sdk/core/download/DownloadParams;->mAppName:Ljava/lang/String;

    iget-object v3, v2, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appPackageName:Ljava/lang/String;

    iput-object v3, v1, Lcom/kwad/sdk/core/download/DownloadParams;->mPkgname:Ljava/lang/String;

    iput-object p1, v1, Lcom/kwad/sdk/core/download/DownloadParams;->mFileUrl:Ljava/lang/String;

    iget-object v3, v2, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appIconUrl:Ljava/lang/String;

    iput-object v3, v1, Lcom/kwad/sdk/core/download/DownloadParams;->mAppIcon:Ljava/lang/String;

    iget-object v2, v2, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->adDescription:Ljava/lang/String;

    iput-object v2, v1, Lcom/kwad/sdk/core/download/DownloadParams;->mShortDesc:Ljava/lang/String;

    iget-object v2, p0, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView$c;->a:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/kwad/sdk/core/download/DownloadParams;->mDownloadid:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v1}, Lcom/kwad/sdk/export/proxy/AdDownloadProxy;->startDownload(Landroid/content/Context;Ljava/lang/String;Lcom/kwad/sdk/core/download/DownloadParams;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView$c;->a:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5f00\u59cb\u4e0b\u8f7d"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_52
    return-void

    :cond_53
    :try_start_53
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView$c;->a:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_67} :catch_68

    goto :goto_52

    :catch_68
    move-exception v0

    invoke-static {v0}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/Exception;)V

    goto :goto_52
.end method
