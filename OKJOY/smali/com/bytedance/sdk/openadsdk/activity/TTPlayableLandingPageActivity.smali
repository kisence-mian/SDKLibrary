.class public Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;
.super Landroid/app/Activity;
.source "TTPlayableLandingPageActivity.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/a/d;
.implements Lcom/bytedance/sdk/openadsdk/utils/ak$a;


# instance fields
.field protected a:Lcom/bytedance/sdk/openadsdk/e/c;

.field private b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

.field private c:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

.field private d:Z

.field private e:Z

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/content/Context;

.field private h:I

.field private i:Landroid/widget/ProgressBar;

.field private j:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Lcom/bytedance/sdk/openadsdk/core/x;

.field private n:Lcom/bytedance/sdk/openadsdk/core/x;

.field private o:I

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Lcom/bytedance/sdk/openadsdk/core/d/k;

.field private t:Lcom/bytedance/sdk/openadsdk/utils/ak;

.field private u:Z

.field private v:Z

.field private w:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

.field private x:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 78
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->d:Z

    .line 79
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->e:Z

    .line 97
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/ak;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/utils/ak;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/openadsdk/utils/ak$a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->t:Lcom/bytedance/sdk/openadsdk/utils/ak;

    .line 101
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 107
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->z:Z

    .line 109
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity$1;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->a:Lcom/bytedance/sdk/openadsdk/e/c;

    return-void
.end method

.method private a(I)Landroid/os/Message;
    .registers 4

    .prologue
    .line 128
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 129
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 130
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 131
    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;I)Landroid/os/Message;
    .registers 3

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->a(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;)Lcom/bytedance/sdk/openadsdk/core/d/k;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/k;

    return-object v0
.end method

.method private a(Landroid/os/Bundle;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 247
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 248
    if-eqz v0, :cond_49

    .line 249
    const-string v1, "sdk_version"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->h:I

    .line 250
    const-string v1, "adid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->k:Ljava/lang/String;

    .line 251
    const-string v1, "log_extra"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->l:Ljava/lang/String;

    .line 252
    const-string v1, "source"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->o:I

    .line 253
    const-string v1, "ad_pending_download"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->u:Z

    .line 254
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->p:Ljava/lang/String;

    .line 255
    const-string v1, "web_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->q:Ljava/lang/String;

    .line 256
    const-string v1, "event_tag"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->r:Ljava/lang/String;

    .line 260
    :cond_49
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v1

    if-eqz v1, :cond_d7

    .line 261
    const-string v1, "multi_process_materialmeta"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 262
    if-eqz v0, :cond_62

    .line 265
    :try_start_57
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/k;
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_62} :catch_ce

    .line 275
    :cond_62
    :goto_62
    if-eqz p1, :cond_bf

    .line 277
    :try_start_64
    const-string v0, "sdk_version"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->h:I

    .line 278
    const-string v0, "adid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->k:Ljava/lang/String;

    .line 279
    const-string v0, "log_extra"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->l:Ljava/lang/String;

    .line 280
    const-string v0, "source"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->o:I

    .line 281
    const-string v0, "ad_pending_download"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->u:Z

    .line 282
    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->p:Ljava/lang/String;

    .line 283
    const-string v0, "web_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->q:Ljava/lang/String;

    .line 284
    const-string v0, "event_tag"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->r:Ljava/lang/String;

    .line 286
    const-string v0, "material_meta"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_bf

    .line 288
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/k;
    :try_end_bf
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_bf} :catch_ea

    .line 294
    :cond_bf
    :goto_bf
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-nez v0, :cond_cd

    .line 295
    const-string v0, "TTPlayableLandingPageActivity"

    const-string v1, "material is null, no data to display"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->finish()V

    .line 299
    :cond_cd
    return-void

    .line 266
    :catch_ce
    move-exception v0

    .line 267
    const-string v1, "TTPlayableLandingPageActivity"

    const-string v2, "TTPlayableLandingPageActivity - onCreate MultiGlobalInfo : "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_62

    .line 271
    :cond_d7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/u;->a()Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/u;->c()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 272
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/u;->a()Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/u;->g()V

    goto/16 :goto_62

    .line 290
    :catch_ea
    move-exception v0

    goto :goto_bf
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 416
    if-nez p1, :cond_4

    .line 425
    :cond_3
    :goto_3
    return-void

    .line 419
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->a(Z)Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->b(Z)Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->a(Landroid/webkit/WebView;)V

    .line 420
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->h:I

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->a(Landroid/webkit/WebView;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 422
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 423
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    goto :goto_3
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 428
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->r:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 429
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;Z)Z
    .registers 2

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;)Lcom/bytedance/sdk/openadsdk/utils/ak;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->t:Lcom/bytedance/sdk/openadsdk/utils/ak;

    return-object v0
