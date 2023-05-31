.class public Lcom/mintegral/msdk/click/f;
.super Ljava/lang/Object;
.source "WebViewSpider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/click/f$a;
    }
.end annotation


# static fields
.field public static a:J

.field private static final d:Ljava/lang/String;


# instance fields
.field b:Z

.field c:Z

.field private e:I

.field private f:I

.field private g:Landroid/os/Handler;

.field private h:Lcom/mintegral/msdk/c/a;

.field private i:Lcom/mintegral/msdk/click/f$a;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Landroid/webkit/WebView;

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Z

.field private q:Z

.field private final r:Ljava/lang/Runnable;

.field private final s:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 34
    const-class v0, Lcom/mintegral/msdk/click/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/click/f;->d:Ljava/lang/String;

    .line 55
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/mintegral/msdk/click/f;->a:J

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 4

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0x3a98

    iput v0, p0, Lcom/mintegral/msdk/click/f;->e:I

    .line 37
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/mintegral/msdk/click/f;->f:I

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/click/f;->p:Z

    .line 405
    new-instance v0, Lcom/mintegral/msdk/click/f$4;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/click/f$4;-><init>(Lcom/mintegral/msdk/click/f;)V

    iput-object v0, p0, Lcom/mintegral/msdk/click/f;->r:Ljava/lang/Runnable;

    .line 416
    new-instance v0, Lcom/mintegral/msdk/click/f$5;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/click/f$5;-><init>(Lcom/mintegral/msdk/click/f;)V

    iput-object v0, p0, Lcom/mintegral/msdk/click/f;->s:Ljava/lang/Runnable;

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mintegral/msdk/click/f;->g:Landroid/os/Handler;

    .line 59
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/click/f;->h:Lcom/mintegral/msdk/c/a;

    .line 60
    iget-object v0, p0, Lcom/mintegral/msdk/click/f;->h:Lcom/mintegral/msdk/c/a;

    if-nez v0, :cond_45

    .line 61
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/c/b;->b()Lcom/mintegral/msdk/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/click/f;->h:Lcom/mintegral/msdk/c/a;

    .line 63
    :cond_45
    iget-object v0, p0, Lcom/mintegral/msdk/click/f;->h:Lcom/mintegral/msdk/c/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->aD()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mintegral/msdk/click/f;->m:Z

    .line 64
    if-eqz p1, :cond_62

    .line 65
    iget-object v0, p0, Lcom/mintegral/msdk/click/f;->h:Lcom/mintegral/msdk/c/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->aw()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/mintegral/msdk/click/f;->e:I

    .line 66
    iget-object v0, p0, Lcom/mintegral/msdk/click/f;->h:Lcom/mintegral/msdk/c/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->aw()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/mintegral/msdk/click/f;->f:I

    .line 71
    :goto_61
    return-void

    .line 68
    :cond_62
    iget-object v0, p0, Lcom/mintegral/msdk/click/f;->h:Lcom/mintegral/msdk/c/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->ay()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/mintegral/msdk/click/f;->e:I

    .line 69
    iget-object v0, p0, Lcom/mintegral/msdk/click/f;->h:Lcom/mintegral/msdk/c/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->ay()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/mintegral/msdk/click/f;->f:I

    goto :goto_61
.end method

