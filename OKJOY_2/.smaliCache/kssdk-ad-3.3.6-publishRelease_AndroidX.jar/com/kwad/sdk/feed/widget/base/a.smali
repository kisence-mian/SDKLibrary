.class public abstract Lcom/kwad/sdk/feed/widget/base/a;
.super Lcom/kwad/sdk/core/view/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/feed/widget/base/a$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field protected b:Lcom/kwad/sdk/core/response/model/AdInfo;

.field protected c:Lcom/kwad/sdk/feed/widget/base/a$a;

.field protected d:Landroid/content/Context;

.field protected e:Lcom/kwad/sdk/utils/o$a;

.field private f:Lcom/kwad/sdk/core/view/b;

.field private g:F

.field private h:Lcom/kwad/sdk/core/view/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/feed/widget/base/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kwad/sdk/feed/widget/base/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/kwad/sdk/core/view/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/kwad/sdk/feed/widget/base/a;->g:F

    new-instance p2, Lcom/kwad/sdk/feed/widget/base/a$1;

    invoke-direct {p2, p0}, Lcom/kwad/sdk/feed/widget/base/a$1;-><init>(Lcom/kwad/sdk/feed/widget/base/a;)V

    iput-object p2, p0, Lcom/kwad/sdk/feed/widget/base/a;->h:Lcom/kwad/sdk/core/view/b$a;

    new-instance p2, Lcom/kwad/sdk/utils/o$a;

    invoke-direct {p2}, Lcom/kwad/sdk/utils/o$a;-><init>()V

    iput-object p2, p0, Lcom/kwad/sdk/feed/widget/base/a;->e:Lcom/kwad/sdk/utils/o$a;

    iput-object p1, p0, Lcom/kwad/sdk/feed/widget/base/a;->d:Landroid/content/Context;

    invoke-direct {p0}, Lcom/kwad/sdk/feed/widget/base/a;->f()V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/kwad/sdk/feed/widget/base/a;->b(Landroid/view/ViewGroup;)Lcom/kwad/sdk/core/page/widget/a;

    move-result-object v0

    if-nez v0, :cond_12

    new-instance v0, Lcom/kwad/sdk/core/page/widget/a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/kwad/sdk/core/page/widget/a;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_12
    new-instance p1, Lcom/kwad/sdk/feed/widget/base/a$2;

    invoke-direct {p1, p0}, Lcom/kwad/sdk/feed/widget/base/a$2;-><init>(Lcom/kwad/sdk/feed/widget/base/a;)V

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/page/widget/a;->setViewCallback(Lcom/kwad/sdk/core/page/widget/a$a;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/page/widget/a;->setNeedCheckingShow(Z)V

    return-void
.end method

.method private b(Landroid/view/ViewGroup;)Lcom/kwad/sdk/core/page/widget/a;
    .registers 5

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_15

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/kwad/sdk/core/page/widget/a;

    if-eqz v2, :cond_12

    check-cast v1, Lcom/kwad/sdk/core/page/widget/a;

    return-object v1

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    const/4 p1, 0x0

    return-object p1
.end method

.method private f()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/base/a;->d:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/kwad/sdk/feed/widget/base/a;->getLayoutId()I

    move-result v1

    invoke-static {v0, v1, p0}, Lcom/kwad/sdk/feed/widget/base/a;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0}, Lcom/kwad/sdk/feed/widget/base/a;->getHWRatio()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/feed/widget/base/a;->setRatio(F)V

    invoke-virtual {p0}, Lcom/kwad/sdk/feed/widget/base/a;->c()V

    new-instance v0, Lcom/kwad/sdk/core/view/b;

    const/16 v1, 0x46

    invoke-direct {v0, p0, v1}, Lcom/kwad/sdk/core/view/b;-><init>(Landroid/view/View;I)V

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/base/a;->f:Lcom/kwad/sdk/core/view/b;

    invoke-direct {p0, p0}, Lcom/kwad/sdk/feed/widget/base/a;->a(Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/base/a;->f:Lcom/kwad/sdk/core/view/b;

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/base/a;->h:Lcom/kwad/sdk/core/view/b$a;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/view/b;->a(Lcom/kwad/sdk/core/view/b$a;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/base/a;->f:Lcom/kwad/sdk/core/view/b;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/view/b;->a()V

    return-void
.end method

.method public a(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/feed/widget/base/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/feed/widget/base/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    return-void
.end method

.method protected b()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/base/a;->f:Lcom/kwad/sdk/core/view/b;

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/base/a;->h:Lcom/kwad/sdk/core/view/b$a;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/view/b;->b(Lcom/kwad/sdk/core/view/b$a;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/base/a;->f:Lcom/kwad/sdk/core/view/b;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/view/b;->b()V

    return-void
.end method

.method protected abstract c()V
.end method

.method protected d()V
    .registers 1

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_36

    goto :goto_30

    :pswitch_8
    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/base/a;->e:Lcom/kwad/sdk/utils/o$a;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/utils/o$a;->b(FF)V

    goto :goto_30

    :pswitch_16
    new-instance v0, Lcom/kwad/sdk/utils/o$a;

    invoke-virtual {p0}, Lcom/kwad/sdk/feed/widget/base/a;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/kwad/sdk/feed/widget/base/a;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/utils/o$a;-><init>(II)V

    iput-object v0, p0, Lcom/kwad/sdk/feed/widget/base/a;->e:Lcom/kwad/sdk/utils/o$a;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/utils/o$a;->a(FF)V

    :goto_30
    invoke-super {p0, p1}, Lcom/kwad/sdk/core/view/a;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_16
        :pswitch_8
    .end packed-switch
.end method

.method protected e()V
    .registers 1

    return-void
.end method

.method protected getHWRatio()F
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getLayoutId()I
.end method

.method public getRatio()F
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/feed/widget/base/a;->g:F

    return v0
.end method

.method public getTouchCoords()Lcom/kwad/sdk/utils/o$a;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/base/a;->e:Lcom/kwad/sdk/utils/o$a;

    return-object v0
.end method

.method protected j()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/base/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-boolean v0, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mPvReported:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/base/a;->c:Lcom/kwad/sdk/feed/widget/base/a$a;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lcom/kwad/sdk/feed/widget/base/a$a;->b()V

    :cond_d
    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/base/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V

    return-void
.end method

.method protected k()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/base/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-virtual {p0}, Lcom/kwad/sdk/feed/widget/base/a;->getTouchCoords()Lcom/kwad/sdk/utils/o$a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/utils/o$a;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/base/a;->c:Lcom/kwad/sdk/feed/widget/base/a$a;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lcom/kwad/sdk/feed/widget/base/a$a;->a()V

    :cond_10
    return-void
.end method

.method protected l()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/base/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/base/a;->c:Lcom/kwad/sdk/feed/widget/base/a$a;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/kwad/sdk/feed/widget/base/a$a;->c()V

    :cond_c
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    iget v0, p0, Lcom/kwad/sdk/feed/widget/base/a;->g:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2e

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "widthSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseFeedView"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float p2, p2

    iget v0, p0, Lcom/kwad/sdk/feed/widget/base/a;->g:F

    mul-float/2addr p2, v0

    float-to-int p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_2e
    invoke-super {p0, p1, p2}, Lcom/kwad/sdk/core/view/a;->onMeasure(II)V

    return-void
.end method

.method public setAdClickListener(Lcom/kwad/sdk/feed/widget/base/a$a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/feed/widget/base/a;->c:Lcom/kwad/sdk/feed/widget/base/a$a;

    return-void
.end method

.method public setMargin(I)V
    .registers 2

    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/kwad/sdk/feed/widget/base/a;->setPadding(IIII)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/feed/widget/base/a;->setBackgroundColor(I)V

    return-void
.end method

.method public setRatio(F)V
    .registers 2

    iput p1, p0, Lcom/kwad/sdk/feed/widget/base/a;->g:F

    return-void
.end method