.end method

.method private b()V
    .registers 3

    .prologue
    .line 330
    const-string v0, "tt_playable_loading"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->j:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    .line 331
    const-string v0, "tt_browser_webview"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    .line 332
    const-string v0, "tt_browser_webview_loading"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->c:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    .line 333
    const-string v0, "tt_playable_ad_close_layout"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->f:Landroid/widget/RelativeLayout;

    .line 334
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->f:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_46

    .line 335
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->f:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity$4;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    :cond_46
    const-string v0, "tt_browser_progress"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->i:Landroid/widget/ProgressBar;

    .line 346
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;Z)Z
    .registers 2

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->e:Z

    return p1
.end method

.method private c()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 399
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 413
    :cond_a
    :goto_a
    return-void

    .line 402
    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->c:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    if-eqz v0, :cond_a

    .line 403
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 404
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->c:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 405
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->d(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 406
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v0

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/h/a;->s:I

    .line 407
    if-ltz v0, :cond_42

    .line 408
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->t:Lcom/bytedance/sdk/openadsdk/utils/ak;

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-virtual {v1, v4, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_a

    .line 410
    :cond_42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->f:Landroid/widget/RelativeLayout;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    goto :goto_a
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;)Z
    .registers 2

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->z:Z

    return v0
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;)Landroid/widget/ProgressBar;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->i:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private d()Z
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 432
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->c:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    if-nez v1, :cond_6

    .line 467
    :cond_5
    :goto_5
    return v0

    .line 435
    :cond_6
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->e()Ljava/lang/String;

    move-result-object v6

    .line 436
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 439
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->c:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity$6;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->g:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->n:Lcom/bytedance/sdk/openadsdk/core/x;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->k:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity$6;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/x;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/c/j;)V

    invoke-virtual {v7, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 466
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->c:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-virtual {v0, v6}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->loadUrl(Ljava/lang/String;)V

    .line 467
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private e()Ljava/lang/String;
    .registers 12

    .prologue
    .line 471
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->p()Ljava/lang/String;

    move-result-object v0

    .line 473
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->N()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v1

    if-nez v1, :cond_1b

    .line 495
    :cond_1a
    :goto_1a
    return-object v0

    .line 476
    :cond_1b
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->N()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v1

    .line 477
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->N()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/b;->e()I

    move-result v2

    .line 478
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/k;->N()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/b;->f()I

    move-result v3

    .line 479
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/d/k;->C()Lcom/bytedance/sdk/openadsdk/core/d/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a()Ljava/lang/String;

    move-result-object v4

    .line 480
    const/4 v5, 0x0

    .line 481
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/d/k;->M()Ljava/lang/String;

    move-result-object v6

    .line 482
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/d/k;->N()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/d/b;->d()Ljava/lang/String;

    move-result-object v7

    .line 483
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/d/k;->N()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b()Ljava/lang/String;

    move-result-object v8

    .line 484
    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v9}, Lcom/bytedance/sdk/openadsdk/core/d/k;->N()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v9

    invoke-virtual {v9}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v9

    .line 485
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 486
    const-string v0, "?appname="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&stars="

    .line 487
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&comments="

    .line 488
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&icon="

    .line 489
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&downloading="

    .line 490
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&id="

    .line 491
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&pkg_name="

    .line 492
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&download_url="

    .line 493
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&name="

    .line 494
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 495
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1a
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;)Z
    .registers 2

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->d:Z

    return v0
.end method

.method private f()V
    .registers 2

    .prologue
    .line 499
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->v:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->u:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->w:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v0, :cond_11

    .line 500
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->w:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->h()V

    .line 502
    :cond_11
    return-void
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;)V
    .registers 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->c()V

    return-void
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->p:Ljava/lang/String;

    return-object v0
.end method