.method static synthetic a(Lcom/mintegral/msdk/click/f;I)I
    .registers 2

    .prologue
    .line 32
    iput p1, p0, Lcom/mintegral/msdk/click/f;->o:I

    return p1
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/mintegral/msdk/click/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/mintegral/msdk/click/f;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mintegral/msdk/click/f;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/mintegral/msdk/click/f;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iput-object p1, p0, Lcom/mintegral/msdk/click/f;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/mintegral/msdk/click/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 32
    invoke-direct/range {p0 .. p5}, Lcom/mintegral/msdk/click/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 12

    .prologue
    .line 113
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_19

    .line 114
    iget-object v5, p0, Lcom/mintegral/msdk/click/f;->j:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/mintegral/msdk/click/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 123
    :goto_18
    return-void

    .line 116
    :cond_19
    iget-object v6, p0, Lcom/mintegral/msdk/click/f;->g:Landroid/os/Handler;

    new-instance v0, Lcom/mintegral/msdk/click/f$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mintegral/msdk/click/f$1;-><init>(Lcom/mintegral/msdk/click/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_18
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .registers 13

    .prologue
    .line 127
    .line 1165
    :try_start_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mintegral/msdk/click/f;->l:Landroid/webkit/WebView;

    .line 1166
    iget-object v0, p0, Lcom/mintegral/msdk/click/f;->l:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1167
    iget-object v0, p0, Lcom/mintegral/msdk/click/f;->l:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 1168
    iget-object v0, p0, Lcom/mintegral/msdk/click/f;->l:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 1171
    iget-object v6, p0, Lcom/mintegral/msdk/click/f;->l:Landroid/webkit/WebView;

    new-instance v0, Lcom/mintegral/msdk/click/f$2;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/mintegral/msdk/click/f$2;-><init>(Lcom/mintegral/msdk/click/f;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1325
    new-instance v0, Lcom/mintegral/msdk/click/f$3;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/click/f$3;-><init>(Lcom/mintegral/msdk/click/f;)V

    .line 1366
    iget-object v1, p0, Lcom/mintegral/msdk/click/f;->l:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 129
    iget-object v0, p0, Lcom/mintegral/msdk/click/f;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6e

    .line 130
    iget-object v0, p0, Lcom/mintegral/msdk/click/f;->l:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 131
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/mintegral/msdk/click/f;->f:I

    .line 132
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/mintegral/msdk/click/f;->e:I

    .line 133
    sget-object v0, Lcom/mintegral/msdk/click/f;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/mintegral/msdk/click/f;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/mintegral/msdk/click/f;->l:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/mintegral/msdk/click/f;->k:Ljava/lang/String;

    const-string v3, "*/*"

    const-string v4, "utf-8"

    move-object v1, p5

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_6d
    :goto_6d
    return-void

    .line 138
    :cond_6e
    iget-boolean v0, p0, Lcom/mintegral/msdk/click/f;->m:Z

    if-eqz v0, :cond_a5

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 140
    iget-object v1, p0, Lcom/mintegral/msdk/click/f;->l:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8a

    .line 141
    const-string v1, "Referer"

    iget-object v2, p0, Lcom/mintegral/msdk/click/f;->l:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_8a
    iget-object v1, p0, Lcom/mintegral/msdk/click/f;->l:Landroid/webkit/WebView;

    invoke-virtual {v1, p5, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8f} :catch_90

    goto :goto_6d

    .line 148
    :catch_90
    move-exception v0

    .line 150
    :try_start_91
    iget-object v1, p0, Lcom/mintegral/msdk/click/f;->i:Lcom/mintegral/msdk/click/f$a;

    if-eqz v1, :cond_6d

    .line 151
    iget-object v1, p0, Lcom/mintegral/msdk/click/f;->i:Lcom/mintegral/msdk/click/f$a;

    iget-object v2, p0, Lcom/mintegral/msdk/click/f;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/mintegral/msdk/click/f;->n:Ljava/lang/String;

    invoke-interface {v1, v2, v0, v3}, Lcom/mintegral/msdk/click/f$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_a2} :catch_a3

    goto :goto_6d

    .line 157
    :catch_a3
    move-exception v0

    goto :goto_6d

    .line 145
    :cond_a5
    :try_start_a5
    iget-object v0, p0, Lcom/mintegral/msdk/click/f;->l:Landroid/webkit/WebView;

    invoke-virtual {v0, p5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_aa
    .catch Ljava/lang/Throwable; {:try_start_a5 .. :try_end_aa} :catch_90

    goto :goto_6d
.end method

.method private b()V
    .registers 1

    .prologue
    .line 442
    invoke-direct {p0}, Lcom/mintegral/msdk/click/f;->d()V

    .line 443
    invoke-direct {p0}, Lcom/mintegral/msdk/click/f;->c()V

    .line 444
    return-void
.end method

.method static synthetic b(Lcom/mintegral/msdk/click/f;)Z
    .registers 2

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/mintegral/msdk/click/f;->q:Z

    return v0
.end method

.method private c()V
    .registers 3

    .prologue
    .line 451
    iget-object v0, p0, Lcom/mintegral/msdk/click/f;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mintegral/msdk/click/f;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 452
    return-void
.end method

.method static synthetic c(Lcom/mintegral/msdk/click/f;)V
    .registers 5

    .prologue
    .line 1370
    sget-object v1, Lcom/mintegral/msdk/click/f;->d:Ljava/lang/String;

    monitor-enter v1

    .line 1372
    :try_start_3
    invoke-direct {p0}, Lcom/mintegral/msdk/click/f;->b()V

    .line 1376
    iget-object v0, p0, Lcom/mintegral/msdk/click/f;->i:Lcom/mintegral/msdk/click/f$a;

    if-eqz v0, :cond_13

    .line 1377
    iget-object v0, p0, Lcom/mintegral/msdk/click/f;->i:Lcom/mintegral/msdk/click/f$a;

    iget-object v2, p0, Lcom/mintegral/msdk/click/f;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/mintegral/msdk/click/f;->n:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/mintegral/msdk/click/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_13} :catch_15
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_13} :catch_21
    .catchall {:try_start_3 .. :try_end_13} :catchall_1e

    .line 1384
    :cond_13
    :goto_13
    :try_start_13
    monitor-exit v1

    return-void

    .line 1380
    :catch_15
    move-exception v0

    sget-object v0, Lcom/mintegral/msdk/click/f;->d:Ljava/lang/String;

    const-string v2, "webview colse to failed"

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 1384
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_1e

    throw v0

    .line 1382
    :catch_21
    move-exception v0

    :try_start_22
    sget-object v0, Lcom/mintegral/msdk/click/f;->d:Ljava/lang/String;

    const-string v2, "webview colse to failed"

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_1e

    goto :goto_13
