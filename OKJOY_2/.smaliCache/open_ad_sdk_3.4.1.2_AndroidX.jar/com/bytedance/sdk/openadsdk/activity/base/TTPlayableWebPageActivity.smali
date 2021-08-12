.class public Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;
.super Landroid/app/Activity;
.source "TTPlayableWebPageActivity.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/a/d;
.implements Lcom/bytedance/sdk/openadsdk/utils/al$a;


# static fields
.field private static L:Lcom/bytedance/sdk/openadsdk/playable/d$a;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

.field private D:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private E:I

.field private F:Ljava/lang/String;

.field private G:I

.field private H:I

.field private I:Lcom/bytedance/sdk/openadsdk/preload/falconx/a/a;

.field private J:Lcom/bytedance/sdk/openadsdk/playable/e;

.field private K:Z

.field a:Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;

.field b:Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;

.field c:Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;

.field final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected f:Lcom/bytedance/sdk/openadsdk/f/d;

.field private g:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

.field private h:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

.field private i:Z

.field private j:Z

.field private k:Landroid/widget/RelativeLayout;

.field private l:Landroid/view/View;

.field private m:Landroid/content/Context;

.field private n:I

.field private o:Landroid/widget/ProgressBar;

.field private p:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Lcom/bytedance/sdk/openadsdk/core/x;

.field private t:Lcom/bytedance/sdk/openadsdk/core/x;

.field private u:I

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field private z:Lcom/bytedance/sdk/openadsdk/utils/al;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 146
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$1;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->L:Lcom/bytedance/sdk/openadsdk/playable/d$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 89
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->i:Z

    .line 100
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->j:Z

    .line 119
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/al;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/utils/al;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/openadsdk/utils/al$a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->z:Lcom/bytedance/sdk/openadsdk/utils/al;

    .line 123
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 126
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->G:I

    .line 127
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->H:I

    .line 135
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 136
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 144
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->K:Z

    .line 158
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$5;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$5;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->f:Lcom/bytedance/sdk/openadsdk/f/d;

    return-void
.end method

.method private a(I)Landroid/os/Message;
    .registers 4

    .line 177
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 178
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 179
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 180
    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;I)Landroid/os/Message;
    .registers 2

    .line 89
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->a(I)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;)Lcom/bytedance/sdk/openadsdk/core/d/l;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    return-object p0
.end method

