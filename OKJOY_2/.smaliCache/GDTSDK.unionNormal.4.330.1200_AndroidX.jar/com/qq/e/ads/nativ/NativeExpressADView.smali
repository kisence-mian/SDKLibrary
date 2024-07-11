.class public Lcom/qq/e/ads/nativ/NativeExpressADView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/e/ads/nativ/NativeExpressADView$ViewBindStatusListener;
    }
.end annotation


# instance fields
.field private a:Lcom/qq/e/comm/pi/NEADVI;

.field private b:Z

.field private volatile c:Z

.field private volatile d:Z

.field private e:Lcom/qq/e/ads/nativ/NativeExpressMediaListener;

.field public ext:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/qq/e/comm/pi/AdData;

.field private volatile g:Z

.field private h:Lcom/qq/e/ads/nativ/NativeExpressADView$ViewBindStatusListener;


# direct methods
.method public constructor <init>(Lcom/qq/e/comm/pi/NEADI;Landroid/content/Context;Lcom/qq/e/ads/nativ/ADSize;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/HashMap;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qq/e/comm/pi/NEADI;",
            "Landroid/content/Context;",
            "Lcom/qq/e/ads/nativ/ADSize;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object v9, p0

    move-object v2, p2

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, v9, Lcom/qq/e/ads/nativ/NativeExpressADView;->b:Z

    iput-boolean v0, v9, Lcom/qq/e/ads/nativ/NativeExpressADView;->c:Z

    iput-boolean v0, v9, Lcom/qq/e/ads/nativ/NativeExpressADView;->d:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v9, Lcom/qq/e/ads/nativ/NativeExpressADView;->ext:Ljava/util/Map;

    iput-boolean v0, v9, Lcom/qq/e/ads/nativ/NativeExpressADView;->g:Z

    invoke-static/range {p7 .. p7}, Lcom/qq/e/ads/nativ/NativeExpressADView;->a(Ljava/util/HashMap;)Lcom/qq/e/comm/pi/AdData;

    move-result-object v0

    iput-object v0, v9, Lcom/qq/e/ads/nativ/NativeExpressADView;->f:Lcom/qq/e/comm/pi/AdData;

    sget-object v10, Lcom/qq/e/comm/managers/GDTADManager;->INIT_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v11, Lcom/qq/e/ads/nativ/NativeExpressADView$1;

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v3, p4

    move-object v4, p1

    move-object v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/qq/e/ads/nativ/NativeExpressADView$1;-><init>(Lcom/qq/e/ads/nativ/NativeExpressADView;Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/comm/pi/NEADI;Lcom/qq/e/ads/nativ/ADSize;Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/HashMap;)V

    invoke-interface {v10, v11}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/qq/e/ads/nativ/NativeExpressADView;)Lcom/qq/e/ads/nativ/NativeExpressMediaListener;
    .registers 1

    iget-object p0, p0, Lcom/qq/e/ads/nativ/NativeExpressADView;->e:Lcom/qq/e/ads/nativ/NativeExpressMediaListener;

    return-object p0
.end method

.method private static a(Ljava/util/HashMap;)Lcom/qq/e/comm/pi/AdData;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/qq/e/comm/pi/AdData;"
        }
    .end annotation

    const-string v0, "adinfo"

    const/4 v1, 0x0

    if-eqz p0, :cond_e

    :try_start_5
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    goto :goto_f

    :catch_c
    move-exception p0

    goto :goto_16

    :cond_e
    move-object p0, v1

    :goto_f
    if-eqz p0, :cond_16

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_15} :catch_c

    goto :goto_17

    :cond_16
    :goto_16
    move-object p0, v1

    :goto_17
    instance-of v0, p0, Lcom/qq/e/comm/pi/AdData;

    if-eqz v0, :cond_1e

    check-cast p0, Lcom/qq/e/comm/pi/AdData;

    return-object p0

    :cond_1e
    return-object v1
.end method

.method static synthetic a(Lcom/qq/e/ads/nativ/NativeExpressADView;Lcom/qq/e/comm/pi/NEADVI;)Lcom/qq/e/comm/pi/NEADVI;
    .registers 2

    iput-object p1, p0, Lcom/qq/e/ads/nativ/NativeExpressADView;->a:Lcom/qq/e/comm/pi/NEADVI;

    return-object p1
.end method

.method static synthetic a(Lcom/qq/e/ads/nativ/NativeExpressADView;Z)Z
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/qq/e/ads/nativ/NativeExpressADView;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/qq/e/ads/nativ/NativeExpressADView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/qq/e/ads/nativ/NativeExpressADView;->c:Z

    return p0
.end method

