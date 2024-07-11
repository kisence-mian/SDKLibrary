.class public Lcom/tapjoy/TJAdUnit;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;,
        Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;
    }
.end annotation


# static fields
.field public static a:Lcom/tapjoy/TJVideoListener;


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:Z

.field private E:Z

.field private F:Lcom/tapjoy/internal/fn;

.field private G:Lcom/tapjoy/internal/fz;

.field private final H:Ljava/lang/Runnable;

.field private final I:Ljava/lang/Runnable;

.field private final J:Ljava/lang/Runnable;

.field private K:Landroid/webkit/WebViewClient;

.field private L:Landroid/webkit/WebChromeClient;

.field b:Landroid/widget/VideoView;

.field private final c:Landroid/os/Handler;

.field private d:Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;

.field private e:Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;

.field private f:Lcom/tapjoy/TJAdUnitActivity;

.field private g:Lcom/tapjoy/TJAdUnitJSBridge;

.field private h:Lcom/tapjoy/TJWebView;

.field private i:Lcom/tapjoy/TJWebView;

.field private j:Landroid/media/MediaPlayer;

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private p:Landroid/media/AudioManager;

.field private q:I

.field private r:I

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private volatile y:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnit;->c:Landroid/os/Handler;

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/TJAdUnit;->q:I

    .line 127
    const/4 v0, -0x1

    iput v0, p0, Lcom/tapjoy/TJAdUnit;->A:I

    .line 139
    new-instance v0, Lcom/tapjoy/TJAdUnit$1;

    invoke-direct {v0, p0}, Lcom/tapjoy/TJAdUnit$1;-><init>(Lcom/tapjoy/TJAdUnit;)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnit;->H:Ljava/lang/Runnable;

    .line 746
    new-instance v0, Lcom/tapjoy/TJAdUnit$8;

    invoke-direct {v0, p0}, Lcom/tapjoy/TJAdUnit$8;-><init>(Lcom/tapjoy/TJAdUnit;)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnit;->I:Ljava/lang/Runnable;

    .line 769
    new-instance v0, Lcom/tapjoy/TJAdUnit$9;

    invoke-direct {v0, p0}, Lcom/tapjoy/TJAdUnit$9;-><init>(Lcom/tapjoy/TJAdUnit;)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnit;->J:Ljava/lang/Runnable;

    .line 1151
    new-instance v0, Lcom/tapjoy/TJAdUnit$2;

    invoke-direct {v0, p0}, Lcom/tapjoy/TJAdUnit$2;-><init>(Lcom/tapjoy/TJAdUnit;)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnit;->K:Landroid/webkit/WebViewClient;

    .line 1352
    new-instance v0, Lcom/tapjoy/TJAdUnit$3;

    invoke-direct {v0, p0}, Lcom/tapjoy/TJAdUnit$3;-><init>(Lcom/tapjoy/TJAdUnit;)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnit;->L:Landroid/webkit/WebChromeClient;

    .line 150
    return-void
.end method

.method static synthetic a(Lcom/tapjoy/TJAdUnit;I)I
    .registers 2

    .line 61
    iput p1, p0, Lcom/tapjoy/TJAdUnit;->q:I

    return p1
.end method

.method static synthetic a(Lcom/tapjoy/TJAdUnit;)Landroid/media/AudioManager;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/tapjoy/TJAdUnit;->p:Landroid/media/AudioManager;

    return-object p0
.end method

.method private a()V
    .registers 2

    .line 412
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->g:Lcom/tapjoy/TJAdUnitJSBridge;

    if-nez v0, :cond_5

    .line 413
    return-void

    .line 415
    :cond_5
    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnitJSBridge;->display()V

    .line 416
    return-void
.end method

.method private static a(I)Z
    .registers 2

    .line 549
    if-eqz p0, :cond_10

    const/16 v0, 0x8

    if-eq p0, v0, :cond_10

    const/4 v0, 0x6

    if-eq p0, v0, :cond_10

    const/16 v0, 0xb

    if-ne p0, v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 p0, 0x0

    return p0

    :cond_10
    :goto_10
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic a(Lcom/tapjoy/TJAdUnit;Z)Z
    .registers 2

    .line 61
    iput-boolean p1, p0, Lcom/tapjoy/TJAdUnit;->w:Z

    return p1
.end method

.method static synthetic a(Ljava/lang/String;)Z
    .registers 1

    .line 61
    invoke-static {p0}, Lcom/tapjoy/TJAdUnit;->b(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/tapjoy/TJAdUnit;)I
    .registers 1

    .line 61
    iget p0, p0, Lcom/tapjoy/TJAdUnit;->q:I

    return p0
.end method

.method private b()V
    .registers 4

    .line 470
    const-string v0, "TJAdUnit"

    const-string v1, "detachVolumeListener"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->o:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 472
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 473
    iput-object v1, p0, Lcom/tapjoy/TJAdUnit;->o:Ljava/util/concurrent/ScheduledFuture;

    .line 476
    :cond_12
    iput-object v1, p0, Lcom/tapjoy/TJAdUnit;->p:Landroid/media/AudioManager;

    .line 477
    return-void
.end method

.method private static b(I)Z
    .registers 3

    .line 556
    const/4 v0, 0x1

    if-eq p0, v0, :cond_11

    const/16 v1, 0x9

    if-eq p0, v1, :cond_11

    const/4 v1, 0x7

    if-eq p0, v1, :cond_11

    const/16 v1, 0xc

    if-ne p0, v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    return v0
.end method

.method static synthetic b(Lcom/tapjoy/TJAdUnit;Z)Z
    .registers 2

    .line 61
    iput-boolean p1, p0, Lcom/tapjoy/TJAdUnit;->x:Z

    return p1
.end method

.method private static b(Ljava/lang/String;)Z
    .registers 4

    .line 1124
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1
    :try_end_e
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_e} :catch_33

    .line 1127
    nop

    .line 1128
    if-eqz v1, :cond_17

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    :cond_17
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getRedirectDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 1129
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getPlacementURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/TapjoyUtil;->getRedirectDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_30

    goto :goto_31

    .line 1128
    :cond_30
    return v0

    .line 1129
    :cond_31
    :goto_31
    const/4 p0, 0x1

    return p0

    .line 1125
    :catch_33
    move-exception p0

    .line 1126
    return v0
