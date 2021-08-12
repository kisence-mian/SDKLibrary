.class public Lcom/kwad/sdk/fullscreen/a/a/d;
.super Lcom/kwad/sdk/reward/d;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private e:Lcom/kwad/sdk/reward/a/d;

.field private f:Lcom/kwad/sdk/contentalliance/detail/video/d;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/reward/d;-><init>()V

    new-instance v0, Lcom/kwad/sdk/fullscreen/a/a/d$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/fullscreen/a/a/d$1;-><init>(Lcom/kwad/sdk/fullscreen/a/a/d;)V

    iput-object v0, p0, Lcom/kwad/sdk/fullscreen/a/a/d;->e:Lcom/kwad/sdk/reward/a/d;

    new-instance v0, Lcom/kwad/sdk/fullscreen/a/a/d$2;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/fullscreen/a/a/d$2;-><init>(Lcom/kwad/sdk/fullscreen/a/a/d;)V

    iput-object v0, p0, Lcom/kwad/sdk/fullscreen/a/a/d;->f:Lcom/kwad/sdk/contentalliance/detail/video/d;

    return-void
.end method

.method private a(F)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/a/a/d;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p0}, Lcom/kwad/sdk/fullscreen/a/a/d;->l()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v0, v1}, Lcom/kwad/sdk/utils/ah;->a(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Lcom/kwad/sdk/fullscreen/a/a/d;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object p1, p0, Lcom/kwad/sdk/fullscreen/a/a/d;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_24
    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/fullscreen/a/a/d;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/fullscreen/a/a/d;->e()V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/fullscreen/a/a/d;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwad/sdk/fullscreen/a/a/d;->a(F)V

    return-void
.end method

.method static synthetic b(Lcom/kwad/sdk/fullscreen/a/a/d;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/fullscreen/a/a/d;->b:Landroid/widget/ImageView;

    return-object p0
.end method

.method private e()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/a/a/d;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/a/a/d;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/a/a/d;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_30

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/kwad/sdk/fullscreen/a/a/d$3;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/fullscreen/a/a/d$3;-><init>(Lcom/kwad/sdk/fullscreen/a/a/d;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/a/a/d;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :array_30
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private m()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/a/a/d;->d:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v1, p0, Lcom/kwad/sdk/fullscreen/a/a/d;->a:Lcom/kwad/sdk/reward/a;

    iget-object v1, v1, Lcom/kwad/sdk/reward/a;->d:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/report/b;->i(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/a/a/d;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->b:Lcom/kwad/sdk/reward/a/b;

    invoke-interface {v0}, Lcom/kwad/sdk/reward/a/b;->b()V

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/a/a/d;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->i:Lcom/kwad/sdk/reward/c/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/reward/c/a;->h()V

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/a/a/d;->a:Lcom/kwad/sdk/reward/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/reward/a;->b()V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/reward/d;->a()V

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/a/a/d;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput-object v0, p0, Lcom/kwad/sdk/fullscreen/a/a/d;->d:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/a/a/d;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->i:Lcom/kwad/sdk/reward/c/a;

    iget-object v1, p0, Lcom/kwad/sdk/fullscreen/a/a/d;->f:Lcom/kwad/sdk/contentalliance/detail/video/d;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/reward/c/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/d;)V

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/a/a/d;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->p:Ljava/util/Set;

    iget-object v1, p0, Lcom/kwad/sdk/fullscreen/a/a/d;->e:Lcom/kwad/sdk/reward/a/d;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected b()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/reward/d;->b()V

    sget v0, Lcom/kwad/sdk/R$id;->ksad_detail_call_btn:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/fullscreen/a/a/d;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/fullscreen/a/a/d;->c:Landroid/widget/TextView;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_skip_icon:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/fullscreen/a/a/d;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwad/sdk/fullscreen/a/a/d;->b:Landroid/widget/ImageView;

    return-void
.end method

.method protected c()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/reward/d;->c()V

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/a/a/d;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->i:Lcom/kwad/sdk/reward/c/a;

    iget-object v1, p0, Lcom/kwad/sdk/fullscreen/a/a/d;->f:Lcom/kwad/sdk/contentalliance/detail/video/d;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/reward/c/a;->b(Lcom/kwad/sdk/contentalliance/detail/video/d;)V

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/a/a/d;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->p:Ljava/util/Set;

    iget-object v1, p0, Lcom/kwad/sdk/fullscreen/a/a/d;->e:Lcom/kwad/sdk/reward/a/d;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/fullscreen/a/a/d;->b:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_7

    invoke-direct {p0}, Lcom/kwad/sdk/fullscreen/a/a/d;->m()V

    :cond_7
    return-void
.end method
