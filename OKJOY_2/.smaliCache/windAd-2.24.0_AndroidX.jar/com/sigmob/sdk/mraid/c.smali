.class public Lcom/sigmob/sdk/mraid/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/mraid/c$c;,
        Lcom/sigmob/sdk/mraid/c$d;,
        Lcom/sigmob/sdk/mraid/c$b;,
        Lcom/sigmob/sdk/mraid/c$e;,
        Lcom/sigmob/sdk/mraid/c$f;,
        Lcom/sigmob/sdk/mraid/c$a;
    }
.end annotation


# instance fields
.field private final A:Lcom/sigmob/sdk/mraid/a$b;

.field private a:Z

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
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

.field private h:Landroid/view/ViewGroup;

.field private final i:Lcom/sigmob/sdk/mraid/c$d;

.field private final j:Lcom/sigmob/sdk/mraid/h;

.field private k:Lcom/sigmob/sdk/base/models/ViewState;

.field private l:Lcom/sigmob/sdk/mraid/c$a;

.field private m:Lcom/sigmob/sdk/mraid/c$e;

.field private n:Lcom/sigmob/sdk/mraid/k;

.field private o:Lcom/sigmob/sdk/mraid/c$f;

.field private p:Lcom/sigmob/sdk/mraid/MraidWebView;

.field private q:Lcom/sigmob/sdk/mraid/MraidWebView;

.field private final r:Lcom/sigmob/sdk/mraid/a;

.field private final s:Lcom/sigmob/sdk/mraid/a;

.field private t:Lcom/sigmob/sdk/mraid/c$c;

.field private u:Ljava/lang/Integer;

.field private v:Z

.field private w:Lcom/sigmob/sdk/mraid/g;

.field private final x:Lcom/sigmob/sdk/mraid/f;

.field private y:Z