.end method

.method static synthetic d(Lcom/mintegral/msdk/click/f;)Lcom/mintegral/msdk/click/f$a;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mintegral/msdk/click/f;->i:Lcom/mintegral/msdk/click/f$a;

    return-object v0
.end method

.method private d()V
    .registers 3

    .prologue
    .line 459
    iget-object v0, p0, Lcom/mintegral/msdk/click/f;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mintegral/msdk/click/f;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 460
    return-void
.end method

.method static synthetic e(Lcom/mintegral/msdk/click/f;)Z
    .registers 2

    .prologue
    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/click/f;->q:Z

    return v0
.end method

.method static synthetic f(Lcom/mintegral/msdk/click/f;)V
    .registers 5

    .prologue
    .line 32
    .line 1428
    invoke-direct {p0}, Lcom/mintegral/msdk/click/f;->c()V

    .line 1447
    iget-object v0, p0, Lcom/mintegral/msdk/click/f;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mintegral/msdk/click/f;->s:Ljava/lang/Runnable;

    iget v2, p0, Lcom/mintegral/msdk/click/f;->e:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32
    return-void
.end method

.method static synthetic g(Lcom/mintegral/msdk/click/f;)V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/mintegral/msdk/click/f;->d()V

    return-void
.end method

.method static synthetic h(Lcom/mintegral/msdk/click/f;)V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/mintegral/msdk/click/f;->c()V

    return-void
.end method

.method static synthetic i(Lcom/mintegral/msdk/click/f;)Z
    .registers 2

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/mintegral/msdk/click/f;->m:Z

    return v0
.end method

.method static synthetic j(Lcom/mintegral/msdk/click/f;)Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mintegral/msdk/click/f;->l:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic k(Lcom/mintegral/msdk/click/f;)V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/mintegral/msdk/click/f;->b()V

    return-void
.end method

