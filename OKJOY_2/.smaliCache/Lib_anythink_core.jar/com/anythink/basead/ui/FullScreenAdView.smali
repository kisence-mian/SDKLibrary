.class public Lcom/anythink/basead/ui/FullScreenAdView;
.super Lcom/anythink/basead/ui/BaseAdView;


# static fields
.field public static final FORMAT_INTERSTITIAL:I = 0x3

.field public static final FORMAT_REWARD_VIDEO:I = 0x1

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private A:I

.field private B:Z

.field private C:Lcom/anythink/basead/f/b$b;

.field private D:J

.field private E:Z

.field private F:J

.field a:I

.field b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:Z

.field private u:Landroid/widget/RelativeLayout;

.field private v:Lcom/anythink/basead/ui/PlayerView;

.field private w:Lcom/anythink/basead/ui/BannerView;

.field private x:Lcom/anythink/basead/ui/EndCardView;

.field private y:Lcom/anythink/basead/ui/a;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    const-class v0, Lcom/anythink/basead/ui/FullScreenAdView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/basead/ui/FullScreenAdView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 63
    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/BaseAdView;-><init>(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/anythink/core/common/d/i;Lcom/anythink/core/common/d/h;Ljava/lang/String;II)V
    .registers 7

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/anythink/basead/ui/BaseAdView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/d/i;Lcom/anythink/core/common/d/h;Ljava/lang/String;)V

    .line 69
    iput p5, p0, Lcom/anythink/basead/ui/FullScreenAdView;->c:I

    .line 70
    iput p6, p0, Lcom/anythink/basead/ui/FullScreenAdView;->d:I

    .line 71
    return-void
.end method

.method static synthetic a(Lcom/anythink/basead/ui/FullScreenAdView;J)J
    .registers 3

    .line 33
    iput-wide p1, p0, Lcom/anythink/basead/ui/FullScreenAdView;->F:J

    return-wide p1
.end method

.method private a(I)V
    .registers 6

    .line 504
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->g:Lcom/anythink/core/common/d/h;

    instance-of v0, v0, Lcom/anythink/core/common/d/u;

    if-eqz v0, :cond_72

    .line 505
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->g:Lcom/anythink/core/common/d/h;

    check-cast v0, Lcom/anythink/core/common/d/u;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/u;->y()Lcom/anythink/core/common/d/w;

    move-result-object v0

    .line 506
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->w()Ljava/util/Map;

    move-result-object v0

    .line 507
    if-eqz v0, :cond_72

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_72

    .line 508
    iget-object v1, p0, Lcom/anythink/basead/ui/FullScreenAdView;->b:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_25

    .line 509
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/anythink/basead/ui/FullScreenAdView;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 511
    :cond_25
    div-int/lit16 p1, p1, 0x3e8

    .line 512
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2f
    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 513
    iget-object v2, p0, Lcom/anythink/basead/ui/FullScreenAdView;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_51

    iget-object v2, p0, Lcom/anythink/basead/ui/FullScreenAdView;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 516
    :cond_51
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt p1, v2, :cond_71

    .line 517
    iget-object v2, p0, Lcom/anythink/basead/ui/FullScreenAdView;->b:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenAdView;->j()Lcom/anythink/basead/c/h;

    move-result-object v2

    .line 519
    iget-object v3, v2, Lcom/anythink/basead/c/h;->h:Lcom/anythink/basead/c/i;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v3, Lcom/anythink/basead/c/i;->i:I

    .line 520
    const/16 v1, 0x20

    iget-object v3, p0, Lcom/anythink/basead/ui/FullScreenAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-static {v1, v3, v2}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/d/h;Lcom/anythink/basead/c/h;)V

    .line 522
    :cond_71
    goto :goto_2f

    .line 525
    :cond_72
    return-void
.end method

