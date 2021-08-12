.class public Lcom/sigmob/sdk/mraid/CloseableLayout;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/mraid/CloseableLayout$c;,
        Lcom/sigmob/sdk/mraid/CloseableLayout$a;,
        Lcom/sigmob/sdk/mraid/CloseableLayout$b;
    }
.end annotation


# instance fields
.field private final a:I

.field private b:Lcom/sigmob/sdk/mraid/CloseableLayout$b;

.field private final c:Landroid/graphics/drawable/StateListDrawable;

.field private d:Lcom/sigmob/sdk/mraid/CloseableLayout$a;

.field private final e:I

.field private final f:I

.field private final g:I

.field private h:Z

.field private final i:Landroid/graphics/Rect;

.field private final j:Landroid/graphics/Rect;

.field private final k:Landroid/graphics/Rect;

.field private final l:Landroid/graphics/Rect;

.field private m:Z

.field private n:Lcom/sigmob/sdk/mraid/CloseableLayout$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sigmob/sdk/mraid/CloseableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sigmob/sdk/mraid/CloseableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->i:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->j:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->k:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->l:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object p2, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->c:Landroid/graphics/drawable/StateListDrawable;

    sget-object p3, Lcom/sigmob/sdk/mraid/CloseableLayout$a;->c:Lcom/sigmob/sdk/mraid/CloseableLayout$a;

    iput-object p3, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->d:Lcom/sigmob/sdk/mraid/CloseableLayout$a;

    sget-object p3, Lcom/sigmob/sdk/mraid/CloseableLayout;->EMPTY_STATE_SET:[I

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/StateListDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->a:I

    const/high16 p2, 0x42480000    # 50.0f

    invoke-static {p2, p1}, Lcom/sigmob/sdk/common/f/d;->c(FLandroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->e:I

    const/high16 p2, 0x41f00000    # 30.0f

    invoke-static {p2, p1}, Lcom/sigmob/sdk/common/f/d;->c(FLandroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->f:I

    const/high16 p2, 0x41000000    # 8.0f

    invoke-static {p2, p1}, Lcom/sigmob/sdk/common/f/d;->c(FLandroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->g:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/CloseableLayout;->setWillNotDraw(Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->m:Z

    return-void
.end method

.method private a(Lcom/sigmob/sdk/mraid/CloseableLayout$a;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 5

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid/CloseableLayout$a;->a()I

    move-result p1

    invoke-static {p1, p2, p2, p3, p4}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/mraid/CloseableLayout;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/mraid/CloseableLayout;->setClosePressed(Z)V

    return-void
.end method

.method private b(Lcom/sigmob/sdk/mraid/CloseableLayout$a;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 5

    iget v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->f:I

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/sigmob/sdk/mraid/CloseableLayout;->a(Lcom/sigmob/sdk/mraid/CloseableLayout$a;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method private c()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid/CloseableLayout;->playSoundEffect(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->b:Lcom/sigmob/sdk/mraid/CloseableLayout$b;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/sigmob/sdk/mraid/CloseableLayout$b;->a()V

    :cond_b
    return-void
.end method

.method private setClosePressed(Z)V
    .registers 3

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/CloseableLayout;->b()Z

    move-result v0

    if-ne p1, v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->c:Landroid/graphics/drawable/StateListDrawable;

    if-eqz p1, :cond_e

    sget-object p1, Lcom/sigmob/sdk/mraid/CloseableLayout;->SELECTED_STATE_SET:[I

    goto :goto_10

    :cond_e
    sget-object p1, Lcom/sigmob/sdk/mraid/CloseableLayout;->EMPTY_STATE_SET:[I

    :goto_10
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->j:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/CloseableLayout;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/mraid/CloseableLayout$a;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 5

    iget v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->e:I

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/sigmob/sdk/mraid/CloseableLayout;->a(Lcom/sigmob/sdk/mraid/CloseableLayout$a;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->m:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->c:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method a(III)Z
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->j:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p3

    if-lt p1, v0, :cond_1e

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->j:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p3

    if-lt p2, v0, :cond_1e

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->j:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p3

    if-ge p1, v0, :cond_1e

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->j:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p3

    if-ge p2, p1, :cond_1e

    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    return p1
.end method

.method b()Z
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->c:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v0

    sget-object v1, Lcom/sigmob/sdk/mraid/CloseableLayout;->SELECTED_STATE_SET:[I

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->h:Z

    if-eqz v0, :cond_3e

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->h:Z

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->i:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/CloseableLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/CloseableLayout;->getHeight()I

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->d:Lcom/sigmob/sdk/mraid/CloseableLayout$a;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->i:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->j:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sigmob/sdk/mraid/CloseableLayout;->a(Lcom/sigmob/sdk/mraid/CloseableLayout$a;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->l:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->j:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->l:Landroid/graphics/Rect;

    iget v1, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->g:I

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->inset(II)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->d:Lcom/sigmob/sdk/mraid/CloseableLayout$a;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->l:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->k:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1, v2}, Lcom/sigmob/sdk/mraid/CloseableLayout;->b(Lcom/sigmob/sdk/mraid/CloseableLayout$a;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->c:Landroid/graphics/drawable/StateListDrawable;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->k:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_3e
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->c:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->c:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4b
    return-void
.end method

.method getCloseBounds()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->j:Landroid/graphics/Rect;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1, v1}, Lcom/sigmob/sdk/mraid/CloseableLayout;->a(III)Z

    move-result p1

    return p1
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->h:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->a:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/sigmob/sdk/mraid/CloseableLayout;->a(III)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4b

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/CloseableLayout;->a()Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_4b

    :cond_1a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_52

    :pswitch_22
    goto :goto_4a

    :pswitch_23
    invoke-direct {p0, v1}, Lcom/sigmob/sdk/mraid/CloseableLayout;->setClosePressed(Z)V

    goto :goto_4a

    :pswitch_27
    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/CloseableLayout;->b()Z

    move-result p1

    if-eqz p1, :cond_4a

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->n:Lcom/sigmob/sdk/mraid/CloseableLayout$c;

    if-nez p1, :cond_39

    new-instance p1, Lcom/sigmob/sdk/mraid/CloseableLayout$c;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/sigmob/sdk/mraid/CloseableLayout$c;-><init>(Lcom/sigmob/sdk/mraid/CloseableLayout;Lcom/sigmob/sdk/mraid/CloseableLayout$1;)V

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->n:Lcom/sigmob/sdk/mraid/CloseableLayout$c;

    :cond_39
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->n:Lcom/sigmob/sdk/mraid/CloseableLayout$c;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/sigmob/sdk/mraid/CloseableLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct {p0}, Lcom/sigmob/sdk/mraid/CloseableLayout;->c()V

    goto :goto_4a

    :pswitch_47
    invoke-direct {p0, v0}, Lcom/sigmob/sdk/mraid/CloseableLayout;->setClosePressed(Z)V

    :cond_4a
    :goto_4a
    return v0

    :cond_4b
    :goto_4b
    invoke-direct {p0, v1}, Lcom/sigmob/sdk/mraid/CloseableLayout;->setClosePressed(Z)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v1

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_47
        :pswitch_27
        :pswitch_22
        :pswitch_23
    .end packed-switch
.end method

.method public setCloseAlwaysInteractable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->m:Z

    return-void
.end method

.method setCloseBoundChanged(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->h:Z

    return-void
.end method

.method setCloseBounds(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->j:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setClosePosition(Lcom/sigmob/sdk/mraid/CloseableLayout$a;)V
    .registers 2

    invoke-static {p1}, Lcom/sigmob/sdk/common/f/m;->a(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->d:Lcom/sigmob/sdk/mraid/CloseableLayout$a;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->h:Z

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/CloseableLayout;->invalidate()V

    return-void
.end method

.method public setCloseVisible(Z)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->c:Landroid/graphics/drawable/StateListDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/StateListDrawable;->setVisible(ZZ)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->j:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/CloseableLayout;->invalidate(Landroid/graphics/Rect;)V

    :cond_e
    return-void
.end method

.method public setOnCloseListener(Lcom/sigmob/sdk/mraid/CloseableLayout$b;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/CloseableLayout;->b:Lcom/sigmob/sdk/mraid/CloseableLayout$b;

    return-void
.end method