.end method

.method private c()I
    .registers 8

    .line 483
    nop

    .line 485
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/TJAdUnitActivity;

    .line 486
    const/16 v1, 0x8

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_6c

    .line 487
    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnitActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v5

    .line 488
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 489
    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnitActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 490
    iget v0, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/tapjoy/TJAdUnit;->B:I

    .line 491
    iget v0, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/tapjoy/TJAdUnit;->C:I

    .line 494
    if-eqz v5, :cond_34

    const/4 v6, 0x2

    if-ne v5, v6, :cond_38

    :cond_34
    iget v6, p0, Lcom/tapjoy/TJAdUnit;->B:I

    if-gt v0, v6, :cond_5a

    :cond_38
    if-eq v5, v4, :cond_3d

    const/4 v6, 0x3

    if-ne v5, v6, :cond_42

    :cond_3d
    iget v6, p0, Lcom/tapjoy/TJAdUnit;->B:I

    if-le v6, v0, :cond_42

    goto :goto_5a

    .line 522
    :cond_42
    packed-switch v5, :pswitch_data_6e

    .line 538
    const-string v0, "TJAdUnit"

    const-string v1, "Unknown screen orientation. Defaulting to landscape."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const/4 v1, 0x0

    goto :goto_6d

    .line 534
    :pswitch_4e
    nop

    .line 536
    const/16 v1, 0x9

    goto :goto_6d

    .line 530
    :pswitch_52
    nop

    .line 532
    goto :goto_6d

    .line 527
    :pswitch_54
    nop

    .line 528
    const/4 v1, 0x1

    goto :goto_6d

    .line 524
    :pswitch_57
    nop

    .line 525
    const/4 v1, 0x0

    goto :goto_6d

    .line 498
    :cond_5a
    :goto_5a
    packed-switch v5, :pswitch_data_7a

    .line 515
    nop

    .line 516
    const/4 v1, 0x1

    goto :goto_6d

    .line 510
    :pswitch_60
    nop

    .line 512
    goto :goto_6d

    .line 506
    :pswitch_62
    nop

    .line 508
    const/16 v1, 0x9

    goto :goto_6d

    .line 503
    :pswitch_66
    nop

    .line 504
    const/4 v1, 0x0

    goto :goto_6d

    .line 500
    :pswitch_69
    nop

    .line 501
    const/4 v1, 0x1

    goto :goto_6d

    .line 486
    :cond_6c
    const/4 v1, -0x1

    .line 545
    :goto_6d
    return v1

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_57
        :pswitch_54
        :pswitch_52
        :pswitch_4e
    .end packed-switch

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_69
        :pswitch_66
        :pswitch_62
        :pswitch_60
    .end packed-switch
.end method

.method static synthetic c(Lcom/tapjoy/TJAdUnit;)V
    .registers 1

    .line 61
    nop

    .line 2463
    iget-object p0, p0, Lcom/tapjoy/TJAdUnit;->g:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitJSBridge;->onVolumeChanged()V

    .line 61
    return-void
.end method

.method static synthetic c(Lcom/tapjoy/TJAdUnit;Z)Z
    .registers 2

    .line 61
    iput-boolean p1, p0, Lcom/tapjoy/TJAdUnit;->m:Z

    return p1
.end method

