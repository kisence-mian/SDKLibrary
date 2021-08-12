.class public Lcom/kwad/sdk/feed/widget/k;
.super Lcom/kwad/sdk/feed/widget/base/a;

# interfaces
.implements Landroidx/core/view/NestedScrollingChild;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Landroidx/core/view/NestedScrollingChildHelper;

.field private B:Z

.field private C:Landroid/view/View$OnClickListener;

.field private D:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

.field private E:Ljava/lang/Runnable;

.field private F:Lcom/kwad/sdk/utils/aj;

.field private f:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

.field private g:Landroid/widget/ImageView;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/kwad/sdk/core/view/ScaleAnimSeekBar;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/view/ViewGroup;

.field private q:Lcom/kwad/sdk/core/video/videoview/b;

.field private r:Landroid/view/ViewGroup;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/view/ViewGroup;

.field private u:Landroid/view/ViewGroup;

.field private v:Lcom/kwad/sdk/feed/widget/j;

.field private w:I

.field private x:Z

.field private y:Z

.field private z:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/kwad/sdk/feed/widget/base/a;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x64

    iput p1, p0, Lcom/kwad/sdk/feed/widget/k;->w:I

    new-instance p1, Lcom/kwad/sdk/feed/widget/k$1;

    invoke-direct {p1, p0}, Lcom/kwad/sdk/feed/widget/k$1;-><init>(Lcom/kwad/sdk/feed/widget/k;)V

    iput-object p1, p0, Lcom/kwad/sdk/feed/widget/k;->E:Ljava/lang/Runnable;

    new-instance p1, Lcom/kwad/sdk/utils/aj;

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->E:Ljava/lang/Runnable;

    invoke-direct {p1, v0}, Lcom/kwad/sdk/utils/aj;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/kwad/sdk/feed/widget/k;->F:Lcom/kwad/sdk/utils/aj;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/feed/widget/k;)Landroid/view/ViewGroup;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/k;->p:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private a(J)V
    .registers 5

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iget-object p2, p0, Lcom/kwad/sdk/feed/widget/k;->h:Ljava/util/List;

    if-eqz p2, :cond_36

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_15

    goto :goto_36

    :cond_15
    iget-object p2, p0, Lcom/kwad/sdk/feed/widget/k;->h:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt p1, v0, :cond_1b

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/kwad/sdk/core/report/b;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;ILorg/json/JSONObject;)V

    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    :cond_36
    :goto_36
    return-void
.end method