.method private a(Lcom/anythink/basead/c/f;)V
    .registers 3

    .line 408
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->C:Lcom/anythink/basead/f/b$b;

    if-eqz v0, :cond_7

    .line 409
    invoke-interface {v0, p1}, Lcom/anythink/basead/f/b$b;->a(Lcom/anythink/basead/c/f;)V

    .line 411
    :cond_7
    return-void
.end method

.method static synthetic a(Lcom/anythink/basead/ui/FullScreenAdView;)V
    .registers 1

    .line 33
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseAdView;->f()V

    return-void
.end method

.method static synthetic a(Lcom/anythink/basead/ui/FullScreenAdView;I)V
    .registers 6

    .line 33
    nop

    .line 2504
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->g:Lcom/anythink/core/common/d/h;

    instance-of v0, v0, Lcom/anythink/core/common/d/u;

    if-eqz v0, :cond_73

    .line 2505
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->g:Lcom/anythink/core/common/d/h;

    check-cast v0, Lcom/anythink/core/common/d/u;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/u;->y()Lcom/anythink/core/common/d/w;

    move-result-object v0

    .line 2506
    invoke-virtual {v0}, Lcom/anythink/core/common/d/w;->w()Ljava/util/Map;

    move-result-object v0

    .line 2507
    if-eqz v0, :cond_73

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_73

    .line 2508
    iget-object v1, p0, Lcom/anythink/basead/ui/FullScreenAdView;->b:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_26

    .line 2509
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/anythink/basead/ui/FullScreenAdView;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2511
    :cond_26
    div-int/lit16 p1, p1, 0x3e8

    .line 2512
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_30
    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2513
    iget-object v2, p0, Lcom/anythink/basead/ui/FullScreenAdView;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_52

    iget-object v2, p0, Lcom/anythink/basead/ui/FullScreenAdView;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_30

    .line 2516
    :cond_52
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt p1, v2, :cond_72

    .line 2517
    iget-object v2, p0, Lcom/anythink/basead/ui/FullScreenAdView;->b:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2518
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenAdView;->j()Lcom/anythink/basead/c/h;

    move-result-object v2

    .line 2519
    iget-object v3, v2, Lcom/anythink/basead/c/h;->h:Lcom/anythink/basead/c/i;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v3, Lcom/anythink/basead/c/i;->i:I

    .line 2520
    const/16 v1, 0x20

    iget-object v3, p0, Lcom/anythink/basead/ui/FullScreenAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-static {v1, v3, v2}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/d/h;Lcom/anythink/basead/c/h;)V

    .line 2522
    :cond_72
    goto :goto_30

    .line 33
    :cond_73
    return-void
.end method

.method static synthetic a(Lcom/anythink/basead/ui/FullScreenAdView;Lcom/anythink/basead/c/f;)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/FullScreenAdView;->a(Lcom/anythink/basead/c/f;)V

    return-void
.end method

.method static synthetic b(Lcom/anythink/basead/ui/FullScreenAdView;)V
    .registers 4

    .line 2400
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenAdView;->j()Lcom/anythink/basead/c/h;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/d/h;Lcom/anythink/basead/c/h;)V

    .line 2402
    iget-object p0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->C:Lcom/anythink/basead/f/b$b;

    if-eqz p0, :cond_11

    .line 2403
    invoke-interface {p0}, Lcom/anythink/basead/f/b$b;->b()V

    .line 33
    :cond_11
    return-void
.end method

.method static synthetic c(Lcom/anythink/basead/ui/FullScreenAdView;)Z
    .registers 1

    .line 33
    iget-boolean p0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->E:Z

    return p0
.end method

.method static synthetic d(Lcom/anythink/basead/ui/FullScreenAdView;)Lcom/anythink/basead/ui/BannerView;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->w:Lcom/anythink/basead/ui/BannerView;

    return-object p0
.end method

.method static synthetic e(Lcom/anythink/basead/ui/FullScreenAdView;)J
    .registers 3

    .line 33
    iget-wide v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->D:J

    return-wide v0
.end method

