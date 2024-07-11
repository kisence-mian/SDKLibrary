.class public Lcom/kwad/sdk/reward/b/b/b/c;
.super Lcom/kwad/sdk/reward/d;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private b:Landroid/widget/TextView;

.field private c:Landroid/view/ViewGroup;

.field private d:Landroid/widget/ImageView;

.field private e:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private f:Lcom/kwad/sdk/core/response/model/AdInfo;

.field private g:J

.field private h:Z

.field private i:Landroid/app/Activity;

.field private j:Z

.field private k:Lcom/kwad/sdk/contentalliance/detail/video/d;

.field private l:Lcom/kwad/sdk/reward/a/d;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/reward/d;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwad/sdk/reward/b/b/b/c;->j:Z

    new-instance v0, Lcom/kwad/sdk/reward/b/b/b/c$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/reward/b/b/b/c$1;-><init>(Lcom/kwad/sdk/reward/b/b/b/c;)V

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/c;->k:Lcom/kwad/sdk/contentalliance/detail/video/d;

    new-instance v0, Lcom/kwad/sdk/reward/b/b/b/c$2;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/reward/b/b/b/c$2;-><init>(Lcom/kwad/sdk/reward/b/b/b/c;)V

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/c;->l:Lcom/kwad/sdk/reward/a/d;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/reward/b/b/b/c;J)J
    .registers 3

    iput-wide p1, p0, Lcom/kwad/sdk/reward/b/b/b/c;->g:J

    return-wide p1
.end method

.method static synthetic a(Lcom/kwad/sdk/reward/b/b/b/c;)Lcom/kwad/sdk/core/response/model/AdInfo;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/b/b/b/c;->f:Lcom/kwad/sdk/core/response/model/AdInfo;

    return-object p0
.end method