.method private a(Landroid/os/Bundle;)V
    .registers 16

    .line 423
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 424
    const-string v1, "event_tag"

    const-string v2, "web_title"

    const-string v3, "url"

    const/4 v4, 0x0

    const-string v5, "ad_pending_download"

    const/4 v6, -0x1

    const-string v7, "source"

    const-string v8, "log_extra"

    const-string v9, "adid"

    const/4 v10, 0x1

    const-string v11, "sdk_version"

    if-eqz v0, :cond_51

    .line 425
    invoke-virtual {v0, v11, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    iput v12, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->n:I

    .line 426
    invoke-virtual {v0, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->q:Ljava/lang/String;

    .line 427
    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->r:Ljava/lang/String;

    .line 428
    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    iput v12, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->u:I

    .line 429
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    iput-boolean v12, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->A:Z

    .line 430
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->v:Ljava/lang/String;

    .line 431
    const-string v12, "gecko_id"

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->F:Ljava/lang/String;

    .line 432
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->w:Ljava/lang/String;

    .line 433
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->x:Ljava/lang/String;

    .line 437
    :cond_51
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v12

    const-string v13, "TTPWPActivity"

    if-eqz v12, :cond_74

    .line 438
    const-string v12, "multi_process_materialmeta"

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 439
    if-eqz v0, :cond_73

    .line 442
    :try_start_61
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_6c} :catch_6d

    .line 445
    goto :goto_73

    .line 443
    :catch_6d
    move-exception v0

    .line 444
    const-string v12, "TTPlayableWebPageActivity - onCreate MultiGlobalInfo : "

    invoke-static {v13, v12, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 447
    :cond_73
    :goto_73
    goto :goto_85

    .line 448
    :cond_74
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/u;->a()Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/u;->c()Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 449
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/u;->a()Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/u;->g()V

    .line 452
    :goto_85
    if-eqz p1, :cond_d1

    .line 454
    :try_start_87
    invoke-virtual {p1, v11, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->n:I

    .line 455
    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->q:Ljava/lang/String;

    .line 456
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->r:Ljava/lang/String;

    .line 457
    invoke-virtual {p1, v7, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->u:I

    .line 458
    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->A:Z

    .line 459
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->v:Ljava/lang/String;

    .line 460
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->w:Ljava/lang/String;

    .line 461
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->x:Ljava/lang/String;

    .line 463
    const-string v0, "material_meta"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 464
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_cf

    .line 465
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;
    :try_end_cf
    .catchall {:try_start_87 .. :try_end_cf} :catchall_d0

    .line 468
    :cond_cf
    goto :goto_d1

    .line 467
    :catchall_d0
    move-exception p1

    .line 471
    :cond_d1
    :goto_d1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez p1, :cond_dd

    .line 472
    const-string p1, "material is null, no data to display"

    invoke-static {v13, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->finish()V

    .line 476
    :cond_dd
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;Ljava/lang/String;)V
    .registers 2

    .line 89
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;)V
    .registers 5

    .line 599
    if-nez p1, :cond_3

    .line 600
    return-void

    .line 602
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->a(Z)Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->b(Z)Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->a(Landroid/webkit/WebView;)V

    .line 603
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->n:I

    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/r;->a(Landroid/webkit/WebView;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 605
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_2f

    .line 606
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 608
    :cond_2f
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    .line 611
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->x:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/c/d;->c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 612
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;Z)Z
    .registers 2

    .line 89
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;)Lcom/bytedance/sdk/openadsdk/utils/al;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->z:Lcom/bytedance/sdk/openadsdk/utils/al;

    return-object p0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;Z)Z
    .registers 2

    .line 89
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->j:Z

    return p1
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;)Z
    .registers 1

    .line 89
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->K:Z

    return p0
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;)Landroid/widget/ProgressBar;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->o:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private d()V
    .registers 6

    .line 322
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->J:Lcom/bytedance/sdk/openadsdk/playable/e;

    if-eqz v0, :cond_5

    .line 323
    return-void

    .line 326
    :cond_5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->v()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 327
    sget-object v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->L:Lcom/bytedance/sdk/openadsdk/playable/d$a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/playable/d;->a(Lcom/bytedance/sdk/openadsdk/playable/d$a;)V

    .line 330
    :cond_14
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$8;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$8;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;)V

    .line 376
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->g:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/playable/e;->a(Landroid/content/Context;Landroid/webkit/WebView;Lcom/bytedance/sdk/openadsdk/playable/a;)Lcom/bytedance/sdk/openadsdk/playable/e;

    move-result-object v0

    .line 377
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/playable/e;->e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/playable/e;

    move-result-object v0

    .line 378
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/playable/e;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/playable/e;

    move-result-object v0

    .line 379
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/a/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/playable/e;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/playable/e;

    move-result-object v0

    .line 380
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/a/a;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdkEdition"

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/playable/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/playable/e;

    move-result-object v0

    .line 381
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/a/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/playable/e;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/playable/e;

    move-result-object v0

    .line 382
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/playable/e;->c(Z)Lcom/bytedance/sdk/openadsdk/playable/e;

    move-result-object v0

    .line 383
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/playable/e;->a(Z)Lcom/bytedance/sdk/openadsdk/playable/e;

    move-result-object v0

    const/4 v1, 0x1

    .line 384
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/playable/e;->b(Z)Lcom/bytedance/sdk/openadsdk/playable/e;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->J:Lcom/bytedance/sdk/openadsdk/playable/e;

    .line 386
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_7a

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7a

    .line 387
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->J:Lcom/bytedance/sdk/openadsdk/playable/e;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/playable/e;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/playable/e;

    .line 390
    :cond_7a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->J:Lcom/bytedance/sdk/openadsdk/playable/e;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/playable/e;->j()Ljava/util/Set;

    move-result-object v0

    .line 392
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->J:Lcom/bytedance/sdk/openadsdk/playable/e;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 394
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8b
    :goto_8b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 397
    const-string v3, "subscribe_app_ad"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8b

    .line 398
    const-string v3, "adInfo"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8b

    .line 399
    const-string v3, "webview_time_track"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8b

    .line 400
    const-string v3, "download_app_ad"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b8

    .line 401
    goto :goto_8b

    .line 404
    :cond_b8
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->s:Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/x;->a()Lcom/bytedance/sdk/openadsdk/e/a/q;

    move-result-object v3

    new-instance v4, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$9;

    invoke-direct {v4, p0, v1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$9;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v3, v2, v4}, Lcom/bytedance/sdk/openadsdk/e/a/q;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/e/a/e;)Lcom/bytedance/sdk/openadsdk/e/a/q;

    .line 419
    goto :goto_8b

    .line 420
    :cond_c7
    return-void