.method static synthetic f(Lcom/anythink/basead/ui/FullScreenAdView;)V
    .registers 1

    .line 33
    nop

    .line 3350
    invoke-direct {p0}, Lcom/anythink/basead/ui/FullScreenAdView;->p()V

    .line 33
    return-void
.end method

.method static synthetic g(Lcom/anythink/basead/ui/FullScreenAdView;)Lcom/anythink/basead/f/b$b;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->C:Lcom/anythink/basead/f/b$b;

    return-object p0
.end method

.method static synthetic h(Lcom/anythink/basead/ui/FullScreenAdView;)V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/anythink/basead/ui/FullScreenAdView;->r()V

    return-void
.end method

.method static synthetic i(Lcom/anythink/basead/ui/FullScreenAdView;)Lcom/anythink/basead/ui/PlayerView;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->v:Lcom/anythink/basead/ui/PlayerView;

    return-object p0
.end method

.method static synthetic j(Lcom/anythink/basead/ui/FullScreenAdView;)V
    .registers 1

    .line 33
    nop

    .line 3394
    iget-object p0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->y:Lcom/anythink/basead/ui/a;

    if-eqz p0, :cond_8

    .line 3395
    invoke-virtual {p0}, Lcom/anythink/basead/ui/a;->b()V

    .line 33
    :cond_8
    return-void
.end method

.method private static synthetic k(Lcom/anythink/basead/ui/FullScreenAdView;)V
    .registers 1

    .line 33
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseAdView;->f()V

    return-void
.end method

.method private o()V
    .registers 3

    .line 135
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 136
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/anythink/basead/ui/FullScreenAdView;->z:I

    .line 137
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->A:I

    .line 145
    return-void
.end method

