.class final Lcom/tapjoy/TJEventOptimizer$b;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJEventOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/TJEventOptimizer;


# direct methods
.method private constructor <init>(Lcom/tapjoy/TJEventOptimizer;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/tapjoy/TJEventOptimizer$b;->a:Lcom/tapjoy/TJEventOptimizer;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/TJEventOptimizer;B)V
    .registers 3

    .line 82
    invoke-direct {p0, p1}, Lcom/tapjoy/TJEventOptimizer$b;-><init>(Lcom/tapjoy/TJEventOptimizer;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 94
    invoke-static {}, Lcom/tapjoy/TJEventOptimizer;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "boostrap html loaded successfully"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .line 87
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/tapjoy/TJEventOptimizer;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v2, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v3, "Error encountered when instantiating a WebViewClient"

    invoke-direct {v1, v2, v3}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 89
    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .registers 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "detail"    # Landroid/webkit/RenderProcessGoneDetail;

    .line 101
    invoke-static {}, Lcom/tapjoy/TJEventOptimizer;->c()Lcom/tapjoy/TJEventOptimizer;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 102
    invoke-static {}, Lcom/tapjoy/TJEventOptimizer;->c()Lcom/tapjoy/TJEventOptimizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TJEventOptimizer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 103
    if-eqz v0, :cond_19

    .line 104
    invoke-static {}, Lcom/tapjoy/TJEventOptimizer;->c()Lcom/tapjoy/TJEventOptimizer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 105
    :cond_19
    invoke-static {}, Lcom/tapjoy/TJEventOptimizer;->c()Lcom/tapjoy/TJEventOptimizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TJEventOptimizer;->destroy()V

    .line 106
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tapjoy/TJEventOptimizer;->a(Lcom/tapjoy/TJEventOptimizer;)Lcom/tapjoy/TJEventOptimizer;

    .line 109
    :cond_24
    invoke-static {}, Lcom/tapjoy/TJEventOptimizer;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v2, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v3, "WebView rendering process exited while instantiating a WebViewClient unexpectedly"

    invoke-direct {v1, v2, v3}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 110
    const/4 v0, 0x1

    return v0
.end method
