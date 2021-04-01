.class public Lcom/kwad/sdk/core/view/KsAdContainer;
.super Landroid/widget/RelativeLayout;
.source ""


# instance fields
.field protected a:Lcom/kwad/sdk/e/g$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/kwad/sdk/e/g$a;

    invoke-direct {v0}, Lcom/kwad/sdk/e/g$a;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/view/KsAdContainer;->a:Lcom/kwad/sdk/e/g$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/kwad/sdk/e/g$a;

    invoke-direct {v0}, Lcom/kwad/sdk/e/g$a;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/view/KsAdContainer;->a:Lcom/kwad/sdk/e/g$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/kwad/sdk/e/g$a;

    invoke-direct {v0}, Lcom/kwad/sdk/e/g$a;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/view/KsAdContainer;->a:Lcom/kwad/sdk/e/g$a;

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    :goto_9
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_e
    iget-object v0, p0, Lcom/kwad/sdk/core/view/KsAdContainer;->a:Lcom/kwad/sdk/e/g$a;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/e/g$a;->b(FF)V

    goto :goto_9

    :cond_1c
    new-instance v0, Lcom/kwad/sdk/e/g$a;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/e/g$a;-><init>(II)V

    iput-object v0, p0, Lcom/kwad/sdk/core/view/KsAdContainer;->a:Lcom/kwad/sdk/e/g$a;

    iget-object v0, p0, Lcom/kwad/sdk/core/view/KsAdContainer;->a:Lcom/kwad/sdk/e/g$a;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/e/g$a;->a(FF)V

    goto :goto_9
.end method

.method public getTouchCoords()Lcom/kwad/sdk/e/g$a;
    .registers 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/core/view/KsAdContainer;->a:Lcom/kwad/sdk/e/g$a;

    return-object v0
.end method
