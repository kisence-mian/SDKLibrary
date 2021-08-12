.class public Lcom/kwad/sdk/core/view/KsAdContainer;
.super Landroid/widget/RelativeLayout;


# instance fields
.field protected a:Lcom/kwad/sdk/utils/o$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/kwad/sdk/utils/o$a;

    invoke-direct {p1}, Lcom/kwad/sdk/utils/o$a;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/core/view/KsAdContainer;->a:Lcom/kwad/sdk/utils/o$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/kwad/sdk/utils/o$a;

    invoke-direct {p1}, Lcom/kwad/sdk/utils/o$a;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/core/view/KsAdContainer;->a:Lcom/kwad/sdk/utils/o$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/kwad/sdk/utils/o$a;

    invoke-direct {p1}, Lcom/kwad/sdk/utils/o$a;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/core/view/KsAdContainer;->a:Lcom/kwad/sdk/utils/o$a;

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_36

    goto :goto_30

    :pswitch_8
    iget-object v0, p0, Lcom/kwad/sdk/core/view/KsAdContainer;->a:Lcom/kwad/sdk/utils/o$a;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/utils/o$a;->b(FF)V

    goto :goto_30

    :pswitch_16
    new-instance v0, Lcom/kwad/sdk/utils/o$a;

    invoke-virtual {p0}, Lcom/kwad/sdk/core/view/KsAdContainer;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/kwad/sdk/core/view/KsAdContainer;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/utils/o$a;-><init>(II)V

    iput-object v0, p0, Lcom/kwad/sdk/core/view/KsAdContainer;->a:Lcom/kwad/sdk/utils/o$a;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/utils/o$a;->a(FF)V

    :goto_30
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_16
        :pswitch_8
    .end packed-switch
.end method

.method public getTouchCoords()Lcom/kwad/sdk/utils/o$a;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/view/KsAdContainer;->a:Lcom/kwad/sdk/utils/o$a;

    return-object v0
.end method
