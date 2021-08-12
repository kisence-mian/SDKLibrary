.class public Lcom/anythink/basead/ui/web/WebLandPageActivity;
.super Landroid/app/Activity;


# static fields
.field private static final a:I = 0x53d9c


# instance fields
.field private b:Lcom/anythink/basead/ui/web/WebProgressBarView;

.field private c:Landroid/webkit/WebView;

.field private d:Landroid/widget/ImageButton;

.field private e:Landroid/widget/ImageButton;

.field private f:Landroid/widget/ImageButton;

.field private g:Landroid/widget/ImageButton;

.field private h:Z

.field private i:Lcom/anythink/core/common/d/h;

.field private j:Lcom/anythink/core/common/d/i;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageButton;
    .registers 7

    .line 380
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 382
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x420c0000    # 35.0f

    invoke-static {p0, v2}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 383
    const/16 v2, 0x10

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 384
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 387
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 388
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 390
    return-object v0
.end method

.method static synthetic a(Lcom/anythink/basead/ui/web/WebLandPageActivity;)Lcom/anythink/core/common/d/i;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->j:Lcom/anythink/core/common/d/i;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/anythink/basead/c/a;)V
    .registers 5

    .line 67
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 68
    const-class v1, Lcom/anythink/basead/ui/web/WebLandPageActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 70
    iget-object v1, p1, Lcom/anythink/basead/c/a;->c:Lcom/anythink/core/common/d/h;

    const-string v2, "extra_offer_ad"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 71
    iget-object v1, p1, Lcom/anythink/basead/c/a;->g:Lcom/anythink/core/common/d/i;

    const-string v2, "extra_request_info"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 72
    iget-object p1, p1, Lcom/anythink/basead/c/a;->f:Ljava/lang/String;

    const-string v1, "extra_target_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 75
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 76
    return-void
.end method

.method static synthetic b(Lcom/anythink/basead/ui/web/WebLandPageActivity;)Lcom/anythink/core/common/d/h;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->i:Lcom/anythink/core/common/d/h;

    return-object p0
.end method

.method private b()V
    .registers 3

    .line 83
    invoke-virtual {p0}, Lcom/anythink/basead/ui/web/WebLandPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_28

    .line 86
    :try_start_6
    const-string v1, "extra_offer_ad"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/common/d/h;

    iput-object v1, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->i:Lcom/anythink/core/common/d/h;

    .line 87
    const-string v1, "extra_request_info"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/common/d/i;

    iput-object v1, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->j:Lcom/anythink/core/common/d/i;

    .line 88
    const-string v1, "extra_target_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->k:Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_22} :catch_23

    goto :goto_28

    .line 91
    :catch_23
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    return-void

    .line 92
    :cond_28
    :goto_28
    return-void
.end method

