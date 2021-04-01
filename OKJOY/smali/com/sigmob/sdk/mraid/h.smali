.class public Lcom/sigmob/sdk/mraid/h;
.super Ljava/lang/Object;


# instance fields
.field private final A:Lcom/sigmob/sdk/mraid/f;

.field private final B:Lcom/sigmob/sdk/mraid/f;

.field private a:Z

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/Context;

.field private final d:Lcom/sigmob/sdk/base/models/PlacementType;

.field private final e:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field private final f:Landroid/widget/FrameLayout;

.field private g:Ljava/lang/Integer;

.field private h:Ljava/lang/String;

.field private i:Landroid/view/ViewGroup;

.field private final j:Lcom/sigmob/sdk/mraid/l;

.field private final k:Lcom/sigmob/sdk/mraid/w;

.field private l:Lcom/sigmob/sdk/base/models/ViewState;

.field private m:Lcom/sigmob/sdk/mraid/i;

.field private n:Lcom/sigmob/sdk/mraid/n;

.field private o:Lcom/sigmob/sdk/mraid/aa;

.field private p:Lcom/sigmob/sdk/mraid/o;

.field private q:Lcom/sigmob/sdk/mraid/MraidWebView;

.field private r:Lcom/sigmob/sdk/mraid/MraidWebView;

.field private final s:Lcom/sigmob/sdk/mraid/d;

.field private final t:Lcom/sigmob/sdk/mraid/d;

.field private u:Lcom/sigmob/sdk/mraid/k;

.field private v:Ljava/lang/Integer;

.field private w:Z

.field private x:Lcom/sigmob/sdk/mraid/v;