.end method

.method private e()V
    .registers 3

    .line 507
    const-string v0, "tt_playable_loading"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->p:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    .line 508
    const-string v0, "tt_browser_webview"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->g:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    .line 509
    const-string v0, "tt_browser_webview_loading"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->h:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    .line 510
    const-string v0, "tt_playable_ad_close_layout"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->k:Landroid/widget/RelativeLayout;

    .line 511
    if-eqz v0, :cond_42

    .line 512
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$10;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$10;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 521
    :cond_42
    const-string v0, "tt_browser_progress"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->o:Landroid/widget/ProgressBar;

    .line 522
    const-string v0, "tt_playable_ad_dislike"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->l:Landroid/view/View;

    .line 523
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$11;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$11;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 529
    return-void
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;)Z
    .registers 1

    .line 89
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->i:Z

    return p0
.end method

.method private f()V
    .registers 6

    .line 582
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 583
    return-void

    .line 585
    :cond_a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->g:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    if-eqz v0, :cond_45

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->h:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    if-eqz v2, :cond_45

    .line 586
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 587
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->h:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    const/16 v3, 0x8

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 588
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->d(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 589
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v0

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/h/a;->s:I

    .line 590
    if-ltz v0, :cond_40

    .line 591
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->z:Lcom/bytedance/sdk/openadsdk/utils/al;

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/al;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_45

    .line 593
    :cond_40
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->k:Landroid/widget/RelativeLayout;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 596
    :cond_45
    :goto_45
    return-void
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;)V
    .registers 1

    .line 89
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->f()V

    return-void
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;)Ljava/lang/String;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->v:Ljava/lang/String;

    return-object p0
.end method

.method private g()Z
    .registers 10

    .line 615
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->h:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 616
    return v1

    .line 618
    :cond_6
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->h()Ljava/lang/String;

    move-result-object v0

    .line 619
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 620
    return v1

    .line 622
    :cond_11
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->h:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    new-instance v8, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$2;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->m:Landroid/content/Context;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->t:Lcom/bytedance/sdk/openadsdk/core/x;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->q:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$2;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/x;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/c/j;)V

    invoke-virtual {v1, v8}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 649
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->h:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->loadUrl(Ljava/lang/String;)V

    .line 650
    const/4 v0, 0x1

    return v0
.end method

