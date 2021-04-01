.class public Lcom/mintegral/msdk/base/webview/BrowserView;
.super Landroid/widget/LinearLayout;
.source "BrowserView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/base/webview/BrowserView$MTGDownloadListener;,
        Lcom/mintegral/msdk/base/webview/BrowserView$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/mintegral/msdk/base/webview/ProgressBar;

.field private c:Landroid/webkit/WebView;

.field private d:Lcom/mintegral/msdk/base/webview/ToolBar;

.field private e:Lcom/mintegral/msdk/base/webview/BrowserView$a;

.field private f:Lcom/mintegral/msdk/base/entity/CampaignEx;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/webview/BrowserView;->init()V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/webview/BrowserView;->init()V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;)V
    .registers 3

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 52
    iput-object p2, p0, Lcom/mintegral/msdk/base/webview/BrowserView;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 53
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/webview/BrowserView;->init()V

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/base/webview/BrowserView;)Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/BrowserView;->c:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic a(Lcom/mintegral/msdk/base/webview/BrowserView;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lcom/mintegral/msdk/base/webview/BrowserView;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/mintegral/msdk/base/webview/BrowserView;)Lcom/mintegral/msdk/base/webview/ToolBar;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/BrowserView;->d:Lcom/mintegral/msdk/base/webview/ToolBar;

    return-object v0
.end method

.method static synthetic c(Lcom/mintegral/msdk/base/webview/BrowserView;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/BrowserView;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/mintegral/msdk/base/webview/BrowserView;)Lcom/mintegral/msdk/base/webview/BrowserView$a;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/BrowserView;->e:Lcom/mintegral/msdk/base/webview/BrowserView$a;

    return-object v0
.end method

.method static synthetic e(Lcom/mintegral/msdk/base/webview/BrowserView;)Lcom/mintegral/msdk/base/webview/ProgressBar;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/BrowserView;->b:Lcom/mintegral/msdk/base/webview/ProgressBar;

    return-object v0
.end method


# virtual methods
.method public init()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 80
    invoke-virtual {p0, v4}, Lcom/mintegral/msdk/base/webview/BrowserView;->setOrientation(I)V

    .line 82
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/base/webview/BrowserView;->setGravity(I)V

    .line 1133
    new-instance v0, Lcom/mintegral/msdk/base/webview/ProgressBar;

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/webview/BrowserView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/base/webview/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mintegral/msdk/base/webview/BrowserView;->b:Lcom/mintegral/msdk/base/webview/ProgressBar;

    .line 1135
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x4

    invoke-direct {v0, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1136
    iget-object v1, p0, Lcom/mintegral/msdk/base/webview/BrowserView;->b:Lcom/mintegral/msdk/base/webview/ProgressBar;

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/webview/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1142
    :try_start_21
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/BrowserView;->c:Landroid/webkit/WebView;

    if-nez v0, :cond_62

    .line 1163
    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/webview/BrowserView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 1165
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1166
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 1168
    new-instance v0, Lcom/mintegral/msdk/base/webview/BrowserView$MTGDownloadListener;

    iget-object v2, p0, Lcom/mintegral/msdk/base/webview/BrowserView;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-direct {v0, v2}, Lcom/mintegral/msdk/base/webview/BrowserView$MTGDownloadListener;-><init>(Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 1170
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 1172
    new-instance v0, Lcom/mintegral/msdk/base/webview/BrowserView$2;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/base/webview/BrowserView$2;-><init>(Lcom/mintegral/msdk/base/webview/BrowserView;)V

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1211
    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->k()I

    move-result v0

    const/16 v2, 0xa

    if-gt v0, v2, :cond_cb

    .line 1212
    new-instance v0, Lcom/mintegral/msdk/base/webview/BrowserView$3;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/base/webview/BrowserView$3;-><init>(Lcom/mintegral/msdk/base/webview/BrowserView;)V

    .line 1260
    :goto_5d
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1143
    iput-object v1, p0, Lcom/mintegral/msdk/base/webview/BrowserView;->c:Landroid/webkit/WebView;

    .line 1146
    :cond_62
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1147
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1148
    iget-object v1, p0, Lcom/mintegral/msdk/base/webview/BrowserView;->c:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_72} :catch_d1

    .line 2155
    :goto_72
    new-instance v0, Lcom/mintegral/msdk/base/webview/ToolBar;

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/webview/BrowserView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/base/webview/ToolBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mintegral/msdk/base/webview/BrowserView;->d:Lcom/mintegral/msdk/base/webview/ToolBar;

    .line 2156
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/webview/BrowserView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/k;->b(Landroid/content/Context;F)I

    move-result v0

    .line 2157
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2158
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/BrowserView;->d:Lcom/mintegral/msdk/base/webview/ToolBar;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/webview/ToolBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2159
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/BrowserView;->d:Lcom/mintegral/msdk/base/webview/ToolBar;

    invoke-virtual {v0, v3}, Lcom/mintegral/msdk/base/webview/ToolBar;->setBackgroundColor(I)V

    .line 88
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/BrowserView;->b:Lcom/mintegral/msdk/base/webview/ProgressBar;

    invoke-virtual {v0, v4}, Lcom/mintegral/msdk/base/webview/ProgressBar;->initResource(Z)V

    .line 3127
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/BrowserView;->b:Lcom/mintegral/msdk/base/webview/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/base/webview/BrowserView;->addView(Landroid/view/View;)V

    .line 3128
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/BrowserView;->c:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/base/webview/BrowserView;->addView(Landroid/view/View;)V

    .line 3129
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/BrowserView;->d:Lcom/mintegral/msdk/base/webview/ToolBar;

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/base/webview/BrowserView;->addView(Landroid/view/View;)V

    .line 92
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/BrowserView;->d:Lcom/mintegral/msdk/base/webview/ToolBar;

    const-string v1, "backward"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/webview/ToolBar;->getItem(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 93
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/BrowserView;->d:Lcom/mintegral/msdk/base/webview/ToolBar;

    const-string v1, "forward"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/webview/ToolBar;->getItem(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 95
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/BrowserView;->d:Lcom/mintegral/msdk/base/webview/ToolBar;

    new-instance v1, Lcom/mintegral/msdk/base/webview/BrowserView$1;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/base/webview/BrowserView$1;-><init>(Lcom/mintegral/msdk/base/webview/BrowserView;)V

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/webview/ToolBar;->setOnItemClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    return-void

    .line 1245
    :cond_cb
    :try_start_cb
    new-instance v0, Lcom/mintegral/msdk/base/webview/BrowserView$4;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/base/webview/BrowserView$4;-><init>(Lcom/mintegral/msdk/base/webview/BrowserView;)V
    :try_end_d0
    .catch Ljava/lang/Throwable; {:try_start_cb .. :try_end_d0} :catch_d1

    goto :goto_5d

    .line 1149
    :catch_d1
    move-exception v0

    .line 1150
    const-string v1, "BrowserView"

    const-string v2, "webview is error"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_72
.end method

.method public loadUrl(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/BrowserView;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public setListener(Lcom/mintegral/msdk/base/webview/BrowserView$a;)V
    .registers 2

    .prologue
    .line 68
    iput-object p1, p0, Lcom/mintegral/msdk/base/webview/BrowserView;->e:Lcom/mintegral/msdk/base/webview/BrowserView$a;

    .line 69
    return-void
.end method

.method public setWebView(Landroid/webkit/WebView;)V
    .registers 2

    .prologue
    .line 76
    iput-object p1, p0, Lcom/mintegral/msdk/base/webview/BrowserView;->c:Landroid/webkit/WebView;

    .line 77
    return-void
.end method
