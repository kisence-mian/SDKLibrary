.class public Lcom/qq/e/ads/banner/BannerView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/e/ads/banner/BannerView$ADListenerAdapter;
    }
.end annotation


# instance fields
.field private a:Lcom/qq/e/comm/pi/BVI;

.field private b:Lcom/qq/e/ads/banner/BannerADListener;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/Integer;

.field private g:Lcom/qq/e/ads/cfg/BannerRollAnimation;

.field private h:Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

.field private i:Ljava/lang/Boolean;

.field private volatile j:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/qq/e/ads/banner/ADSize;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "size"    # Lcom/qq/e/ads/banner/ADSize;
    .param p3, "appID"    # Ljava/lang/String;
    .param p4, "posID"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/qq/e/ads/banner/BannerView;->c:Z

    iput-boolean v2, p0, Lcom/qq/e/ads/banner/BannerView;->d:Z

    iput-boolean v2, p0, Lcom/qq/e/ads/banner/BannerView;->e:Z

    iput v2, p0, Lcom/qq/e/ads/banner/BannerView;->j:I

    invoke-static {p3}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {p4}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    if-nez p1, :cond_2f

    :cond_1b
    const-string v0, "Banner ADView Constructor params error, appid=%s,posId=%s,context=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v2

    aput-object p4, v1, v3

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :goto_2e
    return-void

    :cond_2f
    iput-boolean v3, p0, Lcom/qq/e/ads/banner/BannerView;->c:Z

    invoke-static {p1}, Lcom/qq/e/comm/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3d

    const-string v0, "Required Activity/Service/Permission Not Declared in AndroidManifest.xml"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_2e

    :cond_3d
    iput-boolean v3, p0, Lcom/qq/e/ads/banner/BannerView;->d:Z

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/qq/e/ads/banner/BannerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v6, Lcom/qq/e/comm/managers/GDTADManager;->INIT_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/qq/e/ads/banner/BannerView$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/qq/e/ads/banner/BannerView$1;-><init>(Lcom/qq/e/ads/banner/BannerView;Landroid/app/Activity;Ljava/lang/String;Lcom/qq/e/ads/banner/ADSize;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_2e
.end method

.method static synthetic a(Lcom/qq/e/ads/banner/BannerView;)Lcom/qq/e/comm/pi/BVI;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView;->a:Lcom/qq/e/comm/pi/BVI;

    return-object v0
.end method

.method static synthetic a(Lcom/qq/e/ads/banner/BannerView;Lcom/qq/e/comm/pi/BVI;)Lcom/qq/e/comm/pi/BVI;
    .registers 2

    iput-object p1, p0, Lcom/qq/e/ads/banner/BannerView;->a:Lcom/qq/e/comm/pi/BVI;

    return-object p1
.end method

.method static synthetic a(Lcom/qq/e/ads/banner/BannerView;Z)Z
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qq/e/ads/banner/BannerView;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/qq/e/ads/banner/BannerView;)Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView;->h:Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    return-object v0
.end method

.method static synthetic c(Lcom/qq/e/ads/banner/BannerView;)Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView;->f:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic d(Lcom/qq/e/ads/banner/BannerView;)Lcom/qq/e/ads/cfg/BannerRollAnimation;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView;->g:Lcom/qq/e/ads/cfg/BannerRollAnimation;

    return-object v0
.end method

.method static synthetic e(Lcom/qq/e/ads/banner/BannerView;)Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView;->i:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic f(Lcom/qq/e/ads/banner/BannerView;)I
    .registers 3

    iget v0, p0, Lcom/qq/e/ads/banner/BannerView;->j:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/qq/e/ads/banner/BannerView;->j:I

    return v0
.end method

.method static synthetic g(Lcom/qq/e/ads/banner/BannerView;)Lcom/qq/e/ads/banner/BannerADListener;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView;->b:Lcom/qq/e/ads/banner/BannerADListener;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView;->a:Lcom/qq/e/comm/pi/BVI;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView;->a:Lcom/qq/e/comm/pi/BVI;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/BVI;->destroy()V

    :cond_9
    return-void
.end method

.method public loadAD()V
    .registers 2

    iget-boolean v0, p0, Lcom/qq/e/ads/banner/BannerView;->c:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/qq/e/ads/banner/BannerView;->d:Z

    if-nez v0, :cond_e

    :cond_8
    const-string v0, "Banner init Paras OR Context error,See More logs while new BannerView"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    iget-boolean v0, p0, Lcom/qq/e/ads/banner/BannerView;->e:Z

    if-nez v0, :cond_19

    iget v0, p0, Lcom/qq/e/ads/banner/BannerView;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/qq/e/ads/banner/BannerView;->j:I

    goto :goto_d

    :cond_19
    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView;->a:Lcom/qq/e/comm/pi/BVI;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView;->a:Lcom/qq/e/comm/pi/BVI;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/BVI;->fetchAd()V

    goto :goto_d

    :cond_23
    const-string v0, "Banner Init error,See More Logs"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_d
.end method

.method public setADListener(Lcom/qq/e/ads/banner/BannerADListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/qq/e/ads/banner/BannerADListener;

    .prologue
    iput-object p1, p0, Lcom/qq/e/ads/banner/BannerView;->b:Lcom/qq/e/ads/banner/BannerADListener;

    return-void
.end method

.method public setDownConfirmPilicy(Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;)V
    .registers 4
    .param p1, "policy"    # Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    .prologue
    iput-object p1, p0, Lcom/qq/e/ads/banner/BannerView;->h:Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView;->a:Lcom/qq/e/comm/pi/BVI;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView;->a:Lcom/qq/e/comm/pi/BVI;

    invoke-virtual {p1}, Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;->value()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/qq/e/comm/pi/BVI;->setDownAPPConfirmPolicy(I)V

    :cond_11
    return-void
.end method

.method public setRefresh(I)V
    .registers 3
    .param p1, "refresh"    # I

    .prologue
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/ads/banner/BannerView;->f:Ljava/lang/Integer;

    const/16 v0, 0x1e

    if-ge p1, v0, :cond_18

    if-eqz p1, :cond_18

    const/16 p1, 0x1e

    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView;->a:Lcom/qq/e/comm/pi/BVI;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView;->a:Lcom/qq/e/comm/pi/BVI;

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/BVI;->setRefresh(I)V

    :cond_17
    return-void

    :cond_18
    const/16 v0, 0x78

    if-le p1, v0, :cond_e

    const/16 p1, 0x78

    goto :goto_e
.end method

.method public setRollAnimation(Lcom/qq/e/ads/cfg/BannerRollAnimation;)V
    .registers 4
    .param p1, "animation"    # Lcom/qq/e/ads/cfg/BannerRollAnimation;

    .prologue
    iput-object p1, p0, Lcom/qq/e/ads/banner/BannerView;->g:Lcom/qq/e/ads/cfg/BannerRollAnimation;

    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView;->a:Lcom/qq/e/comm/pi/BVI;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView;->a:Lcom/qq/e/comm/pi/BVI;

    invoke-virtual {p1}, Lcom/qq/e/ads/cfg/BannerRollAnimation;->value()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/qq/e/comm/pi/BVI;->setRollAnimation(I)V

    :cond_11
    return-void
.end method

.method public setShowClose(Z)V
    .registers 3
    .param p1, "showClose"    # Z

    .prologue
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/ads/banner/BannerView;->i:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView;->a:Lcom/qq/e/comm/pi/BVI;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView;->a:Lcom/qq/e/comm/pi/BVI;

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/BVI;->setShowCloseButton(Z)V

    :cond_f
    return-void
.end method