.method private p()V
    .registers 6

    .line 148
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->w:Lcom/anythink/basead/ui/BannerView;

    if-eqz v0, :cond_5

    .line 149
    return-void

    .line 151
    :cond_5
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    .line 152
    const/4 v1, 0x1

    if-le v0, v1, :cond_19

    .line 153
    sub-int/2addr v0, v1

    :goto_f
    if-lez v0, :cond_19

    .line 154
    iget-object v1, p0, Lcom/anythink/basead/ui/FullScreenAdView;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->removeViewAt(I)V

    .line 153
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 157
    :cond_19
    new-instance v0, Lcom/anythink/basead/ui/BannerView;

    iget-object v1, p0, Lcom/anythink/basead/ui/FullScreenAdView;->u:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/anythink/basead/ui/FullScreenAdView;->g:Lcom/anythink/core/common/d/h;

    iget v3, p0, Lcom/anythink/basead/ui/FullScreenAdView;->d:I

    new-instance v4, Lcom/anythink/basead/ui/FullScreenAdView$1;

    invoke-direct {v4, p0}, Lcom/anythink/basead/ui/FullScreenAdView$1;-><init>(Lcom/anythink/basead/ui/FullScreenAdView;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/anythink/basead/ui/BannerView;-><init>(Landroid/view/ViewGroup;Lcom/anythink/core/common/d/h;ILcom/anythink/basead/ui/BannerView$a;)V

    iput-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->w:Lcom/anythink/basead/ui/BannerView;

    .line 171
    return-void
.end method

.method private q()V
    .registers 4

    .line 174
    new-instance v0, Lcom/anythink/basead/ui/PlayerView;

    iget-object v1, p0, Lcom/anythink/basead/ui/FullScreenAdView;->u:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/anythink/basead/ui/FullScreenAdView$2;

    invoke-direct {v2, p0}, Lcom/anythink/basead/ui/FullScreenAdView$2;-><init>(Lcom/anythink/basead/ui/FullScreenAdView;)V

    invoke-direct {v0, v1, v2}, Lcom/anythink/basead/ui/PlayerView;-><init>(Landroid/view/ViewGroup;Lcom/anythink/basead/ui/PlayerView$a;)V

    iput-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->v:Lcom/anythink/basead/ui/PlayerView;

    .line 289
    iget-object v1, p0, Lcom/anythink/basead/ui/FullScreenAdView;->f:Lcom/anythink/core/common/d/i;

    iget-object v1, v1, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/PlayerView;->setSetting(Lcom/anythink/core/common/d/j;)V

    .line 290
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->v:Lcom/anythink/basead/ui/PlayerView;

    iget-object v1, p0, Lcom/anythink/basead/ui/FullScreenAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/h;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/PlayerView;->load(Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method private r()V
    .registers 4

    .line 294
    sget-object v0, Lcom/anythink/basead/ui/FullScreenAdView;->TAG:Ljava/lang/String;

    const-string v1, "showEndCard......."

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->e:Z

    .line 301
    invoke-direct {p0}, Lcom/anythink/basead/ui/FullScreenAdView;->t()V

    .line 305
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->v:Lcom/anythink/basead/ui/PlayerView;

    if-eqz v0, :cond_19

    .line 306
    iget-object v1, p0, Lcom/anythink/basead/ui/FullScreenAdView;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->v:Lcom/anythink/basead/ui/PlayerView;

    .line 310
    :cond_19
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenAdView;->j()Lcom/anythink/basead/c/h;

    move-result-object v0

    .line 311
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/anythink/basead/ui/FullScreenAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-static {v1, v2, v0}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/d/h;Lcom/anythink/basead/c/h;)V

    .line 312
    return-void
.end method

.method private static s()V
    .registers 0

    .line 316
    return-void
.end method

.method private t()V
    .registers 9

    .line 320
    iget-boolean v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->E:Z

    .line 322
    xor-int/lit8 v6, v0, 0x1

    new-instance v0, Lcom/anythink/basead/ui/EndCardView;

    iget-object v2, p0, Lcom/anythink/basead/ui/FullScreenAdView;->u:Landroid/widget/RelativeLayout;

    iget v3, p0, Lcom/anythink/basead/ui/FullScreenAdView;->z:I

    iget v4, p0, Lcom/anythink/basead/ui/FullScreenAdView;->A:I

    iget-object v5, p0, Lcom/anythink/basead/ui/FullScreenAdView;->g:Lcom/anythink/core/common/d/h;

    new-instance v7, Lcom/anythink/basead/ui/FullScreenAdView$3;

    invoke-direct {v7, p0}, Lcom/anythink/basead/ui/FullScreenAdView$3;-><init>(Lcom/anythink/basead/ui/FullScreenAdView;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/anythink/basead/ui/EndCardView;-><init>(Landroid/view/ViewGroup;IILcom/anythink/core/common/d/h;ZLcom/anythink/basead/ui/EndCardView$a;)V

    iput-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->x:Lcom/anythink/basead/ui/EndCardView;

    .line 344
    iget-boolean v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->E:Z

    if-eqz v0, :cond_21

    .line 345
    nop

    .line 2350
    invoke-direct {p0}, Lcom/anythink/basead/ui/FullScreenAdView;->p()V

    .line 347
    :cond_21
    return-void
.end method

.method private u()V
    .registers 1

    .line 350
    invoke-direct {p0}, Lcom/anythink/basead/ui/FullScreenAdView;->p()V

    .line 351
    return-void
.end method

.method private v()Z
    .registers 5

    .line 355
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/h;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 356
    return v1

    .line 359
    :cond_e
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->g:Lcom/anythink/core/common/d/h;

    instance-of v0, v0, Lcom/anythink/core/common/d/u;

    const/4 v2, 0x1

    if-eqz v0, :cond_2b

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/anythink/basead/ui/FullScreenAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v3}, Lcom/anythink/core/common/d/h;->r()I

    move-result v3

    if-ne v0, v3, :cond_2b

    .line 360
    const/4 v0, 0x3

    iget-object v3, p0, Lcom/anythink/basead/ui/FullScreenAdView;->g:Lcom/anythink/core/common/d/h;

    check-cast v3, Lcom/anythink/core/common/d/u;

    invoke-virtual {v3}, Lcom/anythink/core/common/d/u;->z()I

    move-result v3

    if-ne v0, v3, :cond_2a

    .line 361
    return v2

    .line 363
    :cond_2a
    return v1

    .line 367
    :cond_2b
    return v2
.end method

.method private w()V
    .registers 3

    .line 387
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->y:Lcom/anythink/basead/ui/a;

    if-nez v0, :cond_d

    .line 388
    new-instance v0, Lcom/anythink/basead/ui/a;

    iget-object v1, p0, Lcom/anythink/basead/ui/FullScreenAdView;->u:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Lcom/anythink/basead/ui/a;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->y:Lcom/anythink/basead/ui/a;

    .line 390
    :cond_d
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->y:Lcom/anythink/basead/ui/a;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/a;->a()V

    .line 391
    return-void
.end method

.method private x()V
    .registers 2

    .line 394
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->y:Lcom/anythink/basead/ui/a;

    if-eqz v0, :cond_7

    .line 395
    invoke-virtual {v0}, Lcom/anythink/basead/ui/a;->b()V

    .line 397
    :cond_7
    return-void
.end method

.method private y()V
    .registers 4

    .line 400
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenAdView;->j()Lcom/anythink/basead/c/h;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/d/h;Lcom/anythink/basead/c/h;)V

    .line 402
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->C:Lcom/anythink/basead/f/b$b;

    if-eqz v0, :cond_11

    .line 403
    invoke-interface {v0}, Lcom/anythink/basead/f/b$b;->b()V

    .line 405
    :cond_11
    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 5

    .line 91
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_activity_ad"

    const-string v3, "layout"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 92
    return-void
