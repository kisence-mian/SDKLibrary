.class public Lcom/JoyFramework/module/b/c/c;
.super Lcom/JoyFramework/module/a;
.source "SourceFile"


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Lcom/JoyFramework/wight/Loading/af;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/JoyFramework/module/a;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/JoyFramework/module/b/c/c;->b:Lcom/JoyFramework/wight/Loading/af;

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/JoyFramework/module/b/c/c;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/JoyFramework/module/b/c/c;)V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/JoyFramework/module/b/c/c;->e()V

    return-void
.end method

.method static synthetic c(Lcom/JoyFramework/module/b/c/c;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/c;->c:Landroid/content/Context;

    return-object v0
.end method

.method private d()V
    .registers 2

    .prologue
    .line 244
    :try_start_0
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 245
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/c;->b:Lcom/JoyFramework/wight/Loading/af;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/Loading/af;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 246
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/c;->b:Lcom/JoyFramework/wight/Loading/af;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/Loading/af;->show()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 252
    :cond_1d
    :goto_1d
    return-void

    .line 249
    :catch_1e
    move-exception v0

    .line 250
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1d
.end method

.method static synthetic d(Lcom/JoyFramework/module/b/c/c;)V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/JoyFramework/module/b/c/c;->d()V

    return-void
.end method

.method private e()V
    .registers 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/c;->b:Lcom/JoyFramework/wight/Loading/af;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/JoyFramework/module/b/c/c;->b:Lcom/JoyFramework/wight/Loading/af;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/Loading/af;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 256
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/c;->b:Lcom/JoyFramework/wight/Loading/af;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/Loading/af;->dismiss()V

    .line 258
    :cond_11
    return-void
.end method


# virtual methods
.method public b()Z
    .registers 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/module/b/c/c;->b(Landroid/app/Activity;)V

    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 83
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/c;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 85
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    const-string v2, "orderId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/b/c/c;->d:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/c;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 92
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 94
    iget-object v2, p0, Lcom/JoyFramework/module/b/c/c;->a:Landroid/webkit/WebView;

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 95
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 96
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 97
    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 98
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 99
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/c;->a:Landroid/webkit/WebView;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 101
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/c;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 102
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/c;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 107
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/c;->a:Landroid/webkit/WebView;

    new-instance v2, Lcom/JoyFramework/module/b/c/e;

    invoke-direct {v2, p0}, Lcom/JoyFramework/module/b/c/e;-><init>(Lcom/JoyFramework/module/b/c/c;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 236
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/c;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 54
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "joy_activity_web"

    const-string v2, "layout"

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 55
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/b/c/c;->c:Landroid/content/Context;

    .line 57
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "webview"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/JoyFramework/module/b/c/c;->a:Landroid/webkit/WebView;

    .line 58
    new-instance v0, Lcom/JoyFramework/wight/Loading/af$a;

    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/c;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/JoyFramework/wight/Loading/af$a;-><init>(Landroid/content/Context;)V

    .line 59
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/c;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "JoyGame_Dialog_theme"

    const-string v4, "style"

    invoke-static {v2, v3, v4}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/JoyFramework/wight/Loading/af$a;->a(I)Lcom/JoyFramework/wight/Loading/af$a;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/JoyFramework/wight/Loading/af$a;->a()Lcom/JoyFramework/wight/Loading/af;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/b/c/c;->b:Lcom/JoyFramework/wight/Loading/af;

    .line 62
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/c;->b:Lcom/JoyFramework/wight/Loading/af;

    invoke-virtual {v0, v5}, Lcom/JoyFramework/wight/Loading/af;->setCanceledOnTouchOutside(Z)V

    .line 64
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "l_web_close"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/JoyFramework/module/b/c/d;

    invoke-direct {v2, p0}, Lcom/JoyFramework/module/b/c/d;-><init>(Lcom/JoyFramework/module/b/c/c;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/c;->c()V

    .line 72
    return-object v1
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 296
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onDestroy()V

    .line 298
    :try_start_3
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/c;->b:Lcom/JoyFramework/wight/Loading/af;

    if-eqz v0, :cond_a

    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/JoyFramework/module/b/c/c;->b:Lcom/JoyFramework/wight/Loading/af;

    .line 301
    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/JoyFramework/module/b/c/c;->c:Landroid/content/Context;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_e

    .line 305
    :goto_d
    return-void

    .line 302
    :catch_e
    move-exception v0

    .line 303
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 281
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onResume()V

    .line 283
    :try_start_3
    sget-boolean v0, Lcom/JoyFramework/a/a;->K:Z

    if-eqz v0, :cond_1f

    .line 284
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/module/b/c/c;->a(Landroid/app/Activity;)V

    .line 285
    const/4 v0, 0x0

    sput-boolean v0, Lcom/JoyFramework/a/a;->K:Z

    .line 286
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/c/e;->h()V

    .line 287
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1f} :catch_20

    .line 292
    :cond_1f
    :goto_1f
    return-void

    .line 289
    :catch_20
    move-exception v0

    .line 290
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 262
    invoke-super {p0}, Lcom/JoyFramework/module/a;->onStop()V

    .line 264
    :try_start_3
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/c;->b:Lcom/JoyFramework/wight/Loading/af;

    if-eqz v0, :cond_c

    .line 265
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/c;->b:Lcom/JoyFramework/wight/Loading/af;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/Loading/af;->dismiss()V

    .line 267
    :cond_c
    sget-boolean v0, Lcom/JoyFramework/a/a;->K:Z

    if-eqz v0, :cond_21

    .line 268
    const/4 v0, 0x0

    sput-boolean v0, Lcom/JoyFramework/a/a;->K:Z

    .line 270
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/c/e;->h()V

    .line 271
    invoke-virtual {p0}, Lcom/JoyFramework/module/b/c/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_21} :catch_22

    .line 276
    :cond_21
    :goto_21
    return-void

    .line 273
    :catch_22
    move-exception v0

    .line 274
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_21
.end method
