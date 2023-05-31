.class public Lcom/sigmob/sdk/base/views/CreativeWebView;
.super Lcom/sigmob/sdk/base/views/BaseWebView;


# static fields
.field private static b:F = 0.0f

.field private static final c:F = 1.0f


# instance fields
.field private final a:Lcom/sigmob/sdk/base/views/AdLogoView;

.field private d:Lcom/sigmob/sdk/base/views/g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/high16 v0, 0x41200000    # 10.0f

    sput v0, Lcom/sigmob/sdk/base/views/CreativeWebView;->b:F

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .registers 9

    const/4 v1, -0x1

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/views/BaseWebView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/CreativeWebView;->d()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/CreativeWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0, v3}, Lcom/sigmob/sdk/base/views/CreativeWebView;->a(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/views/CreativeWebView;->setBackgroundColor(I)V

    if-eqz p3, :cond_44

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Lcom/sigmob/sdk/base/views/AdLogoView;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/CreativeWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/sigmob/sdk/base/views/AdLogoView;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sigmob/sdk/base/views/CreativeWebView;->a:Lcom/sigmob/sdk/base/views/AdLogoView;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/CreativeWebView;->a:Lcom/sigmob/sdk/base/views/AdLogoView;

    invoke-virtual {v1, p2}, Lcom/sigmob/sdk/base/views/AdLogoView;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/CreativeWebView;->a:Lcom/sigmob/sdk/base/views/AdLogoView;

    invoke-static {}, Lcom/sigmob/sdk/base/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/base/views/AdLogoView;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/CreativeWebView;->a:Lcom/sigmob/sdk/base/views/AdLogoView;

    invoke-virtual {p0, v1, v0}, Lcom/sigmob/sdk/base/views/CreativeWebView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_3b
    new-instance v0, Lcom/sigmob/sdk/base/views/h;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/base/views/h;-><init>(Lcom/sigmob/sdk/base/views/CreativeWebView;)V

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/views/CreativeWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :cond_44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/CreativeWebView;->a:Lcom/sigmob/sdk/base/views/AdLogoView;

    goto :goto_3b
.end method

.method public static a(Landroid/content/Context;Lcom/sigmob/sdk/base/views/d;Ljava/lang/String;ZZ)Lcom/sigmob/sdk/base/views/CreativeWebView;
    .registers 6

    invoke-static {p0}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    new-instance v0, Lcom/sigmob/sdk/base/views/CreativeWebView;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/sigmob/sdk/base/views/CreativeWebView;-><init>(Landroid/content/Context;Ljava/lang/String;ZZ)V

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/base/views/d;->a(Lcom/sigmob/sdk/base/views/CreativeWebView;)V

    return-object v0
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/views/CreativeWebView;)Lcom/sigmob/sdk/base/views/g;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/CreativeWebView;->d:Lcom/sigmob/sdk/base/views/g;

    return-object v0
.end method

.method private d()V
    .registers 3

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/views/CreativeWebView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/views/CreativeWebView;->setHorizontalScrollbarOverlay(Z)V

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/views/CreativeWebView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/views/CreativeWebView;->setVerticalScrollbarOverlay(Z)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/CreativeWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/views/CreativeWebView;->setScrollBarStyle(I)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sigmob/sdk/base/c/i;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://localhost/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sigmob/sdk/base/views/CreativeWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public destroy()V
    .registers 2

    const-string v0, "CreativeWebView destroy() callSigmobLog.d( \"CreativeWebView destroy() called\");ed"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/sigmob/sdk/base/views/BaseWebView;->destroy()V

    return-void
.end method

.method public setWebViewClickListener(Lcom/sigmob/sdk/base/views/g;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/CreativeWebView;->d:Lcom/sigmob/sdk/base/views/g;

    return-void
.end method
