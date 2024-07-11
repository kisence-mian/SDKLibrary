.class Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;


# direct methods
.method private constructor <init>(Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView$a;->a:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView$a;-><init>(Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;)V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/kwad/sdk/KsAdSDKImpl;->getProxyForDownload()Lcom/kwad/sdk/export/proxy/AdDownloadProxy;

    move-result-object p2

    if-eqz p2, :cond_5d

    iget-object p3, p0, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView$a;->a:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    invoke-static {p3}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->e(Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;)Z

    move-result p3

    if-eqz p3, :cond_5d

    new-instance p3, Lcom/kwad/sdk/core/download/DownloadParams;

    invoke-direct {p3}, Lcom/kwad/sdk/core/download/DownloadParams;-><init>()V

    invoke-static {p1}, Lcom/kwad/sdk/utils/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p3, Lcom/kwad/sdk/core/download/DownloadParams;->mDownloadid:Ljava/lang/String;

    iget-object p4, p0, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView$a;->a:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    invoke-static {p4}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->b(Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object p4

    invoke-static {p4}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object p4

    iget-object p5, p4, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object p5, p5, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appName:Ljava/lang/String;

    iput-object p5, p3, Lcom/kwad/sdk/core/download/DownloadParams;->mAppName:Ljava/lang/String;

    iget-object p5, p4, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object p5, p5, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appPackageName:Ljava/lang/String;

    iput-object p5, p3, Lcom/kwad/sdk/core/download/DownloadParams;->mPkgname:Ljava/lang/String;

    iput-object p1, p3, Lcom/kwad/sdk/core/download/DownloadParams;->mFileUrl:Ljava/lang/String;

    iget-object p1, p4, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appIconUrl:Ljava/lang/String;

    iput-object p1, p3, Lcom/kwad/sdk/core/download/DownloadParams;->mAppIcon:Ljava/lang/String;

    iget-object p1, p4, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->adDescription:Ljava/lang/String;

    iput-object p1, p3, Lcom/kwad/sdk/core/download/DownloadParams;->mShortDesc:Ljava/lang/String;

    iget-object p1, p0, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView$a;->a:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    invoke-virtual {p1}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p4, p3, Lcom/kwad/sdk/core/download/DownloadParams;->mDownloadid:Ljava/lang/String;

    invoke-interface {p2, p1, p4, p3}, Lcom/kwad/sdk/export/proxy/AdDownloadProxy;->startDownload(Landroid/content/Context;Ljava/lang/String;Lcom/kwad/sdk/core/download/DownloadParams;)V

    iget-object p1, p0, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView$a;->a:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    invoke-virtual {p1}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "\u5f00\u59cb\u4e0b\u8f7d"

    invoke-static {p1, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_76

    :cond_5d
    :try_start_5d
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView$a;->a:Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

    invoke-virtual {p1}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_71} :catch_72

    goto :goto_76

    :catch_72
    move-exception p1

    invoke-static {p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :goto_76
    return-void
.end method