.method private h()Ljava/lang/String;
    .registers 12

    .line 654
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->n()Ljava/lang/String;

    move-result-object v0

    .line 656
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ca

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v1, :cond_ca

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v1

    if-nez v1, :cond_1a

    goto/16 :goto_ca

    .line 659
    :cond_1a
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v1

    .line 660
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/b;->e()I

    move-result v2

    .line 661
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/b;->f()I

    move-result v3

    .line 662
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/d/l;->U()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a()Ljava/lang/String;

    move-result-object v4

    .line 663
    const/4 v5, 0x0

    .line 664
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object v6

    .line 665
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/d/b;->d()Ljava/lang/String;

    move-result-object v7

    .line 666
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b()Ljava/lang/String;

    move-result-object v8

    .line 667
    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v9}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v9

    invoke-virtual {v9}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v9

    .line 668
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 669
    const-string v0, "?appname="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 670
    const-string v1, "&stars="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 671
    const-string v1, "&comments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 672
    const-string v1, "&icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 673
    const-string v1, "&downloading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 674
    const-string v1, "&id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 675
    const-string v1, "&pkg_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 676
    const-string v1, "&download_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 677
    const-string v1, "&name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 678
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 657
    :cond_ca
    :goto_ca
    return-object v0
.end method

.method static synthetic h(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;)Ljava/lang/String;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->F:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;)I
    .registers 3

    .line 89
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->G:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->G:I

    return v0
.end method

.method private i()V
    .registers 2

    .line 682
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->B:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->A:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->C:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v0, :cond_f

    .line 683
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->g()V

    .line 685
    :cond_f
    return-void
.end method

.method static synthetic j(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;)Lcom/bytedance/sdk/openadsdk/preload/falconx/a/a;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->I:Lcom/bytedance/sdk/openadsdk/preload/falconx/a/a;

    return-object p0
.end method