.field private final z:Lcom/sigmob/sdk/mraid/a$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/PlacementType;)V
    .registers 11

    new-instance v4, Lcom/sigmob/sdk/mraid/a;

    invoke-direct {v4, p2, p3}, Lcom/sigmob/sdk/mraid/a;-><init>(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/PlacementType;)V

    new-instance v5, Lcom/sigmob/sdk/mraid/a;

    sget-object v0, Lcom/sigmob/sdk/base/models/PlacementType;->INTERSTITIAL:Lcom/sigmob/sdk/base/models/PlacementType;

    invoke-direct {v5, p2, v0}, Lcom/sigmob/sdk/mraid/a;-><init>(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/PlacementType;)V

    new-instance v6, Lcom/sigmob/sdk/mraid/c$d;

    invoke-direct {v6}, Lcom/sigmob/sdk/mraid/c$d;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/sigmob/sdk/mraid/c;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/PlacementType;Lcom/sigmob/sdk/mraid/a;Lcom/sigmob/sdk/mraid/a;Lcom/sigmob/sdk/mraid/c$d;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/PlacementType;Lcom/sigmob/sdk/mraid/a;Lcom/sigmob/sdk/mraid/a;Lcom/sigmob/sdk/mraid/c$d;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/mraid/c;->a:Z

    sget-object v0, Lcom/sigmob/sdk/base/models/ViewState;->LOADING:Lcom/sigmob/sdk/base/models/ViewState;

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/c;->k:Lcom/sigmob/sdk/base/models/ViewState;

    new-instance v0, Lcom/sigmob/sdk/mraid/c$c;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/mraid/c$c;-><init>(Lcom/sigmob/sdk/mraid/c;)V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/c;->t:Lcom/sigmob/sdk/mraid/c$c;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/mraid/c;->v:Z

    sget-object v1, Lcom/sigmob/sdk/mraid/g;->c:Lcom/sigmob/sdk/mraid/g;

    iput-object v1, p0, Lcom/sigmob/sdk/mraid/c;->w:Lcom/sigmob/sdk/mraid/g;

    iput-boolean v0, p0, Lcom/sigmob/sdk/mraid/c;->y:Z

    new-instance v0, Lcom/sigmob/sdk/mraid/c$2;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/mraid/c$2;-><init>(Lcom/sigmob/sdk/mraid/c;)V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/c;->z:Lcom/sigmob/sdk/mraid/a$b;

    new-instance v1, Lcom/sigmob/sdk/mraid/c$3;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/mraid/c$3;-><init>(Lcom/sigmob/sdk/mraid/c;)V

    iput-object v1, p0, Lcom/sigmob/sdk/mraid/c;->A:Lcom/sigmob/sdk/mraid/a$b;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/sigmob/sdk/mraid/c;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/sigmob/sdk/common/f/m;->a(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/sigmob/sdk/mraid/c;->e:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_41

    new-instance p2, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/sigmob/sdk/mraid/c;->b:Ljava/lang/ref/WeakReference;

    goto :goto_49

    :cond_41
    new-instance p1, Ljava/lang/ref/WeakReference;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/c;->b:Ljava/lang/ref/WeakReference;

    :goto_49
    iput-object p3, p0, Lcom/sigmob/sdk/mraid/c;->d:Lcom/sigmob/sdk/base/models/PlacementType;

    iput-object p4, p0, Lcom/sigmob/sdk/mraid/c;->r:Lcom/sigmob/sdk/mraid/a;

    iput-object p5, p0, Lcom/sigmob/sdk/mraid/c;->s:Lcom/sigmob/sdk/mraid/a;

    iput-object p6, p0, Lcom/sigmob/sdk/mraid/c;->i:Lcom/sigmob/sdk/mraid/c$d;

    sget-object p1, Lcom/sigmob/sdk/base/models/ViewState;->LOADING:Lcom/sigmob/sdk/base/models/ViewState;

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/c;->k:Lcom/sigmob/sdk/base/models/ViewState;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    new-instance p2, Lcom/sigmob/sdk/mraid/h;

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {p2, v2, p1}, Lcom/sigmob/sdk/mraid/h;-><init>(Landroid/content/Context;F)V

    iput-object p2, p0, Lcom/sigmob/sdk/mraid/c;->j:Lcom/sigmob/sdk/mraid/h;

    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/c;->f:Landroid/widget/FrameLayout;

    new-instance p1, Landroid/view/View;

    invoke-direct {p1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p2, Lcom/sigmob/sdk/mraid/c$1;

    invoke-direct {p2, p0}, Lcom/sigmob/sdk/mraid/c$1;-><init>(Lcom/sigmob/sdk/mraid/c;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/c;->t:Lcom/sigmob/sdk/mraid/c$c;

    invoke-virtual {p1, v2}, Lcom/sigmob/sdk/mraid/c$c;->a(Landroid/content/Context;)V

    invoke-virtual {p4, v0}, Lcom/sigmob/sdk/mraid/a;->a(Lcom/sigmob/sdk/mraid/a$b;)V

    invoke-virtual {p5, v1}, Lcom/sigmob/sdk/mraid/a;->a(Lcom/sigmob/sdk/mraid/a$b;)V

    new-instance p1, Lcom/sigmob/sdk/mraid/f;

    invoke-direct {p1}, Lcom/sigmob/sdk/mraid/f;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/c;->x:Lcom/sigmob/sdk/mraid/f;

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/mraid/c;)Lcom/sigmob/sdk/mraid/c$a;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/mraid/c;->l:Lcom/sigmob/sdk/mraid/c$a;

    return-object p0
.end method

.method static synthetic a(Lcom/sigmob/sdk/mraid/c;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/c;->g:Ljava/lang/Integer;

    return-object p1
.end method

.method private a(Lcom/sigmob/sdk/base/models/ViewState;)V
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

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->k:Lcom/sigmob/sdk/base/models/ViewState;

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/c;->k:Lcom/sigmob/sdk/base/models/ViewState;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/c;->r:Lcom/sigmob/sdk/mraid/a;

    invoke-virtual {v1, p1}, Lcom/sigmob/sdk/mraid/a;->a(Lcom/sigmob/sdk/base/models/ViewState;)V

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/c;->s:Lcom/sigmob/sdk/mraid/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/mraid/a;->h()Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/c;->s:Lcom/sigmob/sdk/mraid/a;

    invoke-virtual {v1, p1}, Lcom/sigmob/sdk/mraid/a;->a(Lcom/sigmob/sdk/base/models/ViewState;)V

    :cond_2c
    iget-object v1, p0, Lcom/sigmob/sdk/mraid/c;->l:Lcom/sigmob/sdk/mraid/c$a;

    if-eqz v1, :cond_33

    invoke-static {v1, v0, p1}, Lcom/sigmob/sdk/mraid/c;->a(Lcom/sigmob/sdk/mraid/c$a;Lcom/sigmob/sdk/base/models/ViewState;Lcom/sigmob/sdk/base/models/ViewState;)V

    :cond_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setViewState state set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/mraid/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static a(Lcom/sigmob/sdk/mraid/c$a;Lcom/sigmob/sdk/base/models/ViewState;Lcom/sigmob/sdk/base/models/ViewState;)V
    .registers 3

    invoke-static {p0}, Lcom/sigmob/sdk/common/f/m;->a(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/sigmob/sdk/common/f/m;->a(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/sigmob/sdk/common/f/m;->a(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/mraid/c;Ljava/lang/String;Ljava/util/Map;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/mraid/c;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .registers 12

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->i:Lcom/sigmob/sdk/mraid/c$d;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/c$d;->a()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/c;->f()Lcom/sigmob/sdk/mraid/MraidWebView;

    move-result-object v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    iget-object v1, p0, Lcom/sigmob/sdk/mraid/c;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/c;->j:Lcom/sigmob/sdk/mraid/h;

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v3, v1}, Lcom/sigmob/sdk/mraid/h;->a(II)V

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-direct {p0}, Lcom/sigmob/sdk/mraid/c;->s()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v3, p0, Lcom/sigmob/sdk/mraid/c;->j:Lcom/sigmob/sdk/mraid/h;

    const/4 v4, 0x0

    aget v5, v1, v4

    const/4 v6, 0x1

    aget v7, v1, v6

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {v3, v5, v7, v8, v9}, Lcom/sigmob/sdk/mraid/h;->a(IIII)V

    iget-object v3, p0, Lcom/sigmob/sdk/mraid/c;->j:Lcom/sigmob/sdk/mraid/h;

    aget v5, v1, v4

    aget v7, v1, v6

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v3, v5, v7, v8, v2}, Lcom/sigmob/sdk/mraid/h;->c(IIII)V

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/c;->j:Lcom/sigmob/sdk/mraid/h;

    aget v3, v1, v4

    aget v1, v1, v6

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v2, v3, v1, v4, v0}, Lcom/sigmob/sdk/mraid/h;->b(IIII)V

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/a;->D()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v6, :cond_72

    const-string v0, "portrait"

    goto :goto_74

    :cond_72
    const-string v0, "landscape"

    :goto_74
    new-instance v1, Lcom/sigmob/sdk/base/models/CurrentAppOrientation;

    invoke-direct {v1, v0, v6}, Lcom/sigmob/sdk/base/models/CurrentAppOrientation;-><init>(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->r:Lcom/sigmob/sdk/mraid/a;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/a;->a(Lcom/sigmob/sdk/base/models/CurrentAppOrientation;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->r:Lcom/sigmob/sdk/mraid/a;

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/c;->j:Lcom/sigmob/sdk/mraid/h;

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/mraid/a;->a(Lcom/sigmob/sdk/mraid/h;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->s:Lcom/sigmob/sdk/mraid/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/a;->g()Z

    move-result v0

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->s:Lcom/sigmob/sdk/mraid/a;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/a;->a(Lcom/sigmob/sdk/base/models/CurrentAppOrientation;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->s:Lcom/sigmob/sdk/mraid/a;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/c;->j:Lcom/sigmob/sdk/mraid/h;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/a;->a(Lcom/sigmob/sdk/mraid/h;)V

    :cond_99
    if-eqz p1, :cond_9e

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_9e
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    const-string v0, "ext"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ctime"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "state"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/sigmob/sdk/mraid/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_c2

    goto :goto_6a

    :sswitch_2f
    const-string v3, "showSkipTime"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6a

    const/4 v2, 0x5

    goto :goto_6a

    :sswitch_39
    const-string v3, "voice"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6a

    const/4 v2, 0x2

    goto :goto_6a

    :sswitch_43
    const-string v3, "skipAd"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6a

    move v2, v4

    goto :goto_6a

    :sswitch_4d
    const-string v3, "reward"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6a

    move v2, v5

    goto :goto_6a

    :sswitch_57
    const-string v3, "companionClick"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6a

    const/4 v2, 0x4

    goto :goto_6a

    :sswitch_61
    const-string v3, "endcardShow"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6a

    const/4 v2, 0x3

    :cond_6a
    :goto_6a
    const/4 p1, 0x0

    packed-switch v2, :pswitch_data_dc

    goto :goto_c0

    :pswitch_6f
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/c;->l:Lcom/sigmob/sdk/mraid/c$a;

    invoke-interface {p1}, Lcom/sigmob/sdk/mraid/c$a;->d()V

    goto :goto_c0

    :pswitch_75
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/c;->l:Lcom/sigmob/sdk/mraid/c$a;

    invoke-interface {p1, v0}, Lcom/sigmob/sdk/mraid/c$a;->a(Ljava/lang/String;)V

    goto :goto_c0

    :pswitch_7b
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/c;->l:Lcom/sigmob/sdk/mraid/c$a;

    invoke-interface {p1}, Lcom/sigmob/sdk/mraid/c$a;->c()V

    goto :goto_c0

    :pswitch_81
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1
    :try_end_85
    .catchall {:try_start_0 .. :try_end_85} :catchall_bf

    :try_start_85
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1
    :try_end_89
    .catchall {:try_start_85 .. :try_end_89} :catchall_8a

    goto :goto_8b

    :catchall_8a
    move-exception v0

    :goto_8b
    :try_start_8b
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->l:Lcom/sigmob/sdk/mraid/c$a;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/mraid/c$a;->a(F)V

    :pswitch_94
    const-string p1, "true"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a4

    const-string p1, "1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a5

    :cond_a4
    move v4, v5

    :cond_a5
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/c;->l:Lcom/sigmob/sdk/mraid/c$a;

    invoke-interface {p1, v4}, Lcom/sigmob/sdk/mraid/c$a;->a(Z)V

    goto :goto_c0

    :pswitch_ab
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1
    :try_end_af
    .catchall {:try_start_8b .. :try_end_af} :catchall_bf

    :try_start_af
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1
    :try_end_b3
    .catchall {:try_start_af .. :try_end_b3} :catchall_b4

    goto :goto_b5

    :catchall_b4
    move-exception p2

    :goto_b5
    :try_start_b5
    iget-object p2, p0, Lcom/sigmob/sdk/mraid/c;->l:Lcom/sigmob/sdk/mraid/c$a;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {p2, p1}, Lcom/sigmob/sdk/mraid/c$a;->b(F)V
    :try_end_be
    .catchall {:try_start_b5 .. :try_end_be} :catchall_bf

    goto :goto_c0

    :catchall_bf
    move-exception p1

    :goto_c0
    return-void

    nop

    :sswitch_data_c2
    .sparse-switch
        -0x5ff9bff8 -> :sswitch_61
        -0x41b70624 -> :sswitch_57
        -0x37b0b0d1 -> :sswitch_4d
        -0x35ad75fe -> :sswitch_43
        0x6b2e132 -> :sswitch_39
        0x4d18c709 -> :sswitch_2f
    .end sparse-switch

    :pswitch_data_dc
    .packed-switch 0x0
        :pswitch_ab
        :pswitch_81
        :pswitch_94
        :pswitch_7b
        :pswitch_75
        :pswitch_6f
    .end packed-switch
.end method

.method static synthetic b(Lcom/sigmob/sdk/mraid/c;)Landroid/widget/FrameLayout;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/mraid/c;->f:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic b(Lcom/sigmob/sdk/mraid/c;Ljava/lang/String;Ljava/util/Map;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/mraid/c;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_b0

    goto/16 :goto_6f

    :sswitch_9
    const-string v0, "AdPlaying"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6f

    const/4 p1, 0x4

    goto :goto_70

    :sswitch_13
    const-string v0, "AdClickThru"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6f

    const/4 p1, 0x0

    goto :goto_70

    :sswitch_1d
    const-string v0, "AdVideoStart"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6f

    const/16 p1, 0x9

    goto :goto_70

    :sswitch_28
    const-string v0, "AdError"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6f

    const/4 p1, 0x1

    goto :goto_70

    :sswitch_32
    const-string v0, "AdVideoFirstQuartile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6f

    const/4 p1, 0x6

    goto :goto_70

    :sswitch_3c
    const-string v0, "AdVideoComplete"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6f

    const/4 p1, 0x5

    goto :goto_70

    :sswitch_46
    const-string v0, "AdVideoMidpoint"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6f

    const/16 p1, 0x8

    goto :goto_70

    :sswitch_51
    const-string v0, "AdVideoThirdQuartile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6f

    const/4 p1, 0x7

    goto :goto_70

    :sswitch_5b
    const-string v0, "AdImpression"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6f

    const/4 p1, 0x2

    goto :goto_70

    :sswitch_65
    const-string v0, "AdPaused"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6f

    const/4 p1, 0x3

    goto :goto_70

    :cond_6f
    :goto_6f
    const/4 p1, -0x1

    :goto_70
    packed-switch p1, :pswitch_data_da

    goto :goto_af

    :pswitch_74
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/c;->o:Lcom/sigmob/sdk/mraid/c$f;

    invoke-interface {p1}, Lcom/sigmob/sdk/mraid/c$f;->i()V

    goto :goto_af

    :pswitch_7a
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/c;->o:Lcom/sigmob/sdk/mraid/c$f;

    invoke-interface {p1}, Lcom/sigmob/sdk/mraid/c$f;->h()V

    goto :goto_af

    :pswitch_80
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/c;->o:Lcom/sigmob/sdk/mraid/c$f;

    invoke-interface {p1}, Lcom/sigmob/sdk/mraid/c$f;->g()V

    goto :goto_af

    :pswitch_86
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/c;->o:Lcom/sigmob/sdk/mraid/c$f;

    invoke-interface {p1}, Lcom/sigmob/sdk/mraid/c$f;->f()V

    goto :goto_af

    :pswitch_8c
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/c;->o:Lcom/sigmob/sdk/mraid/c$f;

    invoke-interface {p1}, Lcom/sigmob/sdk/mraid/c$f;->e()V

    goto :goto_af

    :pswitch_92
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/c;->o:Lcom/sigmob/sdk/mraid/c$f;

    invoke-interface {p1}, Lcom/sigmob/sdk/mraid/c$f;->d()V

    goto :goto_af

    :pswitch_98
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/c;->o:Lcom/sigmob/sdk/mraid/c$f;

    invoke-interface {p1}, Lcom/sigmob/sdk/mraid/c$f;->c()V

    goto :goto_af

    :pswitch_9e
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/c;->o:Lcom/sigmob/sdk/mraid/c$f;

    invoke-interface {p1}, Lcom/sigmob/sdk/mraid/c$f;->b()V

    goto :goto_af

    :pswitch_a4
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/c;->o:Lcom/sigmob/sdk/mraid/c$f;

    invoke-interface {p1}, Lcom/sigmob/sdk/mraid/c$f;->a()V

    goto :goto_af

    :pswitch_aa
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/c;->o:Lcom/sigmob/sdk/mraid/c$f;

    invoke-interface {p1, p2}, Lcom/sigmob/sdk/mraid/c$f;->a(Ljava/util/Map;)V

    :goto_af
    return-void

    :sswitch_data_b0
    .sparse-switch
        -0x67d2f0af -> :sswitch_65
        -0x648cc154 -> :sswitch_5b
        -0x5b14d70e -> :sswitch_51
        -0x369ee9a0 -> :sswitch_46
        0x754eb51 -> :sswitch_3c
        0x160d1d3b -> :sswitch_32
        0x1d1b8b85 -> :sswitch_28
        0x332b014a -> :sswitch_1d
        0x3d13385c -> :sswitch_13
        0x7f231e6b -> :sswitch_9
    .end sparse-switch

    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_aa
        :pswitch_a4
        :pswitch_9e
        :pswitch_98
        :pswitch_92
        :pswitch_8c
        :pswitch_86
        :pswitch_80
        :pswitch_7a
        :pswitch_74
    .end packed-switch
.end method

.method static synthetic c(Lcom/sigmob/sdk/mraid/c;)Lcom/sigmob/sdk/mraid/a;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/mraid/c;->s:Lcom/sigmob/sdk/mraid/a;

    return-object p0
.end method

.method static synthetic d(Lcom/sigmob/sdk/mraid/c;)Lcom/sigmob/sdk/mraid/a;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/mraid/c;->r:Lcom/sigmob/sdk/mraid/a;

    return-object p0
.end method

.method static synthetic e(Lcom/sigmob/sdk/mraid/c;)Lcom/sigmob/sdk/mraid/c$e;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/mraid/c;->m:Lcom/sigmob/sdk/mraid/c$e;

    return-object p0
.end method

.method static synthetic f(Lcom/sigmob/sdk/mraid/c;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/sigmob/sdk/mraid/c;->a:Z

    return p0
.end method

.method static synthetic g(Lcom/sigmob/sdk/mraid/c;)Lcom/sigmob/sdk/mraid/c$f;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/mraid/c;->o:Lcom/sigmob/sdk/mraid/c$f;

    return-object p0
.end method

.method static synthetic h(Lcom/sigmob/sdk/mraid/c;)Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/mraid/c;->g:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic i(Lcom/sigmob/sdk/mraid/c;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/mraid/c;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic j(Lcom/sigmob/sdk/mraid/c;)Lcom/sigmob/sdk/mraid/f;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/mraid/c;->x:Lcom/sigmob/sdk/mraid/f;

    return-object p0
.end method

.method static synthetic k(Lcom/sigmob/sdk/mraid/c;)Lcom/sigmob/sdk/base/models/ViewState;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/mraid/c;->k:Lcom/sigmob/sdk/base/models/ViewState;

    return-object p0
.end method

.method static synthetic l(Lcom/sigmob/sdk/mraid/c;)Lcom/sigmob/sdk/base/models/PlacementType;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/mraid/c;->d:Lcom/sigmob/sdk/base/models/PlacementType;

    return-object p0
.end method

.method static synthetic m(Lcom/sigmob/sdk/mraid/c;)I
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/mraid/c;->p()I

    move-result p0

    return p0
.end method

.method private p()I
    .registers 3

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/c;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/a;->a(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private q()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->r:Lcom/sigmob/sdk/mraid/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/a;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/c;->p:Lcom/sigmob/sdk/mraid/MraidWebView;

    return-void
.end method

.method private r()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->s:Lcom/sigmob/sdk/mraid/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/a;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/c;->q:Lcom/sigmob/sdk/mraid/MraidWebView;

    return-void
.end method

.method private s()Landroid/view/ViewGroup;
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->h:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/c;->f:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/common/f/s;->a(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1a

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_1c

    :cond_1a
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->f:Landroid/widget/FrameLayout;

    :goto_1c
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->r:Lcom/sigmob/sdk/mraid/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOrientationChange "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/mraid/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .registers 6

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/c;->b:Ljava/lang/ref/WeakReference;

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/c;->e:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRvAdSetting()Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;

    move-result-object p1

    iget-object p1, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;->skip_seconds:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_23

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/c;->e:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRvAdSetting()Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;

    move-result-object p1

    iget-object p1, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;->skip_seconds:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_24

    :cond_23
    const/4 p1, 0x5

    :goto_24
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sigmob/sdk/mraid/c$4;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/mraid/c$4;-><init>(Lcom/sigmob/sdk/mraid/c;)V

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public a(Landroid/webkit/ValueCallback;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->r:Lcom/sigmob/sdk/mraid/a;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/mraid/a;->a(Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method a(Lcom/sigmob/sdk/common/models/SigmobError;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->l:Lcom/sigmob/sdk/mraid/c$a;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/mraid/c$a;->a(Lcom/sigmob/sdk/common/models/SigmobError;)V

    :cond_7
    return-void
.end method

.method public a(Lcom/sigmob/sdk/mraid/c$a;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/c;->l:Lcom/sigmob/sdk/mraid/c$a;

    return-void
.end method

.method public a(Lcom/sigmob/sdk/mraid/c$e;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/c;->m:Lcom/sigmob/sdk/mraid/c$e;

    return-void
.end method

.method public a(Lcom/sigmob/sdk/mraid/c$f;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/c;->o:Lcom/sigmob/sdk/mraid/c$f;

    return-void
.end method

.method a(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/sigmob/sdk/mraid/c$b;)V
    .registers 6

    new-instance v0, Lcom/sigmob/sdk/mraid/MraidWebView;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/c;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/mraid/MraidWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/c;->p:Lcom/sigmob/sdk/mraid/MraidWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/MraidWebView;->a(Z)V

    if-eqz p2, :cond_15

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->p:Lcom/sigmob/sdk/mraid/MraidWebView;

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lcom/sigmob/sdk/mraid/c$b;->a(Lcom/sigmob/sdk/mraid/MraidWebView;Lcom/sigmob/sdk/base/common/p;)V

    :cond_15
    iget-object p2, p0, Lcom/sigmob/sdk/mraid/c;->r:Lcom/sigmob/sdk/mraid/a;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->p:Lcom/sigmob/sdk/mraid/MraidWebView;

    invoke-virtual {p2, v0}, Lcom/sigmob/sdk/mraid/a;->a(Lcom/sigmob/sdk/mraid/MraidWebView;)V

    iget-object p2, p0, Lcom/sigmob/sdk/mraid/c;->f:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->p:Lcom/sigmob/sdk/mraid/MraidWebView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/sigmob/sdk/mraid/c;->r:Lcom/sigmob/sdk/mraid/a;

    invoke-virtual {p2, p1}, Lcom/sigmob/sdk/mraid/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->r:Lcom/sigmob/sdk/mraid/a;

    invoke-virtual {v0, p1, p2}, Lcom/sigmob/sdk/mraid/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method a(Ljava/net/URI;Lcom/sigmob/sdk/videoAd/f;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->l:Lcom/sigmob/sdk/mraid/c$a;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2, p3}, Lcom/sigmob/sdk/mraid/c$a;->a(Ljava/net/URI;Lcom/sigmob/sdk/videoAd/f;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method a(Ljava/net/URI;Z)V
    .registers 3

    return-void
.end method

.method public a(Z)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/mraid/c;->y:Z

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->p:Lcom/sigmob/sdk/mraid/MraidWebView;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/mraid/MraidWebView;->b(Z)V

    :cond_a
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->q:Lcom/sigmob/sdk/mraid/MraidWebView;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->p:Lcom/sigmob/sdk/mraid/MraidWebView;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/mraid/MraidWebView;->b(Z)V

    :cond_13
    return-void
.end method

.method a(ZLcom/sigmob/sdk/mraid/g;)V
    .registers 5

    invoke-virtual {p0, p2}, Lcom/sigmob/sdk/mraid/c;->a(Lcom/sigmob/sdk/mraid/g;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iput-boolean p1, p0, Lcom/sigmob/sdk/mraid/c;->v:Z

    iput-object p2, p0, Lcom/sigmob/sdk/mraid/c;->w:Lcom/sigmob/sdk/mraid/g;

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/c;->k:Lcom/sigmob/sdk/base/models/ViewState;

    sget-object p2, Lcom/sigmob/sdk/base/models/ViewState;->EXPANDED:Lcom/sigmob/sdk/base/models/ViewState;

    if-eq p1, p2, :cond_1a

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/c;->d:Lcom/sigmob/sdk/base/models/PlacementType;

    sget-object p2, Lcom/sigmob/sdk/base/models/PlacementType;->INTERSTITIAL:Lcom/sigmob/sdk/base/models/PlacementType;

    if-ne p1, p2, :cond_1d

    iget-boolean p1, p0, Lcom/sigmob/sdk/mraid/c;->y:Z

    if-nez p1, :cond_1d

    :cond_1a
    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/c;->m()V

    :cond_1d
    return-void

    :cond_1e
    new-instance p1, Lcom/sigmob/sdk/mraid/b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to force orientation to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/sigmob/sdk/mraid/b;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Landroid/webkit/ConsoleMessage;)Z
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->n:Lcom/sigmob/sdk/mraid/k;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/mraid/k;->a(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1

    :cond_9
    const/4 p1, 0x1

    return p1
.end method

.method a(Lcom/sigmob/sdk/mraid/g;)Z
    .registers 8

    sget-object v0, Lcom/sigmob/sdk/mraid/g;->c:Lcom/sigmob/sdk/mraid/g;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v2, 0x0

    if-nez v0, :cond_12

    return v2

    :cond_12
    :try_start_12
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_23} :catch_31

    iget v0, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_30

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid/g;->a()I

    move-result p1

    if-ne v0, p1, :cond_2f

    goto :goto_30

    :cond_2f
    move v1, v2

    :cond_30
    :goto_30
    return v1

    :catch_31
    move-exception p1

    return v2
.end method

.method a(Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->n:Lcom/sigmob/sdk/mraid/k;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1, p2}, Lcom/sigmob/sdk/mraid/k;->a(Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1

    :cond_9
    invoke-virtual {p2}, Landroid/webkit/JsResult;->confirm()V

    const/4 p1, 0x1

    return p1
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->r:Lcom/sigmob/sdk/mraid/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/a;->a(Z)V

    return-void
.end method

.method b(I)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_24

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/c;->w:Lcom/sigmob/sdk/mraid/g;

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/mraid/c;->a(Lcom/sigmob/sdk/mraid/g;)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/c;->u:Ljava/lang/Integer;

    if-nez v1, :cond_20

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/sigmob/sdk/mraid/c;->u:Ljava/lang/Integer;

    :cond_20
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void

    :cond_24
    new-instance p1, Lcom/sigmob/sdk/mraid/b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to lock orientation to unsupported value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/c;->w:Lcom/sigmob/sdk/mraid/g;

    invoke-virtual {v1}, Lcom/sigmob/sdk/mraid/g;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/sigmob/sdk/mraid/b;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/String;Lcom/sigmob/sdk/mraid/c$b;)V
    .registers 6

    new-instance v0, Lcom/sigmob/sdk/mraid/MraidWebView;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/c;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/mraid/MraidWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/c;->p:Lcom/sigmob/sdk/mraid/MraidWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/MraidWebView;->a(Z)V

    if-eqz p2, :cond_15

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->p:Lcom/sigmob/sdk/mraid/MraidWebView;

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lcom/sigmob/sdk/mraid/c$b;->a(Lcom/sigmob/sdk/mraid/MraidWebView;Lcom/sigmob/sdk/base/common/p;)V

    :cond_15
    iget-object p2, p0, Lcom/sigmob/sdk/mraid/c;->r:Lcom/sigmob/sdk/mraid/a;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->p:Lcom/sigmob/sdk/mraid/MraidWebView;

    invoke-virtual {p2, v0}, Lcom/sigmob/sdk/mraid/a;->a(Lcom/sigmob/sdk/mraid/MraidWebView;)V

    iget-object p2, p0, Lcom/sigmob/sdk/mraid/c;->f:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->p:Lcom/sigmob/sdk/mraid/MraidWebView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/sigmob/sdk/mraid/c;->r:Lcom/sigmob/sdk/mraid/a;

    invoke-virtual {p2, p1}, Lcom/sigmob/sdk/mraid/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected b(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/sigmob/sdk/mraid/c;->a:Z

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->m:Lcom/sigmob/sdk/mraid/c$e;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/mraid/c$e;->a(Z)V

    :cond_9
    return-void
.end method

.method public c()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->r:Lcom/sigmob/sdk/mraid/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/a;->a(Z)V

    return-void
.end method

.method public d()V
    .registers 6

    new-instance v0, Lcom/sigmob/sdk/base/models/ExposureChange;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/sigmob/sdk/mraid/c;->s()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-direct {p0}, Lcom/sigmob/sdk/mraid/c;->s()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/high16 v2, 0x42c80000    # 100.0f

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/sigmob/sdk/base/models/ExposureChange;-><init>(FLandroid/graphics/Rect;Ljava/util/List;)V

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/c;->r:Lcom/sigmob/sdk/mraid/a;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/mraid/a;->a(Lcom/sigmob/sdk/base/models/ExposureChange;)V

    return-void
.end method

.method public e()Ljava/lang/Integer;
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->r:Lcom/sigmob/sdk/mraid/a;

    new-instance v1, Lcom/sigmob/sdk/mraid/c$5;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/mraid/c$5;-><init>(Lcom/sigmob/sdk/mraid/c;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/a;->b(Landroid/webkit/ValueCallback;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Lcom/sigmob/sdk/mraid/MraidWebView;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->s:Lcom/sigmob/sdk/mraid/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/a;->g()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->q:Lcom/sigmob/sdk/mraid/MraidWebView;

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->p:Lcom/sigmob/sdk/mraid/MraidWebView;

    :goto_d
    return-object v0
.end method

.method g()Z
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/c;->f()Lcom/sigmob/sdk/mraid/MraidWebView;

    move-result-object v1

    if-nez v1, :cond_11

    goto :goto_24

    :cond_11
    iget-object v1, p0, Lcom/sigmob/sdk/mraid/c;->d:Lcom/sigmob/sdk/base/models/PlacementType;

    sget-object v2, Lcom/sigmob/sdk/base/models/PlacementType;->INLINE:Lcom/sigmob/sdk/base/models/PlacementType;

    if-eq v1, v2, :cond_19

    const/4 v0, 0x1

    return v0

    :cond_19
    iget-object v1, p0, Lcom/sigmob/sdk/mraid/c;->x:Lcom/sigmob/sdk/mraid/f;

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/c;->f()Lcom/sigmob/sdk/mraid/MraidWebView;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sigmob/sdk/mraid/f;->a(Landroid/app/Activity;Landroid/view/View;)Z

    move-result v0

    return v0

    :cond_24
    :goto_24
    const/4 v0, 0x0

    return v0
.end method

.method h()V
    .registers 8

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/a;->D()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    const-string v0, "portrait"

    goto :goto_14

    :cond_12
    const-string v0, "landscape"

    :goto_14
    iget-object v2, p0, Lcom/sigmob/sdk/mraid/c;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/mraid/c;->j:Lcom/sigmob/sdk/mraid/h;

    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v4, v2}, Lcom/sigmob/sdk/mraid/h;->a(II)V

    invoke-direct {p0}, Lcom/sigmob/sdk/mraid/c;->s()Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/mraid/c;->j:Lcom/sigmob/sdk/mraid/h;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v6, v4, v5}, Lcom/sigmob/sdk/mraid/h;->a(IIII)V

    iget-object v3, p0, Lcom/sigmob/sdk/mraid/c;->j:Lcom/sigmob/sdk/mraid/h;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v3, v6, v6, v4, v5}, Lcom/sigmob/sdk/mraid/h;->c(IIII)V

    iget-object v3, p0, Lcom/sigmob/sdk/mraid/c;->j:Lcom/sigmob/sdk/mraid/h;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v3, v6, v6, v4, v2}, Lcom/sigmob/sdk/mraid/h;->b(IIII)V

    new-instance v2, Lcom/sigmob/sdk/base/models/CurrentAppOrientation;

    invoke-direct {v2, v0, v1}, Lcom/sigmob/sdk/base/models/CurrentAppOrientation;-><init>(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->r:Lcom/sigmob/sdk/mraid/a;

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/mraid/a;->a(Lcom/sigmob/sdk/base/models/CurrentAppOrientation;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->r:Lcom/sigmob/sdk/mraid/a;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/c;->j:Lcom/sigmob/sdk/mraid/h;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/a;->a(Lcom/sigmob/sdk/mraid/h;)V

    return-void
.end method

.method i()V
    .registers 9

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->r:Lcom/sigmob/sdk/mraid/a;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/c;->x:Lcom/sigmob/sdk/mraid/f;

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/c;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/mraid/f;->b(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/c;->x:Lcom/sigmob/sdk/mraid/f;

    iget-object v3, p0, Lcom/sigmob/sdk/mraid/c;->c:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/sigmob/sdk/mraid/f;->a(Landroid/content/Context;)Z

    move-result v2

    iget-object v3, p0, Lcom/sigmob/sdk/mraid/c;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/sigmob/sdk/mraid/f;->d(Landroid/content/Context;)Z

    move-result v3

    iget-object v4, p0, Lcom/sigmob/sdk/mraid/c;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/sigmob/sdk/mraid/f;->c(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/c;->g()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/sigmob/sdk/mraid/a;->a(ZZZZZZZ)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->r:Lcom/sigmob/sdk/mraid/a;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/c;->d:Lcom/sigmob/sdk/base/models/PlacementType;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/a;->a(Lcom/sigmob/sdk/base/models/PlacementType;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->r:Lcom/sigmob/sdk/mraid/a;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/c;->e:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRvAdSetting()Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/a;->a(Lcom/sigmob/sdk/common/models/sigdsp/pb/RvAdSetting;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->e:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a6

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->e:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_url()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/c;->e:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isVideoExist()Z

    move-result v1

    if-eqz v1, :cond_6c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/c;->e:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6c
    iget-object v1, p0, Lcom/sigmob/sdk/mraid/c;->e:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v1

    iget-object v1, v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->video_size:Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;

    if-eqz v1, :cond_98

    new-instance v1, Lcom/sigmob/sdk/base/models/VideoItem;

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/c;->e:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v2

    iget-object v2, v2, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->video_size:Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;

    iget-object v2, v2, Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;->width:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/sigmob/sdk/mraid/c;->e:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v3

    iget-object v3, v3, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->video_size:Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;

    iget-object v3, v3, Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;->height:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/sigmob/sdk/base/models/VideoItem;-><init>(Ljava/lang/String;II)V

    goto :goto_9e

    :cond_98
    new-instance v1, Lcom/sigmob/sdk/base/models/VideoItem;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Lcom/sigmob/sdk/base/models/VideoItem;-><init>(Ljava/lang/String;II)V

    :goto_9e
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->r:Lcom/sigmob/sdk/mraid/a;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/a;->a(Lcom/sigmob/sdk/base/models/VideoItem;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/c;->e()Ljava/lang/Integer;

    :cond_a6
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->e:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->newBuilder()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/c;->e:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v1

    iget-object v1, v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->has_companion_endcard:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c3

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->companion(Lcom/sigmob/sdk/common/models/sigdsp/pb/CompanionEndcard;)Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;

    move-result-object v0

    :cond_c3
    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->html_snippet(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->html_url(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->deeplink_url(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->landing_page(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->web_event_handle(Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEventHandle;)Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->endcard_url(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta$Builder;->build()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/c;->r:Lcom/sigmob/sdk/mraid/a;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/mraid/a;->a(Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->e:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->newBuilder()Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->materials(Ljava/util/List;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->ad_tracking(Ljava/util/List;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->build()Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/c;->r:Lcom/sigmob/sdk/mraid/a;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/mraid/a;->a(Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/c;->h()V

    sget-object v0, Lcom/sigmob/sdk/base/models/ViewState;->DEFAULT:Lcom/sigmob/sdk/base/models/ViewState;

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/mraid/c;->a(Lcom/sigmob/sdk/base/models/ViewState;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/c;->d()V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->r:Lcom/sigmob/sdk/mraid/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/a;->c()V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->r:Lcom/sigmob/sdk/mraid/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/a;->a(Z)V
    :try_end_11f
    .catchall {:try_start_0 .. :try_end_11f} :catchall_13c

    :try_start_11f
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->r:Lcom/sigmob/sdk/mraid/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/a;->d()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/c;->m()V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->r:Lcom/sigmob/sdk/mraid/a;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->ak()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/a;->a(Landroid/location/Location;)V
    :try_end_134
    .catchall {:try_start_11f .. :try_end_134} :catchall_135

    goto :goto_142

    :catchall_135
    move-exception v0

    :try_start_136
    const-string v0, "Failed to apply orientation."

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V
    :try_end_13b
    .catchall {:try_start_136 .. :try_end_13b} :catchall_13c

    goto :goto_142

    :catchall_13c
    move-exception v0

    const-string v1, "handlePageLoad error"

    invoke-static {v1, v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_142
    return-void
.end method

.method j()V
    .registers 2

    new-instance v0, Lcom/sigmob/sdk/mraid/c$6;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/mraid/c$6;-><init>(Lcom/sigmob/sdk/mraid/c;)V

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/mraid/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public k()V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->i:Lcom/sigmob/sdk/mraid/c$d;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/c$d;->a()V

    :try_start_5
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->t:Lcom/sigmob/sdk/mraid/c$c;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/c$c;->a()V
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_18

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Receiver not registered"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2a

    :goto_18
    iget-boolean v0, p0, Lcom/sigmob/sdk/mraid/c;->y:Z

    if-nez v0, :cond_20

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid/c;->a(Z)V

    :cond_20
    invoke-direct {p0}, Lcom/sigmob/sdk/mraid/c;->q()V

    invoke-direct {p0}, Lcom/sigmob/sdk/mraid/c;->r()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/c;->n()V

    return-void

    :cond_2a
    throw v0
.end method

.method protected l()V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->p:Lcom/sigmob/sdk/mraid/MraidWebView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->k:Lcom/sigmob/sdk/base/models/ViewState;

    sget-object v1, Lcom/sigmob/sdk/base/models/ViewState;->LOADING:Lcom/sigmob/sdk/base/models/ViewState;

    if-eq v0, v1, :cond_65

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->k:Lcom/sigmob/sdk/base/models/ViewState;

    sget-object v1, Lcom/sigmob/sdk/base/models/ViewState;->HIDDEN:Lcom/sigmob/sdk/base/models/ViewState;

    if-ne v0, v1, :cond_12

    goto :goto_65

    :cond_12
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->k:Lcom/sigmob/sdk/base/models/ViewState;

    sget-object v1, Lcom/sigmob/sdk/base/models/ViewState;->EXPANDED:Lcom/sigmob/sdk/base/models/ViewState;

    if-eq v0, v1, :cond_1e

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->d:Lcom/sigmob/sdk/base/models/PlacementType;

    sget-object v1, Lcom/sigmob/sdk/base/models/PlacementType;->INTERSTITIAL:Lcom/sigmob/sdk/base/models/PlacementType;

    if-ne v0, v1, :cond_21

    :cond_1e
    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/c;->n()V

    :cond_21
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->k:Lcom/sigmob/sdk/base/models/ViewState;

    sget-object v1, Lcom/sigmob/sdk/base/models/ViewState;->RESIZED:Lcom/sigmob/sdk/base/models/ViewState;

    if-eq v0, v1, :cond_3d

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->k:Lcom/sigmob/sdk/base/models/ViewState;

    sget-object v1, Lcom/sigmob/sdk/base/models/ViewState;->EXPANDED:Lcom/sigmob/sdk/base/models/ViewState;

    if-ne v0, v1, :cond_2e

    goto :goto_3d

    :cond_2e
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->k:Lcom/sigmob/sdk/base/models/ViewState;

    sget-object v1, Lcom/sigmob/sdk/base/models/ViewState;->DEFAULT:Lcom/sigmob/sdk/base/models/ViewState;

    if-ne v0, v1, :cond_65

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->f:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    sget-object v0, Lcom/sigmob/sdk/base/models/ViewState;->HIDDEN:Lcom/sigmob/sdk/base/models/ViewState;

    goto :goto_62

    :cond_3d
    :goto_3d
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->s:Lcom/sigmob/sdk/mraid/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/a;->g()Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->q:Lcom/sigmob/sdk/mraid/MraidWebView;

    if-eqz v0, :cond_4d

    invoke-direct {p0}, Lcom/sigmob/sdk/mraid/c;->r()V

    goto :goto_60

    :cond_4d
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->f:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/c;->p:Lcom/sigmob/sdk/mraid/MraidWebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->f:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_60
    sget-object v0, Lcom/sigmob/sdk/base/models/ViewState;->DEFAULT:Lcom/sigmob/sdk/base/models/ViewState;

    :goto_62
    invoke-direct {p0, v0}, Lcom/sigmob/sdk/mraid/c;->a(Lcom/sigmob/sdk/base/models/ViewState;)V

    :cond_65
    :goto_65
    return-void
.end method

.method m()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->w:Lcom/sigmob/sdk/mraid/g;

    sget-object v1, Lcom/sigmob/sdk/mraid/g;->c:Lcom/sigmob/sdk/mraid/g;

    if-ne v0, v1, :cond_29

    iget-boolean v0, p0, Lcom/sigmob/sdk/mraid/c;->v:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/c;->n()V

    goto :goto_32

    :cond_e
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/common/a;->a(Landroid/content/Context;)I

    move-result v0

    goto :goto_2f

    :cond_21
    new-instance v0, Lcom/sigmob/sdk/mraid/b;

    const-string v1, "Unable to set MRAID expand orientation to \'none\'; expected passed in Activity Context."

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/mraid/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->w:Lcom/sigmob/sdk/mraid/g;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/g;->a()I

    move-result v0

    :goto_2f
    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid/c;->b(I)V

    :goto_32
    return-void
.end method

.method n()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/c;->u:Ljava/lang/Integer;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/c;->u:Ljava/lang/Integer;

    return-void
.end method

.method public o()Landroid/widget/FrameLayout;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c;->f:Landroid/widget/FrameLayout;

    return-object v0
.end method