.method static synthetic l(Lcom/mintegral/msdk/click/f;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mintegral/msdk/click/f;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/mintegral/msdk/click/f;)V
    .registers 5

    .prologue
    .line 32
    .line 2435
    invoke-direct {p0}, Lcom/mintegral/msdk/click/f;->d()V

    .line 2455
    iget-object v0, p0, Lcom/mintegral/msdk/click/f;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mintegral/msdk/click/f;->r:Ljava/lang/Runnable;

    iget v2, p0, Lcom/mintegral/msdk/click/f;->f:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32
    return-void
.end method

.method static synthetic n(Lcom/mintegral/msdk/click/f;)Z
    .registers 2

    .prologue
    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/click/f;->p:Z

    return v0
.end method

.method static synthetic o(Lcom/mintegral/msdk/click/f;)I
    .registers 2

    .prologue
    .line 32
    iget v0, p0, Lcom/mintegral/msdk/click/f;->f:I

    return v0
.end method

.method static synthetic p(Lcom/mintegral/msdk/click/f;)V
    .registers 5

    .prologue
    .line 3388
    sget-object v1, Lcom/mintegral/msdk/click/f;->d:Ljava/lang/String;

    monitor-enter v1

    .line 3390
    :try_start_3
    invoke-direct {p0}, Lcom/mintegral/msdk/click/f;->b()V

    .line 3392
    iget-object v0, p0, Lcom/mintegral/msdk/click/f;->l:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 3394
    iget-object v0, p0, Lcom/mintegral/msdk/click/f;->i:Lcom/mintegral/msdk/click/f$a;

    if-eqz v0, :cond_18

    .line 3395
    iget-object v0, p0, Lcom/mintegral/msdk/click/f;->i:Lcom/mintegral/msdk/click/f$a;

    iget-object v2, p0, Lcom/mintegral/msdk/click/f;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/mintegral/msdk/click/f;->n:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/mintegral/msdk/click/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_18} :catch_1a
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_18} :catch_26
    .catchall {:try_start_3 .. :try_end_18} :catchall_23

    .line 3402
    :cond_18
    :goto_18
    :try_start_18
    monitor-exit v1

    return-void

    .line 3398
    :catch_1a
    move-exception v0

    sget-object v0, Lcom/mintegral/msdk/click/f;->d:Ljava/lang/String;

    const-string v2, "webview colse to failed"

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 3402
    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_23

    throw v0

    .line 3400
    :catch_26
    move-exception v0

    :try_start_27
    sget-object v0, Lcom/mintegral/msdk/click/f;->d:Ljava/lang/String;

    const-string v2, "webview colse to failed"

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_23

    goto :goto_18
.end method

.method static synthetic q(Lcom/mintegral/msdk/click/f;)I
    .registers 2

    .prologue
    .line 32
    iget v0, p0, Lcom/mintegral/msdk/click/f;->e:I

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/mintegral/msdk/click/f$a;)V
    .registers 9

    .prologue
    .line 103
    if-nez p6, :cond_a

    .line 104
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "OverrideUrlLoadingListener can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_a
    iput-object p5, p0, Lcom/mintegral/msdk/click/f;->j:Ljava/lang/String;

    .line 107
    iput-object p6, p0, Lcom/mintegral/msdk/click/f;->i:Lcom/mintegral/msdk/click/f$a;

    .line 109
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mintegral/msdk/click/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 110
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mintegral/msdk/click/f$a;)V
    .registers 10

    .prologue
    .line 92
    if-nez p7, :cond_a

    .line 93
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "OverrideUrlLoadingListener can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_a
    iput-object p6, p0, Lcom/mintegral/msdk/click/f;->k:Ljava/lang/String;

    .line 96
    iput-object p5, p0, Lcom/mintegral/msdk/click/f;->j:Ljava/lang/String;

    .line 97
    iput-object p7, p0, Lcom/mintegral/msdk/click/f;->i:Lcom/mintegral/msdk/click/f$a;

    .line 98
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mintegral/msdk/click/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 99
    return-void
.end method