.field private final y:Lcom/sigmob/sdk/mraid/s;

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/PlacementType;)V
    .registers 11

    new-instance v4, Lcom/sigmob/sdk/mraid/d;

    invoke-direct {v4, p2, p3}, Lcom/sigmob/sdk/mraid/d;-><init>(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/PlacementType;)V

    new-instance v5, Lcom/sigmob/sdk/mraid/d;

    sget-object v0, Lcom/sigmob/sdk/base/models/PlacementType;->INTERSTITIAL:Lcom/sigmob/sdk/base/models/PlacementType;

    invoke-direct {v5, p2, v0}, Lcom/sigmob/sdk/mraid/d;-><init>(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/PlacementType;)V

    new-instance v6, Lcom/sigmob/sdk/mraid/l;

    invoke-direct {v6}, Lcom/sigmob/sdk/mraid/l;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/sigmob/sdk/mraid/h;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/PlacementType;Lcom/sigmob/sdk/mraid/d;Lcom/sigmob/sdk/mraid/d;Lcom/sigmob/sdk/mraid/l;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/PlacementType;Lcom/sigmob/sdk/mraid/d;Lcom/sigmob/sdk/mraid/d;Lcom/sigmob/sdk/mraid/l;)V
    .registers 10

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/mraid/h;->a:Z

    sget-object v0, Lcom/sigmob/sdk/base/models/ViewState;->LOADING:Lcom/sigmob/sdk/base/models/ViewState;

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/h;->l:Lcom/sigmob/sdk/base/models/ViewState;

    new-instance v0, Lcom/sigmob/sdk/mraid/k;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/mraid/k;-><init>(Lcom/sigmob/sdk/mraid/h;)V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/h;->u:Lcom/sigmob/sdk/mraid/k;

    iput-boolean v1, p0, Lcom/sigmob/sdk/mraid/h;->w:Z

    sget-object v0, Lcom/sigmob/sdk/mraid/v;->c:Lcom/sigmob/sdk/mraid/v;

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/h;->x:Lcom/sigmob/sdk/mraid/v;

    iput-boolean v1, p0, Lcom/sigmob/sdk/mraid/h;->z:Z

    new-instance v0, Lcom/sigmob/sdk/mraid/h$2;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/mraid/h$2;-><init>(Lcom/sigmob/sdk/mraid/h;)V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/h;->A:Lcom/sigmob/sdk/mraid/f;

    new-instance v0, Lcom/sigmob/sdk/mraid/h$3;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/mraid/h$3;-><init>(Lcom/sigmob/sdk/mraid/h;)V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/h;->B:Lcom/sigmob/sdk/mraid/f;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/h;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/u;->a(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/sigmob/sdk/mraid/h;->e:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_98

    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/h;->b:Ljava/lang/ref/WeakReference;

    :goto_42
    iput-object p3, p0, Lcom/sigmob/sdk/mraid/h;->d:Lcom/sigmob/sdk/base/models/PlacementType;

    iput-object p4, p0, Lcom/sigmob/sdk/mraid/h;->s:Lcom/sigmob/sdk/mraid/d;

    iput-object p5, p0, Lcom/sigmob/sdk/mraid/h;->t:Lcom/sigmob/sdk/mraid/d;

    iput-object p6, p0, Lcom/sigmob/sdk/mraid/h;->j:Lcom/sigmob/sdk/mraid/l;

    sget-object v0, Lcom/sigmob/sdk/base/models/ViewState;->LOADING:Lcom/sigmob/sdk/base/models/ViewState;

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/h;->l:Lcom/sigmob/sdk/base/models/ViewState;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/mraid/w;

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/h;->c:Landroid/content/Context;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {v1, v2, v0}, Lcom/sigmob/sdk/mraid/w;-><init>(Landroid/content/Context;F)V

    iput-object v1, p0, Lcom/sigmob/sdk/mraid/h;->k:Lcom/sigmob/sdk/mraid/w;

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/h;->f:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/sigmob/sdk/mraid/h$1;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/mraid/h$1;-><init>(Lcom/sigmob/sdk/mraid/h;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->u:Lcom/sigmob/sdk/mraid/k;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/k;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->s:Lcom/sigmob/sdk/mraid/d;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->A:Lcom/sigmob/sdk/mraid/f;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/d;->a(Lcom/sigmob/sdk/mraid/f;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->t:Lcom/sigmob/sdk/mraid/d;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->B:Lcom/sigmob/sdk/mraid/f;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/d;->a(Lcom/sigmob/sdk/mraid/f;)V

    new-instance v0, Lcom/sigmob/sdk/mraid/s;

    invoke-direct {v0}, Lcom/sigmob/sdk/mraid/s;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/h;->y:Lcom/sigmob/sdk/mraid/s;

    return-void

    :cond_98
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/h;->b:Ljava/lang/ref/WeakReference;

    goto :goto_42
.end method

.method private A()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->t:Lcom/sigmob/sdk/mraid/d;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/d;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/h;->r:Lcom/sigmob/sdk/mraid/MraidWebView;

    return-void
.end method

.method private B()Landroid/view/ViewGroup;
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->i:Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->i:Landroid/view/ViewGroup;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->f:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/common/utils/ai;->a(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1c

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_6

    :cond_1c
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->f:Landroid/widget/FrameLayout;

    goto :goto_6
.end method

.method private C()Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->i:Landroid/view/ViewGroup;

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/sigmob/sdk/mraid/h;->B()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/h;->i:Landroid/view/ViewGroup;

    :cond_a
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->i:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic a(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/i;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->m:Lcom/sigmob/sdk/mraid/i;

    return-object v0
.end method

.method static synthetic a(Lcom/sigmob/sdk/mraid/h;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/h;->g:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic a(Lcom/sigmob/sdk/mraid/h;Ljava/lang/String;Ljava/util/Map;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/mraid/h;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static a(Lcom/sigmob/sdk/mraid/i;Lcom/sigmob/sdk/base/models/ViewState;Lcom/sigmob/sdk/base/models/ViewState;)V
    .registers 3

    invoke-static {p0}, Lcom/sigmob/sdk/base/common/utils/u;->a(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/utils/u;->a(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/sigmob/sdk/base/common/utils/u;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .registers 7

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->j:Lcom/sigmob/sdk/mraid/l;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/l;->a()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/h;->f()Lcom/sigmob/sdk/mraid/MraidWebView;

    move-result-object v0

    if-nez v0, :cond_c

    :goto_b
    return-void

    :cond_c
    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->j:Lcom/sigmob/sdk/mraid/l;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/view/View;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sigmob/sdk/mraid/h;->f:Landroid/widget/FrameLayout;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/mraid/l;->a([Landroid/view/View;)Lcom/sigmob/sdk/mraid/m;

    move-result-object v1

    new-instance v2, Lcom/sigmob/sdk/mraid/h$8;

    invoke-direct {v2, p0, v0, p1}, Lcom/sigmob/sdk/mraid/h$8;-><init>(Lcom/sigmob/sdk/mraid/h;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/mraid/m;->a(Ljava/lang/Runnable;)V

    goto :goto_b
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_2
    const-string v0, "x"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "y"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "ctime"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "state"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_d4

    :cond_3a
    :goto_3a
    packed-switch v0, :pswitch_data_ee

    :goto_3d
    return-void

    :sswitch_3e
    const-string v7, "skipAd"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3a

    move v0, v1

    goto :goto_3a

    :sswitch_48
    const-string v7, "reward"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3a

    move v0, v2

    goto :goto_3a

    :sswitch_52
    const-string v7, "voice"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3a

    const/4 v0, 0x2

    goto :goto_3a

    :sswitch_5c
    const-string v7, "endcardShow"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3a

    const/4 v0, 0x3

    goto :goto_3a

    :sswitch_66
    const-string v7, "companionClick"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3a

    const/4 v0, 0x4

    goto :goto_3a

    :sswitch_70
    const-string v7, "showSkipTime"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3a

    const/4 v0, 0x5

    goto :goto_3a

    :pswitch_7a
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_7e} :catch_8d

    move-result-object v0

    :try_start_7f
    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_82} :catch_cf

    move-result-object v0

    :goto_83
    :try_start_83
    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->m:Lcom/sigmob/sdk/mraid/i;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v1, v0}, Lcom/sigmob/sdk/mraid/i;->b(F)V

    goto :goto_3d

    :catch_8d
    move-exception v0

    goto :goto_3d

    :pswitch_8f
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_93
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_93} :catch_8d

    move-result-object v0

    :try_start_94
    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_94 .. :try_end_97} :catch_d1

    move-result-object v0

    :goto_98
    :try_start_98
    iget-object v3, p0, Lcom/sigmob/sdk/mraid/h;->m:Lcom/sigmob/sdk/mraid/i;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v3, v0}, Lcom/sigmob/sdk/mraid/i;->a(F)V

    :pswitch_a1
    const-string v0, "true"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b1

    const-string v0, "1"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b8

    :cond_b1
    move v0, v2

    :goto_b2
    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->m:Lcom/sigmob/sdk/mraid/i;

    invoke-interface {v1, v0}, Lcom/sigmob/sdk/mraid/i;->b(Z)V

    goto :goto_3d

    :cond_b8
    move v0, v1

    goto :goto_b2

    :pswitch_ba
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->m:Lcom/sigmob/sdk/mraid/i;

    invoke-interface {v0}, Lcom/sigmob/sdk/mraid/i;->d()V

    goto/16 :goto_3d

    :pswitch_c1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->m:Lcom/sigmob/sdk/mraid/i;

    invoke-interface {v0, v3, v4}, Lcom/sigmob/sdk/mraid/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3d

    :pswitch_c8
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->m:Lcom/sigmob/sdk/mraid/i;

    invoke-interface {v0}, Lcom/sigmob/sdk/mraid/i;->e()V
    :try_end_cd
    .catch Ljava/lang/Throwable; {:try_start_98 .. :try_end_cd} :catch_8d

    goto/16 :goto_3d

    :catch_cf
    move-exception v1

    goto :goto_83

    :catch_d1
    move-exception v3

    goto :goto_98

    nop

    :sswitch_data_d4
    .sparse-switch
        -0x5ff9bff8 -> :sswitch_5c
        -0x41b70624 -> :sswitch_66
        -0x37b0b0d1 -> :sswitch_48
        -0x35ad75fe -> :sswitch_3e
        0x6b2e132 -> :sswitch_52
        0x4d18c709 -> :sswitch_70
    .end sparse-switch

    :pswitch_data_ee
    .packed-switch 0x0
        :pswitch_7a
        :pswitch_8f
        :pswitch_a1
        :pswitch_ba
        :pswitch_c1
        :pswitch_c8
    .end packed-switch
.end method

.method static synthetic b(Lcom/sigmob/sdk/mraid/h;)Landroid/widget/FrameLayout;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->f:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private b(Lcom/sigmob/sdk/base/models/ViewState;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MRAID state set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->l:Lcom/sigmob/sdk/base/models/ViewState;

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/h;->l:Lcom/sigmob/sdk/base/models/ViewState;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->s:Lcom/sigmob/sdk/mraid/d;

    invoke-virtual {v1, p1}, Lcom/sigmob/sdk/mraid/d;->a(Lcom/sigmob/sdk/base/models/ViewState;)V

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->t:Lcom/sigmob/sdk/mraid/d;

    invoke-virtual {v1}, Lcom/sigmob/sdk/mraid/d;->j()Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->t:Lcom/sigmob/sdk/mraid/d;

    invoke-virtual {v1, p1}, Lcom/sigmob/sdk/mraid/d;->a(Lcom/sigmob/sdk/base/models/ViewState;)V

    :cond_2c
    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->m:Lcom/sigmob/sdk/mraid/i;

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->m:Lcom/sigmob/sdk/mraid/i;

    invoke-static {v1, v0, p1}, Lcom/sigmob/sdk/mraid/h;->a(Lcom/sigmob/sdk/mraid/i;Lcom/sigmob/sdk/base/models/ViewState;Lcom/sigmob/sdk/base/models/ViewState;)V

    :cond_35
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/mraid/h;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/sigmob/sdk/mraid/h;Ljava/lang/String;Ljava/util/Map;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/mraid/h;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_b4

    :cond_8
    :goto_8
    packed-switch v0, :pswitch_data_de

    :goto_b
    return-void

    :sswitch_c
    const-string v1, "AdClickThru"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x0

    goto :goto_8

    :sswitch_16
    const-string v1, "AdError"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    :sswitch_20
    const-string v1, "AdImpression"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x2

    goto :goto_8

    :sswitch_2a
    const-string v1, "AdPaused"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x3

    goto :goto_8

    :sswitch_34
    const-string v1, "AdPlaying"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x4

    goto :goto_8

    :sswitch_3e
    const-string v1, "AdVideoComplete"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x5

    goto :goto_8

    :sswitch_48
    const-string v1, "AdVideoFirstQuartile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x6

    goto :goto_8

    :sswitch_52
    const-string v1, "AdVideoThirdQuartile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x7

    goto :goto_8

    :sswitch_5c
    const-string v1, "AdVideoMidpoint"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x8

    goto :goto_8

    :sswitch_67
    const-string v1, "AdVideoStart"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x9

    goto :goto_8

    :pswitch_72
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->p:Lcom/sigmob/sdk/mraid/o;

    invoke-interface {v0, p2}, Lcom/sigmob/sdk/mraid/o;->a(Ljava/util/Map;)V

    goto :goto_b

    :pswitch_78
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->p:Lcom/sigmob/sdk/mraid/o;

    invoke-interface {v0}, Lcom/sigmob/sdk/mraid/o;->a()V

    goto :goto_b

    :pswitch_7e
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->p:Lcom/sigmob/sdk/mraid/o;

    invoke-interface {v0}, Lcom/sigmob/sdk/mraid/o;->b()V

    goto :goto_b

    :pswitch_84
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->p:Lcom/sigmob/sdk/mraid/o;

    invoke-interface {v0}, Lcom/sigmob/sdk/mraid/o;->c()V

    goto :goto_b

    :pswitch_8a
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->p:Lcom/sigmob/sdk/mraid/o;

    invoke-interface {v0}, Lcom/sigmob/sdk/mraid/o;->d()V

    goto/16 :goto_b

    :pswitch_91
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->p:Lcom/sigmob/sdk/mraid/o;

    invoke-interface {v0}, Lcom/sigmob/sdk/mraid/o;->e()V

    goto/16 :goto_b

    :pswitch_98
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->p:Lcom/sigmob/sdk/mraid/o;

    invoke-interface {v0}, Lcom/sigmob/sdk/mraid/o;->f()V

    goto/16 :goto_b

    :pswitch_9f
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->p:Lcom/sigmob/sdk/mraid/o;

    invoke-interface {v0}, Lcom/sigmob/sdk/mraid/o;->g()V

    goto/16 :goto_b

    :pswitch_a6
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->p:Lcom/sigmob/sdk/mraid/o;

    invoke-interface {v0}, Lcom/sigmob/sdk/mraid/o;->h()V

    goto/16 :goto_b

    :pswitch_ad
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->p:Lcom/sigmob/sdk/mraid/o;

    invoke-interface {v0}, Lcom/sigmob/sdk/mraid/o;->i()V

    goto/16 :goto_b

    :sswitch_data_b4
    .sparse-switch
        -0x67d2f0af -> :sswitch_2a
        -0x648cc154 -> :sswitch_20
        -0x5b14d70e -> :sswitch_52
        -0x369ee9a0 -> :sswitch_5c
        0x754eb51 -> :sswitch_3e
        0x160d1d3b -> :sswitch_48
        0x1d1b8b85 -> :sswitch_16
        0x332b014a -> :sswitch_67
        0x3d13385c -> :sswitch_c
        0x7f231e6b -> :sswitch_34
    .end sparse-switch

    :pswitch_data_de
    .packed-switch 0x0
        :pswitch_72
        :pswitch_78
        :pswitch_7e
        :pswitch_84
        :pswitch_8a
        :pswitch_91
        :pswitch_98
        :pswitch_9f
        :pswitch_a6
        :pswitch_ad
    .end packed-switch
.end method

.method static synthetic c(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/d;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->t:Lcom/sigmob/sdk/mraid/d;

    return-object v0
.end method

.method static synthetic d(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/d;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->s:Lcom/sigmob/sdk/mraid/d;

    return-object v0
.end method

.method static synthetic e(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/n;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->n:Lcom/sigmob/sdk/mraid/n;

    return-object v0
.end method

.method static synthetic f(Lcom/sigmob/sdk/mraid/h;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/mraid/h;->a:Z

    return v0
.end method

.method static synthetic g(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/o;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->p:Lcom/sigmob/sdk/mraid/o;

    return-object v0
.end method

.method static synthetic h(Lcom/sigmob/sdk/mraid/h;)Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->g:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic i(Lcom/sigmob/sdk/mraid/h;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic j(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/s;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->y:Lcom/sigmob/sdk/mraid/s;

    return-object v0
.end method

.method static synthetic k(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/base/models/ViewState;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->l:Lcom/sigmob/sdk/base/models/ViewState;

    return-object v0
.end method

.method static synthetic l(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/base/models/PlacementType;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->d:Lcom/sigmob/sdk/base/models/PlacementType;

    return-object v0
.end method

.method static synthetic m(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/w;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->k:Lcom/sigmob/sdk/mraid/w;

    return-object v0
.end method

.method static synthetic n(Lcom/sigmob/sdk/mraid/h;)Landroid/view/ViewGroup;
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/sdk/mraid/h;->B()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic o(Lcom/sigmob/sdk/mraid/h;)I
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/sdk/mraid/h;->y()I

    move-result v0

    return v0
.end method

.method private y()I
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private z()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->s:Lcom/sigmob/sdk/mraid/d;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/d;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/h;->q:Lcom/sigmob/sdk/mraid/MraidWebView;

    return-void
.end method


# virtual methods
.method a(III)I
    .registers 5

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->s:Lcom/sigmob/sdk/mraid/d;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/d;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/mraid/h;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method a(II)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->k:Lcom/sigmob/sdk/mraid/w;

    invoke-virtual {v0, v1, v1, p1, p2}, Lcom/sigmob/sdk/mraid/w;->a(IIII)V

    return-void
.end method

.method a(IIIILcom/sigmob/sdk/mraid/a;Z)V
    .registers 7

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .registers 8

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/h;->b:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->e:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRvAdSetting()Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;

    move-result-object v1

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->skip_seconds:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_23

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->e:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRvAdSetting()Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;->skip_seconds:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_23
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/sigmob/sdk/mraid/h$5;

    invoke-direct {v2, p0}, Lcom/sigmob/sdk/mraid/h$5;-><init>(Lcom/sigmob/sdk/mraid/h;)V

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public a(Landroid/webkit/ValueCallback;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->s:Lcom/sigmob/sdk/mraid/d;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/mraid/d;->a(Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method a(Landroid/widget/FrameLayout;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/h;->i:Landroid/view/ViewGroup;

    return-void
.end method

.method a(Lcom/sigmob/sdk/base/models/SigmobError;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->m:Lcom/sigmob/sdk/mraid/i;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->m:Lcom/sigmob/sdk/mraid/i;

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/mraid/i;->a(Lcom/sigmob/sdk/base/models/SigmobError;)V

    :cond_9
    return-void
.end method

.method a(Lcom/sigmob/sdk/base/models/ViewState;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/h;->l:Lcom/sigmob/sdk/base/models/ViewState;

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/views/BaseWebView;)V
    .registers 6

    const/4 v3, -0x1

    check-cast p1, Lcom/sigmob/sdk/mraid/MraidWebView;

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/h;->q:Lcom/sigmob/sdk/mraid/MraidWebView;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->q:Lcom/sigmob/sdk/mraid/MraidWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/MraidWebView;->a(Z)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->q:Lcom/sigmob/sdk/mraid/MraidWebView;

    new-instance v1, Lcom/sigmob/sdk/mraid/h$4;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/mraid/h$4;-><init>(Lcom/sigmob/sdk/mraid/h;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/MraidWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->s:Lcom/sigmob/sdk/mraid/d;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->q:Lcom/sigmob/sdk/mraid/MraidWebView;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/d;->a(Lcom/sigmob/sdk/mraid/MraidWebView;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->f:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->q:Lcom/sigmob/sdk/mraid/MraidWebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/h;->i()V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/mraid/aa;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/h;->o:Lcom/sigmob/sdk/mraid/aa;

    return-void
.end method

.method public a(Lcom/sigmob/sdk/mraid/i;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/h;->m:Lcom/sigmob/sdk/mraid/i;

    return-void
.end method

.method a(Lcom/sigmob/sdk/mraid/k;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/h;->u:Lcom/sigmob/sdk/mraid/k;

    return-void
.end method

.method public a(Lcom/sigmob/sdk/mraid/n;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/h;->n:Lcom/sigmob/sdk/mraid/n;

    return-void
.end method

.method public a(Lcom/sigmob/sdk/mraid/o;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/h;->p:Lcom/sigmob/sdk/mraid/o;

    return-void
.end method

.method a(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/sigmob/sdk/mraid/j;)V
    .registers 7

    const/4 v3, -0x1

    new-instance v0, Lcom/sigmob/sdk/mraid/MraidWebView;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/mraid/MraidWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/h;->q:Lcom/sigmob/sdk/mraid/MraidWebView;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->q:Lcom/sigmob/sdk/mraid/MraidWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/MraidWebView;->a(Z)V

    if-eqz p2, :cond_18

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->q:Lcom/sigmob/sdk/mraid/MraidWebView;

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lcom/sigmob/sdk/mraid/j;->a(Lcom/sigmob/sdk/mraid/MraidWebView;Lcom/sigmob/sdk/base/common/w;)V

    :cond_18
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->s:Lcom/sigmob/sdk/mraid/d;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->q:Lcom/sigmob/sdk/mraid/MraidWebView;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/d;->a(Lcom/sigmob/sdk/mraid/MraidWebView;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->f:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->q:Lcom/sigmob/sdk/mraid/MraidWebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->s:Lcom/sigmob/sdk/mraid/d;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/mraid/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->s:Lcom/sigmob/sdk/mraid/d;

    invoke-virtual {v0, p1, p2}, Lcom/sigmob/sdk/mraid/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method a(Ljava/net/URI;Lcom/sigmob/sdk/videoAd/f;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->m:Lcom/sigmob/sdk/mraid/i;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->m:Lcom/sigmob/sdk/mraid/i;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sigmob/sdk/mraid/i;->a(Ljava/net/URI;Lcom/sigmob/sdk/videoAd/f;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method a(Ljava/net/URI;Z)V
    .registers 3

    return-void
.end method

.method public a(Z)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/mraid/h;->z:Z

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->q:Lcom/sigmob/sdk/mraid/MraidWebView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->q:Lcom/sigmob/sdk/mraid/MraidWebView;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/mraid/MraidWebView;->b(Z)V

    :cond_c
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->r:Lcom/sigmob/sdk/mraid/MraidWebView;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->q:Lcom/sigmob/sdk/mraid/MraidWebView;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/mraid/MraidWebView;->b(Z)V

    :cond_15
    return-void
.end method

.method a(ZLcom/sigmob/sdk/mraid/v;)V
    .registers 6

    invoke-virtual {p0, p2}, Lcom/sigmob/sdk/mraid/h;->a(Lcom/sigmob/sdk/mraid/v;)Z

    move-result v0

    if-nez v0, :cond_1f

    new-instance v0, Lcom/sigmob/sdk/mraid/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to force orientation to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/mraid/g;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iput-boolean p1, p0, Lcom/sigmob/sdk/mraid/h;->w:Z

    iput-object p2, p0, Lcom/sigmob/sdk/mraid/h;->x:Lcom/sigmob/sdk/mraid/v;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->l:Lcom/sigmob/sdk/base/models/ViewState;

    sget-object v1, Lcom/sigmob/sdk/base/models/ViewState;->EXPANDED:Lcom/sigmob/sdk/base/models/ViewState;

    if-eq v0, v1, :cond_33

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->d:Lcom/sigmob/sdk/base/models/PlacementType;

    sget-object v1, Lcom/sigmob/sdk/base/models/PlacementType;->INTERSTITIAL:Lcom/sigmob/sdk/base/models/PlacementType;

    if-ne v0, v1, :cond_36

    iget-boolean v0, p0, Lcom/sigmob/sdk/mraid/h;->z:Z

    if-nez v0, :cond_36

    :cond_33
    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/h;->n()V

    :cond_36
    return-void
.end method

.method a(Landroid/webkit/ConsoleMessage;)Z
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->o:Lcom/sigmob/sdk/mraid/aa;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->o:Lcom/sigmob/sdk/mraid/aa;

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/mraid/aa;->a(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method a(Lcom/sigmob/sdk/mraid/v;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/sigmob/sdk/mraid/v;->c:Lcom/sigmob/sdk/mraid/v;

    if-ne p1, v0, :cond_7

    :cond_6
    :goto_6
    return v1

    :cond_7
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_13

    move v1, v2

    goto :goto_6

    :cond_13
    :try_start_13
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x0

    invoke-virtual {v3, v4, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_24} :catch_33

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_6

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid/v;->a()I

    move-result v3

    if-ne v0, v3, :cond_36

    move v0, v1

    :goto_31
    move v1, v0

    goto :goto_6

    :catch_33
    move-exception v0

    move v1, v2

    goto :goto_6

    :cond_36
    move v0, v2

    goto :goto_31
.end method

.method a(Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->o:Lcom/sigmob/sdk/mraid/aa;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->o:Lcom/sigmob/sdk/mraid/aa;

    invoke-interface {v0, p1, p2}, Lcom/sigmob/sdk/mraid/aa;->a(Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-virtual {p2}, Landroid/webkit/JsResult;->confirm()V

    const/4 v0, 0x1

    goto :goto_a
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->s:Lcom/sigmob/sdk/mraid/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/d;->a(Z)V

    return-void
.end method

.method b(I)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->x:Lcom/sigmob/sdk/mraid/v;

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/mraid/h;->a(Lcom/sigmob/sdk/mraid/v;)Z

    move-result v1

    if-nez v1, :cond_31

    :cond_12
    new-instance v0, Lcom/sigmob/sdk/mraid/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to lock orientation to unsupported value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/h;->x:Lcom/sigmob/sdk/mraid/v;

    invoke-virtual {v2}, Lcom/sigmob/sdk/mraid/v;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/mraid/g;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->v:Ljava/lang/Integer;

    if-nez v1, :cond_3f

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/sigmob/sdk/mraid/h;->v:Ljava/lang/Integer;

    :cond_3f
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->s:Lcom/sigmob/sdk/mraid/d;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/mraid/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/sigmob/sdk/mraid/j;)V
    .registers 7

    const/4 v3, -0x1

    new-instance v0, Lcom/sigmob/sdk/mraid/MraidWebView;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/mraid/MraidWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/h;->q:Lcom/sigmob/sdk/mraid/MraidWebView;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->q:Lcom/sigmob/sdk/mraid/MraidWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/MraidWebView;->a(Z)V

    if-eqz p2, :cond_18

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->q:Lcom/sigmob/sdk/mraid/MraidWebView;

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lcom/sigmob/sdk/mraid/j;->a(Lcom/sigmob/sdk/mraid/MraidWebView;Lcom/sigmob/sdk/base/common/w;)V

    :cond_18
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->s:Lcom/sigmob/sdk/mraid/d;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->q:Lcom/sigmob/sdk/mraid/MraidWebView;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/d;->a(Lcom/sigmob/sdk/mraid/MraidWebView;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->f:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->q:Lcom/sigmob/sdk/mraid/MraidWebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->s:Lcom/sigmob/sdk/mraid/d;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/mraid/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected b(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/sigmob/sdk/mraid/h;->a:Z

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->n:Lcom/sigmob/sdk/mraid/n;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->n:Lcom/sigmob/sdk/mraid/n;

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/mraid/n;->a(Z)V

    :cond_b
    return-void
.end method

.method public c()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->s:Lcom/sigmob/sdk/mraid/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/d;->a(Z)V

    return-void
.end method

.method public d()V
    .registers 7

    const/4 v5, 0x0

    new-instance v0, Lcom/sigmob/sdk/base/models/ExposureChange;

    const/high16 v1, 0x42c80000    # 100.0f

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/sigmob/sdk/mraid/h;->B()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    invoke-direct {p0}, Lcom/sigmob/sdk/mraid/h;->B()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/sdk/base/models/ExposureChange;-><init>(FLandroid/graphics/Rect;Ljava/util/List;)V

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->s:Lcom/sigmob/sdk/mraid/d;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/mraid/d;->a(Lcom/sigmob/sdk/base/models/ExposureChange;)V

    return-void
.end method

.method public e()Ljava/lang/Integer;
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->g:Ljava/lang/Integer;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->s:Lcom/sigmob/sdk/mraid/d;

    new-instance v1, Lcom/sigmob/sdk/mraid/h$6;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/mraid/h$6;-><init>(Lcom/sigmob/sdk/mraid/h;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/d;->b(Landroid/webkit/ValueCallback;)V

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public f()Lcom/sigmob/sdk/mraid/MraidWebView;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->t:Lcom/sigmob/sdk/mraid/d;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/d;->i()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->r:Lcom/sigmob/sdk/mraid/MraidWebView;

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->q:Lcom/sigmob/sdk/mraid/MraidWebView;

    goto :goto_a
.end method

.method g()Z
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/h;->f()Lcom/sigmob/sdk/mraid/MraidWebView;

    move-result-object v1

    if-nez v1, :cond_12

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0

    :cond_12
    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->d:Lcom/sigmob/sdk/base/models/PlacementType;

    sget-object v2, Lcom/sigmob/sdk/base/models/PlacementType;->INLINE:Lcom/sigmob/sdk/base/models/PlacementType;

    if-eq v1, v2, :cond_1a

    const/4 v0, 0x1

    goto :goto_11

    :cond_1a
    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->y:Lcom/sigmob/sdk/mraid/s;

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/h;->f()Lcom/sigmob/sdk/mraid/MraidWebView;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sigmob/sdk/mraid/s;->a(Landroid/app/Activity;Landroid/view/View;)Z

    move-result v0

    goto :goto_11
.end method

.method h()V
    .registers 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->T()I

    move-result v0

    if-ne v0, v6, :cond_5e

    const-string v0, "portrait"

    :goto_e
    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/h;->k:Lcom/sigmob/sdk/mraid/w;

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v3, v1}, Lcom/sigmob/sdk/mraid/w;->a(II)V

    invoke-direct {p0}, Lcom/sigmob/sdk/mraid/h;->B()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/h;->k:Lcom/sigmob/sdk/mraid/w;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Lcom/sigmob/sdk/mraid/w;->a(IIII)V

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/h;->k:Lcom/sigmob/sdk/mraid/w;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Lcom/sigmob/sdk/mraid/w;->c(IIII)V

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/h;->k:Lcom/sigmob/sdk/mraid/w;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v2, v5, v5, v3, v1}, Lcom/sigmob/sdk/mraid/w;->b(IIII)V

    new-instance v1, Lcom/sigmob/sdk/base/models/CurrentAppOrientation;

    invoke-direct {v1, v0, v6}, Lcom/sigmob/sdk/base/models/CurrentAppOrientation;-><init>(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->s:Lcom/sigmob/sdk/mraid/d;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/d;->a(Lcom/sigmob/sdk/base/models/CurrentAppOrientation;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->s:Lcom/sigmob/sdk/mraid/d;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->k:Lcom/sigmob/sdk/mraid/w;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/d;->a(Lcom/sigmob/sdk/mraid/w;)V

    return-void

    :cond_5e
    const-string v0, "landscape"

    goto :goto_e
.end method

.method i()V
    .registers 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->s:Lcom/sigmob/sdk/mraid/d;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->y:Lcom/sigmob/sdk/mraid/s;

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/h;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/mraid/s;->b(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/h;->y:Lcom/sigmob/sdk/mraid/s;

    iget-object v3, p0, Lcom/sigmob/sdk/mraid/h;->c:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/sigmob/sdk/mraid/s;->a(Landroid/content/Context;)Z

    move-result v2

    iget-object v3, p0, Lcom/sigmob/sdk/mraid/h;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/sigmob/sdk/mraid/s;->d(Landroid/content/Context;)Z

    move-result v3

    iget-object v4, p0, Lcom/sigmob/sdk/mraid/h;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/sigmob/sdk/mraid/s;->c(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/h;->g()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/sigmob/sdk/mraid/d;->a(ZZZZZZZ)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->s:Lcom/sigmob/sdk/mraid/d;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->d:Lcom/sigmob/sdk/base/models/PlacementType;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/d;->a(Lcom/sigmob/sdk/base/models/PlacementType;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->s:Lcom/sigmob/sdk/mraid/d;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->e:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRvAdSetting()Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/d;->a(Lcom/sigmob/sdk/base/models/sigdsp/pb/RvAdSetting;)V

    new-instance v0, Lcom/sigmob/sdk/base/models/AppInfo;

    const-string v1, "2.17.1"

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->at()Ljava/lang/String;

    move-result-object v2

    const-string v3, "2"

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/sdk/base/models/AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->s:Lcom/sigmob/sdk/mraid/d;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/mraid/d;->a(Lcom/sigmob/sdk/base/models/AppInfo;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->e:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a9

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->e:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_url()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->e:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isVideoExist()Z

    move-result v1

    if-eqz v1, :cond_12e

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_fc

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->e:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_76
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->e:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    if-eqz v0, :cond_118

    new-instance v0, Lcom/sigmob/sdk/base/models/VideoItem;

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/h;->e:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v2

    iget-object v2, v2, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    iget-object v2, v2, Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;->width:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/sigmob/sdk/mraid/h;->e:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v3

    iget-object v3, v3, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    iget-object v3, v3, Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;->height:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/sdk/base/models/VideoItem;-><init>(Ljava/lang/String;II)V

    :goto_a1
    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->s:Lcom/sigmob/sdk/mraid/d;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/mraid/d;->a(Lcom/sigmob/sdk/base/models/VideoItem;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/h;->e()Ljava/lang/Integer;

    :cond_a9
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->e:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->newBuilder()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->html_snippet(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->html_url(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->deeplink_url(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->landing_page(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->build()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->s:Lcom/sigmob/sdk/mraid/d;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/mraid/d;->a(Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/h;->h()V

    sget-object v0, Lcom/sigmob/sdk/base/models/ViewState;->DEFAULT:Lcom/sigmob/sdk/base/models/ViewState;

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/mraid/h;->b(Lcom/sigmob/sdk/base/models/ViewState;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/h;->d()V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->s:Lcom/sigmob/sdk/mraid/d;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/d;->e()V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->s:Lcom/sigmob/sdk/mraid/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/d;->a(Z)V
    :try_end_e6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_e6} :catch_120

    :try_start_e6
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->s:Lcom/sigmob/sdk/mraid/d;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/d;->f()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/h;->n()V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->s:Lcom/sigmob/sdk/mraid/d;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->G()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/d;->a(Landroid/location/Location;)V
    :try_end_fb
    .catch Ljava/lang/Throwable; {:try_start_e6 .. :try_end_fb} :catch_127

    :goto_fb
    return-void

    :cond_fc
    :try_start_fc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->e:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_76

    :cond_118
    new-instance v0, Lcom/sigmob/sdk/base/models/VideoItem;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/sdk/base/models/VideoItem;-><init>(Ljava/lang/String;II)V
    :try_end_11f
    .catch Ljava/lang/Throwable; {:try_start_fc .. :try_end_11f} :catch_120

    goto :goto_a1

    :catch_120
    move-exception v0

    const-string v1, "handlePageLoad error"

    invoke-static {v1, v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_fb

    :catch_127
    move-exception v0

    :try_start_128
    const-string v0, "Failed to apply orientation."

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V
    :try_end_12d
    .catch Ljava/lang/Throwable; {:try_start_128 .. :try_end_12d} :catch_120

    goto :goto_fb

    :cond_12e
    move-object v1, v0

    goto/16 :goto_76
.end method

.method j()V
    .registers 2

    new-instance v0, Lcom/sigmob/sdk/mraid/h$7;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/mraid/h$7;-><init>(Lcom/sigmob/sdk/mraid/h;)V

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/mraid/h;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public k()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/mraid/h;->z:Z

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->q:Lcom/sigmob/sdk/mraid/MraidWebView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->q:Lcom/sigmob/sdk/mraid/MraidWebView;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/MraidWebView;->onResume()V

    :cond_c
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->r:Lcom/sigmob/sdk/mraid/MraidWebView;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->r:Lcom/sigmob/sdk/mraid/MraidWebView;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/MraidWebView;->onResume()V

    :cond_15
    return-void
.end method

.method public l()V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->j:Lcom/sigmob/sdk/mraid/l;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/l;->a()V

    :try_start_5
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->u:Lcom/sigmob/sdk/mraid/k;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/k;->a()V
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_a} :catch_1c

    :cond_a
    iget-boolean v0, p0, Lcom/sigmob/sdk/mraid/h;->z:Z

    if-nez v0, :cond_12

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid/h;->a(Z)V

    :cond_12
    invoke-direct {p0}, Lcom/sigmob/sdk/mraid/h;->z()V

    invoke-direct {p0}, Lcom/sigmob/sdk/mraid/h;->A()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/h;->o()V

    return-void

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Receiver not registered"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    throw v0
.end method

.method protected m()V
    .registers 5

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->q:Lcom/sigmob/sdk/mraid/MraidWebView;

    if-nez v0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->l:Lcom/sigmob/sdk/base/models/ViewState;

    sget-object v1, Lcom/sigmob/sdk/base/models/ViewState;->LOADING:Lcom/sigmob/sdk/base/models/ViewState;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->l:Lcom/sigmob/sdk/base/models/ViewState;

    sget-object v1, Lcom/sigmob/sdk/base/models/ViewState;->HIDDEN:Lcom/sigmob/sdk/base/models/ViewState;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->l:Lcom/sigmob/sdk/base/models/ViewState;

    sget-object v1, Lcom/sigmob/sdk/base/models/ViewState;->EXPANDED:Lcom/sigmob/sdk/base/models/ViewState;

    if-eq v0, v1, :cond_1e

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->d:Lcom/sigmob/sdk/base/models/PlacementType;

    sget-object v1, Lcom/sigmob/sdk/base/models/PlacementType;->INTERSTITIAL:Lcom/sigmob/sdk/base/models/PlacementType;

    if-ne v0, v1, :cond_21

    :cond_1e
    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/h;->o()V

    :cond_21
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->l:Lcom/sigmob/sdk/base/models/ViewState;

    sget-object v1, Lcom/sigmob/sdk/base/models/ViewState;->RESIZED:Lcom/sigmob/sdk/base/models/ViewState;

    if-eq v0, v1, :cond_2d

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->l:Lcom/sigmob/sdk/base/models/ViewState;

    sget-object v1, Lcom/sigmob/sdk/base/models/ViewState;->EXPANDED:Lcom/sigmob/sdk/base/models/ViewState;

    if-ne v0, v1, :cond_57

    :cond_2d
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->t:Lcom/sigmob/sdk/mraid/d;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/d;->i()Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->r:Lcom/sigmob/sdk/mraid/MraidWebView;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->r:Lcom/sigmob/sdk/mraid/MraidWebView;

    invoke-direct {p0}, Lcom/sigmob/sdk/mraid/h;->A()V

    :goto_3e
    sget-object v0, Lcom/sigmob/sdk/base/models/ViewState;->DEFAULT:Lcom/sigmob/sdk/base/models/ViewState;

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/mraid/h;->b(Lcom/sigmob/sdk/base/models/ViewState;)V

    goto :goto_5

    :cond_44
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->f:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->q:Lcom/sigmob/sdk/mraid/MraidWebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->f:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_3e

    :cond_57
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->l:Lcom/sigmob/sdk/base/models/ViewState;

    sget-object v1, Lcom/sigmob/sdk/base/models/ViewState;->DEFAULT:Lcom/sigmob/sdk/base/models/ViewState;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->f:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    sget-object v0, Lcom/sigmob/sdk/base/models/ViewState;->HIDDEN:Lcom/sigmob/sdk/base/models/ViewState;

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/mraid/h;->b(Lcom/sigmob/sdk/base/models/ViewState;)V

    goto :goto_5
.end method

.method n()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->x:Lcom/sigmob/sdk/mraid/v;

    sget-object v1, Lcom/sigmob/sdk/mraid/v;->c:Lcom/sigmob/sdk/mraid/v;

    if-ne v0, v1, :cond_28

    iget-boolean v0, p0, Lcom/sigmob/sdk/mraid/h;->w:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/h;->o()V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_20

    new-instance v0, Lcom/sigmob/sdk/mraid/g;

    const-string v1, "Unable to set MRAID expand orientation to \'none\'; expected passed in Activity Context."

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/mraid/g;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid/h;->b(I)V

    goto :goto_d

    :cond_28
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->x:Lcom/sigmob/sdk/mraid/v;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/v;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid/h;->b(I)V

    goto :goto_d
.end method

.method o()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->v:Ljava/lang/Integer;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h;->v:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/h;->v:Ljava/lang/Integer;

    return-void
.end method

.method public p()Landroid/widget/FrameLayout;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->f:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public q()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->c:Landroid/content/Context;

    return-object v0
.end method

.method r()Ljava/lang/ref/WeakReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->b:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method s()Lcom/sigmob/sdk/base/models/ViewState;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->l:Lcom/sigmob/sdk/base/models/ViewState;

    return-object v0
.end method

.method t()Ljava/lang/Integer;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->v:Ljava/lang/Integer;

    return-object v0
.end method

.method u()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/sigmob/sdk/mraid/h;->w:Z

    return v0
.end method

.method v()Lcom/sigmob/sdk/mraid/v;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->x:Lcom/sigmob/sdk/mraid/v;

    return-object v0
.end method

.method w()Lcom/sigmob/sdk/mraid/MraidWebView;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->q:Lcom/sigmob/sdk/mraid/MraidWebView;

    return-object v0
.end method

.method x()Lcom/sigmob/sdk/mraid/MraidWebView;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h;->r:Lcom/sigmob/sdk/mraid/MraidWebView;

    return-object v0
.end method