.method static synthetic c(Lcom/anythink/basead/ui/web/WebLandPageActivity;)Lcom/anythink/basead/c/e;
    .registers 3

    .line 3232
    invoke-static {}, Lcom/anythink/basead/a/c;->a()Lcom/anythink/basead/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->i:Lcom/anythink/core/common/d/h;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/h;->b()I

    move-result v1

    iget-object p0, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->i:Lcom/anythink/core/common/d/h;

    invoke-virtual {p0}, Lcom/anythink/core/common/d/h;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/anythink/basead/a/c;->a(ILjava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object p0

    .line 50
    return-object p0
.end method

.method private c()V
    .registers 8

    .line 137
    iget-object v0, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->c:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 149
    iget-object v1, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 150
    iget-object v1, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 151
    iget-object v1, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->requestFocus()Z

    .line 153
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 154
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 155
    const-wide/32 v3, 0x500000

    invoke-virtual {v0, v3, v4}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 156
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 157
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 158
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 159
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 160
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 161
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 162
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 163
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 164
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 165
    sget-object v3, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 167
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_51

    .line 168
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 172
    :cond_51
    :try_start_51
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_5a

    .line 173
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V
    :try_end_5a
    .catchall {:try_start_51 .. :try_end_5a} :catchall_5b

    .line 177
    :cond_5a
    goto :goto_5f

    .line 176
    :catchall_5b
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 186
    :goto_5f
    :try_start_5f
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_68

    .line 187
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_68} :catch_69

    .line 191
    :cond_68
    goto :goto_6d

    .line 190
    :catch_69
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 193
    :goto_6d
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_8f

    .line 195
    :try_start_73
    const-class v3, Landroid/webkit/WebSettings;

    const-string v4, "setDisplayZoomControls"

    new-array v5, v1, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 196
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 197
    new-array v1, v1, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v4, v1, v2

    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_8d} :catch_8e

    .line 199
    goto :goto_8f

    .line 198
    :catch_8e
    move-exception v0

    .line 202
    :cond_8f
    :goto_8f
    iget-object v0, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 203
    iget-object v0, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->c:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->i:Lcom/anythink/core/common/d/h;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/h;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_aa

    .line 205
    :cond_a3
    iget-object v0, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->c:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 209
    :goto_aa
    iget-object v0, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->c:Landroid/webkit/WebView;

    new-instance v1, Lcom/anythink/basead/ui/web/a;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/web/a;-><init>(Lcom/anythink/basead/ui/web/WebLandPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 211
    iget-object v0, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->c:Landroid/webkit/WebView;

    new-instance v1, Lcom/anythink/basead/ui/web/WebLandPageActivity$1;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/web/WebLandPageActivity$1;-><init>(Lcom/anythink/basead/ui/web/WebLandPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 229
    return-void
.end method

.method static synthetic d(Lcom/anythink/basead/ui/web/WebLandPageActivity;)Landroid/webkit/WebView;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->c:Landroid/webkit/WebView;

    return-object p0
.end method

.method private d()Lcom/anythink/basead/c/e;
    .registers 4

    .line 232
    invoke-static {}, Lcom/anythink/basead/a/c;->a()Lcom/anythink/basead/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->i:Lcom/anythink/core/common/d/h;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/h;->b()I

    move-result v1

    iget-object v2, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->i:Lcom/anythink/core/common/d/h;

    invoke-virtual {v2}, Lcom/anythink/core/common/d/h;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/anythink/basead/a/c;->a(ILjava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/anythink/basead/ui/web/WebLandPageActivity;)Lcom/anythink/basead/ui/web/WebProgressBarView;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->b:Lcom/anythink/basead/ui/web/WebProgressBarView;

    return-object p0
.end method

.method private e()V
    .registers 4

    .line 236
    iget-object v0, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->d:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 237
    iget-object v0, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->d:Landroid/widget/ImageButton;

    new-instance v2, Lcom/anythink/basead/ui/web/WebLandPageActivity$2;

    invoke-direct {v2, p0}, Lcom/anythink/basead/ui/web/WebLandPageActivity$2;-><init>(Lcom/anythink/basead/ui/web/WebLandPageActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget-object v0, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 246
    iget-object v0, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->e:Landroid/widget/ImageButton;

    new-instance v2, Lcom/anythink/basead/ui/web/WebLandPageActivity$3;

    invoke-direct {v2, p0}, Lcom/anythink/basead/ui/web/WebLandPageActivity$3;-><init>(Lcom/anythink/basead/ui/web/WebLandPageActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    iget-object v0, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 255
    iget-object v0, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->f:Landroid/widget/ImageButton;

    new-instance v2, Lcom/anythink/basead/ui/web/WebLandPageActivity$4;

    invoke-direct {v2, p0}, Lcom/anythink/basead/ui/web/WebLandPageActivity$4;-><init>(Lcom/anythink/basead/ui/web/WebLandPageActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    iget-object v0, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 262
    iget-object v0, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->g:Landroid/widget/ImageButton;

    new-instance v1, Lcom/anythink/basead/ui/web/WebLandPageActivity$5;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/web/WebLandPageActivity$5;-><init>(Lcom/anythink/basead/ui/web/WebLandPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    return-void
.end method

.method private f()V
    .registers 2

    .line 270
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 271
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 272
    return-void
.end method

.method private g()Landroid/view/View;
    .registers 9

    .line 330
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 331
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 332
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 333
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 336
    const v3, 0x53d9c

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setId(I)V

    .line 337
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v5, 0x425c0000    # 55.0f

    invoke-static {p0, v5}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v4, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 338
    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 339
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const v5, -0x9090a

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 341
    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {p0, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result v4

    .line 342
    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 343
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 345
    invoke-virtual {p0}, Lcom/anythink/basead/ui/web/WebLandPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v6, "browser_unleft_icon"

    const-string v7, "drawable"

    invoke-static {p0, v6, v7}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/anythink/basead/ui/web/WebLandPageActivity;->a(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageButton;

    move-result-object v4

    iput-object v4, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->d:Landroid/widget/ImageButton;

    .line 347
    invoke-virtual {p0}, Lcom/anythink/basead/ui/web/WebLandPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v6, "browser_unright_icon"

    invoke-static {p0, v6, v7}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/anythink/basead/ui/web/WebLandPageActivity;->a(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageButton;

    move-result-object v4

    iput-object v4, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->e:Landroid/widget/ImageButton;

    .line 349
    invoke-virtual {p0}, Lcom/anythink/basead/ui/web/WebLandPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v6, "browser_refresh_icon"

    invoke-static {p0, v6, v7}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/anythink/basead/ui/web/WebLandPageActivity;->a(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageButton;

    move-result-object v4

    iput-object v4, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->f:Landroid/widget/ImageButton;

    .line 351
    invoke-virtual {p0}, Lcom/anythink/basead/ui/web/WebLandPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v6, "browser_close_icon"

    invoke-static {p0, v6, v7}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/anythink/basead/ui/web/WebLandPageActivity;->a(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageButton;

    move-result-object v4

    iput-object v4, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->g:Landroid/widget/ImageButton;

    .line 354
    iget-object v4, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->d:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 355
    iget-object v4, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->e:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 356
    iget-object v4, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->f:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 357
    iget-object v4, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->g:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 359
    new-instance v1, Lcom/anythink/basead/ui/web/BaseWebView;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/web/BaseWebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->c:Landroid/webkit/WebView;

    .line 360
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 361
    const/4 v4, 0x2

    invoke-virtual {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 362
    iget-object v6, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v6, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 363
    iget-object v1, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 365
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 366
    const v6, -0x252526

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 367
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {p0, v7}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v6, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 368
    invoke-virtual {v6, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 369
    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 372
    new-instance v1, Lcom/anythink/basead/ui/web/WebProgressBarView;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/web/WebProgressBarView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->b:Lcom/anythink/basead/ui/web/WebProgressBarView;

    .line 373
    invoke-virtual {v1, v5}, Lcom/anythink/basead/ui/web/WebProgressBarView;->setProgress(I)V

    .line 374
    iget-object v1, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->b:Lcom/anythink/basead/ui/web/WebProgressBarView;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {p0, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    return-object v0
.end method


# virtual methods
.method public final a()Lcom/anythink/basead/ui/web/WebProgressBarView;
    .registers 2

    .line 275
    iget-object v0, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->b:Lcom/anythink/basead/ui/web/WebProgressBarView;

    return-object v0
.end method

.method public final a(Z)V
    .registers 4

    .line 96
    iget-object v0, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->e:Landroid/widget/ImageButton;

    const-string v1, "drawable"

    if-eqz p1, :cond_d

    const-string p1, "browser_right_icon"

    invoke-static {p0, p1, v1}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_13

    .line 97
    :cond_d
    const-string p1, "browser_unright_icon"

    invoke-static {p0, p1, v1}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 96
    :goto_13
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 98
    return-void
.end method

.method public final b(Z)V
    .registers 4

    .line 101
    iget-object v0, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->d:Landroid/widget/ImageButton;

    const-string v1, "drawable"

    if-eqz p1, :cond_d

    const-string p1, "browser_left_icon"

    invoke-static {p0, p1, v1}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_13

    .line 102
    :cond_d
    const-string p1, "browser_unleft_icon"

    invoke-static {p0, p1, v1}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 101
    :goto_13
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 103
    return-void
.end method

.method public finish()V
    .registers 2

    .line 314
    invoke-virtual {p0}, Lcom/anythink/basead/ui/web/WebLandPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 315
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 316
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 317
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10

    .line 107
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/anythink/basead/ui/web/WebLandPageActivity;->setResult(I)V

    .line 111
    invoke-virtual {p0}, Lcom/anythink/basead/ui/web/WebLandPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->h:Z

    .line 112
    if-eqz v0, :cond_1b

    .line 113
    invoke-virtual {p0}, Lcom/anythink/basead/ui/web/WebLandPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 116
    :cond_1b
    nop

    .line 1083
    invoke-virtual {p0}, Lcom/anythink/basead/ui/web/WebLandPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1085
    if-eqz v0, :cond_44

    .line 1086
    :try_start_22
    const-string v2, "extra_offer_ad"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/common/d/h;

    iput-object v2, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->i:Lcom/anythink/core/common/d/h;

    .line 1087
    const-string v2, "extra_request_info"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/common/d/i;

    iput-object v2, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->j:Lcom/anythink/core/common/d/i;

    .line 1088
    const-string v2, "extra_target_url"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->k:Ljava/lang/String;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_3e} :catch_3f

    goto :goto_44

    .line 1091
    :catch_3f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_45

    .line 1092
    :cond_44
    :goto_44
    nop

    .line 118
    :goto_45
    iget-object v0, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->i:Lcom/anythink/core/common/d/h;

    if-eqz v0, :cond_25b

    iget-object v0, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->j:Lcom/anythink/core/common/d/i;

    if-nez v0, :cond_4f

    goto/16 :goto_25b

    .line 122
    :cond_4f
    nop

    .line 1330
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1331
    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1332
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, p1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1333
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1335
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1336
    const v3, 0x53d9c

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setId(I)V

    .line 1337
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v5, 0x425c0000    # 55.0f

    invoke-static {p0, v5}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v4, p1, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1338
    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1339
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1340
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const v5, -0x9090a

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1341
    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {p0, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result v4

    .line 1342
    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1343
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1345
    invoke-virtual {p0}, Lcom/anythink/basead/ui/web/WebLandPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v6, "browser_unleft_icon"

    const-string v7, "drawable"

    invoke-static {p0, v6, v7}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/anythink/basead/ui/web/WebLandPageActivity;->a(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageButton;

    move-result-object v4

    iput-object v4, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->d:Landroid/widget/ImageButton;

    .line 1347
    invoke-virtual {p0}, Lcom/anythink/basead/ui/web/WebLandPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v6, "browser_unright_icon"

    invoke-static {p0, v6, v7}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/anythink/basead/ui/web/WebLandPageActivity;->a(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageButton;

    move-result-object v4

    iput-object v4, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->e:Landroid/widget/ImageButton;

    .line 1349
    invoke-virtual {p0}, Lcom/anythink/basead/ui/web/WebLandPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v6, "browser_refresh_icon"

    invoke-static {p0, v6, v7}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/anythink/basead/ui/web/WebLandPageActivity;->a(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageButton;

    move-result-object v4

    iput-object v4, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->f:Landroid/widget/ImageButton;

    .line 1351
    invoke-virtual {p0}, Lcom/anythink/basead/ui/web/WebLandPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v6, "browser_close_icon"

    invoke-static {p0, v6, v7}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/anythink/basead/ui/web/WebLandPageActivity;->a(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageButton;

    move-result-object v4

    iput-object v4, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->g:Landroid/widget/ImageButton;

    .line 1354
    iget-object v4, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->d:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1355
    iget-object v4, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->e:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1356
    iget-object v4, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->f:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1357
    iget-object v4, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->g:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1359
    new-instance v2, Lcom/anythink/basead/ui/web/BaseWebView;

    invoke-direct {v2, p0}, Lcom/anythink/basead/ui/web/BaseWebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->c:Landroid/webkit/WebView;

    .line 1360
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, p1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1361
    invoke-virtual {v2, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1362
    iget-object v4, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v4, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1363
    iget-object v2, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1365
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1366
    const v4, -0x252526

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1367
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {p0, v6}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, p1, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1368
    invoke-virtual {v4, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1369
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1370
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1372
    new-instance v1, Lcom/anythink/basead/ui/web/WebProgressBarView;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/web/WebProgressBarView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->b:Lcom/anythink/basead/ui/web/WebProgressBarView;

    .line 1373
    invoke-virtual {v1, v5}, Lcom/anythink/basead/ui/web/WebProgressBarView;->setProgress(I)V

    .line 1374
    iget-object v1, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->b:Lcom/anythink/basead/ui/web/WebProgressBarView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p0, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v2, p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1376
    nop

    .line 122
    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/web/WebLandPageActivity;->setContentView(Landroid/view/View;)V

    .line 124
    nop

    .line 2137
    iget-object p1, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    .line 2148
    iget-object v0, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 2149
    iget-object v0, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 2150
    iget-object v0, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 2151
    iget-object v0, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 2153
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 2154
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 2155
    const-wide/32 v1, 0x500000

    invoke-virtual {p1, v1, v2}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 2156
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 2157
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 2158
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 2159
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 2160
    invoke-virtual {p1, v5}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 2161
    invoke-virtual {p1, v5}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 2162
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 2163
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 2164
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 2165
    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 2167
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1a5

    .line 2168
    invoke-virtual {p1, v5}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 2172
    :cond_1a5
    :try_start_1a5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1ae

    .line 2173
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V
    :try_end_1ae
    .catchall {:try_start_1a5 .. :try_end_1ae} :catchall_1af

    .line 2177
    :cond_1ae
    goto :goto_1b3

    .line 2176
    :catchall_1af
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2186
    :goto_1b3
    :try_start_1b3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1bc

    .line 2187
    invoke-virtual {p1, v5}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V
    :try_end_1bc
    .catch Ljava/lang/Exception; {:try_start_1b3 .. :try_end_1bc} :catch_1bd

    .line 2191
    :cond_1bc
    goto :goto_1c1

    .line 2190
    :catch_1bd
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2193
    :goto_1c1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1e3

    .line 2195
    :try_start_1c7
    const-class v1, Landroid/webkit/WebSettings;

    const-string v2, "setDisplayZoomControls"

    new-array v3, v0, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2196
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2197
    new-array v0, v0, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v0, v5

    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e1
    .catch Ljava/lang/Exception; {:try_start_1c7 .. :try_end_1e1} :catch_1e2

    .line 2199
    goto :goto_1e3

    .line 2198
    :catch_1e2
    move-exception p1

    .line 2202
    :cond_1e3
    :goto_1e3
    iget-object p1, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->k:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1f7

    .line 2203
    iget-object p1, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->c:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->i:Lcom/anythink/core/common/d/h;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/h;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1fe

    .line 2205
    :cond_1f7
    iget-object p1, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->c:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2209
    :goto_1fe
    iget-object p1, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->c:Landroid/webkit/WebView;

    new-instance v0, Lcom/anythink/basead/ui/web/a;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/web/a;-><init>(Lcom/anythink/basead/ui/web/WebLandPageActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 2211
    iget-object p1, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->c:Landroid/webkit/WebView;

    new-instance v0, Lcom/anythink/basead/ui/web/WebLandPageActivity$1;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/web/WebLandPageActivity$1;-><init>(Lcom/anythink/basead/ui/web/WebLandPageActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 125
    nop

    .line 2236
    iget-object p1, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->d:Landroid/widget/ImageButton;

    invoke-virtual {p1, v5}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 2237
    iget-object p1, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->d:Landroid/widget/ImageButton;

    new-instance v0, Lcom/anythink/basead/ui/web/WebLandPageActivity$2;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/web/WebLandPageActivity$2;-><init>(Lcom/anythink/basead/ui/web/WebLandPageActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2245
    iget-object p1, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->e:Landroid/widget/ImageButton;

    invoke-virtual {p1, v5}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 2246
    iget-object p1, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->e:Landroid/widget/ImageButton;

    new-instance v0, Lcom/anythink/basead/ui/web/WebLandPageActivity$3;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/web/WebLandPageActivity$3;-><init>(Lcom/anythink/basead/ui/web/WebLandPageActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2254
    iget-object p1, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->f:Landroid/widget/ImageButton;

    invoke-virtual {p1, v5}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 2255
    iget-object p1, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->f:Landroid/widget/ImageButton;

    new-instance v0, Lcom/anythink/basead/ui/web/WebLandPageActivity$4;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/web/WebLandPageActivity$4;-><init>(Lcom/anythink/basead/ui/web/WebLandPageActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2261
    iget-object p1, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->g:Landroid/widget/ImageButton;

    invoke-virtual {p1, v5}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 2262
    iget-object p1, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->g:Landroid/widget/ImageButton;

    new-instance v0, Lcom/anythink/basead/ui/web/WebLandPageActivity$5;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/web/WebLandPageActivity$5;-><init>(Lcom/anythink/basead/ui/web/WebLandPageActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    nop

    .line 2270
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 2271
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 127
    return-void

    .line 119
    :cond_25b
    :goto_25b
    invoke-virtual {p0}, Lcom/anythink/basead/ui/web/WebLandPageActivity;->finish()V

    .line 120
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 321
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 322
    iget-object v0, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->c:Landroid/webkit/WebView;

    if-eqz v0, :cond_a

    .line 323
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 325
    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->c:Landroid/webkit/WebView;

    .line 326
    return-void
.end method

.method protected onPause()V
    .registers 3

    .line 280
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 281
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 282
    iget-object v0, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->c:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 283
    iget-object v0, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/web/WebLandPageActivity;->isFinishing()Z

    move-result v1

    .line 3028
    if-eqz v1, :cond_20

    .line 3029
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 3030
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 3033
    :cond_20
    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 284
    return-void
.end method

.method protected onResume()V
    .registers 3

    .line 288
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 289
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 290
    iget-object v0, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->c:Landroid/webkit/WebView;

    new-instance v1, Lcom/anythink/basead/ui/web/WebLandPageActivity$6;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/web/WebLandPageActivity$6;-><init>(Lcom/anythink/basead/ui/web/WebLandPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 307
    iget-object v0, p0, Lcom/anythink/basead/ui/web/WebLandPageActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 308
    return-void
.end method

.method protected onStart()V
    .registers 1

    .line 131
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 132
    invoke-static {p0}, Lcom/anythink/core/common/g/h;->a(Landroid/app/Activity;)V

    .line 133
    return-void
.end method
