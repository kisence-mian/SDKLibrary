.class public Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/draw/view/playcard/DrawCardH5$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private c:Lcom/kwad/sdk/draw/view/playcard/DrawCardH5$a;

.field private d:I

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Lcom/kwad/sdk/widget/KsLogoView;

.field private i:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;)Lcom/kwad/sdk/draw/view/playcard/DrawCardH5$a;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;->c:Lcom/kwad/sdk/draw/view/playcard/DrawCardH5$a;

    return-object p0
.end method

.method private a(II)V
    .registers 5

    invoke-direct {p0}, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;->d()V

    invoke-static {p0, p1, p2}, Lcom/kwad/sdk/utils/ag;->a(Landroid/view/View;II)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;->i:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-direct {p2, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;->i:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;->a:Landroid/content/Context;

    sget v0, Lcom/kwad/sdk/R$layout;->ksad_draw_card_h5:I

    invoke-static {p1, v0, p0}, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget p1, Lcom/kwad/sdk/R$id;->ksad_card_close:I

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;->e:Landroid/widget/ImageView;

    sget p1, Lcom/kwad/sdk/R$id;->ksad_card_ad_desc:I

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;->f:Landroid/widget/TextView;

    sget p1, Lcom/kwad/sdk/R$id;->ksad_card_h5_open_btn:I

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;->g:Landroid/widget/TextView;

    sget p1, Lcom/kwad/sdk/R$id;->ksad_draw_h5_logo:I

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/kwad/sdk/widget/KsLogoView;

    iput-object p1, p0, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;->h:Lcom/kwad/sdk/widget/KsLogoView;

    return-void
.end method

.method private d()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;->i:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_c
    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;->d()V

    return-void
.end method

.method public a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/draw/view/playcard/DrawCardH5$a;)V
    .registers 5

    iput-object p1, p0, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    iput-object p2, p0, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;->c:Lcom/kwad/sdk/draw/view/playcard/DrawCardH5$a;

    iget-object p2, p0, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;->f:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->l(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;->g:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->s(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;->e:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;->g:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;->h:Lcom/kwad/sdk/widget/KsLogoView;

    invoke-virtual {p2, p1}, Lcom/kwad/sdk/widget/KsLogoView;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    invoke-virtual {p0, p0}, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/kwad/sdk/utils/ac;->g(Landroid/content/Context;)I

    move-result p1

    iget-object p2, p0, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;->a:Landroid/content/Context;

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {p2, v0}, Lcom/kwad/sdk/utils/ah;->a(Landroid/content/Context;F)I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;->a:Landroid/content/Context;

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {p2, v0}, Lcom/kwad/sdk/utils/ah;->a(Landroid/content/Context;F)I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    const/high16 p2, -0x80000000

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->measure(II)V

    iget-object p1, p0, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;->a:Landroid/content/Context;

    const/high16 p2, 0x42c80000    # 100.0f

    invoke-static {p1, p2}, Lcom/kwad/sdk/utils/ah;->a(Landroid/content/Context;F)I

    move-result p1

    iget-object p2, p0, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;->f:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;->d:I

    return-void
.end method

.method public b()V
    .registers 3

    iget v0, p0, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;->d:I

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;->a(II)V

    return-void
.end method

.method public c()V
    .registers 3

    iget v0, p0, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;->d:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;->a(II)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;->e:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_f

    invoke-virtual {p0}, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;->c()V

    iget-object p1, p0, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;->c:Lcom/kwad/sdk/draw/view/playcard/DrawCardH5$a;

    if-eqz p1, :cond_1e

    invoke-interface {p1}, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5$a;->a()V

    goto :goto_1e

    :cond_f
    invoke-virtual {p0}, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    new-instance v1, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5$1;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/draw/view/playcard/DrawCardH5$1;-><init>(Lcom/kwad/sdk/draw/view/playcard/DrawCardH5;)V

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/kwad/sdk/core/download/b/a;->a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/download/b/a$a;Lcom/kwad/sdk/core/download/b/b;)V

    :cond_1e
    :goto_1e
    return-void
.end method