.method private g()V
    .registers 4

    .prologue
    .line 505
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 506
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/x;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->m:Lcom/bytedance/sdk/openadsdk/core/x;

    .line 508
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->m:Lcom/bytedance/sdk/openadsdk/core/x;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Landroid/webkit/WebView;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 509
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v1

    .line 510
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->k:Ljava/lang/String;

    .line 511
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->l:Ljava/lang/String;

    .line 512
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->o:I

    .line 513
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->a(I)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v0

    .line 514
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/openadsdk/core/a/d;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->a:Lcom/bytedance/sdk/openadsdk/e/c;

    .line 515
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/openadsdk/e/c;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 516
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->g(Lcom/bytedance/sdk/openadsdk/core/d/k;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/x;

    .line 517
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/x;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->n:Lcom/bytedance/sdk/openadsdk/core/x;

    .line 518
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->n:Lcom/bytedance/sdk/openadsdk/core/x;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->c:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Landroid/webkit/WebView;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 519
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->k:Ljava/lang/String;

    .line 520
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->l:Ljava/lang/String;

    .line 521
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v0

    .line 522
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/openadsdk/core/a/d;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->o:I

    .line 523
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->a(I)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v0

    const/4 v1, 0x0

    .line 524
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->c(Z)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 525
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->g(Lcom/bytedance/sdk/openadsdk/core/d/k;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/x;

    .line 526
    return-void
.end method

.method static synthetic h(Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;)Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->j:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    return-object v0
.end method

.method private h()V
    .registers 6

    .prologue
    .line 628
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    if-nez v0, :cond_9

    .line 640
    :cond_8
    :goto_8
    return-void

    .line 631
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->q()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 634
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/webkit/WebView;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 635
    if-eqz v0, :cond_8

    .line 638
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->r:Ljava/lang/String;

    const-string v4, "playable_show_status"

    invoke-static {v1, v2, v3, v4, v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_8
.end method

.method static synthetic i(Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;)V
    .registers 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->h()V

    return-void
.end method

.method static synthetic j(Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;)Z
    .registers 2

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->e:Z

    return v0
.end method


# virtual methods
.method protected a()V
    .registers 7

    .prologue
    .line 349
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->j:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    if-nez v0, :cond_5

    .line 396
    :cond_4
    :goto_4
    return-void

    .line 353
    :cond_5
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->z:Z

    if-nez v0, :cond_f

    .line 354
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->j:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->a()V

    goto :goto_4

    .line 358
    :cond_f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->o()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 359
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->r()Z

    move-result v0

    if-nez v0, :cond_29

    .line 360
    :cond_23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->j:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->a()V

    goto :goto_4

    .line 364
    :cond_29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->j:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->b()V

    .line 367
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->j:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->getPlayView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_55

    .line 368
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity$5;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->r:Ljava/lang/String;

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->o:I

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity$5;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;I)V

    .line 386
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->j:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->getPlayView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->j:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->getPlayView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 392
    :cond_55
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->r()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 393
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->p()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 394
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->t:Lcom/bytedance/sdk/openadsdk/utils/ak;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->a(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_4
.end method

.method public a(Landroid/os/Message;)V
    .registers 7

    .prologue
    const/4 v4, 0x2

    .line 594
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 595
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->f:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 613
    :cond_c
    :goto_c
    return-void

    .line 596
    :cond_d
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_c

    .line 597
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->z:Z

    if-eqz v0, :cond_c

    .line 601
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 602
    const-string v1, "remove_loading_page_type"

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 604
    const-string v1, "playable_url"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/r;->h()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    :cond_3c
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->r:Ljava/lang/String;

    const-string v3, "remove_loading_page"

    invoke-static {p0, v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/c/d;->r(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 608
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->t:Lcom/bytedance/sdk/openadsdk/utils/ak;

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/utils/ak;->removeMessages(I)V

    .line 609
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->j:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    if-eqz v0, :cond_c

    .line 610
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->j:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->a()V

    goto :goto_c
.end method

.method public a(Z)V
    .registers 5

    .prologue
    .line 617
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->u:Z

    .line 618
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->v:Z

    .line 619
    if-nez p1, :cond_13

    .line 620
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->g:Landroid/content/Context;

    const-string v1, "\u7a0d\u540e\u5f00\u59cb\u4e0b\u8f7d"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 622
    :cond_13
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->v:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->w:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v0, :cond_20

    .line 623
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->w:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->h()V

    .line 625
    :cond_20
    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 558
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 559
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .prologue
    .line 325
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 326
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 136
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 138
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->l()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 139
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x280000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 143
    :cond_17
    const/4 v0, 0x1

    :try_start_18
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->requestWindowFeature(I)Z

    .line 144
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 145
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 146
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/o;->a(Landroid/content/Context;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_30} :catch_9f

    .line 150
    :goto_30
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->a(Landroid/os/Bundle;)V

    .line 152
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-nez v0, :cond_38

    .line 244
    :cond_37
    :goto_37
    return-void

    .line 154
    :cond_38
    iput-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->g:Landroid/content/Context;

    .line 155
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->Q()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->y:I

    .line 157
    const-string v0, "tt_activity_ttlandingpage_playable"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->setContentView(I)V

    .line 158
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->b()V

    .line 159
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->a()V

    .line 161
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->g()V

    .line 162
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    if-eqz v0, :cond_89

    .line 163
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity$2;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->g:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->m:Lcom/bytedance/sdk/openadsdk/core/x;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->k:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity$2;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/x;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/c/j;)V

    invoke-virtual {v6, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 211
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->a(Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;)V

    .line 212
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->c:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->a(Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;)V

    .line 213
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->d()Z

    .line 214
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->loadUrl(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity$3;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->m:Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-direct {v1, p0, v2, v5}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity$3;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;Lcom/bytedance/sdk/openadsdk/core/x;Lcom/bytedance/sdk/openadsdk/c/j;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 241
    :cond_89
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->B()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_37

    .line 242
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->r:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->w:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    goto :goto_37

    .line 147
    :catch_9f
    move-exception v0

    goto :goto_30
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 563
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 565
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->t:Lcom/bytedance/sdk/openadsdk/utils/ak;

    if-eqz v0, :cond_d

    .line 566
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->t:Lcom/bytedance/sdk/openadsdk/utils/ak;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 570
    :cond_d
    :try_start_d
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 571
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 572
    if-eqz v0, :cond_22

    .line 573
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_22} :catch_46

    .line 579
    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/aa;->a(Landroid/content/Context;Landroid/webkit/WebView;)V

    .line 580
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa;->a(Landroid/webkit/WebView;)V

    .line 581
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    .line 583
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->m:Lcom/bytedance/sdk/openadsdk/core/x;

    if-eqz v0, :cond_39

    .line 584
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->m:Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/x;->h()V

    .line 586
    :cond_39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->n:Lcom/bytedance/sdk/openadsdk/core/x;

    if-eqz v0, :cond_42

    .line 587
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->n:Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/x;->h()V

    .line 589
    :cond_42
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->f()V

    .line 590
    return-void

    .line 576
    :catch_46
    move-exception v0

    goto :goto_22
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 546
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 547
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/u;->a()Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/u;->b(Z)V

    .line 548
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->m:Lcom/bytedance/sdk/openadsdk/core/x;

    if-eqz v0, :cond_14

    .line 549
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->m:Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/x;->g()V

    .line 551
    :cond_14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->n:Lcom/bytedance/sdk/openadsdk/core/x;

    if-eqz v0, :cond_1d

    .line 552
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->n:Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/x;->g()V

    .line 554
    :cond_1d
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 530
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 531
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->m:Lcom/bytedance/sdk/openadsdk/core/x;

    if-eqz v0, :cond_c

    .line 532
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->m:Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/x;->f()V

    .line 534
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->n:Lcom/bytedance/sdk/openadsdk/core/x;

    if-eqz v0, :cond_15

    .line 535
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->n:Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/x;->f()V

    .line 537
    :cond_15
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 303
    if-nez p1, :cond_7

    .line 304
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 308
    :cond_7
    :try_start_7
    const-string v1, "material_meta"

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->ae()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_17
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v0, "sdk_version"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->h:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 310
    const-string v0, "adid"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v0, "log_extra"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v0, "source"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->o:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 313
    const-string v0, "ad_pending_download"

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->u:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 314
    const-string v0, "url"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->p:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v0, "web_title"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->q:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v0, "event_tag"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTPlayableLandingPageActivity;->r:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_52} :catch_58

    .line 320
    :goto_52
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 321
    return-void

    .line 308
    :cond_56
    const/4 v0, 0x0

    goto :goto_17

    .line 317
    :catch_58
    move-exception v0

    goto :goto_52
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 541
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 542
    return-void
.end method
