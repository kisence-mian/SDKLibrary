.class public Lcom/sigmob/sdk/base/views/CreativeWebView;
.super Lcom/sigmob/sdk/base/views/BaseWebView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/base/views/CreativeWebView$b;,
        Lcom/sigmob/sdk/base/views/CreativeWebView$a;
    }
.end annotation


# static fields
.field private static b:F


# instance fields
.field private final a:Lcom/sigmob/sdk/base/views/AdLogoView;

.field private c:Lcom/sigmob/sdk/base/views/CreativeWebView$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/high16 v0, 0x41200000    # 10.0f

    sput v0, Lcom/sigmob/sdk/base/views/CreativeWebView;->b:F

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/views/BaseWebView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/CreativeWebView;->a()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/CreativeWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 p4, 0x1

    invoke-virtual {p1, p4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0, p4}, Lcom/sigmob/sdk/base/views/CreativeWebView;->a(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/views/CreativeWebView;->setBackgroundColor(I)V

    if-eqz p3, :cond_36

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p1, p3, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance p3, Lcom/sigmob/sdk/base/views/AdLogoView;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/CreativeWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0, p4}, Lcom/sigmob/sdk/base/views/AdLogoView;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lcom/sigmob/sdk/base/views/CreativeWebView;->a:Lcom/sigmob/sdk/base/views/AdLogoView;

    invoke-virtual {p3, p2}, Lcom/sigmob/sdk/base/views/AdLogoView;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/base/b;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/sigmob/sdk/base/views/AdLogoView;->b(Ljava/lang/String;)V

    invoke-virtual {p0, p3, p1}, Lcom/sigmob/sdk/base/views/CreativeWebView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_39

    :cond_36
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/CreativeWebView;->a:Lcom/sigmob/sdk/base/views/AdLogoView;

    :goto_39
    new-instance p1, Lcom/sigmob/sdk/base/views/CreativeWebView$b;

    invoke-direct {p1, p0}, Lcom/sigmob/sdk/base/views/CreativeWebView$b;-><init>(Lcom/sigmob/sdk/base/views/CreativeWebView;)V

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/views/CreativeWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/views/CreativeWebView;)Lcom/sigmob/sdk/base/views/CreativeWebView$a;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/base/views/CreativeWebView;->c:Lcom/sigmob/sdk/base/views/CreativeWebView$a;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/sigmob/sdk/base/views/b;Ljava/lang/String;ZZ)Lcom/sigmob/sdk/base/views/CreativeWebView;
    .registers 6

    invoke-static {p0}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;)Z

    new-instance v0, Lcom/sigmob/sdk/base/views/CreativeWebView;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/sigmob/sdk/base/views/CreativeWebView;-><init>(Landroid/content/Context;Ljava/lang/String;ZZ)V

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/base/views/b;->a(Lcom/sigmob/sdk/base/views/CreativeWebView;)V

    return-object v0
.end method

.method private a()V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/views/CreativeWebView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/views/CreativeWebView;->setHorizontalScrollbarOverlay(Z)V

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/views/CreativeWebView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/views/CreativeWebView;->setVerticalScrollbarOverlay(Z)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/CreativeWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/views/CreativeWebView;->setScrollBarStyle(I)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sigmob/sdk/common/e/f;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://localhost/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "text/html"

    const-string v5, "utf-8"

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sigmob/sdk/base/views/CreativeWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public destroy()V
    .registers 2

    const-string v0, "CreativeWebView destroy() callSigmobLog.d( \"CreativeWebView destroy() called\");ed"

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/sigmob/sdk/base/views/BaseWebView;->destroy()V

    return-void
.end method

.method public setWebViewClickListener(Lcom/sigmob/sdk/base/views/CreativeWebView$a;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/CreativeWebView;->c:Lcom/sigmob/sdk/base/views/CreativeWebView$a;

    return-void
.end method
