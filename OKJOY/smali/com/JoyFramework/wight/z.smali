.class public Lcom/JoyFramework/wight/z;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/JoyFramework/wight/z$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/webkit/WebView;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Lcom/JoyFramework/wight/z$a;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;ZLcom/JoyFramework/wight/z$a;)V
    .registers 9

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 35
    iput-object p1, p0, Lcom/JoyFramework/wight/z;->c:Landroid/content/Context;

    .line 36
    iput-object p3, p0, Lcom/JoyFramework/wight/z;->d:Ljava/lang/String;

    .line 37
    iput-object p5, p0, Lcom/JoyFramework/wight/z;->g:Lcom/JoyFramework/wight/z$a;

    .line 38
    iput-boolean p4, p0, Lcom/JoyFramework/wight/z;->h:Z

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "joy_dialog_update"

    const-string v2, "layout"

    .line 40
    invoke-static {p1, v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/wight/z;->a:Landroid/view/View;

    .line 43
    return-void
.end method

.method private static a(Landroid/content/Context;F)I
    .registers 4

    .prologue
    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 99
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/JoyFramework/wight/z;->g:Lcom/JoyFramework/wight/z$a;

    invoke-interface {v0, p1}, Lcom/JoyFramework/wight/z$a;->a(Landroid/view/View;)V

    .line 53
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x42480000    # 50.0f

    .line 58
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 60
    iget-object v0, p0, Lcom/JoyFramework/wight/z;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/z;->setContentView(Landroid/view/View;)V

    .line 61
    iget-object v0, p0, Lcom/JoyFramework/wight/z;->c:Landroid/content/Context;

    const-string v2, "next_button_updata"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/z;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/JoyFramework/wight/z;->e:Landroid/widget/Button;

    .line 63
    iget-object v0, p0, Lcom/JoyFramework/wight/z;->c:Landroid/content/Context;

    const-string v2, "button_updata"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/z;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/JoyFramework/wight/z;->f:Landroid/widget/Button;

    .line 65
    iget-object v0, p0, Lcom/JoyFramework/wight/z;->f:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 66
    iget-object v0, p0, Lcom/JoyFramework/wight/z;->c:Landroid/content/Context;

    const-string v2, "result_updata"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/z;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/JoyFramework/wight/z;->b:Landroid/webkit/WebView;

    .line 69
    iget-object v0, p0, Lcom/JoyFramework/wight/z;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 70
    iget-object v0, p0, Lcom/JoyFramework/wight/z;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 71
    iget-object v0, p0, Lcom/JoyFramework/wight/z;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 72
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 74
    iget-object v0, p0, Lcom/JoyFramework/wight/z;->b:Landroid/webkit/WebView;

    new-instance v2, Lcom/JoyFramework/wight/aa;

    invoke-direct {v2, p0}, Lcom/JoyFramework/wight/aa;-><init>(Lcom/JoyFramework/wight/z;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 81
    iget-object v0, p0, Lcom/JoyFramework/wight/z;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/JoyFramework/d/ar;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 82
    iget-object v0, p0, Lcom/JoyFramework/wight/z;->b:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/JoyFramework/wight/z;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 86
    :goto_82
    iget-object v0, p0, Lcom/JoyFramework/wight/z;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/JoyFramework/wight/z;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-boolean v0, p0, Lcom/JoyFramework/wight/z;->h:Z

    if-eqz v0, :cond_b1

    .line 89
    const/4 v0, -0x1

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 90
    const/4 v0, -0x2

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 91
    iget-object v0, p0, Lcom/JoyFramework/wight/z;->c:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/JoyFramework/wight/z;->a(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Lcom/JoyFramework/wight/z;->c:Landroid/content/Context;

    invoke-static {v1, v7}, Lcom/JoyFramework/wight/z;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v6, v0, v8, v1, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 92
    iget-object v0, p0, Lcom/JoyFramework/wight/z;->f:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    iget-object v0, p0, Lcom/JoyFramework/wight/z;->e:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 95
    :cond_b1
    return-void

    .line 84
    :cond_b2
    iget-object v0, p0, Lcom/JoyFramework/wight/z;->b:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/JoyFramework/wight/z;->d:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_82
.end method