.end method

.method protected final a(Z)V
    .registers 3

    .line 436
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->C:Lcom/anythink/basead/f/b$b;

    if-eqz v0, :cond_7

    .line 437
    invoke-interface {v0, p1}, Lcom/anythink/basead/f/b$b;->a(Z)V

    .line 439
    :cond_7
    return-void
.end method

.method protected final b()V
    .registers 4

    .line 416
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenAdView;->j()Lcom/anythink/basead/c/h;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2, v0, v1}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/d/h;Lcom/anythink/basead/c/h;)V

    .line 418
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->C:Lcom/anythink/basead/f/b$b;

    if-eqz v0, :cond_12

    .line 419
    invoke-interface {v0}, Lcom/anythink/basead/f/b$b;->a()V

    .line 421
    :cond_12
    return-void
.end method

.method protected final c()V
    .registers 4

    .line 425
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenAdView;->j()Lcom/anythink/basead/c/h;

    move-result-object v0

    .line 426
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenAdView;->k()Lcom/anythink/basead/c/b;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/basead/c/h;->g:Lcom/anythink/basead/c/b;

    .line 427
    iget-object v1, p0, Lcom/anythink/basead/ui/FullScreenAdView;->g:Lcom/anythink/core/common/d/h;

    const/16 v2, 0x9

    invoke-static {v2, v1, v0}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/d/h;Lcom/anythink/basead/c/h;)V

    .line 429
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->C:Lcom/anythink/basead/f/b$b;

    if-eqz v0, :cond_18

    .line 430
    invoke-interface {v0}, Lcom/anythink/basead/f/b$b;->f()V

    .line 432
    :cond_18
    return-void
.end method

.method protected final d()V
    .registers 3

    .line 443
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->B:Z

    .line 444
    nop

    .line 2387
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->y:Lcom/anythink/basead/ui/a;

    if-nez v0, :cond_11

    .line 2388
    new-instance v0, Lcom/anythink/basead/ui/a;

    iget-object v1, p0, Lcom/anythink/basead/ui/FullScreenAdView;->u:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Lcom/anythink/basead/ui/a;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->y:Lcom/anythink/basead/ui/a;

    .line 2390
    :cond_11
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->y:Lcom/anythink/basead/ui/a;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/a;->a()V

    .line 445
    return-void