.method private j()V
    .registers 4

    .line 688
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 689
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 690
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/x;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->s:Lcom/bytedance/sdk/openadsdk/core/x;

    .line 691
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->g:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/x;->b(Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 692
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v1

    .line 693
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->q:Ljava/lang/String;

    .line 694
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->r:Ljava/lang/String;

    .line 695
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->u:I

    .line 696
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->a(I)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v0

    .line 697
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/openadsdk/core/a/d;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->f:Lcom/bytedance/sdk/openadsdk/f/d;

    .line 698
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/openadsdk/f/d;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->g:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    .line 699
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 700
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->i(Lcom/bytedance/sdk/openadsdk/core/d/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/x;

    .line 701
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/x;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->t:Lcom/bytedance/sdk/openadsdk/core/x;

    .line 702
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->h:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->b(Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 703
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->q:Ljava/lang/String;

    .line 704
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->r:Ljava/lang/String;

    .line 705
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v0

    .line 706
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/openadsdk/core/a/d;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->u:I

    .line 707
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->a(I)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v0

    .line 708
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->c(Z)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->h:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    .line 709
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 710
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->i(Lcom/bytedance/sdk/openadsdk/core/d/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/x;

    .line 712
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->d()V

    .line 713
    return-void
.end method

.method static synthetic k(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;)I
    .registers 3

    .line 89
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->H:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->H:I

    return v0
.end method

.method private k()V
    .registers 9

    .line 830
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_29

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->g:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    if-nez v1, :cond_9

    goto :goto_29

    .line 833
    :cond_9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->C()Z

    move-result v0

    if-nez v0, :cond_10

    .line 834
    return-void

    .line 836
    :cond_10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->g:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->b(Landroid/webkit/WebView;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 837
    if-nez v5, :cond_19

    .line 838
    return-void

    .line 840
    :cond_19
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->x:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v4, "playable_show_status"

    invoke-static/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZI)V

    .line 842
    return-void

    .line 831
    :cond_29
    :goto_29
    return-void
.end method

.method static synthetic l(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;)Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->p:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    return-object p0
.end method

.method private l()V
    .registers 3

    .line 933
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->c:Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;

    if-nez v0, :cond_5

    .line 934
    return-void

    .line 936
    :cond_5
    const-string v1, "\u60a8\u5df2\u6210\u529f\u63d0\u4ea4\u53cd\u9988\uff0c\u8bf7\u52ff\u91cd\u590d\u63d0\u4ea4\u54e6\uff01"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;->a(Ljava/lang/String;)V

    .line 937
    return-void
.end method

.method static synthetic m(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;)Lcom/bytedance/sdk/openadsdk/core/x;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->s:Lcom/bytedance/sdk/openadsdk/core/x;

    return-object p0
.end method

.method private m()V
    .registers 3

    .line 941
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->c:Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;

    if-nez v0, :cond_5

    .line 942
    return-void

    .line 944
    :cond_5
    const-string v1, "\u611f\u8c22\u60a8\u7684\u53cd\u9988\uff01\n\u6211\u4eec\u5c06\u4e3a\u60a8\u5e26\u6765\u66f4\u4f18\u8d28\u7684\u5e7f\u544a\u4f53\u9a8c"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;->a(Ljava/lang/String;)V

    .line 945
    return-void
.end method

.method private n()V
    .registers 3

    .line 949
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->c:Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;

    if-nez v0, :cond_5

    .line 950
    return-void

    .line 952
    :cond_5
    const-string v1, "\u8f93\u5165\u4e3a\u7a7a\u6216\u8005\u8f93\u5165\u7279\u6b8a\u5b57\u7b26\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;->a(Ljava/lang/String;)V

    .line 953
    return-void
.end method

.method static synthetic n(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;)V
    .registers 1

    .line 89
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->k()V

    return-void
.end method

.method static synthetic o(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;)Z
    .registers 1

    .line 89
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->j:Z

    return p0
.end method

.method static synthetic p(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;)V
    .registers 1

    .line 89
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->m()V

    return-void
.end method

.method static synthetic q(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;)V
    .registers 1

    .line 89
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->n()V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 8

    .line 532
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->p:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    if-nez v0, :cond_5

    .line 533
    return-void

    .line 536
    :cond_5
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->K:Z

    if-nez v1, :cond_d

    .line 537
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->a()V

    .line 538
    return-void

    .line 541
    :cond_d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_6c

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->A()Z

    move-result v0

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 542
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->D()Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_6c

    .line 547
    :cond_20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->p:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->b()V

    .line 550
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->p:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->getPlayView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 551
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$12;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->x:Ljava/lang/String;

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->u:I

    move-object v1, v0

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$12;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;I)V

    .line 569
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->p:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->getPlayView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 570
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->p:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->getPlayView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 575
    :cond_4d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_6b

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->D()Z

    move-result v0

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 576
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->B()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 577
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->z:Lcom/bytedance/sdk/openadsdk/utils/al;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->a(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/al;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 579
    :cond_6b
    return-void

    .line 543
    :cond_6c
    :goto_6c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->p:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->a()V

    .line 544
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .registers 6

    .line 796
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 797
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->k:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    goto :goto_52

    .line 798
    :cond_c
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_52

    .line 799
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->K:Z

    if-nez v0, :cond_16

    .line 800
    return-void

    .line 803
    :cond_16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 804
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "remove_loading_page_type"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object p1

    if-eqz p1, :cond_3d

    .line 806
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/t;->j()Ljava/lang/String;

    move-result-object p1

    const-string v2, "playable_url"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    :cond_3d
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->x:Ljava/lang/String;

    const-string v3, "remove_loading_page"

    invoke-static {p0, p1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/c/d;->k(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 810
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->z:Lcom/bytedance/sdk/openadsdk/utils/al;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeMessages(I)V

    .line 811
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->p:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    if-eqz p1, :cond_52

    .line 812
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->a()V

    .line 815
    :cond_52
    :goto_52
    return-void
.end method

.method public a(Z)V
    .registers 4

    .line 819
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->A:Z

    .line 820
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->B:Z

    .line 821
    if-nez p1, :cond_13

    .line 822
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->m:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v1, "\u7a0d\u540e\u5f00\u59cb\u4e0b\u8f7d"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 824
    :cond_13
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->B:Z

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->C:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz p1, :cond_1e

    .line 825
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->g()V

    .line 827
    :cond_1e
    return-void
.end method

.method protected b()V
    .registers 2

    .line 846
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 847
    return-void

    .line 849
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 850
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->l()V

    .line 851
    return-void

    .line 853
    :cond_13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->a:Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;

    if-nez v0, :cond_1a

    .line 854
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->c()V

    .line 857
    :cond_1a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->a:Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->a()V

    .line 858
    return-void
.end method

.method c()V
    .registers 5

    .line 860
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->b:Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;

    const v1, 0x1020002

    if-nez v0, :cond_2a

    .line 861
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-direct {v0, p0, v2}, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->b:Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;

    .line 862
    new-instance v2, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$3;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$3;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->setCallback(Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog$a;)V

    .line 889
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 890
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->b:Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 891
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->b:Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->setVisibility(I)V

    .line 893
    :cond_2a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->a:Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;

    if-nez v0, :cond_4c

    .line 894
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->x:Ljava/lang/String;

    invoke-direct {v0, p0, v2, v3}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->a:Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;

    .line 895
    new-instance v2, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$4;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$4;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->setCallback(Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog$a;)V

    .line 922
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 923
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->a:Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 925
    :cond_4c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->c:Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;

    if-nez v0, :cond_62

    .line 926
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->c:Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;

    .line 927
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 928
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->c:Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeToast;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 930
    :cond_62
    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .line 751
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 752
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 502
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 503
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10

    .line 185
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 187
    const/4 v0, 0x1

    :try_start_4
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->requestWindowFeature(I)Z

    .line 188
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 189
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x1000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 190
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Landroid/content/Context;)V
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_1d

    .line 192
    goto :goto_1e

    .line 191
    :catchall_1d
    move-exception v1

    .line 194
    :goto_1e
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->a(Landroid/os/Bundle;)V

    .line 196
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez p1, :cond_26

    return-void

    .line 198
    :cond_26
    iput-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->m:Landroid/content/Context;

    .line 199
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ak()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->E:I

    .line 201
    const-string p1, "tt_activity_ttlandingpage_playable"

    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->setContentView(I)V

    .line 202
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->e()V

    .line 203
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->a()V

    .line 205
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->j()V

    .line 206
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->g:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    if-eqz p1, :cond_76

    .line 207
    new-instance v7, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$6;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->m:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->s:Lcom/bytedance/sdk/openadsdk/core/x;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->q:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$6;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/x;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/c/j;)V

    invoke-virtual {p1, v7}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 277
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->g:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->a(Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;)V

    .line 278
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->h:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->a(Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;)V

    .line 279
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->g()Z

    .line 280
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->g:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->v:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->loadUrl(Ljava/lang/String;)V

    .line 281
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->g:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$7;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->s:Lcom/bytedance/sdk/openadsdk/core/x;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity$7;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;Lcom/bytedance/sdk/openadsdk/core/x;Lcom/bytedance/sdk/openadsdk/c/j;)V

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 307
    :cond_76
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->T()I

    move-result p1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_96

    .line 308
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->m:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->x:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->C:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 309
    if-eqz p1, :cond_96

    .line 310
    instance-of v1, p1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    if-eqz v1, :cond_96

    .line 311
    check-cast p1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->f(Z)V

    .line 315
    :cond_96
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/gecko/a;->a()Lcom/bytedance/sdk/openadsdk/gecko/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/gecko/a;->b()Lcom/bytedance/sdk/openadsdk/preload/falconx/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->I:Lcom/bytedance/sdk/openadsdk/preload/falconx/a/a;

    .line 316
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {p1, p0}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Landroid/app/Activity;)V

    .line 317
    return-void
.end method

.method protected onDestroy()V
    .registers 5

    .line 756
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 758
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->z:Lcom/bytedance/sdk/openadsdk/utils/al;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 759
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 763
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 764
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 765
    if-eqz v0, :cond_20

    .line 766
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V
    :try_end_20
    .catchall {:try_start_b .. :try_end_20} :catchall_21

    .line 770
    :cond_20
    goto :goto_22

    .line 769
    :catchall_21
    move-exception v0

    .line 773
    :goto_22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->F:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 774
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->H:I

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->G:I

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/c/d$a;->a(IILcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 776
    :cond_33
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/gecko/a;->a()Lcom/bytedance/sdk/openadsdk/gecko/a;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->I:Lcom/bytedance/sdk/openadsdk/preload/falconx/a/a;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/gecko/a;->a(Lcom/bytedance/sdk/openadsdk/preload/falconx/a/a;)V

    .line 778
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->m:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->g:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/aa;->a(Landroid/content/Context;Landroid/webkit/WebView;)V

    .line 779
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->g:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa;->a(Landroid/webkit/WebView;)V

    .line 780
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->g:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    .line 782
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->s:Lcom/bytedance/sdk/openadsdk/core/x;

    if-eqz v0, :cond_51

    .line 783
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/x;->o()V

    .line 785
    :cond_51
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->t:Lcom/bytedance/sdk/openadsdk/core/x;

    if-eqz v0, :cond_58

    .line 786
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/x;->o()V

    .line 788
    :cond_58
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->i()V

    .line 789
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->J:Lcom/bytedance/sdk/openadsdk/playable/e;

    if-eqz v0, :cond_62

    .line 790
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/playable/e;->r()V

    .line 792
    :cond_62
    return-void
.end method

.method protected onPause()V
    .registers 3

    .line 736
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 737
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/u;->a()Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/u;->b(Z)V

    .line 738
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->s:Lcom/bytedance/sdk/openadsdk/core/x;

    if-eqz v0, :cond_12

    .line 739
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/x;->n()V

    .line 741
    :cond_12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->t:Lcom/bytedance/sdk/openadsdk/core/x;

    if-eqz v0, :cond_19

    .line 742
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/x;->n()V

    .line 744
    :cond_19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->J:Lcom/bytedance/sdk/openadsdk/playable/e;

    if-eqz v0, :cond_20

    .line 745
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/playable/e;->p()V

    .line 747
    :cond_20
    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 717
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 718
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->s:Lcom/bytedance/sdk/openadsdk/core/x;

    if-eqz v0, :cond_a

    .line 719
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/x;->m()V

    .line 721
    :cond_a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->t:Lcom/bytedance/sdk/openadsdk/core/x;

    if-eqz v0, :cond_11

    .line 722
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/x;->m()V

    .line 724
    :cond_11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->J:Lcom/bytedance/sdk/openadsdk/playable/e;

    if-eqz v0, :cond_18

    .line 725
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/playable/e;->q()V

    .line 727
    :cond_18
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 480
    if-nez p1, :cond_7

    .line 481
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 485
    :cond_7
    :try_start_7
    const-string v0, "material_meta"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->y:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aF()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const-string v0, "sdk_version"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->n:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 487
    const-string v0, "adid"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->q:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-string v0, "log_extra"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->r:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const-string v0, "source"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->u:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 490
    const-string v0, "ad_pending_download"

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->A:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 491
    const-string v0, "url"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->v:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const-string v0, "web_title"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->w:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const-string v0, "event_tag"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTPlayableWebPageActivity;->x:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_7 .. :try_end_52} :catchall_53

    .line 495
    goto :goto_54

    .line 494
    :catchall_53
    move-exception v0

    .line 497
    :goto_54
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 498
    return-void
.end method

.method protected onStop()V
    .registers 1

    .line 731
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 732
    return-void
.end method