.method private a(F)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/c;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p0}, Lcom/kwad/sdk/reward/b/b/b/c;->l()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v0, v1}, Lcom/kwad/sdk/utils/ah;->a(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/b/b/c;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object p1, p0, Lcom/kwad/sdk/reward/b/b/b/c;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_24
    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/reward/b/b/b/c;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwad/sdk/reward/b/b/b/c;->a(F)V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/reward/b/b/b/c;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/reward/b/b/b/c;->h:Z

    return p1
.end method

.method private b(F)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/c;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p0}, Lcom/kwad/sdk/reward/b/b/b/c;->l()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v0, v1}, Lcom/kwad/sdk/utils/ah;->a(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/b/b/c;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object p1, p0, Lcom/kwad/sdk/reward/b/b/b/c;->c:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_24
    return-void
.end method

.method static synthetic b(Lcom/kwad/sdk/reward/b/b/b/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/reward/b/b/b/c;->e()V

    return-void
.end method

.method static synthetic b(Lcom/kwad/sdk/reward/b/b/b/c;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwad/sdk/reward/b/b/b/c;->b(F)V

    return-void
.end method

.method static synthetic b(Lcom/kwad/sdk/reward/b/b/b/c;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/reward/b/b/b/c;->j:Z

    return p1
.end method

.method static synthetic c(Lcom/kwad/sdk/reward/b/b/b/c;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/b/b/b/c;->d:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic d(Lcom/kwad/sdk/reward/b/b/b/c;)Lcom/kwad/sdk/reward/a;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/b/b/b/c;->a:Lcom/kwad/sdk/reward/a;

    return-object p0
.end method

.method static synthetic e(Lcom/kwad/sdk/reward/b/b/b/c;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/b/b/b/c;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object p0
.end method

.method private e()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/c;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/c;->d:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/c;->d:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_30

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/kwad/sdk/reward/b/b/b/c$3;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/reward/b/b/b/c$3;-><init>(Lcom/kwad/sdk/reward/b/b/b/c;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/c;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :array_30
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic f(Lcom/kwad/sdk/reward/b/b/b/c;)Lcom/kwad/sdk/reward/a;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/b/b/b/c;->a:Lcom/kwad/sdk/reward/a;

    return-object p0
.end method

.method static synthetic g(Lcom/kwad/sdk/reward/b/b/b/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/reward/b/b/b/c;->p()V

    return-void
.end method

.method static synthetic h(Lcom/kwad/sdk/reward/b/b/b/c;)J
    .registers 3

    iget-wide v0, p0, Lcom/kwad/sdk/reward/b/b/b/c;->g:J

    return-wide v0
.end method

.method static synthetic i(Lcom/kwad/sdk/reward/b/b/b/c;)Lcom/kwad/sdk/reward/a;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/b/b/b/c;->a:Lcom/kwad/sdk/reward/a;

    return-object p0
.end method

.method static synthetic j(Lcom/kwad/sdk/reward/b/b/b/c;)Lcom/kwad/sdk/reward/a;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/b/b/b/c;->a:Lcom/kwad/sdk/reward/a;

    return-object p0
.end method

.method private m()V
    .registers 7

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/c;->f:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-virtual {p0}, Lcom/kwad/sdk/reward/b/b/b/c;->l()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/config/c;->a(Lcom/kwad/sdk/core/response/model/AdInfo;Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/b/b/c;->f:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->j(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-direct {p0}, Lcom/kwad/sdk/reward/b/b/b/c;->n()V

    goto :goto_49

    :cond_16
    if-eqz v0, :cond_1c

    :goto_18
    invoke-direct {p0}, Lcom/kwad/sdk/reward/b/b/b/c;->o()V

    goto :goto_49

    :cond_1c
    iget-boolean v0, p0, Lcom/kwad/sdk/reward/b/b/b/c;->h:Z

    if-nez v0, :cond_32

    iget-wide v0, p0, Lcom/kwad/sdk/reward/b/b/b/c;->g:J

    iget-object v2, p0, Lcom/kwad/sdk/reward/b/b/b/c;->f:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v2}, Lcom/kwad/sdk/core/response/b/a;->k(Lcom/kwad/sdk/core/response/model/AdInfo;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2d

    goto :goto_32

    :cond_2d
    iget-boolean v0, p0, Lcom/kwad/sdk/reward/b/b/b/c;->j:Z

    if-eqz v0, :cond_49

    goto :goto_18

    :cond_32
    :goto_32
    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/c;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/b/b/c;->f:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget v1, v1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->skipSecond:I

    iget-wide v2, p0, Lcom/kwad/sdk/reward/b/b/b/c;->g:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;II)V

    invoke-direct {p0}, Lcom/kwad/sdk/reward/b/b/b/c;->q()V

    invoke-direct {p0}, Lcom/kwad/sdk/reward/b/b/b/c;->p()V

    :cond_49
    :goto_49
    return-void
.end method

.method private n()V
    .registers 7

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/c;->f:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->b(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iget-object v2, p0, Lcom/kwad/sdk/reward/b/b/b/c;->f:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v2, v2, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget v2, v2, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->skipSecond:I

    const-string v3, "\u89c2\u770b\u5b8c\u6574\u89c6\u9891\u5373\u53ef\u83b7\u53d6\u5956\u52b1"

    if-lez v2, :cond_3a

    iget-object v4, p0, Lcom/kwad/sdk/reward/b/b/b/c;->f:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v4}, Lcom/kwad/sdk/core/response/b/a;->j(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v4

    if-nez v4, :cond_3a

    int-to-long v4, v2

    cmp-long v0, v0, v4

    if-lez v0, :cond_3a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u89c2\u770b\u89c6\u9891"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s\u5373\u53ef\u83b7\u53d6\u5956\u52b1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :cond_3a
    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/c;->i:Landroid/app/Activity;

    new-instance v1, Lcom/kwad/sdk/reward/b/b/b/c$4;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/reward/b/b/b/c$4;-><init>(Lcom/kwad/sdk/reward/b/b/b/c;)V

    invoke-static {v0, v3, v1}, Lcom/kwad/sdk/reward/e;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/kwad/sdk/reward/e$a;)V

    return-void
.end method

.method private o()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/c;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->g:Landroid/app/Activity;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_9
    return-void
.end method

.method private p()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/c;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->i:Lcom/kwad/sdk/reward/c/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/reward/c/a;->g()V

    return-void
.end method

.method private q()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/c;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->b:Lcom/kwad/sdk/reward/a/b;

    invoke-interface {v0}, Lcom/kwad/sdk/reward/a/b;->e()V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/reward/d;->a()V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/c;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/c;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/c;->f:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/c;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->g:Landroid/app/Activity;

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/c;->i:Landroid/app/Activity;

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/c;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->i:Lcom/kwad/sdk/reward/c/a;

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/b/b/c;->k:Lcom/kwad/sdk/contentalliance/detail/video/d;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/reward/c/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/d;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/c;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->p:Ljava/util/Set;

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/b/b/c;->l:Lcom/kwad/sdk/reward/a/d;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected b()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/reward/d;->b()V

    sget v0, Lcom/kwad/sdk/R$id;->ksad_reward_container_new:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/reward/b/b/b/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/c;->c:Landroid/view/ViewGroup;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_detail_call_btn:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/reward/b/b/b/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/c;->b:Landroid/widget/TextView;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_detail_close_btn:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/reward/b/b/b/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/c;->d:Landroid/widget/ImageView;

    return-void
.end method

.method protected c()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/reward/d;->c()V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/c;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->i:Lcom/kwad/sdk/reward/c/a;

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/b/b/c;->k:Lcom/kwad/sdk/contentalliance/detail/video/d;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/reward/c/a;->b(Lcom/kwad/sdk/contentalliance/detail/video/d;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/c;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->p:Ljava/util/Set;

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/b/b/c;->l:Lcom/kwad/sdk/reward/a/d;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/c;->d:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_7

    invoke-direct {p0}, Lcom/kwad/sdk/reward/b/b/b/c;->m()V

    :cond_7
    return-void
.end method
