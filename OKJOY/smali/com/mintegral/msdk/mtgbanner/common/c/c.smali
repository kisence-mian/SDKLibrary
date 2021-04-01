.class public final Lcom/mintegral/msdk/mtgbanner/common/c/c;
.super Ljava/lang/Object;
.source "BannerShowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/mtgbanner/common/c/c$a;
    }
.end annotation


# static fields
.field private static b:Ljava/lang/String;


# instance fields
.field private A:Landroid/view/View$OnClickListener;

.field private B:Lcom/mintegral/msdk/mtgbanner/common/b/a;

.field private C:Lcom/mintegral/msdk/mtgbanner/common/c/c$a;

.field a:Lcom/mintegral/msdk/click/a;

.field private c:Lcom/mintegral/msdk/mtgbanner/common/b/c;

.field private d:Z

.field private e:Lcom/mintegral/msdk/base/entity/CampaignEx;

.field private f:Lcom/mintegral/msdk/out/MTGBannerView;

.field private g:Landroid/widget/ImageView;

.field private h:Lcom/mintegral/msdk/mtgbanner/view/MTGBannerWebView;

.field private i:Landroid/widget/ImageView;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field private s:I

.field private t:J

.field private u:Lcom/mintegral/msdk/mtgbanner/common/bridge/a;

.field private v:Lcom/iab/omid/library/mintegral/adsession/AdSession;

.field private w:Landroid/os/Handler;