.end method

.method protected final e()V
    .registers 2

    .line 449
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->B:Z

    .line 450
    new-instance v0, Lcom/anythink/basead/ui/FullScreenAdView$4;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/FullScreenAdView$4;-><init>(Lcom/anythink/basead/ui/FullScreenAdView;)V

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/FullScreenAdView;->post(Ljava/lang/Runnable;)Z

    .line 456
    return-void
.end method

.method public fillVideoEndRecord(Z)Lcom/anythink/basead/c/i;
    .registers 8

    .line 482
    new-instance v0, Lcom/anythink/basead/c/i;

    invoke-direct {v0}, Lcom/anythink/basead/c/i;-><init>()V

    .line 483
    iget v1, p0, Lcom/anythink/basead/ui/FullScreenAdView;->d:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_d

    const/4 v1, 0x4

    goto :goto_e

    :cond_d
    move v1, v3

    :goto_e
    iput v1, v0, Lcom/anythink/basead/c/i;->l:I

    .line 484
    iput v3, v0, Lcom/anythink/basead/c/i;->r:I

    .line 485
    iget-object v1, p0, Lcom/anythink/basead/ui/FullScreenAdView;->v:Lcom/anythink/basead/ui/PlayerView;

    const/4 v4, 0x0

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Lcom/anythink/basead/ui/PlayerView;->getVideoLength()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    goto :goto_1f

    :cond_1e
    move v1, v4

    :goto_1f
    iput v1, v0, Lcom/anythink/basead/c/i;->a:I

    .line 486
    iget v1, p0, Lcom/anythink/basead/ui/FullScreenAdView;->a:I

    div-int/lit16 v1, v1, 0x3e8

    iput v1, v0, Lcom/anythink/basead/c/i;->b:I

    .line 487
    iget-object v1, p0, Lcom/anythink/basead/ui/FullScreenAdView;->v:Lcom/anythink/basead/ui/PlayerView;

    invoke-virtual {v1}, Lcom/anythink/basead/ui/PlayerView;->getCurrentPosition()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    iput v1, v0, Lcom/anythink/basead/c/i;->c:I

    .line 488
    iget v1, p0, Lcom/anythink/basead/ui/FullScreenAdView;->a:I

    if-nez v1, :cond_37

    move v1, v3

    goto :goto_38

    :cond_37
    move v1, v4

    :goto_38
    iput v1, v0, Lcom/anythink/basead/c/i;->d:I

    .line 489
    iget v1, p0, Lcom/anythink/basead/ui/FullScreenAdView;->a:I

    if-nez v1, :cond_40

    move v1, v3

    goto :goto_41

    :cond_40
    move v1, v2

    :goto_41
    iput v1, v0, Lcom/anythink/basead/c/i;->o:I

    .line 490
    iget-object v1, p0, Lcom/anythink/basead/ui/FullScreenAdView;->v:Lcom/anythink/basead/ui/PlayerView;

    invoke-virtual {v1}, Lcom/anythink/basead/ui/PlayerView;->getCurrentPosition()I

    move-result v1

    iget-object v5, p0, Lcom/anythink/basead/ui/FullScreenAdView;->v:Lcom/anythink/basead/ui/PlayerView;

    invoke-virtual {v5}, Lcom/anythink/basead/ui/PlayerView;->getVideoLength()I

    move-result v5

    if-ne v1, v5, :cond_52

    goto :goto_53

    :cond_52
    move v3, v4

    :goto_53
    iput v3, v0, Lcom/anythink/basead/c/i;->e:I

    .line 491
    if-eqz p1, :cond_58

    move v2, v4

    :cond_58
    iput v2, v0, Lcom/anythink/basead/c/i;->u:I

    .line 492
    iget-wide v1, p0, Lcom/anythink/basead/ui/FullScreenAdView;->F:J

    iput-wide v1, v0, Lcom/anythink/basead/c/i;->f:J

    .line 493
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/anythink/basead/c/i;->g:J

    .line 494
    iget-object p1, p0, Lcom/anythink/basead/ui/FullScreenAdView;->v:Lcom/anythink/basead/ui/PlayerView;

    invoke-virtual {p1}, Lcom/anythink/basead/ui/PlayerView;->getCurrentPosition()I

    move-result p1

    iput p1, v0, Lcom/anythink/basead/c/i;->h:I

    .line 496
    sget-object p1, Lcom/anythink/basead/ui/FullScreenAdView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Video End Record:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/anythink/basead/c/i;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    return-object v0
