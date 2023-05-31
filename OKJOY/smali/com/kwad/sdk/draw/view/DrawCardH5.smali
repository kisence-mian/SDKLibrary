.class public Lcom/kwad/sdk/draw/view/DrawCardH5;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/draw/view/DrawCardH5$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private c:Lcom/kwad/sdk/draw/view/DrawCardH5$b;

.field private d:I

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/draw/view/DrawCardH5;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/draw/view/DrawCardH5;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/draw/view/DrawCardH5;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/draw/view/DrawCardH5;)Lcom/kwad/sdk/draw/view/DrawCardH5$b;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardH5;->c:Lcom/kwad/sdk/draw/view/DrawCardH5$b;

    return-object v0
.end method

.method private a(II)V
    .registers 7

    invoke-direct {p0}, Lcom/kwad/sdk/draw/view/DrawCardH5;->e()V

    invoke-static {p0, p1, p2}, Lcom/kwad/sdk/d/b;->a(Landroid/view/View;II)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardH5;->h:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardH5;->h:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardH5;->h:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardH5;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/draw/view/DrawCardH5;->a:Landroid/content/Context;

    const-string v0, "ksad_draw_card_h5"

    invoke-static {p1, v0}, Lcom/kwad/sdk/e/l;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const-string v0, "ksad_card_close"

    invoke-static {p1, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardH5;->e:Landroid/widget/ImageView;

    const-string v0, "ksad_card_ad_desc"

    invoke-static {p1, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardH5;->f:Landroid/widget/TextView;

    const-string v0, "ksad_card_h5_open_btn"

    invoke-static {p1, v0}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardH5;->g:Landroid/widget/TextView;

    return-void
.end method

.method private e()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardH5;->h:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardH5;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_c
    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/draw/view/DrawCardH5$b;)V
    .registers 7
    .param p1    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/kwad/sdk/draw/view/DrawCardH5;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardH5;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    iput-object p2, p0, Lcom/kwad/sdk/draw/view/DrawCardH5;->c:Lcom/kwad/sdk/draw/view/DrawCardH5$b;

    iget-object v1, p0, Lcom/kwad/sdk/draw/view/DrawCardH5;->f:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->c(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/kwad/sdk/draw/view/DrawCardH5;->g:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->b(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardH5;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardH5;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardH5;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/kwad/sdk/e/o;->k(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/kwad/sdk/draw/view/DrawCardH5;->a:Landroid/content/Context;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v1, v2}, Lcom/kwad/sdk/e/p;->a(Landroid/content/Context;F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/kwad/sdk/draw/view/DrawCardH5;->a:Landroid/content/Context;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/kwad/sdk/e/p;->a(Landroid/content/Context;F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Lcom/kwad/sdk/draw/view/DrawCardH5;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->measure(II)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardH5;->a:Landroid/content/Context;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/p;->a(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Lcom/kwad/sdk/draw/view/DrawCardH5;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/kwad/sdk/draw/view/DrawCardH5;->d:I

    return-void
.end method

.method public b()V
    .registers 3

    iget v0, p0, Lcom/kwad/sdk/draw/view/DrawCardH5;->d:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/kwad/sdk/draw/view/DrawCardH5;->a(II)V

    return-void
.end method

.method public c()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/draw/view/DrawCardH5;->e()V

    return-void
.end method

.method public d()V
    .registers 3

    iget v0, p0, Lcom/kwad/sdk/draw/view/DrawCardH5;->d:I

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/kwad/sdk/draw/view/DrawCardH5;->a(II)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardH5;->e:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_f

    invoke-virtual {p0}, Lcom/kwad/sdk/draw/view/DrawCardH5;->b()V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/DrawCardH5;->c:Lcom/kwad/sdk/draw/view/DrawCardH5$b;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lcom/kwad/sdk/draw/view/DrawCardH5$b;->b()V

    :cond_e
    :goto_e
    return-void

    :cond_f
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/draw/view/DrawCardH5;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    new-instance v2, Lcom/kwad/sdk/draw/view/DrawCardH5$a;

    invoke-direct {v2, p0}, Lcom/kwad/sdk/draw/view/DrawCardH5$a;-><init>(Lcom/kwad/sdk/draw/view/DrawCardH5;)V

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/kwad/sdk/core/download/g/a;->a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/download/g/a$a;Lcom/kwad/sdk/core/download/g/b;)V

    goto :goto_e
.end method