.method static synthetic d(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/TJWebView;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/tapjoy/TJAdUnit;->i:Lcom/tapjoy/TJWebView;

    return-object p0
.end method

.method private d()V
    .registers 3

    .line 971
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnit;->I:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 972
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnit;->J:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 973
    return-void
.end method

.method static synthetic d(Lcom/tapjoy/TJAdUnit;Z)Z
    .registers 2

    .line 61
    iput-boolean p1, p0, Lcom/tapjoy/TJAdUnit;->l:Z

    return p1
.end method

.method private e()V
    .registers 4

    .line 1058
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->F:Lcom/tapjoy/internal/fn;

    if-eqz v0, :cond_f

    .line 1059
    iget-boolean v1, p0, Lcom/tapjoy/TJAdUnit;->x:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "prerendered"

    invoke-virtual {v0, v2, v1}, Lcom/tapjoy/internal/fn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1061
    :cond_f
    return-void
.end method

.method static synthetic e(Lcom/tapjoy/TJAdUnit;)Z
    .registers 1

    .line 61
    iget-boolean p0, p0, Lcom/tapjoy/TJAdUnit;->w:Z

    return p0
.end method

.method static synthetic f(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/TJWebView;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/tapjoy/TJAdUnit;->h:Lcom/tapjoy/TJWebView;

    return-object p0
.end method

.method private f()Z
    .registers 5

    .line 1137
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/tapjoy/TJAdUnit;->i:Lcom/tapjoy/TJWebView;

    invoke-virtual {v1}, Lcom/tapjoy/TJWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 1138
    iget-object v1, p0, Lcom/tapjoy/TJAdUnit;->i:Lcom/tapjoy/TJWebView;

    invoke-virtual {v1}, Lcom/tapjoy/TJWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1139
    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_27} :catch_2c

    if-eqz v1, :cond_2a

    const/4 v0, 0x1

    :cond_2a
    return v0

    .line 1143
    :cond_2b
    goto :goto_45

    .line 1141
    :catch_2c
    move-exception v1

    .line 1142
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception getting NetworkInfo: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TJAdUnit"

    invoke-static {v2, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    :goto_45
    return v0
.end method

.method static synthetic g(Lcom/tapjoy/TJAdUnit;)Z
    .registers 1

    .line 61
    iget-boolean p0, p0, Lcom/tapjoy/TJAdUnit;->m:Z

    return p0
.end method

.method static synthetic h(Lcom/tapjoy/TJAdUnit;)I
    .registers 1

    .line 61
    iget p0, p0, Lcom/tapjoy/TJAdUnit;->k:I

    return p0
.end method

.method static synthetic i(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/TJAdUnitJSBridge;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/tapjoy/TJAdUnit;->g:Lcom/tapjoy/TJAdUnitJSBridge;

    return-object p0
.end method

.method static synthetic j(Lcom/tapjoy/TJAdUnit;)Ljava/lang/Runnable;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/tapjoy/TJAdUnit;->J:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic k(Lcom/tapjoy/TJAdUnit;)Z
    .registers 1

    .line 61
    iget-boolean p0, p0, Lcom/tapjoy/TJAdUnit;->D:Z

    return p0
.end method

.method static synthetic l(Lcom/tapjoy/TJAdUnit;)Ljava/lang/Runnable;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/tapjoy/TJAdUnit;->I:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic m(Lcom/tapjoy/TJAdUnit;)Landroid/os/Handler;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/tapjoy/TJAdUnit;->c:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic n(Lcom/tapjoy/TJAdUnit;)Z
    .registers 2

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->E:Z

    return v0
.end method

.method static synthetic o(Lcom/tapjoy/TJAdUnit;)I
    .registers 2

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/TJAdUnit;->k:I

    return v0
.end method

.method static synthetic p(Lcom/tapjoy/TJAdUnit;)V
    .registers 1

    .line 61
    invoke-direct {p0}, Lcom/tapjoy/TJAdUnit;->b()V

    return-void
.end method

.method static synthetic q(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/TJAdUnitActivity;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/TJAdUnitActivity;

    return-object p0
.end method

.method static synthetic r(Lcom/tapjoy/TJAdUnit;)Z
    .registers 2

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->z:Z

    return v0
.end method

.method static synthetic s(Lcom/tapjoy/TJAdUnit;)Z
    .registers 1

    .line 61
    iget-boolean p0, p0, Lcom/tapjoy/TJAdUnit;->v:Z

    return p0
.end method

.method static synthetic t(Lcom/tapjoy/TJAdUnit;)V
    .registers 1

    .line 61
    invoke-direct {p0}, Lcom/tapjoy/TJAdUnit;->a()V

    return-void
.end method

.method static synthetic u(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/TJWebView;
    .registers 2

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/TJAdUnit;->h:Lcom/tapjoy/TJWebView;

    return-object v0
.end method

.method static synthetic v(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/TJWebView;
    .registers 2

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/TJAdUnit;->i:Lcom/tapjoy/TJWebView;

    return-object v0
.end method

.method static synthetic w(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/TJAdUnitJSBridge;
    .registers 2

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/TJAdUnit;->g:Lcom/tapjoy/TJAdUnitJSBridge;

    return-object v0
.end method

.method static synthetic x(Lcom/tapjoy/TJAdUnit;)Z
    .registers 1

    .line 61
    invoke-direct {p0}, Lcom/tapjoy/TJAdUnit;->f()Z

    move-result p0

    return p0
.end method


# virtual methods
.method final a(Z)V
    .registers 4

    .line 826
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->j:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1d

    .line 827
    if-eqz p1, :cond_b

    .line 828
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_10

    .line 830
    :cond_b
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 834
    :goto_10
    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->t:Z

    if-eq v0, p1, :cond_1f

    .line 835
    iput-boolean p1, p0, Lcom/tapjoy/TJAdUnit;->t:Z

    .line 836
    nop

    .line 1463
    iget-object p1, p0, Lcom/tapjoy/TJAdUnit;->g:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-virtual {p1}, Lcom/tapjoy/TJAdUnitJSBridge;->onVolumeChanged()V

    .line 836
    return-void

    .line 839
    :cond_1d
    iput-boolean p1, p0, Lcom/tapjoy/TJAdUnit;->s:Z

    .line 841
    :cond_1f
    return-void
.end method

.method final a(Landroid/content/Context;)Z
    .registers 10

    .line 158
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_75

    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->y:Z

    if-nez v0, :cond_75

    if-eqz p1, :cond_75

    .line 159
    const-string v0, "TJAdUnit"

    const-string v1, "Constructing ad unit"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tapjoy/TJAdUnit;->y:Z

    .line 164
    :try_start_1a
    new-instance v2, Lcom/tapjoy/TJWebView;

    invoke-direct {v2, p1}, Lcom/tapjoy/TJWebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tapjoy/TJAdUnit;->h:Lcom/tapjoy/TJWebView;

    .line 165
    const/4 v3, 0x0

    const-string v4, "<!DOCTYPE html><html><head><title>Tapjoy Background Webview</title></head></html>"

    const-string v5, "text/html"

    const-string v6, "utf-8"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/tapjoy/TJWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    new-instance v1, Lcom/tapjoy/TJWebView;

    invoke-direct {v1, p1}, Lcom/tapjoy/TJWebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tapjoy/TJAdUnit;->i:Lcom/tapjoy/TJWebView;

    .line 169
    iget-object v2, p0, Lcom/tapjoy/TJAdUnit;->K:Landroid/webkit/WebViewClient;

    invoke-virtual {v1, v2}, Lcom/tapjoy/TJWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 170
    iget-object v1, p0, Lcom/tapjoy/TJAdUnit;->i:Lcom/tapjoy/TJWebView;

    iget-object v2, p0, Lcom/tapjoy/TJAdUnit;->L:Landroid/webkit/WebChromeClient;

    invoke-virtual {v1, v2}, Lcom/tapjoy/TJWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_3f} :catch_6b

    .line 174
    nop

    .line 177
    new-instance v0, Landroid/widget/VideoView;

    invoke-direct {v0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnit;->b:Landroid/widget/VideoView;

    .line 178
    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 179
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->b:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 180
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->b:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 181
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->b:Landroid/widget/VideoView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 184
    new-instance v0, Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-direct {v0, p1, p0}, Lcom/tapjoy/TJAdUnitJSBridge;-><init>(Landroid/content/Context;Lcom/tapjoy/TJAdUnit;)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnit;->g:Lcom/tapjoy/TJAdUnitJSBridge;

    .line 187
    instance-of v0, p1, Lcom/tapjoy/TJAdUnitActivity;

    if-eqz v0, :cond_75

    .line 188
    check-cast p1, Lcom/tapjoy/TJAdUnitActivity;

    invoke-virtual {p0, p1}, Lcom/tapjoy/TJAdUnit;->setAdUnitActivity(Lcom/tapjoy/TJAdUnitActivity;)V

    goto :goto_75

    .line 171
    :catch_6b
    move-exception p1

    .line 172
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const/4 p1, 0x0

    return p1

    .line 192
    :cond_75
    :goto_75
    iget-boolean p1, p0, Lcom/tapjoy/TJAdUnit;->y:Z

    return p1
.end method

.method public attachVolumeListener(ZI)V
    .registers 11
    .param p1, "isAttached"    # Z
    .param p2, "interval"    # I

    .line 844
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "attachVolumeListener: isAttached="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TJAdUnit"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    invoke-direct {p0}, Lcom/tapjoy/TJAdUnit;->b()V

    .line 849
    if-nez p1, :cond_24

    .line 850
    return-void

    .line 853
    :cond_24
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/TJAdUnitActivity;

    .line 854
    if-eqz v0, :cond_4f

    .line 855
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJAdUnitActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/tapjoy/TJAdUnit;->p:Landroid/media/AudioManager;

    .line 856
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/tapjoy/TJAdUnit;->q:I

    .line 857
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->p:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/tapjoy/TJAdUnit;->r:I

    .line 858
    sget-object v1, Lcom/tapjoy/internal/hp;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Lcom/tapjoy/TJAdUnit;->H:Ljava/lang/Runnable;

    int-to-long v3, p2

    int-to-long v5, p2

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJAdUnit;->o:Ljava/util/concurrent/ScheduledFuture;

    .line 861
    :cond_4f
    return-void
.end method

.method public clearVideo(Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;Z)V
    .registers 4
    .param p1, "adUnitAsyncTaskListner"    # Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;
    .param p2, "visible"    # Z

    .line 805
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->b:Landroid/widget/VideoView;

    if-eqz v0, :cond_10

    .line 806
    invoke-direct {p0}, Lcom/tapjoy/TJAdUnit;->d()V

    .line 807
    new-instance v0, Lcom/tapjoy/TJAdUnit$10;

    invoke-direct {v0, p0, p2, p1}, Lcom/tapjoy/TJAdUnit$10;-><init>(Lcom/tapjoy/TJAdUnit;ZLcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void

    .line 820
    :cond_10
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;->onComplete(Z)V

    .line 822
    return-void
.end method

.method public closeRequested(Z)V
    .registers 4
    .param p1, "shouldForceClose"    # Z

    .line 422
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->g:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->closeRequested(Ljava/lang/Boolean;)V

    .line 423
    return-void
.end method

.method public destroy()V
    .registers 3

    .line 326
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->g:Lcom/tapjoy/TJAdUnitJSBridge;

    if-eqz v0, :cond_7

    .line 327
    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnitJSBridge;->destroy()V

    .line 331
    :cond_7
    invoke-direct {p0}, Lcom/tapjoy/TJAdUnit;->d()V

    .line 334
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->h:Lcom/tapjoy/TJWebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 335
    invoke-virtual {v0}, Lcom/tapjoy/TJWebView;->removeAllViews()V

    .line 336
    iput-object v1, p0, Lcom/tapjoy/TJAdUnit;->h:Lcom/tapjoy/TJWebView;

    .line 340
    :cond_14
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->i:Lcom/tapjoy/TJWebView;

    if-eqz v0, :cond_1d

    .line 341
    invoke-virtual {v0}, Lcom/tapjoy/TJWebView;->removeAllViews()V

    .line 342
    iput-object v1, p0, Lcom/tapjoy/TJAdUnit;->i:Lcom/tapjoy/TJWebView;

    .line 346
    :cond_1d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->y:Z

    .line 347
    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->v:Z

    .line 350
    invoke-virtual {p0, v1}, Lcom/tapjoy/TJAdUnit;->setAdUnitActivity(Lcom/tapjoy/TJAdUnitActivity;)V

    .line 353
    invoke-direct {p0}, Lcom/tapjoy/TJAdUnit;->b()V

    .line 356
    iput-object v1, p0, Lcom/tapjoy/TJAdUnit;->j:Landroid/media/MediaPlayer;

    .line 359
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->d:Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;

    if-eqz v0, :cond_31

    .line 360
    invoke-interface {v0}, Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;->onClosed()V

    .line 363
    :cond_31
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnit;->resetContentLoadState()V

    .line 364
    return-void
.end method

.method public endAdContentTracking(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "adUnitParams"    # Lorg/json/JSONObject;

    .line 1044
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->F:Lcom/tapjoy/internal/fn;

    if-eqz v0, :cond_c

    .line 1045
    invoke-direct {p0}, Lcom/tapjoy/TJAdUnit;->e()V

    .line 1046
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->F:Lcom/tapjoy/internal/fn;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/internal/fn;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/tapjoy/internal/gh$a;

    .line 1048
    :cond_c
    return-void
.end method

.method public fireContentReady()V
    .registers 2

    .line 394
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->d:Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;

    if-eqz v0, :cond_7

    .line 395
    invoke-interface {v0}, Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;->onContentReady()V

    .line 397
    :cond_7
    return-void
.end method

.method public fireOnClick()V
    .registers 2

    .line 403
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->d:Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;

    if-eqz v0, :cond_7

    .line 404
    invoke-interface {v0}, Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;->onClick()V

    .line 406
    :cond_7
    return-void
.end method

.method public fireOnVideoComplete()V
    .registers 3

    .line 1014
    const-string v0, "TJAdUnit"

    const-string v1, "Firing onVideoComplete"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnit;->getPublisherVideoListener()Lcom/tapjoy/TJVideoListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1017
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnit;->getPublisherVideoListener()Lcom/tapjoy/TJVideoListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tapjoy/TJVideoListener;->onVideoComplete()V

    .line 1020
    :cond_14
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;

    if-eqz v0, :cond_1b

    .line 1021
    invoke-interface {v0}, Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;->onVideoCompleted()V

    .line 1023
    :cond_1b
    return-void
.end method

.method public fireOnVideoError(Ljava/lang/String;)V
    .registers 4
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 1002
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Firing onVideoError with error: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TJAdUnit"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnit;->getPublisherVideoListener()Lcom/tapjoy/TJVideoListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 1005
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnit;->getPublisherVideoListener()Lcom/tapjoy/TJVideoListener;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/tapjoy/TJVideoListener;->onVideoError(I)V

    .line 1008
    :cond_1d
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;

    if-eqz v0, :cond_24

    .line 1009
    invoke-interface {v0, p1}, Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;->onVideoError(Ljava/lang/String;)V

    .line 1011
    :cond_24
    return-void
.end method

.method public fireOnVideoStart()V
    .registers 3

    .line 990
    const-string v0, "TJAdUnit"

    const-string v1, "Firing onVideoStart"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnit;->getPublisherVideoListener()Lcom/tapjoy/TJVideoListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 993
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnit;->getPublisherVideoListener()Lcom/tapjoy/TJVideoListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tapjoy/TJVideoListener;->onVideoStart()V

    .line 996
    :cond_14
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;

    if-eqz v0, :cond_1b

    .line 997
    invoke-interface {v0}, Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;->onVideoStart()V

    .line 999
    :cond_1b
    return-void
.end method

.method public getBackgroundWebView()Lcom/tapjoy/TJWebView;
    .registers 2

    .line 685
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->h:Lcom/tapjoy/TJWebView;

    return-object v0
.end method

.method public getCloseRequested()Z
    .registers 2

    .line 699
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->g:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-boolean v0, v0, Lcom/tapjoy/TJAdUnitJSBridge;->closeRequested:Z

    return v0
.end method

.method public getLockedOrientation()I
    .registers 2

    .line 631
    iget v0, p0, Lcom/tapjoy/TJAdUnit;->A:I

    return v0
.end method

.method public getPublisherVideoListener()Lcom/tapjoy/TJVideoListener;
    .registers 2

    .line 1115
    sget-object v0, Lcom/tapjoy/TJAdUnit;->a:Lcom/tapjoy/TJVideoListener;

    return-object v0
.end method

.method public getScreenHeight()I
    .registers 2

    .line 645
    iget v0, p0, Lcom/tapjoy/TJAdUnit;->C:I

    return v0
.end method

.method public getScreenOrientationString()Ljava/lang/String;
    .registers 2

    .line 652
    invoke-direct {p0}, Lcom/tapjoy/TJAdUnit;->c()I

    move-result v0

    .line 653
    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->a(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 654
    const-string v0, "landscape"

    return-object v0

    .line 656
    :cond_d
    const-string v0, "portrait"

    return-object v0
.end method

.method public getScreenWidth()I
    .registers 2

    .line 638
    iget v0, p0, Lcom/tapjoy/TJAdUnit;->B:I

    return v0
.end method

.method public getSdkBeacon()Lcom/tapjoy/internal/fz;
    .registers 2

    .line 1072
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->G:Lcom/tapjoy/internal/fz;

    return-object v0
.end method

.method public getVideoSeekTime()I
    .registers 2

    .line 874
    iget v0, p0, Lcom/tapjoy/TJAdUnit;->k:I

    return v0
.end method

.method public getVideoView()Landroid/widget/VideoView;
    .registers 2

    .line 867
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->b:Landroid/widget/VideoView;

    return-object v0
.end method

.method public getVolume()F
    .registers 3

    .line 1027
    iget v0, p0, Lcom/tapjoy/TJAdUnit;->q:I

    int-to-float v0, v0

    iget v1, p0, Lcom/tapjoy/TJAdUnit;->r:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getWebView()Lcom/tapjoy/TJWebView;
    .registers 2

    .line 692
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->i:Lcom/tapjoy/TJWebView;

    return-object v0
.end method

.method public hasCalledLoad()Z
    .registers 2

    .line 664
    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->w:Z

    return v0
.end method

.method public varargs invokeBridgeCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p1, "callbackID"    # Ljava/lang/String;
    .param p2, "argArray"    # [Ljava/lang/Object;

    .line 314
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->g:Lcom/tapjoy/TJAdUnitJSBridge;

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    .line 315
    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    :cond_9
    return-void
.end method

.method public isLockedOrientation()Z
    .registers 2

    .line 678
    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->u:Z

    return v0
.end method

.method public isMuted()Z
    .registers 2

    .line 1031
    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->t:Z

    return v0
.end method

.method public isPrerendered()Z
    .registers 2

    .line 671
    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->x:Z

    return v0
.end method

.method public isVideoComplete()Z
    .registers 2

    .line 878
    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->n:Z

    return v0
.end method

.method public load(Lcom/tapjoy/TJPlacementData;ZLandroid/content/Context;)V
    .registers 5
    .param p1, "placementData"    # Lcom/tapjoy/TJPlacementData;
    .param p2, "shouldPrerenderContent"    # Z
    .param p3, "context"    # Landroid/content/Context;

    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->w:Z

    .line 223
    new-instance v0, Lcom/tapjoy/TJAdUnit$4;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/tapjoy/TJAdUnit$4;-><init>(Lcom/tapjoy/TJAdUnit;Landroid/content/Context;Lcom/tapjoy/TJPlacementData;Z)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 256
    return-void
.end method

.method public loadVideoUrl(Ljava/lang/String;Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;)V
    .registers 4
    .param p1, "videoURL"    # Ljava/lang/String;
    .param p2, "adUnitAsyncTaskListner"    # Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;

    .line 708
    new-instance v0, Lcom/tapjoy/TJAdUnit$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/tapjoy/TJAdUnit$7;-><init>(Lcom/tapjoy/TJAdUnit;Ljava/lang/String;Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 722
    return-void
.end method

.method public notifyOrientationChanged()V
    .registers 5

    .line 1380
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnit;->getScreenOrientationString()Ljava/lang/String;

    move-result-object v0

    .line 1381
    iget-object v1, p0, Lcom/tapjoy/TJAdUnit;->g:Lcom/tapjoy/TJAdUnitJSBridge;

    iget v2, p0, Lcom/tapjoy/TJAdUnit;->B:I

    iget v3, p0, Lcom/tapjoy/TJAdUnit;->C:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/tapjoy/TJAdUnitJSBridge;->notifyOrientationChanged(Ljava/lang/String;II)V

    .line 1382
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 977
    const-string v0, "TJAdUnit"

    const-string v1, "video -- onCompletion"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    invoke-direct {p0}, Lcom/tapjoy/TJAdUnit;->d()V

    .line 980
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->n:Z

    .line 982
    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->l:Z

    if-nez v0, :cond_16

    .line 984
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->g:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnitJSBridge;->onVideoCompletion()V

    .line 987
    :cond_16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->l:Z

    .line 988
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 8
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .line 921
    new-instance v0, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v1, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error encountered when instantiating the VideoView: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    const-string v1, "TJAdUnit"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 924
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->l:Z

    .line 925
    invoke-direct {p0}, Lcom/tapjoy/TJAdUnit;->d()V

    .line 929
    packed-switch p2, :pswitch_data_be

    .line 935
    const-string v1, "MEDIA_ERROR_UNKNOWN"

    goto :goto_34

    .line 931
    :pswitch_31
    nop

    .line 932
    const-string v1, "MEDIA_ERROR_SERVER_DIED"

    .line 939
    :goto_34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 941
    sparse-switch p3, :sswitch_data_c4

    .line 955
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_EXTRA_UNKNOWN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_ae

    .line 952
    :sswitch_5e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_TIMED_OUT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 953
    goto :goto_ae

    .line 943
    :sswitch_72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_IO"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 944
    goto :goto_ae

    .line 946
    :sswitch_86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_MALFORMED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 947
    goto :goto_ae

    .line 949
    :sswitch_9a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_UNSUPPORTED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 950
    nop

    .line 959
    :goto_ae
    iget-object v2, p0, Lcom/tapjoy/TJAdUnit;->g:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-virtual {v2, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->onVideoError(Ljava/lang/String;)V

    .line 963
    if-eq p2, v0, :cond_bc

    const/16 v1, -0x3ec

    if-ne p3, v1, :cond_ba

    goto :goto_bc

    .line 967
    :cond_ba
    const/4 v0, 0x0

    return v0

    .line 964
    :cond_bc
    :goto_bc
    return v0

    nop

    :pswitch_data_be
    .packed-switch 0x64
        :pswitch_31
    .end packed-switch

    :sswitch_data_c4
    .sparse-switch
        -0x3f2 -> :sswitch_9a
        -0x3ef -> :sswitch_86
        -0x3ec -> :sswitch_72
        -0x6e -> :sswitch_5e
    .end sparse-switch
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .registers 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .line 1077
    nop

    .line 1080
    sparse-switch p2, :sswitch_data_20

    const-string v0, ""

    goto :goto_19

    .line 1102
    :sswitch_7
    const-string v0, "MEDIA_INFO_NOT_SEEKABLE"

    goto :goto_19

    .line 1098
    :sswitch_a
    nop

    .line 1099
    const-string v0, "MEDIA_INFO_BUFFERING_END"

    goto :goto_19

    .line 1094
    :sswitch_e
    nop

    .line 1095
    const-string v0, "MEDIA_INFO_BUFFERING_START"

    goto :goto_19

    .line 1084
    :sswitch_12
    nop

    .line 1085
    const-string v0, "MEDIA_INFO_VIDEO_TRACK_LAGGING"

    goto :goto_19

    .line 1089
    :sswitch_16
    nop

    .line 1090
    const-string v0, "MEDIA_INFO_VIDEO_RENDERING_START"

    .line 1107
    :goto_19
    iget-object v1, p0, Lcom/tapjoy/TJAdUnit;->g:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-virtual {v1, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->onVideoInfo(Ljava/lang/String;)V

    .line 1108
    const/4 v0, 0x0

    return v0

    :sswitch_data_20
    .sparse-switch
        0x3 -> :sswitch_16
        0x2bc -> :sswitch_12
        0x2bd -> :sswitch_e
        0x2be -> :sswitch_a
        0x321 -> :sswitch_7
    .end sparse-switch
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 7
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 886
    const-string v0, "TJAdUnit"

    const-string v1, "video -- onPrepared"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    .line 889
    iget-object v1, p0, Lcom/tapjoy/TJAdUnit;->b:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getMeasuredWidth()I

    move-result v1

    .line 890
    iget-object v2, p0, Lcom/tapjoy/TJAdUnit;->b:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getMeasuredHeight()I

    move-result v2

    .line 892
    iput-object p1, p0, Lcom/tapjoy/TJAdUnit;->j:Landroid/media/MediaPlayer;

    .line 894
    iget-boolean v3, p0, Lcom/tapjoy/TJAdUnit;->s:Z

    if-eqz v3, :cond_22

    .line 895
    invoke-virtual {p0, v3}, Lcom/tapjoy/TJAdUnit;->a(Z)V

    .line 901
    :cond_22
    iget v3, p0, Lcom/tapjoy/TJAdUnit;->k:I

    if-lez v3, :cond_3b

    iget-object v3, p0, Lcom/tapjoy/TJAdUnit;->b:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v3

    iget v4, p0, Lcom/tapjoy/TJAdUnit;->k:I

    if-eq v3, v4, :cond_3b

    .line 902
    iget-object v3, p0, Lcom/tapjoy/TJAdUnit;->j:Landroid/media/MediaPlayer;

    new-instance v4, Lcom/tapjoy/TJAdUnit$11;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/tapjoy/TJAdUnit$11;-><init>(Lcom/tapjoy/TJAdUnit;III)V

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    goto :goto_42

    .line 910
    :cond_3b
    iget-object v3, p0, Lcom/tapjoy/TJAdUnit;->g:Lcom/tapjoy/TJAdUnitJSBridge;

    if-eqz v3, :cond_42

    .line 911
    invoke-virtual {v3, v0, v1, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->onVideoReady(III)V

    .line 916
    :cond_42
    :goto_42
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 917
    return-void
.end method

.method public pause()V
    .registers 3

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->D:Z

    .line 304
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->g:Lcom/tapjoy/TJAdUnitJSBridge;

    if-eqz v0, :cond_b

    .line 305
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->setEnabled(Z)V

    .line 307
    :cond_b
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnit;->pauseVideo()Z

    .line 308
    return-void
.end method

.method public pauseVideo()Z
    .registers 3

    .line 783
    invoke-direct {p0}, Lcom/tapjoy/TJAdUnit;->d()V

    .line 785
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->b:Landroid/widget/VideoView;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 786
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 789
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/tapjoy/TJAdUnit;->k:I

    .line 791
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Video paused at: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tapjoy/TJAdUnit;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TJAdUnit"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->g:Lcom/tapjoy/TJAdUnitJSBridge;

    iget v1, p0, Lcom/tapjoy/TJAdUnit;->k:I

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->onVideoPaused(I)V

    .line 794
    const/4 v0, 0x1

    return v0

    .line 796
    :cond_39
    const/4 v0, 0x0

    return v0
.end method

.method public playVideo()Z
    .registers 5

    .line 731
    const-string v0, "TJAdUnit"

    const-string v1, "playVideo"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->b:Landroid/widget/VideoView;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 733
    return v1

    .line 737
    :cond_d
    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 738
    iput-boolean v1, p0, Lcom/tapjoy/TJAdUnit;->n:Z

    .line 741
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnit;->I:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 743
    const/4 v0, 0x1

    return v0
.end method

.method public preload(Lcom/tapjoy/TJPlacementData;Landroid/content/Context;)Z
    .registers 5
    .param p1, "placementData"    # Lcom/tapjoy/TJPlacementData;
    .param p2, "context"    # Landroid/content/Context;

    .line 206
    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->w:Z

    if-nez v0, :cond_37

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacementData;->isPrerenderingRequested()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-static {}, Lcom/tapjoy/TJPlacementManager;->canPreRenderPlacement()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isViewOpen()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_37

    .line 211
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Pre-rendering ad unit for placement: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TJAdUnit"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-static {}, Lcom/tapjoy/TJPlacementManager;->incrementPlacementPreRenderCount()V

    .line 213
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/tapjoy/TJAdUnit;->load(Lcom/tapjoy/TJPlacementData;ZLandroid/content/Context;)V

    .line 214
    return v0

    .line 207
    :cond_37
    :goto_37
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnit;->fireContentReady()V

    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public resetContentLoadState()V
    .registers 3

    .line 370
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->w:Z

    .line 371
    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->z:Z

    .line 372
    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->x:Z

    .line 373
    const/4 v1, -0x1

    iput v1, p0, Lcom/tapjoy/TJAdUnit;->A:I

    .line 374
    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->u:Z

    .line 375
    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->s:Z

    .line 376
    return-void
.end method

.method public resume(Lcom/tapjoy/TJAdUnitSaveStateData;)V
    .registers 8
    .param p1, "saveStateData"    # Lcom/tapjoy/TJAdUnitSaveStateData;

    .line 263
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->g:Lcom/tapjoy/TJAdUnitJSBridge;

    const-string v1, "TJAdUnit"

    if-nez v0, :cond_13

    .line 264
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/TJAdUnitActivity;

    if-eqz v0, :cond_12

    .line 265
    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnitActivity;->finish()V

    .line 266
    const-string v0, "Failed to resume TJAdUnit. TJAdUnitBridge is null."

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_12
    return-void

    .line 272
    :cond_13
    iget-boolean v0, v0, Lcom/tapjoy/TJAdUnitJSBridge;->didLaunchOtherActivity:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_40

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "onResume bridge.didLaunchOtherActivity callbackID: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tapjoy/TJAdUnit;->g:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-object v4, v4, Lcom/tapjoy/TJAdUnitJSBridge;->otherActivityCallbackID:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->g:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-object v1, v0, Lcom/tapjoy/TJAdUnitJSBridge;->otherActivityCallbackID:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v4, v3

    invoke-virtual {v0, v1, v4}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->g:Lcom/tapjoy/TJAdUnitJSBridge;

    iput-boolean v3, v0, Lcom/tapjoy/TJAdUnitJSBridge;->didLaunchOtherActivity:Z

    .line 279
    :cond_40
    iput-boolean v3, p0, Lcom/tapjoy/TJAdUnit;->D:Z

    .line 280
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->g:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-virtual {v0, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->setEnabled(Z)V

    .line 283
    if-eqz p1, :cond_5a

    .line 284
    iget v0, p1, Lcom/tapjoy/TJAdUnitSaveStateData;->seekTime:I

    iput v0, p0, Lcom/tapjoy/TJAdUnit;->k:I

    .line 285
    iget-object v1, p0, Lcom/tapjoy/TJAdUnit;->b:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->seekTo(I)V

    .line 288
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->j:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_5a

    .line 289
    iget-boolean v0, p1, Lcom/tapjoy/TJAdUnitSaveStateData;->isVideoMuted:Z

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->s:Z

    .line 293
    :cond_5a
    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->E:Z

    if-eqz v0, :cond_69

    .line 294
    iput-boolean v3, p0, Lcom/tapjoy/TJAdUnit;->E:Z

    .line 295
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnit;->I:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 297
    :cond_69
    return-void
.end method

.method public sendAdContentTracking(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "adUnitParams"    # Lorg/json/JSONObject;

    .line 1051
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->F:Lcom/tapjoy/internal/fn;

    if-eqz v0, :cond_27

    .line 1052
    invoke-direct {p0}, Lcom/tapjoy/TJAdUnit;->e()V

    .line 1053
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->F:Lcom/tapjoy/internal/fn;

    .line 2038
    invoke-static {p2}, Lcom/tapjoy/internal/fn;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    .line 2039
    invoke-static {p2}, Lcom/tapjoy/internal/fn;->b(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    .line 2041
    nop

    .line 2058
    invoke-static {p1}, Lcom/tapjoy/internal/gh;->e(Ljava/lang/String;)Lcom/tapjoy/internal/gh$a;

    move-result-object v3

    .line 2059
    iget-object v0, v0, Lcom/tapjoy/internal/fr;->a:Ljava/util/Map;

    invoke-virtual {v3, v0}, Lcom/tapjoy/internal/gh$a;->a(Ljava/util/Map;)Lcom/tapjoy/internal/gh$a;

    move-result-object v0

    .line 2060
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gh$a;->a(Ljava/util/Map;)Lcom/tapjoy/internal/gh$a;

    move-result-object v0

    .line 2061
    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/gh$a;->b(Ljava/util/Map;)Lcom/tapjoy/internal/gh$a;

    move-result-object v0

    .line 2062
    invoke-virtual {v0}, Lcom/tapjoy/internal/gh$a;->c()V

    .line 1055
    :cond_27
    return-void
.end method

.method public setAdContentTracker(Lcom/tapjoy/internal/fn;)V
    .registers 2
    .param p1, "adContentTracker"    # Lcom/tapjoy/internal/fn;

    .line 571
    iput-object p1, p0, Lcom/tapjoy/TJAdUnit;->F:Lcom/tapjoy/internal/fn;

    .line 572
    return-void
.end method

.method public setAdUnitActivity(Lcom/tapjoy/TJAdUnitActivity;)V
    .registers 3
    .param p1, "activity"    # Lcom/tapjoy/TJAdUnitActivity;

    .line 563
    iput-object p1, p0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/TJAdUnitActivity;

    .line 565
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->g:Lcom/tapjoy/TJAdUnitJSBridge;

    if-eqz v0, :cond_9

    .line 566
    invoke-virtual {v0, p1}, Lcom/tapjoy/TJAdUnitJSBridge;->setAdUnitActivity(Lcom/tapjoy/TJAdUnitActivity;)V

    .line 568
    :cond_9
    return-void
.end method

.method public setBackgroundColor(Ljava/lang/String;Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;)V
    .registers 4
    .param p1, "hexColor"    # Ljava/lang/String;
    .param p2, "adUnitAsyncTaskListner"    # Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;

    .line 578
    new-instance v0, Lcom/tapjoy/TJAdUnit$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/tapjoy/TJAdUnit$5;-><init>(Lcom/tapjoy/TJAdUnit;Ljava/lang/String;Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 591
    return-void
.end method

.method public setBackgroundContent(Ljava/lang/String;Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;)V
    .registers 4
    .param p1, "backgroundHTML"    # Ljava/lang/String;
    .param p2, "adUnitAsyncTaskListner"    # Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;

    .line 597
    new-instance v0, Lcom/tapjoy/TJAdUnit$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/tapjoy/TJAdUnit$6;-><init>(Lcom/tapjoy/TJAdUnit;Ljava/lang/String;Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 610
    return-void
.end method

.method public setOrientation(I)V
    .registers 6
    .param p1, "requestedOrientation"    # I

    .line 429
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/TJAdUnitActivity;

    .line 430
    if-eqz v0, :cond_2f

    .line 431
    invoke-direct {p0}, Lcom/tapjoy/TJAdUnit;->c()I

    move-result v1

    .line 432
    iget v2, p0, Lcom/tapjoy/TJAdUnit;->A:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_e

    .line 433
    move v1, v2

    .line 436
    :cond_e
    invoke-static {v1}, Lcom/tapjoy/TJAdUnit;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-static {p1}, Lcom/tapjoy/TJAdUnit;->a(I)Z

    move-result v2

    if-nez v2, :cond_26

    .line 437
    :cond_1a
    invoke-static {v1}, Lcom/tapjoy/TJAdUnit;->b(I)Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-static {p1}, Lcom/tapjoy/TJAdUnit;->b(I)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 438
    :cond_26
    move p1, v1

    .line 441
    :cond_27
    invoke-virtual {v0, p1}, Lcom/tapjoy/TJAdUnitActivity;->setRequestedOrientation(I)V

    .line 442
    iput p1, p0, Lcom/tapjoy/TJAdUnit;->A:I

    .line 443
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->u:Z

    .line 445
    :cond_2f
    return-void
.end method

.method public setSdkBeacon(Lcom/tapjoy/internal/fz;)V
    .registers 3
    .param p1, "sdkBeacon"    # Lcom/tapjoy/internal/fz;

    .line 1064
    iput-object p1, p0, Lcom/tapjoy/TJAdUnit;->G:Lcom/tapjoy/internal/fz;

    .line 1066
    if-eqz p1, :cond_b

    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->v:Z

    if-eqz v0, :cond_b

    .line 1067
    invoke-virtual {p1}, Lcom/tapjoy/internal/fz;->a()V

    .line 1069
    :cond_b
    return-void
.end method

.method public setVideoListener(Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;)V
    .registers 2
    .param p1, "adUnitVideoListener"    # Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;

    .line 624
    iput-object p1, p0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;

    .line 625
    return-void
.end method

.method public setVisible(Z)V
    .registers 6
    .param p1, "visible"    # Z

    .line 381
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnit;->getScreenOrientationString()Ljava/lang/String;

    move-result-object v0

    .line 382
    iget-object v1, p0, Lcom/tapjoy/TJAdUnit;->g:Lcom/tapjoy/TJAdUnitJSBridge;

    iget v2, p0, Lcom/tapjoy/TJAdUnit;->B:I

    iget v3, p0, Lcom/tapjoy/TJAdUnit;->C:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/tapjoy/TJAdUnitJSBridge;->notifyOrientationChanged(Ljava/lang/String;II)V

    .line 384
    iput-boolean p1, p0, Lcom/tapjoy/TJAdUnit;->v:Z

    .line 385
    if-eqz p1, :cond_18

    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->z:Z

    if-eqz v0, :cond_18

    .line 386
    invoke-direct {p0}, Lcom/tapjoy/TJAdUnit;->a()V

    .line 388
    :cond_18
    return-void
.end method

.method public setWebViewListener(Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;)V
    .registers 2
    .param p1, "adUnitWebViewListener"    # Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;

    .line 617
    iput-object p1, p0, Lcom/tapjoy/TJAdUnit;->d:Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;

    .line 618
    return-void
.end method

.method public startAdContentTracking(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "adUnitParams"    # Lorg/json/JSONObject;

    .line 1038
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->F:Lcom/tapjoy/internal/fn;

    if-eqz v0, :cond_7

    .line 1039
    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/internal/fn;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/tapjoy/internal/gh$a;

    .line 1041
    :cond_7
    return-void
.end method

.method public unsetOrientation()V
    .registers 3

    .line 451
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/TJAdUnitActivity;

    .line 452
    const/4 v1, -0x1

    if-eqz v0, :cond_8

    .line 453
    invoke-virtual {v0, v1}, Lcom/tapjoy/TJAdUnitActivity;->setRequestedOrientation(I)V

    .line 455
    :cond_8
    iput v1, p0, Lcom/tapjoy/TJAdUnit;->A:I

    .line 456
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->u:Z

    .line 457
    return-void
.end method