.end method

.method protected final g()V
    .registers 3

    .line 373
    sget-object v0, Lcom/anythink/basead/ui/FullScreenAdView;->TAG:Ljava/lang/String;

    const-string v1, "click \u3002\u3002\u3002\u3002\u3002"

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-boolean v1, p0, Lcom/anythink/basead/ui/FullScreenAdView;->B:Z

    if-eqz v1, :cond_11

    .line 376
    const-string v1, "during click \u3002\u3002\u3002\u3002\u3002"

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    return-void

    .line 379
    :cond_11
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->g:Lcom/anythink/core/common/d/h;

    if-nez v0, :cond_16

    .line 380
    return-void

    .line 383
    :cond_16
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseAdView;->g()V

    .line 384
    return-void
.end method

.method protected final i()V
    .registers 2

    .line 533
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseAdView;->i()V

    .line 535
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->C:Lcom/anythink/basead/f/b$b;

    .line 536
    return-void
.end method

.method public init()V
    .registers 6

    .line 95
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseAdView;->h()V

    .line 97
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_rl_root"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/FullScreenAdView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->u:Landroid/widget/RelativeLayout;

    .line 98
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_full_screen_view_id"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/FullScreenAdView;->setId(I)V

    .line 100
    nop

    .line 1135
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1136
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/anythink/basead/ui/FullScreenAdView;->z:I

    .line 1137
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->A:I

    .line 102
    nop

    .line 1355
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/h;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_46

    .line 1356
    goto :goto_61

    .line 1359
    :cond_46
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->g:Lcom/anythink/core/common/d/h;

    instance-of v0, v0, Lcom/anythink/core/common/d/u;

    if-eqz v0, :cond_60

    const/4 v0, 0x2

    iget-object v4, p0, Lcom/anythink/basead/ui/FullScreenAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v4}, Lcom/anythink/core/common/d/h;->r()I

    move-result v4

    if-ne v0, v4, :cond_60

    .line 1360
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->g:Lcom/anythink/core/common/d/h;

    check-cast v0, Lcom/anythink/core/common/d/u;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/u;->z()I

    move-result v0

    if-eq v1, v0, :cond_60

    .line 1363
    goto :goto_61

    .line 1367
    :cond_60
    move v2, v3

    .line 102
    :goto_61
    iput-boolean v2, p0, Lcom/anythink/basead/ui/FullScreenAdView;->E:Z

    .line 104
    iget-boolean v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->e:Z

    if-eqz v0, :cond_6b

    .line 105
    invoke-direct {p0}, Lcom/anythink/basead/ui/FullScreenAdView;->r()V

    return-void

    .line 106
    :cond_6b
    iget v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->c:I

    if-ne v3, v0, :cond_87

    .line 107
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/h;->t()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 108
    invoke-direct {p0}, Lcom/anythink/basead/ui/FullScreenAdView;->q()V

    return-void

    .line 110
    :cond_7b
    const-string v0, "40002"

    const-string v1, "Video url no exist!"

    invoke-static {v0, v1}, Lcom/anythink/basead/c/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/f;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/anythink/basead/ui/FullScreenAdView;->a(Lcom/anythink/basead/c/f;)V

    return-void

    .line 112
    :cond_87
    if-ne v1, v0, :cond_a4

    .line 113
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/h;->r()I

    move-result v0

    if-ne v0, v3, :cond_9d

    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/h;->t()Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 114
    invoke-direct {p0}, Lcom/anythink/basead/ui/FullScreenAdView;->q()V

    return-void

    .line 116
    :cond_9d
    invoke-direct {p0}, Lcom/anythink/basead/ui/FullScreenAdView;->r()V

    .line 117
    nop

    .line 2033
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseAdView;->f()V

    .line 120
    :cond_a4
    return-void
