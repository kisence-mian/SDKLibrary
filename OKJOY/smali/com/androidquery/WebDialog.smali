.class public Lcom/androidquery/WebDialog;
.super Landroid/app/Dialog;
.source "WebDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidquery/WebDialog$DialogWebViewClient;
    }
.end annotation


# instance fields
.field private client:Landroid/webkit/WebViewClient;

.field private ll:Landroid/widget/LinearLayout;

.field private message:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private wv:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebViewClient;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "client"    # Landroid/webkit/WebViewClient;

    .prologue
    .line 32
    const v0, 0x1030006

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 33
    iput-object p2, p0, Lcom/androidquery/WebDialog;->url:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/androidquery/WebDialog;->client:Landroid/webkit/WebViewClient;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/androidquery/WebDialog;Z)V
    .registers 2

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/androidquery/WebDialog;->showProgress(Z)V

    return-void
.end method

.method static synthetic access$1(Lcom/androidquery/WebDialog;)Landroid/webkit/WebViewClient;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/androidquery/WebDialog;->client:Landroid/webkit/WebViewClient;

    return-object v0
.end method

.method private setupProgress(Landroid/widget/RelativeLayout;)V
    .registers 11
    .param p1, "layout"    # Landroid/widget/RelativeLayout;

    .prologue
    const/4 v8, -0x2

    .line 64
    invoke-virtual {p0}, Lcom/androidquery/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 66
    .local v0, "context":Landroid/content/Context;
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/androidquery/WebDialog;->ll:Landroid/widget/LinearLayout;

    .line 68
    new-instance v4, Landroid/widget/ProgressBar;

    invoke-direct {v4, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 69
    .local v4, "progress":Landroid/widget/ProgressBar;
    const/high16 v7, 0x41f00000    # 30.0f

    invoke-static {v0, v7}, Lcom/androidquery/util/AQUtility;->dip2pixel(Landroid/content/Context;F)I

    move-result v2

    .line 70
    .local v2, "p":I
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 71
    .local v3, "plp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lcom/androidquery/WebDialog;->ll:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    iget-object v7, p0, Lcom/androidquery/WebDialog;->message:Ljava/lang/String;

    if-eqz v7, :cond_45

    .line 74
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 75
    .local v6, "tv":Landroid/widget/TextView;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 76
    .local v5, "tlp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {v0, v7}, Lcom/androidquery/util/AQUtility;->dip2pixel(Landroid/content/Context;F)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 77
    const/16 v7, 0x10

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 78
    iget-object v7, p0, Lcom/androidquery/WebDialog;->message:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v7, p0, Lcom/androidquery/WebDialog;->ll:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    .end local v5    # "tlp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6    # "tv":Landroid/widget/TextView;
    :cond_45
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 83
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xd

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 85
    iget-object v7, p0, Lcom/androidquery/WebDialog;->ll:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v7, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    return-void
.end method

.method private setupWebView(Landroid/widget/RelativeLayout;)V
    .registers 8
    .param p1, "layout"    # Landroid/widget/RelativeLayout;

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 91
    new-instance v2, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/androidquery/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/androidquery/WebDialog;->wv:Landroid/webkit/WebView;

    .line 92
    iget-object v2, p0, Lcom/androidquery/WebDialog;->wv:Landroid/webkit/WebView;

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 93
    iget-object v2, p0, Lcom/androidquery/WebDialog;->wv:Landroid/webkit/WebView;

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 95
    iget-object v2, p0, Lcom/androidquery/WebDialog;->client:Landroid/webkit/WebViewClient;

    if-nez v2, :cond_22

    new-instance v2, Landroid/webkit/WebViewClient;

    invoke-direct {v2}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object v2, p0, Lcom/androidquery/WebDialog;->client:Landroid/webkit/WebViewClient;

    .line 97
    :cond_22
    iget-object v2, p0, Lcom/androidquery/WebDialog;->wv:Landroid/webkit/WebView;

    new-instance v3, Lcom/androidquery/WebDialog$DialogWebViewClient;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/androidquery/WebDialog$DialogWebViewClient;-><init>(Lcom/androidquery/WebDialog;Lcom/androidquery/WebDialog$DialogWebViewClient;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 99
    iget-object v2, p0, Lcom/androidquery/WebDialog;->wv:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 100
    .local v1, "ws":Landroid/webkit/WebSettings;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 105
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 106
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/androidquery/WebDialog;->wv:Landroid/webkit/WebView;

    invoke-virtual {p1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    return-void
.end method

.method private showProgress(Z)V
    .registers 4
    .param p1, "show"    # Z

    .prologue
    .line 119
    iget-object v0, p0, Lcom/androidquery/WebDialog;->ll:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_c

    .line 121
    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/androidquery/WebDialog;->ll:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 125
    :cond_c
    :goto_c
    return-void

    .line 122
    :cond_d
    iget-object v0, p0, Lcom/androidquery/WebDialog;->ll:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_c
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .prologue
    .line 131
    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 135
    :goto_3
    return-void

    .line 132
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method public load()V
    .registers 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/androidquery/WebDialog;->wv:Landroid/webkit/WebView;

    if-eqz v0, :cond_b

    .line 113
    iget-object v0, p0, Lcom/androidquery/WebDialog;->wv:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/androidquery/WebDialog;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 115
    :cond_b
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, -0x1

    .line 46
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 49
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/androidquery/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 50
    .local v1, "layout":Landroid/widget/RelativeLayout;
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 52
    invoke-direct {p0, v1}, Lcom/androidquery/WebDialog;->setupWebView(Landroid/widget/RelativeLayout;)V

    .line 53
    invoke-direct {p0, v1}, Lcom/androidquery/WebDialog;->setupProgress(Landroid/widget/RelativeLayout;)V

    .line 56
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 57
    .local v0, "FILL":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0, v1, v0}, Lcom/androidquery/WebDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    return-void
.end method

.method public setLoadingMessage(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/androidquery/WebDialog;->message:Ljava/lang/String;

    .line 40
    return-void
.end method