.method static synthetic c(Lcom/qq/e/ads/nativ/NativeExpressADView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/qq/e/ads/nativ/NativeExpressADView;->d:Z

    return p0
.end method

.method static synthetic d(Lcom/qq/e/ads/nativ/NativeExpressADView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/qq/e/ads/nativ/NativeExpressADView;->g:Z

    return p0
.end method


# virtual methods
.method public destroy()V
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeExpressADView;->a:Lcom/qq/e/comm/pi/NEADVI;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/qq/e/comm/pi/NEADVI;->destroy()V

    :cond_7
    return-void
.end method

.method public getBoundData()Lcom/qq/e/comm/pi/AdData;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeExpressADView;->f:Lcom/qq/e/comm/pi/AdData;

    return-object v0
.end method

.method public negativeFeedback()V
    .registers 2

    iget-boolean v0, p0, Lcom/qq/e/ads/nativ/NativeExpressADView;->b:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qq/e/ads/nativ/NativeExpressADView;->g:Z

    return-void

    :cond_8
    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeExpressADView;->a:Lcom/qq/e/comm/pi/NEADVI;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Lcom/qq/e/comm/pi/NEADVI;->reportAdNegative()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qq/e/ads/nativ/NativeExpressADView;->g:Z

    return-void

    :cond_13
    const-string v0, "Native Express negativeFeedback  core is null"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeExpressADView;->h:Lcom/qq/e/ads/nativ/NativeExpressADView$ViewBindStatusListener;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeExpressADView$ViewBindStatusListener;->onAttachedToWindow()V

    :cond_a
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeExpressADView;->h:Lcom/qq/e/ads/nativ/NativeExpressADView$ViewBindStatusListener;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeExpressADView$ViewBindStatusListener;->onDetachedFromWindow()V

    :cond_a
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .registers 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishTemporaryDetach()V

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeExpressADView;->h:Lcom/qq/e/ads/nativ/NativeExpressADView$ViewBindStatusListener;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeExpressADView$ViewBindStatusListener;->onFinishTemporaryDetach()V

    :cond_a
    return-void
.end method

.method public onStartTemporaryDetach()V
    .registers 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onStartTemporaryDetach()V

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeExpressADView;->h:Lcom/qq/e/ads/nativ/NativeExpressADView$ViewBindStatusListener;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeExpressADView$ViewBindStatusListener;->onStartTemporaryDetach()V

    :cond_a
    return-void
.end method

.method public preloadVideo()V
    .registers 2

    iget-boolean v0, p0, Lcom/qq/e/ads/nativ/NativeExpressADView;->b:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qq/e/ads/nativ/NativeExpressADView;->c:Z

    return-void

    :cond_8
    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeExpressADView;->a:Lcom/qq/e/comm/pi/NEADVI;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lcom/qq/e/comm/pi/NEADVI;->preloadVideo()V

    return-void

    :cond_10
    const-string v0, "Native Express AD View Init Error"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    return-void
.end method

.method public render()V
    .registers 2

    iget-boolean v0, p0, Lcom/qq/e/ads/nativ/NativeExpressADView;->b:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qq/e/ads/nativ/NativeExpressADView;->d:Z

    return-void

    :cond_8
    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeExpressADView;->a:Lcom/qq/e/comm/pi/NEADVI;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lcom/qq/e/comm/pi/NEADVI;->render()V

    return-void

    :cond_10
    const-string v0, "Native Express AD View Init Error"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    return-void
.end method

.method public setAdSize(Lcom/qq/e/ads/nativ/ADSize;)V
    .registers 3

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeExpressADView;->a:Lcom/qq/e/comm/pi/NEADVI;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/NEADVI;->setAdSize(Lcom/qq/e/ads/nativ/ADSize;)V

    :cond_7
    return-void
.end method

.method public setMediaListener(Lcom/qq/e/ads/nativ/NativeExpressMediaListener;)V
    .registers 4

    iput-object p1, p0, Lcom/qq/e/ads/nativ/NativeExpressADView;->e:Lcom/qq/e/ads/nativ/NativeExpressMediaListener;

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeExpressADView;->a:Lcom/qq/e/comm/pi/NEADVI;

    if-eqz v0, :cond_10

    if-eqz p1, :cond_10

    new-instance v1, Lcom/qq/e/ads/nativ/NativeExpressAD$ADListenerAdapter;

    invoke-direct {v1, p1}, Lcom/qq/e/ads/nativ/NativeExpressAD$ADListenerAdapter;-><init>(Lcom/qq/e/ads/nativ/NativeExpressMediaListener;)V

    invoke-interface {v0, v1}, Lcom/qq/e/comm/pi/NEADVI;->setAdListener(Lcom/qq/e/comm/adevent/ADListener;)V

    :cond_10
    return-void
.end method

.method public setViewBindStatusListener(Lcom/qq/e/ads/nativ/NativeExpressADView$ViewBindStatusListener;)V
    .registers 2

    iput-object p1, p0, Lcom/qq/e/ads/nativ/NativeExpressADView;->h:Lcom/qq/e/ads/nativ/NativeExpressADView$ViewBindStatusListener;

    return-void
.end method
