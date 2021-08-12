.class public Lcom/kwad/sdk/reward/b/b/b/a;
.super Lcom/kwad/sdk/reward/d;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private e:Lcom/kwad/sdk/core/response/model/AdInfo;

.field private f:Lcom/kwad/sdk/core/download/b/b;

.field private g:Lcom/kwad/sdk/contentalliance/detail/video/d;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/reward/d;-><init>()V

    new-instance v0, Lcom/kwad/sdk/reward/b/b/b/a$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/reward/b/b/b/a$1;-><init>(Lcom/kwad/sdk/reward/b/b/b/a;)V

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/a;->g:Lcom/kwad/sdk/contentalliance/detail/video/d;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/reward/b/b/b/a;)Lcom/kwad/sdk/core/response/model/AdInfo;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/b/b/b/a;->e:Lcom/kwad/sdk/core/response/model/AdInfo;

    return-object p0
.end method

.method static synthetic a(Lcom/kwad/sdk/reward/b/b/b/a;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwad/sdk/reward/b/b/b/a;->b(I)V

    return-void
.end method

.method private b(I)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/a;->b:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic b(Lcom/kwad/sdk/reward/b/b/b/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/reward/b/b/b/a;->e()V

    return-void
.end method

.method static synthetic c(Lcom/kwad/sdk/reward/b/b/b/a;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/b/b/b/a;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic d(Lcom/kwad/sdk/reward/b/b/b/a;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/b/b/b/a;->c:Landroid/widget/ImageView;

    return-object p0
.end method

.method private e()V
    .registers 3

    invoke-direct {p0}, Lcom/kwad/sdk/reward/b/b/b/a;->m()V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/a;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/a;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_32

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/kwad/sdk/reward/b/b/b/a$2;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/reward/b/b/b/a$2;-><init>(Lcom/kwad/sdk/reward/b/b/b/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Lcom/kwad/sdk/reward/b/b/b/a$3;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/reward/b/b/b/a$3;-><init>(Lcom/kwad/sdk/reward/b/b/b/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_32
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic e(Lcom/kwad/sdk/reward/b/b/b/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/reward/b/b/b/a;->n()V

    return-void
.end method

.method private m()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/a;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->b:Lcom/kwad/sdk/reward/a/b;

    invoke-interface {v0}, Lcom/kwad/sdk/reward/a/b;->e()V

    return-void
.end method

.method private n()V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/a;->d:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/b/b/a;->a:Lcom/kwad/sdk/reward/a;

    iget-object v1, v1, Lcom/kwad/sdk/reward/a;->h:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    invoke-virtual {v1}, Lcom/kwad/sdk/core/view/AdBaseFrameLayout;->getTouchCoords()Lcom/kwad/sdk/utils/o$a;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/reward/b/b/b/a;->a:Lcom/kwad/sdk/reward/a;

    iget-object v2, v2, Lcom/kwad/sdk/reward/a;->d:Lorg/json/JSONObject;

    const/16 v3, 0x29

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/utils/o$a;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/a;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->b:Lcom/kwad/sdk/reward/a/b;

    invoke-interface {v0}, Lcom/kwad/sdk/reward/a/b;->a()V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/reward/d;->a()V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/a;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/a;->d:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/a;->e:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/a;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->j:Lcom/kwad/sdk/core/download/b/b;

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/a;->f:Lcom/kwad/sdk/core/download/b/b;

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/a;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/b/b/a;->e:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->b(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/a;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/a;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->i:Lcom/kwad/sdk/reward/c/a;

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/b/b/a;->g:Lcom/kwad/sdk/contentalliance/detail/video/d;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/reward/c/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/d;)V

    return-void
.end method

.method protected b()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/reward/d;->b()V

    sget v0, Lcom/kwad/sdk/R$id;->ksad_video_count_down:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/reward/b/b/b/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/a;->b:Landroid/widget/TextView;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_detail_reward_icon:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/reward/b/b/b/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/a;->c:Landroid/widget/ImageView;

    return-void
.end method

.method protected c()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/reward/d;->c()V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/a;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->i:Lcom/kwad/sdk/reward/c/a;

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/b/b/a;->g:Lcom/kwad/sdk/contentalliance/detail/video/d;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/reward/c/a;->b(Lcom/kwad/sdk/contentalliance/detail/video/d;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/a;->c:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_14

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/b/a;->d:Lcom/kwad/sdk/core/response/model/AdTemplate;

    new-instance v1, Lcom/kwad/sdk/reward/b/b/b/a$4;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/reward/b/b/b/a$4;-><init>(Lcom/kwad/sdk/reward/b/b/b/a;)V

    iget-object v2, p0, Lcom/kwad/sdk/reward/b/b/b/a;->f:Lcom/kwad/sdk/core/download/b/b;

    invoke-static {p1, v0, v1, v2}, Lcom/kwad/sdk/core/download/b/a;->a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/download/b/a$a;Lcom/kwad/sdk/core/download/b/b;)V

    :cond_14
    return-void
.end method