.method private a(Lcom/kwad/sdk/core/video/videoview/a;Lcom/kwad/sdk/core/video/videoview/b;)V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->t:Landroid/view/ViewGroup;

    new-instance v1, Lcom/kwad/sdk/feed/widget/k$2;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/feed/widget/k$2;-><init>(Lcom/kwad/sdk/feed/widget/k;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/kwad/sdk/feed/widget/k$3;

    invoke-direct {v0, p0, p2}, Lcom/kwad/sdk/feed/widget/k$3;-><init>(Lcom/kwad/sdk/feed/widget/k;Lcom/kwad/sdk/core/video/videoview/b;)V

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/video/videoview/a;->setVideoPlayCallback(Lcom/kwad/sdk/core/video/videoview/a$a;)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/k;->l:Lcom/kwad/sdk/core/view/ScaleAnimSeekBar;

    new-instance v0, Lcom/kwad/sdk/feed/widget/k$4;

    invoke-direct {v0, p0, p2}, Lcom/kwad/sdk/feed/widget/k$4;-><init>(Lcom/kwad/sdk/feed/widget/k;Lcom/kwad/sdk/core/video/videoview/b;)V

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/view/ScaleAnimSeekBar;->setOnSeekBarChangeListener(Lcom/kwad/sdk/core/view/ScaleAnimSeekBar$a;)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/k;->m:Landroid/widget/ImageView;

    new-instance v0, Lcom/kwad/sdk/feed/widget/k$5;

    invoke-direct {v0, p0, p2}, Lcom/kwad/sdk/feed/widget/k$5;-><init>(Lcom/kwad/sdk/feed/widget/k;Lcom/kwad/sdk/core/video/videoview/b;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/k;->o:Landroid/widget/ImageView;

    new-instance v0, Lcom/kwad/sdk/feed/widget/k$6;

    invoke-direct {v0, p0, p2}, Lcom/kwad/sdk/feed/widget/k$6;-><init>(Lcom/kwad/sdk/feed/widget/k;Lcom/kwad/sdk/core/video/videoview/b;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/k;->r:Landroid/view/ViewGroup;

    new-instance p2, Lcom/kwad/sdk/feed/widget/k$7;

    invoke-direct {p2, p0}, Lcom/kwad/sdk/feed/widget/k$7;-><init>(Lcom/kwad/sdk/feed/widget/k;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/k;->n:Landroid/widget/ImageView;

    new-instance p2, Lcom/kwad/sdk/feed/widget/k$8;

    invoke-direct {p2, p0}, Lcom/kwad/sdk/feed/widget/k$8;-><init>(Lcom/kwad/sdk/feed/widget/k;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/feed/widget/k;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/feed/widget/k;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/feed/widget/k;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/feed/widget/k;->B:Z

    return p1
.end method

.method static synthetic b(Lcom/kwad/sdk/feed/widget/k;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/k;->o:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic c(Lcom/kwad/sdk/feed/widget/k;)Lcom/kwad/sdk/feed/widget/j;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/k;->v:Lcom/kwad/sdk/feed/widget/j;

    return-object p0
.end method

.method static synthetic d(Lcom/kwad/sdk/feed/widget/k;)Lcom/kwad/sdk/core/video/videoview/b;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/k;->q:Lcom/kwad/sdk/core/video/videoview/b;

    return-object p0
.end method

.method static synthetic e(Lcom/kwad/sdk/feed/widget/k;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/k;->E:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic f(Lcom/kwad/sdk/feed/widget/k;)Lcom/kwad/sdk/utils/aj;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/k;->F:Lcom/kwad/sdk/utils/aj;

    return-object p0
.end method

.method static synthetic g(Lcom/kwad/sdk/feed/widget/k;)I
    .registers 1

    iget p0, p0, Lcom/kwad/sdk/feed/widget/k;->w:I

    return p0
.end method

.method private g()Z
    .registers 7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/kwad/sdk/feed/widget/k;->z:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x378

    cmp-long v2, v2, v4

    if-lez v2, :cond_10

    iput-wide v0, p0, Lcom/kwad/sdk/feed/widget/k;->z:J

    :cond_10
    if-lez v2, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method static synthetic h(Lcom/kwad/sdk/feed/widget/k;)Landroid/view/View$OnClickListener;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/k;->C:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private h()V
    .registers 8

    iget v0, p0, Lcom/kwad/sdk/feed/widget/k;->w:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x64

    if-ne v0, v3, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    invoke-direct {p0}, Lcom/kwad/sdk/feed/widget/k;->g()Z

    move-result v3

    and-int/2addr v0, v3

    if-eqz v0, :cond_ba

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->r:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->s:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kwad/sdk/feed/widget/k;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v3, v3, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object v3, v3, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->adDescription:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->e(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result v0

    iget-object v3, p0, Lcom/kwad/sdk/feed/widget/k;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v3}, Lcom/kwad/sdk/core/response/b/a;->d(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result v3

    if-le v0, v3, :cond_32

    move v0, v1

    goto :goto_33

    :cond_32
    move v0, v2

    :goto_33
    invoke-virtual {p0}, Lcom/kwad/sdk/feed/widget/k;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/kwad/sdk/utils/t;->a(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/kwad/sdk/feed/widget/k;->x:Z

    invoke-virtual {p0}, Lcom/kwad/sdk/feed/widget/k;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/kwad/sdk/utils/t;->e(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/kwad/sdk/feed/widget/k;->y:Z

    invoke-virtual {p0}, Lcom/kwad/sdk/feed/widget/k;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v0, :cond_51

    invoke-static {v3}, Lcom/kwad/sdk/utils/t;->c(Landroid/content/Context;)V

    goto :goto_54

    :cond_51
    invoke-static {v3}, Lcom/kwad/sdk/utils/t;->d(Landroid/content/Context;)V

    :goto_54
    iget-object v3, p0, Lcom/kwad/sdk/feed/widget/k;->t:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/kwad/sdk/feed/widget/k;->u:Landroid/view/ViewGroup;

    if-eqz v3, :cond_65

    iget-object v4, p0, Lcom/kwad/sdk/feed/widget/k;->t:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_65
    invoke-virtual {p0}, Lcom/kwad/sdk/feed/widget/k;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/kwad/sdk/utils/t;->a(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Lcom/kwad/sdk/feed/widget/k;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/kwad/sdk/utils/t;->f(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_ba

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/kwad/sdk/feed/widget/k;->t:Landroid/view/ViewGroup;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-ne v0, v1, :cond_aa

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    if-eqz v0, :cond_aa

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->f:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;->setRatio(F)V

    :cond_aa
    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->t:Landroid/view/ViewGroup;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/feed/widget/k;->setUIWithStateAndMode(I)V

    :cond_ba
    return-void
.end method

.method private i()V
    .registers 6

    iget v0, p0, Lcom/kwad/sdk/feed/widget/k;->w:I

    const/4 v1, 0x1

    const/16 v2, 0x65

    if-ne v0, v2, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-direct {p0}, Lcom/kwad/sdk/feed/widget/k;->g()Z

    move-result v2

    and-int/2addr v0, v2

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->r:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/kwad/sdk/feed/widget/k;->x:Z

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/kwad/sdk/feed/widget/k;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/utils/t;->a(Landroid/content/Context;)Z

    goto :goto_2b

    :cond_24
    invoke-virtual {p0}, Lcom/kwad/sdk/feed/widget/k;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/utils/t;->b(Landroid/content/Context;)V

    :goto_2b
    iget-boolean v0, p0, Lcom/kwad/sdk/feed/widget/k;->y:Z

    if-eqz v0, :cond_37

    invoke-virtual {p0}, Lcom/kwad/sdk/feed/widget/k;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/utils/t;->d(Landroid/content/Context;)V

    goto :goto_3e

    :cond_37
    invoke-virtual {p0}, Lcom/kwad/sdk/feed/widget/k;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/utils/t;->c(Landroid/content/Context;)V

    :goto_3e
    invoke-virtual {p0}, Lcom/kwad/sdk/feed/widget/k;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/kwad/sdk/utils/t;->a(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->t:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_54

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/k;->t:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_54
    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->t:Landroid/view/ViewGroup;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget-object v2, p0, Lcom/kwad/sdk/feed/widget/k;->u:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/kwad/sdk/feed/widget/k;->u:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->f:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    const v1, 0x3f0f5c29    # 0.56f

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;->setRatio(F)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->u:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/k;->t:Landroid/view/ViewGroup;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->t:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/feed/widget/k;->setUIWithStateAndMode(I)V

    :cond_8a
    return-void
.end method

.method static synthetic i(Lcom/kwad/sdk/feed/widget/k;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/kwad/sdk/feed/widget/k;->B:Z

    return p0
.end method

.method static synthetic j(Lcom/kwad/sdk/feed/widget/k;)Lcom/kwad/sdk/core/view/ScaleAnimSeekBar;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/k;->l:Lcom/kwad/sdk/core/view/ScaleAnimSeekBar;

    return-object p0
.end method

.method static synthetic k(Lcom/kwad/sdk/feed/widget/k;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/k;->j:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic l(Lcom/kwad/sdk/feed/widget/k;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/k;->i:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic m(Lcom/kwad/sdk/feed/widget/k;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/k;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object p0
.end method

.method static synthetic n(Lcom/kwad/sdk/feed/widget/k;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/k;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object p0
.end method

.method static synthetic o(Lcom/kwad/sdk/feed/widget/k;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/feed/widget/k;->m:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic p(Lcom/kwad/sdk/feed/widget/k;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/feed/widget/k;->i()V

    return-void
.end method

.method static synthetic q(Lcom/kwad/sdk/feed/widget/k;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/feed/widget/k;->h()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/api/KsAdVideoPlayConfig;)V
    .registers 11

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->N(Lcom/kwad/sdk/core/response/model/AdInfo;)Lcom/kwad/sdk/core/response/model/c;

    move-result-object v0

    iput-object p1, p0, Lcom/kwad/sdk/feed/widget/k;->D:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/response/model/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-nez v1, :cond_28

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/k;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/k;->g:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/kwad/sdk/feed/widget/k;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v1, v0, v5}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2d

    :cond_28
    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2d
    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->F(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->h:Ljava/util/List;

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->a(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_42

    return-void

    :cond_42
    invoke-static {}, Lcom/kwad/sdk/core/video/videoview/AdVideoPlayerViewCache;->a()Lcom/kwad/sdk/core/video/videoview/AdVideoPlayerViewCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kwad/sdk/core/video/videoview/AdVideoPlayerViewCache;->b(Ljava/lang/String;)Lcom/kwad/sdk/core/video/videoview/b;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->q:Lcom/kwad/sdk/core/video/videoview/b;

    if-nez v0, :cond_b6

    new-instance v0, Lcom/kwad/sdk/core/video/videoview/b;

    invoke-virtual {p0}, Lcom/kwad/sdk/feed/widget/k;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kwad/sdk/core/video/videoview/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->q:Lcom/kwad/sdk/core/video/videoview/b;

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->i(Lcom/kwad/sdk/core/response/model/AdInfo;)J

    move-result-wide v0

    new-instance v5, Lcom/kwad/sdk/contentalliance/detail/video/c$a;

    invoke-direct {v5}, Lcom/kwad/sdk/contentalliance/detail/video/c$a;-><init>()V

    iget-object v6, p0, Lcom/kwad/sdk/feed/widget/k;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v6, v6, Lcom/kwad/sdk/core/response/model/AdTemplate;->mVideoPlayerStatus:Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;

    invoke-virtual {v5, v6}, Lcom/kwad/sdk/contentalliance/detail/video/c$a;->a(Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;)Lcom/kwad/sdk/contentalliance/detail/video/c$a;

    move-result-object v5

    iget-object v6, p0, Lcom/kwad/sdk/feed/widget/k;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v6}, Lcom/kwad/sdk/core/response/b/c;->i(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/kwad/sdk/contentalliance/detail/video/c$a;->a(Ljava/lang/String;)Lcom/kwad/sdk/contentalliance/detail/video/c$a;

    move-result-object v5

    new-instance v6, Lcom/kwad/sdk/contentalliance/detail/video/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v6, v0, v1, v7, v8}, Lcom/kwad/sdk/contentalliance/detail/video/b;-><init>(JJ)V

    invoke-virtual {v5, v6}, Lcom/kwad/sdk/contentalliance/detail/video/c$a;->a(Lcom/kwad/sdk/contentalliance/detail/video/b;)Lcom/kwad/sdk/contentalliance/detail/video/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/c$a;->a()Lcom/kwad/sdk/contentalliance/detail/video/c;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/k;->q:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-virtual {v1, v0, v2}, Lcom/kwad/sdk/core/video/videoview/b;->a(Lcom/kwad/sdk/contentalliance/detail/video/c;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->q:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-interface {p1}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig;->isVideoSoundEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/video/videoview/b;->setVideoSoundEnable(Z)V

    new-instance v0, Lcom/kwad/sdk/feed/widget/j;

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/k;->d:Landroid/content/Context;

    iget-object v5, p0, Lcom/kwad/sdk/feed/widget/k;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v6, p0, Lcom/kwad/sdk/feed/widget/k;->q:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-direct {v0, v1, v5, v6}, Lcom/kwad/sdk/feed/widget/j;-><init>(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/video/videoview/d;)V

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->v:Lcom/kwad/sdk/feed/widget/j;

    invoke-interface {p1}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig;->isDataFlowAutoStart()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/feed/widget/j;->setDataFlowAutoStart(Z)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->q:Lcom/kwad/sdk/core/video/videoview/b;

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/k;->v:Lcom/kwad/sdk/feed/widget/j;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/video/videoview/b;->setController(Lcom/kwad/sdk/core/video/videoview/c;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->v:Lcom/kwad/sdk/feed/widget/j;

    :goto_b2
    invoke-virtual {v0, v3}, Lcom/kwad/sdk/feed/widget/j;->setAutoRelease(Z)V

    goto :goto_d6

    :cond_b6
    invoke-virtual {v0}, Lcom/kwad/sdk/core/video/videoview/b;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_cb

    :try_start_bc
    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->q:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/video/videoview/b;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->h:Ljava/util/List;
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_c6} :catch_c7

    goto :goto_cb

    :catch_c7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_cb
    :goto_cb
    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->q:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/video/videoview/b;->getController()Lcom/kwad/sdk/core/video/videoview/c;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/feed/widget/j;

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->v:Lcom/kwad/sdk/feed/widget/j;

    goto :goto_b2

    :goto_d6
    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->q:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-interface {p1}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig;->isVideoSoundEnable()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/video/videoview/b;->setVideoSoundEnable(Z)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/k;->q:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-virtual {p1}, Lcom/kwad/sdk/core/video/videoview/b;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_f4

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/k;->q:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-virtual {p1}, Lcom/kwad/sdk/core/video/videoview/b;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->q:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_f4
    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/k;->f:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    invoke-virtual {p1}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_10c

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/k;->f:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    invoke-virtual {p1}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/k;->f:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    invoke-virtual {p1, v2}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;->setTag(Ljava/lang/Object;)V

    :cond_10c
    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/k;->f:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->q:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/k;->f:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->q:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/k;->p:Landroid/view/ViewGroup;

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/k;->o:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/k;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/AdInfo;->adConversionInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;

    iget p1, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;->h5Type:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_133

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/k;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_143

    :cond_133
    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/k;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/k;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->adDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_143
    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/k;->v:Lcom/kwad/sdk/feed/widget/j;

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->q:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/feed/widget/k;->a(Lcom/kwad/sdk/core/video/videoview/a;Lcom/kwad/sdk/core/video/videoview/b;)V

    return-void
.end method

.method public a(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/kwad/sdk/feed/widget/base/a;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    return-void
.end method

.method protected c()V
    .registers 3

    new-instance v0, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {v0, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->A:Landroidx/core/view/NestedScrollingChildHelper;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_video_container:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/feed/widget/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->f:Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;

    const v1, 0x3f0f5c29    # 0.56f

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/feed/widget/base/RatioFrameLayout;->setRatio(F)V

    sget v0, Lcom/kwad/sdk/R$id;->ksad_video_first_frame_container:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/feed/widget/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->g:Landroid/widget/ImageView;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_video_text_below:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/feed/widget/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->k:Landroid/widget/TextView;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_web_video_seek_bar:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/feed/widget/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/view/ScaleAnimSeekBar;

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->l:Lcom/kwad/sdk/core/view/ScaleAnimSeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/view/ScaleAnimSeekBar;->setMaxProgress(I)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->l:Lcom/kwad/sdk/core/view/ScaleAnimSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/view/ScaleAnimSeekBar;->setMinProgress(I)V

    sget v0, Lcom/kwad/sdk/R$id;->ksad_video_control_play_total:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/feed/widget/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->i:Landroid/widget/TextView;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_video_control_play_duration:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/feed/widget/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->j:Landroid/widget/TextView;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_video_control_play_button:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/feed/widget/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->m:Landroid/widget/ImageView;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_video_control_play_status:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/feed/widget/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->o:Landroid/widget/ImageView;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_video_control_fullscreen:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/feed/widget/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->n:Landroid/widget/ImageView;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_video_control_container:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/feed/widget/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->p:Landroid/view/ViewGroup;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_feed_video_container:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/feed/widget/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->t:Landroid/view/ViewGroup;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_video_control_fullscreen_container:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/feed/widget/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->r:Landroid/view/ViewGroup;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_video_control_fullscreen_title:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/feed/widget/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->s:Landroid/widget/TextView;

    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->A:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->A:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->A:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .registers 12

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->A:Landroidx/core/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result p1

    return p1
.end method

.method public f()Z
    .registers 3

    iget v0, p0, Lcom/kwad/sdk/feed/widget/k;->w:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_b

    invoke-direct {p0}, Lcom/kwad/sdk/feed/widget/k;->i()V

    const/4 v0, 0x1

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method protected getLayoutId()I
    .registers 2

    sget v0, Lcom/kwad/sdk/R$layout;->ksad_feed_video:I

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->A:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->A:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->A:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setOnEndBtnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/feed/widget/k;->C:Landroid/view/View$OnClickListener;

    return-void
.end method

.method protected setUIWithStateAndMode(I)V
    .registers 5

    const/16 v0, 0x65

    if-ne p1, v0, :cond_11

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->n:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/kwad/sdk/feed/widget/k;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/kwad/sdk/R$drawable;->ksad_video_player_exit_fullscreen_btn:I

    goto :goto_1d

    :cond_11
    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->n:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/kwad/sdk/feed/widget/k;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/kwad/sdk/R$drawable;->ksad_video_player_fullscreen_btn:I

    :goto_1d
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput p1, p0, Lcom/kwad/sdk/feed/widget/k;->w:I

    return-void
.end method

.method public startNestedScroll(I)Z
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->A:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result p1

    return p1
.end method

.method public stopNestedScroll()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k;->A:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method