.end method

.method public isShowEndCard()Z
    .registers 2

    .line 82
    iget-boolean v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->e:Z

    return v0
.end method

.method protected final j()Lcom/anythink/basead/c/h;
    .registers 4

    .line 125
    new-instance v0, Lcom/anythink/basead/c/h;

    iget-object v1, p0, Lcom/anythink/basead/ui/FullScreenAdView;->f:Lcom/anythink/core/common/d/i;

    iget-object v1, v1, Lcom/anythink/core/common/d/i;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/basead/ui/FullScreenAdView;->t:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/anythink/basead/c/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenAdView;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/anythink/basead/c/h;->e:I

    .line 127
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenAdView;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/anythink/basead/c/h;->f:I

    .line 128
    iget-object v1, p0, Lcom/anythink/basead/ui/FullScreenAdView;->v:Lcom/anythink/basead/ui/PlayerView;

    if-eqz v1, :cond_22

    .line 129
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/anythink/basead/ui/FullScreenAdView;->fillVideoEndRecord(Z)Lcom/anythink/basead/c/i;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/basead/c/h;->h:Lcom/anythink/basead/c/i;

    .line 131
    :cond_22
    return-object v0
.end method

.method protected final l()V
    .registers 4

    .line 460
    :try_start_0
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->v:Lcom/anythink/basead/ui/PlayerView;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/anythink/basead/ui/PlayerView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 461
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->v:Lcom/anythink/basead/ui/PlayerView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/PlayerView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->a:I

    .line 462
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->v:Lcom/anythink/basead/ui/PlayerView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/PlayerView;->start()V

    .line 464
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->F:J

    .line 465
    iget v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->a:I

    if-eqz v0, :cond_2c

    .line 466
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/anythink/basead/ui/FullScreenAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenAdView;->j()Lcom/anythink/basead/c/h;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/d/h;Lcom/anythink/basead/c/h;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2d

    .line 471
    :cond_2c
    return-void

    .line 470
    :catch_2d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 472
    return-void
.end method

.method protected final m()V
    .registers 4

    .line 475
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->v:Lcom/anythink/basead/ui/PlayerView;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/anythink/basead/ui/PlayerView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 476
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/anythink/basead/ui/FullScreenAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenAdView;->j()Lcom/anythink/basead/c/h;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/d/h;Lcom/anythink/basead/c/h;)V

    .line 477
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView;->v:Lcom/anythink/basead/ui/PlayerView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/PlayerView;->pause()V

    .line 479
    :cond_1a
    return-void
.end method

.method protected final n()V
    .registers 1

    .line 528
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenAdView;->i()V

    .line 529
    return-void
.end method

.method public setIsShowEndCard(Z)V
    .registers 2

    .line 86
    iput-boolean p1, p0, Lcom/anythink/basead/ui/FullScreenAdView;->e:Z

    .line 87
    return-void
.end method

.method public setListener(Lcom/anythink/basead/f/b$b;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/anythink/basead/ui/FullScreenAdView;->C:Lcom/anythink/basead/f/b$b;

    .line 75
    return-void
.end method

.method public setShowBannerTime(J)V
    .registers 3

    .line 78
    iput-wide p1, p0, Lcom/anythink/basead/ui/FullScreenAdView;->D:J

    .line 79
    return-void
.end method