.field private x:Lcom/mintegral/msdk/base/common/f/a;

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 65
    const-string v0, "BannerShowManager"

    sput-object v0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/mintegral/msdk/out/MTGBannerView;Lcom/mintegral/msdk/mtgbanner/common/b/c;Ljava/lang/String;ZLcom/mintegral/msdk/c/d;)V
    .registers 8

    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->t:J

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->w:Landroid/os/Handler;

    .line 92
    new-instance v0, Lcom/mintegral/msdk/mtgbanner/common/c/c$1;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/mtgbanner/common/c/c$1;-><init>(Lcom/mintegral/msdk/mtgbanner/common/c/c;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->x:Lcom/mintegral/msdk/base/common/f/a;

    .line 114
    new-instance v0, Lcom/mintegral/msdk/mtgbanner/common/c/c$2;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/mtgbanner/common/c/c$2;-><init>(Lcom/mintegral/msdk/mtgbanner/common/c/c;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->A:Landroid/view/View$OnClickListener;

    .line 132
    new-instance v0, Lcom/mintegral/msdk/mtgbanner/common/c/c$3;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/mtgbanner/common/c/c$3;-><init>(Lcom/mintegral/msdk/mtgbanner/common/c/c;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->B:Lcom/mintegral/msdk/mtgbanner/common/b/a;

    .line 207
    new-instance v0, Lcom/mintegral/msdk/mtgbanner/common/c/c$a;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/mtgbanner/common/c/c$a;-><init>(Lcom/mintegral/msdk/mtgbanner/common/c/c;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->C:Lcom/mintegral/msdk/mtgbanner/common/c/c$a;

    .line 282
    iput-boolean p4, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->d:Z

    .line 283
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->f:Lcom/mintegral/msdk/out/MTGBannerView;

    .line 284
    iput-object p3, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->q:Ljava/lang/String;

    .line 285
    new-instance v0, Lcom/mintegral/msdk/mtgbanner/common/b/e;

    invoke-direct {v0, p2, p5}, Lcom/mintegral/msdk/mtgbanner/common/b/e;-><init>(Lcom/mintegral/msdk/mtgbanner/common/b/c;Lcom/mintegral/msdk/c/d;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->c:Lcom/mintegral/msdk/mtgbanner/common/b/c;

    .line 286
    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/mtgbanner/common/c/c;F)F
    .registers 2

    .prologue
    .line 63
    iput p1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->y:F

    return p1
.end method

.method static synthetic a(Lcom/mintegral/msdk/mtgbanner/common/c/c;Lcom/iab/omid/library/mintegral/adsession/AdSession;)Lcom/iab/omid/library/mintegral/adsession/AdSession;
    .registers 2

    .prologue
    .line 63
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->v:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    return-object p1
.end method

.method private static a(Lcom/mintegral/msdk/base/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 794
    if-eqz p0, :cond_18

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getOnlyImpressionURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 795
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getOnlyImpressionURL()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 797
    :cond_18
    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/mtgbanner/common/c/c;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/mtgbanner/common/c/c;Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 522
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_29

    invoke-direct {p0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->e()Z

    move-result v0

    if-nez v0, :cond_29

    .line 523
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->w:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->x:Lcom/mintegral/msdk/base/common/f/a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 524
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->c:Lcom/mintegral/msdk/mtgbanner/common/b/c;

    if-eqz v0, :cond_1a

    .line 525
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->c:Lcom/mintegral/msdk/mtgbanner/common/b/c;

    invoke-interface {v0, p1}, Lcom/mintegral/msdk/mtgbanner/common/b/c;->a(Ljava/lang/String;)V

    .line 527
    :cond_1a
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->q:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/mintegral/msdk/base/common/e/c;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    :cond_29
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .registers 6

    .prologue
    .line 907
    invoke-static {}, Lcom/mintegral/msdk/mtgbanner/common/a/a;->a()Lcom/mintegral/msdk/mtgbanner/common/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgbanner/common/a/a;->c(Ljava/lang/String;)Lcom/mintegral/msdk/mtgbanner/common/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgbanner/common/a/a;->b(Ljava/lang/String;)Lcom/mintegral/msdk/mtgbanner/common/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgbanner/common/a/a;->d(Ljava/lang/String;)Lcom/mintegral/msdk/mtgbanner/common/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/mtgbanner/common/a/a;->f(Ljava/lang/String;)Lcom/mintegral/msdk/mtgbanner/common/a/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mintegral/msdk/mtgbanner/common/a/a;->a(I)Lcom/mintegral/msdk/mtgbanner/common/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isBidCampaign()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgbanner/common/a/a;->a(Z)Lcom/mintegral/msdk/mtgbanner/common/a/a;

    move-result-object v0

    .line 908
    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->q:Ljava/lang/String;

    .line 7186
    if-eqz v0, :cond_48

    .line 7187
    const-string v2, "2000068"

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/mtgbanner/common/a/a;->a(Ljava/lang/String;)Lcom/mintegral/msdk/mtgbanner/common/a/a;

    .line 7188
    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgbanner/common/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/mintegral/msdk/base/common/e/a;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 909
    :cond_48
    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/mtgbanner/common/c/c;)Z
    .registers 2

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->p:Z

    return v0
.end method

.method static synthetic a(Lcom/mintegral/msdk/mtgbanner/common/c/c;Z)Z
    .registers 2

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->o:Z

    return p1
.end method

.method static synthetic b(Lcom/mintegral/msdk/mtgbanner/common/c/c;F)F
    .registers 2

    .prologue
    .line 63
    iput p1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->z:F

    return p1
.end method

.method static synthetic b()Ljava/lang/String;
    .registers 1

    .prologue
    .line 63
    sget-object v0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Lcom/mintegral/msdk/base/entity/CampaignEx;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 478
    const-string v0, ""

    .line 479
    if-eqz p0, :cond_37

    .line 480
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getBannerUrl()Ljava/lang/String;

    move-result-object v0

    .line 481
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/h;->a()Lcom/mintegral/msdk/videocommon/download/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/videocommon/download/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 482
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getBannerHtml()Ljava/lang/String;

    move-result-object v0

    .line 483
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isActiveOm()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 484
    const-string v1, ""

    .line 486
    :try_start_22
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 487
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 488
    invoke-static {v2}, Lcom/mintegral/msdk/base/utils/e;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 490
    :cond_31
    sget-object v2, Lcom/mintegral/msdk/MIntegralConstans;->OMID_JS_SERVICE_CONTENT:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/iab/omid/library/mintegral/ScriptInjector;->injectScriptContentIntoHtml(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_36} :catch_38

    move-result-object v0

    .line 513
    :cond_37
    :goto_37
    return-object v0

    .line 492
    :catch_38
    move-exception v1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 493
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 494
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file:////"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_37

    .line 498
    :cond_60
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 499
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 500
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file:////"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_37
.end method

.method private b(Lcom/mintegral/msdk/base/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;)V
    .registers 10

    .prologue
    const/4 v4, 0x0

    .line 801
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImpressionURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 803
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mintegral/msdk/mtgbanner/common/c/c$8;

    invoke-direct {v1, p0, p2, p1}, Lcom/mintegral/msdk/mtgbanner/common/c/c$8;-><init>(Lcom/mintegral/msdk/mtgbanner/common/c/c;Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 815
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 821
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImpressionURL()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 823
    :cond_23
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_44

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v0

    if-eqz v0, :cond_44

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/j;->n()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 826
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/j;->n()[Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p1, p3, v0, v4}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 828
    :cond_44
    return-void
.end method

.method static synthetic b(Lcom/mintegral/msdk/mtgbanner/common/c/c;)V
    .registers 5

    .prologue
    const/16 v2, 0x8

    .line 63
    .line 8653
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->h:Lcom/mintegral/msdk/mtgbanner/view/MTGBannerWebView;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->h:Lcom/mintegral/msdk/mtgbanner/view/MTGBannerWebView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgbanner/view/MTGBannerWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 8654
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->f:Lcom/mintegral/msdk/out/MTGBannerView;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->h:Lcom/mintegral/msdk/mtgbanner/view/MTGBannerWebView;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/out/MTGBannerView;->removeView(Landroid/view/View;)V

    .line 8656
    :cond_15
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 8657
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8658
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->f:Lcom/mintegral/msdk/out/MTGBannerView;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/out/MTGBannerView;->removeView(Landroid/view/View;)V

    .line 8660
    :cond_2d
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 8661
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->f:Lcom/mintegral/msdk/out/MTGBannerView;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/out/MTGBannerView;->removeView(Landroid/view/View;)V

    .line 8662
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8664
    :cond_45
    invoke-static {}, Lcom/mintegral/msdk/mtgbanner/common/a/a;->a()Lcom/mintegral/msdk/mtgbanner/common/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgbanner/common/a/a;->b(Ljava/lang/String;)Lcom/mintegral/msdk/mtgbanner/common/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgbanner/common/a/a;->d(Ljava/lang/String;)Lcom/mintegral/msdk/mtgbanner/common/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgbanner/common/a/a;->c(Ljava/lang/String;)Lcom/mintegral/msdk/mtgbanner/common/a/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getCreativeId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgbanner/common/a/a;->e(Ljava/lang/String;)Lcom/mintegral/msdk/mtgbanner/common/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isBidCampaign()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgbanner/common/a/a;->a(Z)Lcom/mintegral/msdk/mtgbanner/common/a/a;

    move-result-object v0

    .line 8665
    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->q:Ljava/lang/String;

    .line 9194
    if-eqz v0, :cond_9c

    .line 9195
    const-string v2, "2000069"

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/mtgbanner/common/a/a;->a(Ljava/lang/String;)Lcom/mintegral/msdk/mtgbanner/common/a/a;

    .line 9196
    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgbanner/common/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/mintegral/msdk/base/common/e/a;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 8666
    :cond_9c
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->q:Ljava/lang/String;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->r:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/mintegral/msdk/mtgbanner/common/util/BannerUtils;->inserCloseId(Ljava/lang/String;Ljava/util/List;)V

    .line 8667
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->c:Lcom/mintegral/msdk/mtgbanner/common/b/c;

    if-eqz v0, :cond_ac

    .line 8668
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->c:Lcom/mintegral/msdk/mtgbanner/common/b/c;

    invoke-interface {v0}, Lcom/mintegral/msdk/mtgbanner/common/b/c;->e()V

    .line 63
    :cond_ac
    return-void
.end method

.method private c()V
    .registers 4

    .prologue
    .line 389
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->f:Lcom/mintegral/msdk/out/MTGBannerView;

    if-eqz v0, :cond_65

    .line 390
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->h:Lcom/mintegral/msdk/mtgbanner/view/MTGBannerWebView;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->h:Lcom/mintegral/msdk/mtgbanner/view/MTGBannerWebView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgbanner/view/MTGBannerWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 391
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->f:Lcom/mintegral/msdk/out/MTGBannerView;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->h:Lcom/mintegral/msdk/mtgbanner/view/MTGBannerWebView;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/out/MTGBannerView;->removeView(Landroid/view/View;)V

    .line 393
    :cond_17
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->g:Landroid/widget/ImageView;

    if-nez v0, :cond_3e

    .line 394
    new-instance v0, Landroid/widget/ImageView;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->g:Landroid/widget/ImageView;

    .line 395
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/mintegral/msdk/mtgbanner/common/c/c$4;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/mtgbanner/common/c/c$4;-><init>(Lcom/mintegral/msdk/mtgbanner/common/c/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 405
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/mintegral/msdk/mtgbanner/common/c/c$5;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/mtgbanner/common/c/c$5;-><init>(Lcom/mintegral/msdk/mtgbanner/common/c/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    :cond_3e
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 418
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5f

    .line 419
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/common/c/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/common/c/b;

    move-result-object v1

    new-instance v2, Lcom/mintegral/msdk/mtgbanner/common/c/c$6;

    invoke-direct {v2, p0}, Lcom/mintegral/msdk/mtgbanner/common/c/c$6;-><init>(Lcom/mintegral/msdk/mtgbanner/common/c/c;)V

    invoke-virtual {v1, v0, v2}, Lcom/mintegral/msdk/base/common/c/b;->a(Ljava/lang/String;Lcom/mintegral/msdk/base/common/c/c;)V

    .line 442
    :goto_5e
    return-void

    .line 437
    :cond_5f
    const-string v0, "banner show failed because campain is exception"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->a(Ljava/lang/String;)V

    goto :goto_5e

    .line 440
    :cond_65
    const-string v0, "banner show failed because banner view is exception"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->a(Ljava/lang/String;)V

    goto :goto_5e
.end method

.method static synthetic c(Lcom/mintegral/msdk/mtgbanner/common/c/c;)V
    .registers 3

    .prologue
    .line 63
    .line 9721
    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->d:Z

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_30

    .line 9722
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->i:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9723
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->i:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9724
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->f:Lcom/mintegral/msdk/out/MTGBannerView;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 9725
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->f:Lcom/mintegral/msdk/out/MTGBannerView;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/out/MTGBannerView;->removeView(Landroid/view/View;)V

    .line 63
    :cond_30
    return-void
.end method

.method private d()V
    .registers 16

    .prologue
    .line 550
    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->l:Z

    if-eqz v0, :cond_2f

    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->m:Z

    if-nez v0, :cond_2f

    .line 551
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->c:Lcom/mintegral/msdk/mtgbanner/common/b/c;

    if-eqz v0, :cond_2f

    .line 552
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->m:Z

    .line 553
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->w:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->x:Lcom/mintegral/msdk/base/common/f/a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 554
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isCallbacked()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 555
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setCallbacked(Z)V

    .line 556
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->c:Lcom/mintegral/msdk/mtgbanner/common/b/c;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->r:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/mtgbanner/common/b/c;->a(Ljava/util/List;)V

    .line 561
    :cond_2f
    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->l:Z

    if-eqz v0, :cond_226

    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->j:Z

    if-eqz v0, :cond_226

    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->k:Z

    if-eqz v0, :cond_226

    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->m:Z

    if-eqz v0, :cond_226

    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_226

    invoke-direct {p0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->e()Z

    move-result v0

    if-nez v0, :cond_226

    .line 3532
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->f:Lcom/mintegral/msdk/out/MTGBannerView;

    if-eqz v0, :cond_227

    .line 3536
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->f:Lcom/mintegral/msdk/out/MTGBannerView;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/util/c;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_227

    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->o:Z

    if-nez v0, :cond_227

    const/4 v0, 0x1

    move v1, v0

    .line 564
    :goto_5b
    if-nez v1, :cond_6d

    .line 566
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->f:Lcom/mintegral/msdk/out/MTGBannerView;

    if-eqz v0, :cond_6d

    .line 567
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->f:Lcom/mintegral/msdk/out/MTGBannerView;

    new-instance v2, Lcom/mintegral/msdk/mtgbanner/common/c/c$7;

    invoke-direct {v2, p0}, Lcom/mintegral/msdk/mtgbanner/common/c/c$7;-><init>(Lcom/mintegral/msdk/mtgbanner/common/c/c;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v2, v4, v5}, Lcom/mintegral/msdk/out/MTGBannerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 576
    :cond_6d
    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->n:Z

    if-eqz v0, :cond_19c

    if-eqz v1, :cond_19c

    .line 577
    sget-object v0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->b:Ljava/lang/String;

    const-string v2, "onBannerWebViewShow && transInfoToMraid"

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    const/4 v0, 0x2

    new-array v2, v0, [I

    .line 579
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->f:Lcom/mintegral/msdk/out/MTGBannerView;

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/out/MTGBannerView;->getLocationInWindow([I)V

    .line 580
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->h:Lcom/mintegral/msdk/mtgbanner/view/MTGBannerWebView;

    const/4 v3, 0x0

    aget v3, v2, v3

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v4, v2, v4

    int-to-float v4, v4

    .line 4048
    const-string v5, "BannerCallJS"

    const-string v6, "fireOnBannerWebViewShow"

    invoke-static {v5, v6}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4051
    :try_start_93
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 4052
    const-string v6, "startX"

    float-to-double v8, v3

    invoke-virtual {v5, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 4053
    const-string v3, "startY"

    float-to-double v6, v4

    invoke-virtual {v5, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 4054
    const-string v3, "scale"

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/mintegral/msdk/base/utils/k;->c(Landroid/content/Context;)F

    move-result v4

    float-to-double v6, v4

    invoke-virtual {v5, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 4055
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 4056
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/g;

    const-string v4, "webviewshow"

    invoke-static {v0, v4, v3}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cb
    .catch Ljava/lang/Throwable; {:try_start_93 .. :try_end_cb} :catch_22b

    .line 581
    :goto_cb
    iget-object v3, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->h:Lcom/mintegral/msdk/mtgbanner/view/MTGBannerWebView;

    const/4 v0, 0x0

    aget v4, v2, v0

    const/4 v0, 0x1

    aget v2, v2, v0

    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->f:Lcom/mintegral/msdk/out/MTGBannerView;

    .line 582
    invoke-virtual {v0}, Lcom/mintegral/msdk/out/MTGBannerView;->getWidth()I

    move-result v5

    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->f:Lcom/mintegral/msdk/out/MTGBannerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/out/MTGBannerView;->getHeight()I

    move-result v6

    .line 4103
    const-string v0, "BannerCallJS"

    const-string v7, "transInfoForMraid"

    invoke-static {v0, v7}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4106
    :try_start_e6
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4107
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 4108
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 4110
    const-string v8, "orientation"

    const/4 v9, 0x2

    if-ne v0, v9, :cond_235

    const-string v0, "landscape"

    :goto_104
    invoke-virtual {v7, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4112
    const-string v0, "locked"

    const-string v8, "true"

    invoke-virtual {v7, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4114
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/c;->n(Landroid/content/Context;)I

    move-result v0

    int-to-float v8, v0

    .line 4115
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/c;->o(Landroid/content/Context;)I

    move-result v0

    int-to-float v9, v0

    .line 4117
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/c;->p(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v10

    .line 4118
    const-string v0, "width"

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 4119
    const-string v0, "height"

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4121
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 4122
    const-string v12, "placementType"

    const-string v13, "inline"

    invoke-virtual {v10, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4123
    const-string v12, "state"

    const-string v13, "default"

    invoke-virtual {v10, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4124
    const-string v12, "viewable"

    const-string v13, "true"

    invoke-virtual {v10, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4125
    const-string v12, "currentAppOrientation"

    invoke-virtual {v10, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4127
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a()Lcom/mintegral/msdk/mtgjscommon/mraid/a;

    int-to-float v7, v4

    int-to-float v12, v2

    int-to-float v13, v5

    int-to-float v14, v6

    invoke-static {v3, v7, v12, v13, v14}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a(Landroid/webkit/WebView;FFFF)V

    .line 4128
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a()Lcom/mintegral/msdk/mtgjscommon/mraid/a;

    int-to-float v4, v4

    int-to-float v2, v2

    int-to-float v5, v5

    int-to-float v6, v6

    invoke-static {v3, v4, v2, v5, v6}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->b(Landroid/webkit/WebView;FFFF)V

    .line 4129
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a()Lcom/mintegral/msdk/mtgjscommon/mraid/a;

    invoke-static {v3, v8, v9}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->b(Landroid/webkit/WebView;FF)V

    .line 4130
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a()Lcom/mintegral/msdk/mtgjscommon/mraid/a;

    int-to-float v2, v11

    int-to-float v0, v0

    invoke-static {v3, v2, v0}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->c(Landroid/webkit/WebView;FF)V

    .line 4131
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a()Lcom/mintegral/msdk/mtgjscommon/mraid/a;

    invoke-static {v3, v10}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a(Landroid/webkit/WebView;Ljava/util/Map;)V

    .line 4132
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a()Lcom/mintegral/msdk/mtgjscommon/mraid/a;

    invoke-static {v3}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a(Landroid/webkit/WebView;)V
    :try_end_199
    .catch Ljava/lang/Throwable; {:try_start_e6 .. :try_end_199} :catch_240

    .line 583
    :goto_199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->n:Z

    .line 586
    :cond_19c
    sget-object v0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "showSuccessed:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    if-eqz v1, :cond_2d1

    .line 589
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_24a

    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_24a

    .line 590
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_1f5

    .line 591
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 4787
    if-eqz v0, :cond_1e6

    .line 4788
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->q:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->b(Lcom/mintegral/msdk/base/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;)V

    .line 4789
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->q:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;)V

    .line 592
    :cond_1e6
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setReport(Z)V

    .line 593
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->q:Ljava/lang/String;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    const-string v2, "banner"

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/common/a/c;->b(Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)V

    .line 620
    :cond_1f5
    :goto_1f5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->p:Z

    .line 622
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->c:Lcom/mintegral/msdk/mtgbanner/common/b/c;

    if-eqz v0, :cond_204

    .line 623
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->c:Lcom/mintegral/msdk/mtgbanner/common/b/c;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/mtgbanner/common/b/c;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Z)V

    .line 626
    :cond_204
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->q:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/common/e/c;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)V

    .line 627
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->v:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    if-eqz v0, :cond_226

    .line 628
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->v:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/AdSession;->finish()V

    .line 629
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->v:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    .line 630
    const-string v0, "omsdk"

    const-string v1, " adSession.finish() "

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    :cond_226
    :goto_226
    return-void

    .line 3536
    :cond_227
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_5b

    .line 4057
    :catch_22b
    move-exception v0

    .line 4058
    const-string v3, "BannerCallJS"

    const-string v4, "fireOnBannerWebViewShow"

    invoke-static {v3, v4, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_cb

    .line 4110
    :cond_235
    const/4 v9, 0x1

    if-ne v0, v9, :cond_23c

    :try_start_238
    const-string v0, "portrait"

    goto/16 :goto_104

    :cond_23c
    const-string v0, "undefined"
    :try_end_23e
    .catch Ljava/lang/Throwable; {:try_start_238 .. :try_end_23e} :catch_240

    goto/16 :goto_104

    .line 4133
    :catch_240
    move-exception v0

    .line 4134
    const-string v2, "BannerCallJS"

    const-string v3, "transInfoForMraid"

    invoke-static {v2, v3, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_199

    .line 596
    :cond_24a
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->r:Ljava/util/List;

    if-eqz v0, :cond_1f5

    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1f5

    .line 597
    const/4 v1, 0x0

    .line 598
    const/4 v2, 0x0

    .line 601
    const/4 v0, 0x0

    move v3, v2

    move v2, v1

    move v1, v0

    :goto_25c
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2b8

    .line 602
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->r:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isHasMtgTplMark()Z

    move-result v0

    if-nez v0, :cond_2b4

    .line 603
    if-eqz v1, :cond_282

    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->r:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isReport()Z

    move-result v0

    if-nez v0, :cond_2b4

    .line 604
    :cond_282
    const/4 v2, 0x1

    .line 606
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->r:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->q:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v4}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->b(Lcom/mintegral/msdk/base/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->r:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setReport(Z)V

    .line 608
    iget-object v3, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->q:Ljava/lang/String;

    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->r:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    const-string v4, "banner"

    invoke-static {v3, v0, v4}, Lcom/mintegral/msdk/base/common/a/c;->b(Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)V

    move v3, v1

    .line 601
    :cond_2b4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_25c

    .line 614
    :cond_2b8
    if-eqz v2, :cond_1f5

    .line 615
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->r:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->q:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1f5

    .line 634
    :cond_2d1
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setReport(Z)V

    goto/16 :goto_226
.end method

.method static synthetic d(Lcom/mintegral/msdk/mtgbanner/common/c/c;)V
    .registers 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->f()V

    return-void
.end method

.method static synthetic e(Lcom/mintegral/msdk/mtgbanner/common/c/c;)V
    .registers 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->d()V

    return-void
.end method

.method private declared-synchronized e()Z
    .registers 4

    .prologue
    .line 641
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isReport()Z

    move-result v0

    .line 642
    if-nez v0, :cond_f

    .line 644
    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setReport(Z)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 646
    :cond_f
    monitor-exit p0

    return v0

    .line 641
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private f()V
    .registers 5

    .prologue
    const/high16 v3, 0x41400000    # 12.0f

    .line 699
    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->d:Z

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_59

    .line 701
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1f

    .line 702
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->i:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 703
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->i:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->A:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 706
    :cond_1f
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_59

    .line 707
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->f:Lcom/mintegral/msdk/out/MTGBannerView;

    if-eqz v0, :cond_59

    .line 708
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/mintegral/msdk/base/utils/k;->b(Landroid/content/Context;F)I

    move-result v1

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/k;->b(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 709
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 710
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 711
    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->f:Lcom/mintegral/msdk/out/MTGBannerView;

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Lcom/mintegral/msdk/out/MTGBannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 715
    :cond_59
    return-void
.end method

.method static synthetic f(Lcom/mintegral/msdk/mtgbanner/common/c/c;)V
    .registers 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->c()V

    return-void
.end method

.method static synthetic g(Lcom/mintegral/msdk/mtgbanner/common/c/c;)Lcom/mintegral/msdk/mtgbanner/common/b/c;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->c:Lcom/mintegral/msdk/mtgbanner/common/b/c;

    return-object v0
.end method

.method static synthetic h(Lcom/mintegral/msdk/mtgbanner/common/c/c;)Lcom/mintegral/msdk/base/entity/CampaignEx;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    return-object v0
.end method

.method static synthetic i(Lcom/mintegral/msdk/mtgbanner/common/c/c;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/mintegral/msdk/mtgbanner/common/c/c;)Lcom/iab/omid/library/mintegral/adsession/AdSession;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->v:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    return-object v0
.end method

.method static synthetic k(Lcom/mintegral/msdk/mtgbanner/common/c/c;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->i:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic l(Lcom/mintegral/msdk/mtgbanner/common/c/c;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic m(Lcom/mintegral/msdk/mtgbanner/common/c/c;)Z
    .registers 2

    .prologue
    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->l:Z

    return v0
.end method

.method static synthetic n(Lcom/mintegral/msdk/mtgbanner/common/c/c;)Z
    .registers 2

    .prologue
    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->n:Z

    return v0
.end method

.method static synthetic o(Lcom/mintegral/msdk/mtgbanner/common/c/c;)F
    .registers 2

    .prologue
    .line 63
    iget v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->y:F

    return v0
.end method

.method static synthetic p(Lcom/mintegral/msdk/mtgbanner/common/c/c;)F
    .registers 2

    .prologue
    .line 63
    iget v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->z:F

    return v0
.end method

.method static synthetic q(Lcom/mintegral/msdk/mtgbanner/common/c/c;)V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 63
    .line 10676
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_42

    .line 10677
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->h:Lcom/mintegral/msdk/mtgbanner/view/MTGBannerWebView;

    if-eqz v0, :cond_10

    .line 10678
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->h:Lcom/mintegral/msdk/mtgbanner/view/MTGBannerWebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgbanner/view/MTGBannerWebView;->setVisibility(I)V

    .line 10680
    :cond_10
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1e

    .line 10681
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->g:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10684
    :cond_1e
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->f:Lcom/mintegral/msdk/out/MTGBannerView;

    if-eqz v0, :cond_42

    .line 10685
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 10686
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 10687
    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->g:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 10688
    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->g:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_42

    .line 10689
    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->f:Lcom/mintegral/msdk/out/MTGBannerView;

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Lcom/mintegral/msdk/out/MTGBannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    :cond_42
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 734
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->v:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    if-eqz v0, :cond_13

    .line 735
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->v:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/AdSession;->finish()V

    .line 736
    iput-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->v:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    .line 737
    const-string v0, "omsdk"

    const-string v1, " adSession.finish() "

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    :cond_13
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->c:Lcom/mintegral/msdk/mtgbanner/common/b/c;

    if-eqz v0, :cond_19

    .line 740
    iput-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->c:Lcom/mintegral/msdk/mtgbanner/common/b/c;

    .line 742
    :cond_19
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->h:Lcom/mintegral/msdk/mtgbanner/view/MTGBannerWebView;

    if-eqz v0, :cond_22

    .line 743
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->h:Lcom/mintegral/msdk/mtgbanner/view/MTGBannerWebView;

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/mtgbanner/view/MTGBannerWebView;->setWebViewListener(Lcom/mintegral/msdk/mtgjscommon/windvane/c;)V

    .line 745
    :cond_22
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->C:Lcom/mintegral/msdk/mtgbanner/common/c/c$a;

    if-eqz v0, :cond_2c

    .line 746
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->C:Lcom/mintegral/msdk/mtgbanner/common/c/c$a;

    .line 5276
    iput-object v2, v0, Lcom/mintegral/msdk/mtgbanner/common/c/c$a;->a:Lcom/mintegral/msdk/mtgbanner/common/c/c;

    .line 747
    iput-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->C:Lcom/mintegral/msdk/mtgbanner/common/c/c$a;

    .line 749
    :cond_2c
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_35

    .line 750
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 752
    :cond_35
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_3e

    .line 753
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 755
    :cond_3e
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->f:Lcom/mintegral/msdk/out/MTGBannerView;

    if-eqz v0, :cond_47

    .line 756
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->f:Lcom/mintegral/msdk/out/MTGBannerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/out/MTGBannerView;->removeAllViews()V

    .line 758
    :cond_47
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->h:Lcom/mintegral/msdk/mtgbanner/view/MTGBannerWebView;

    if-eqz v0, :cond_50

    .line 759
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->h:Lcom/mintegral/msdk/mtgbanner/view/MTGBannerWebView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgbanner/view/MTGBannerWebView;->release()V

    .line 761
    :cond_50
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->u:Lcom/mintegral/msdk/mtgbanner/common/bridge/a;

    if-eqz v0, :cond_59

    .line 762
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->u:Lcom/mintegral/msdk/mtgbanner/common/bridge/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->a()V

    .line 764
    :cond_59
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->B:Lcom/mintegral/msdk/mtgbanner/common/b/a;

    if-eqz v0, :cond_5f

    .line 765
    iput-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->B:Lcom/mintegral/msdk/mtgbanner/common/b/a;

    .line 767
    :cond_5f
    return-void
.end method

.method public final a(IIII)V
    .registers 8

    .prologue
    .line 919
    if-ne p1, p3, :cond_5

    if-ne p2, p4, :cond_5

    .line 8076
    :goto_4
    return-void

    .line 922
    :cond_5
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->h:Lcom/mintegral/msdk/mtgbanner/view/MTGBannerWebView;

    .line 8070
    const-string v1, "BannerCallJS"

    const-string v2, "fireOnBannerViewSizeChange"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8073
    :try_start_e
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a()Lcom/mintegral/msdk/mtgjscommon/mraid/a;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a(Landroid/webkit/WebView;FF)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_16} :catch_17

    goto :goto_4

    .line 8074
    :catch_17
    move-exception v0

    .line 8075
    const-string v1, "BannerCallJS"

    const-string v2, "fireOnBannerViewSizeChange"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method public final a(Lcom/mintegral/msdk/base/entity/CampaignEx;)V
    .registers 6

    .prologue
    .line 834
    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->p:Z

    if-nez v0, :cond_5

    .line 905
    :cond_4
    :goto_4
    return-void

    .line 838
    :cond_5
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->a:Lcom/mintegral/msdk/click/a;

    if-nez v0, :cond_1a

    .line 839
    new-instance v0, Lcom/mintegral/msdk/click/a;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->q:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/mintegral/msdk/click/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->a:Lcom/mintegral/msdk/click/a;

    .line 841
    :cond_1a
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->a:Lcom/mintegral/msdk/click/a;

    new-instance v1, Lcom/mintegral/msdk/mtgbanner/common/c/c$9;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/mtgbanner/common/c/c$9;-><init>(Lcom/mintegral/msdk/mtgbanner/common/c/c;)V

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 894
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V

    .line 895
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->a:Lcom/mintegral/msdk/click/a;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/click/a;->b(Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 897
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isReportClick()Z

    move-result v0

    if-nez v0, :cond_66

    .line 898
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setReportClick(Z)V

    .line 899
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    .line 6202
    if-eqz p1, :cond_66

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v1

    if-eqz v1, :cond_66

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/j;->j()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_66

    .line 6203
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/j;->j()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 902
    :cond_66
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->c:Lcom/mintegral/msdk/mtgbanner/common/b/c;

    if-eqz v0, :cond_4

    .line 903
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->c:Lcom/mintegral/msdk/mtgbanner/common/b/c;

    invoke-interface {v0}, Lcom/mintegral/msdk/mtgbanner/common/b/c;->a()V

    goto :goto_4
.end method

.method public final a(Lcom/mintegral/msdk/base/entity/CampaignUnit;)V
    .registers 13

    .prologue
    const/4 v5, 0x0

    const/16 v10, 0x8

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v1, 0x0

    .line 312
    .line 1463
    if-eqz p1, :cond_1b3

    .line 1464
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->r:Ljava/util/List;

    .line 1465
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->r:Ljava/util/List;

    if-eqz v0, :cond_1b3

    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1b3

    .line 1466
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->r:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 312
    :goto_22
    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 313
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-nez v0, :cond_2e

    .line 314
    const-string v0, "banner show failed because campain is exception"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->a(Ljava/lang/String;)V

    .line 335
    :cond_2d
    :goto_2d
    return-void

    .line 317
    :cond_2e
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->w:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->x:Lcom/mintegral/msdk/base/common/f/a;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2449
    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->d:Z

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->i:Landroid/widget/ImageView;

    if-nez v0, :cond_66

    .line 2450
    new-instance v0, Landroid/widget/ImageView;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->i:Landroid/widget/ImageView;

    .line 2451
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->i:Landroid/widget/ImageView;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v2

    const-string v3, "mintegral_banner_close"

    const-string v4, "drawable"

    invoke-static {v2, v3, v4}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2452
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 319
    :cond_66
    iput-boolean v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->l:Z

    .line 320
    iput-boolean v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->m:Z

    .line 321
    iput-boolean v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->p:Z

    .line 323
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getBannerHtml()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_84

    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getBannerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c4

    .line 324
    :cond_84
    invoke-static {}, Lcom/mintegral/msdk/mtgbanner/common/a/a;->a()Lcom/mintegral/msdk/mtgbanner/common/a/a;

    move-result-object v0

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/mtgbanner/common/a/a;->c(Ljava/lang/String;)Lcom/mintegral/msdk/mtgbanner/common/a/a;

    move-result-object v0

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/mtgbanner/common/a/a;->d(Ljava/lang/String;)Lcom/mintegral/msdk/mtgbanner/common/a/a;

    move-result-object v0

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/mtgbanner/common/a/a;->b(Ljava/lang/String;)Lcom/mintegral/msdk/mtgbanner/common/a/a;

    move-result-object v0

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isBidCampaign()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/mtgbanner/common/a/a;->a(Z)Lcom/mintegral/msdk/mtgbanner/common/a/a;

    move-result-object v0

    .line 325
    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->q:Ljava/lang/String;

    .line 3179
    if-eqz v0, :cond_c4

    .line 3180
    const-string v3, "2000067"

    invoke-virtual {v0, v3}, Lcom/mintegral/msdk/mtgbanner/common/a/a;->a(Ljava/lang/String;)Lcom/mintegral/msdk/mtgbanner/common/a/a;

    .line 3181
    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgbanner/common/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/mintegral/msdk/base/common/e/a;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 328
    :cond_c4
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->w:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->x:Lcom/mintegral/msdk/base/common/f/a;

    iget-wide v6, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->t:J

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3342
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->b(Lcom/mintegral/msdk/base/entity/CampaignEx;)Ljava/lang/String;

    move-result-object v2

    .line 3343
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b1

    .line 3344
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->f:Lcom/mintegral/msdk/out/MTGBannerView;

    if-eqz v0, :cond_1a6

    .line 3345
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->h:Lcom/mintegral/msdk/mtgbanner/view/MTGBannerWebView;

    if-nez v0, :cond_10a

    .line 3346
    new-instance v0, Lcom/mintegral/msdk/mtgbanner/view/MTGBannerWebView;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/mintegral/msdk/mtgbanner/view/MTGBannerWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->h:Lcom/mintegral/msdk/mtgbanner/view/MTGBannerWebView;

    .line 3347
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->h:Lcom/mintegral/msdk/mtgbanner/view/MTGBannerWebView;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Lcom/mintegral/msdk/mtgbanner/view/MTGBannerWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3349
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->h:Lcom/mintegral/msdk/mtgbanner/view/MTGBannerWebView;

    new-instance v3, Lcom/mintegral/msdk/mtgbanner/view/a;

    iget-object v4, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->q:Ljava/lang/String;

    iget-object v6, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->r:Ljava/util/List;

    iget-object v7, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->B:Lcom/mintegral/msdk/mtgbanner/common/b/a;

    invoke-direct {v3, v4, v6, v7}, Lcom/mintegral/msdk/mtgbanner/view/a;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/mintegral/msdk/mtgbanner/common/b/a;)V

    invoke-virtual {v0, v3}, Lcom/mintegral/msdk/mtgbanner/view/MTGBannerWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 3351
    :cond_10a
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_113

    .line 3352
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3354
    :cond_113
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->h:Lcom/mintegral/msdk/mtgbanner/view/MTGBannerWebView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgbanner/view/MTGBannerWebView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_120

    .line 3355
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->h:Lcom/mintegral/msdk/mtgbanner/view/MTGBannerWebView;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgbanner/view/MTGBannerWebView;->setVisibility(I)V

    .line 3357
    :cond_120
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->h:Lcom/mintegral/msdk/mtgbanner/view/MTGBannerWebView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgbanner/view/MTGBannerWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_12f

    .line 3358
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->f:Lcom/mintegral/msdk/out/MTGBannerView;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->h:Lcom/mintegral/msdk/mtgbanner/view/MTGBannerWebView;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/out/MTGBannerView;->addView(Landroid/view/View;)V

    .line 3361
    :cond_12f
    invoke-direct {p0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->f()V

    .line 3363
    new-instance v0, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->f:Lcom/mintegral/msdk/out/MTGBannerView;

    invoke-virtual {v1}, Lcom/mintegral/msdk/out/MTGBannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->q:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->u:Lcom/mintegral/msdk/mtgbanner/common/bridge/a;

    .line 3364
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->u:Lcom/mintegral/msdk/mtgbanner/common/bridge/a;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->r:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->a(Ljava/util/List;)V

    .line 3365
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->u:Lcom/mintegral/msdk/mtgbanner/common/bridge/a;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->B:Lcom/mintegral/msdk/mtgbanner/common/b/a;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->a(Lcom/mintegral/msdk/mtgbanner/common/b/a;)V

    .line 3366
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->u:Lcom/mintegral/msdk/mtgbanner/common/bridge/a;

    iget v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->s:I

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgbanner/common/bridge/a;->a(I)V

    .line 3367
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->h:Lcom/mintegral/msdk/mtgbanner/view/MTGBannerWebView;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->C:Lcom/mintegral/msdk/mtgbanner/common/c/c$a;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgbanner/view/MTGBannerWebView;->setWebViewListener(Lcom/mintegral/msdk/mtgjscommon/windvane/c;)V

    .line 3368
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->h:Lcom/mintegral/msdk/mtgbanner/view/MTGBannerWebView;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->u:Lcom/mintegral/msdk/mtgbanner/common/bridge/a;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgbanner/view/MTGBannerWebView;->setObject(Ljava/lang/Object;)V

    .line 3369
    const-string v0, "file"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a0

    .line 3370
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->h:Lcom/mintegral/msdk/mtgbanner/view/MTGBannerWebView;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getBannerUrl()Ljava/lang/String;

    move-result-object v1

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual/range {v0 .. v5}, Lcom/mintegral/msdk/mtgbanner/view/MTGBannerWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3378
    :goto_17b
    const/4 v0, 0x1

    .line 329
    :goto_17c
    if-nez v0, :cond_2d

    .line 330
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getBannerHtml()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_196

    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getBannerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19b

    .line 331
    :cond_196
    const-string v0, "banner render failed because res load failed"

    invoke-direct {p0, v0, v9}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->a(Ljava/lang/String;I)V

    .line 333
    :cond_19b
    invoke-direct {p0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->c()V

    goto/16 :goto_2d

    .line 3372
    :cond_1a0
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->h:Lcom/mintegral/msdk/mtgbanner/view/MTGBannerWebView;

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/mtgbanner/view/MTGBannerWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_17b

    .line 3375
    :cond_1a6
    const-string v0, "banner render failed because banner view is null"

    invoke-direct {p0, v0, v9}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->a(Ljava/lang/String;I)V

    .line 3376
    const-string v0, "banner show failed because banner view is exception"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->a(Ljava/lang/String;)V

    goto :goto_17b

    :cond_1b1
    move v0, v1

    .line 3380
    goto :goto_17c

    :cond_1b3
    move-object v0, v5

    goto/16 :goto_22
.end method

.method public final a(Z)V
    .registers 2

    .prologue
    .line 304
    iput-boolean p1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->d:Z

    .line 305
    return-void
.end method

.method public final a(ZI)V
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 289
    iput p2, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->s:I

    .line 290
    if-eqz p2, :cond_8

    .line 296
    :goto_5
    iput-boolean p1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->d:Z

    .line 301
    :cond_7
    return-void

    .line 293
    :cond_8
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    .line 294
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->q:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mintegral/msdk/c/b;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/c/d;

    move-result-object v1

    .line 295
    if-eqz v1, :cond_7

    .line 296
    invoke-virtual {v1}, Lcom/mintegral/msdk/c/d;->b()I

    move-result v1

    if-ne v1, v0, :cond_23

    move p1, v0

    goto :goto_5

    :cond_23
    const/4 p1, 0x0

    goto :goto_5
.end method

.method public final b(Z)V
    .registers 9

    .prologue
    .line 774
    iput-boolean p1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->j:Z

    .line 775
    invoke-direct {p0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->d()V

    .line 776
    if-nez p1, :cond_3e

    .line 777
    iget-object v6, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->e:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v3, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->q:Ljava/lang/String;

    .line 6120
    if-eqz v6, :cond_3e

    .line 6121
    invoke-virtual {v6}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/mtgjscommon/mraid/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6122
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 6123
    new-instance v0, Lcom/mintegral/msdk/base/common/e/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/base/common/e/b;-><init>(Landroid/content/Context;)V

    .line 6124
    invoke-virtual {v6}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v1

    .line 6125
    invoke-virtual {v6}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isBidCampaign()Z

    move-result v5

    .line 6124
    invoke-virtual/range {v0 .. v5}, Lcom/mintegral/msdk/base/common/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6126
    invoke-virtual {v6}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/mtgjscommon/mraid/c;->b(Ljava/lang/String;)V

    .line 779
    :cond_3e
    return-void
.end method

.method public final c(Z)V
    .registers 2

    .prologue
    .line 781
    iput-boolean p1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/c;->k:Z

    .line 782
    invoke-direct {p0}, Lcom/mintegral/msdk/mtgbanner/common/c/c;->d()V

    .line 783
    return-void
.end method
