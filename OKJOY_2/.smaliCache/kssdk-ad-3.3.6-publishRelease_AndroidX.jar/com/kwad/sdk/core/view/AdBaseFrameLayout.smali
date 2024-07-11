.class public Lcom/kwad/sdk/core/view/AdBaseFrameLayout;
.super Landroid/widget/FrameLayout;


# static fields
.field private static final b:Lcom/kwad/sdk/utils/o$a;


# instance fields
.field private a:Landroid/view/View$OnTouchListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/kwad/sdk/utils/o$a;

    invoke-direct {v0}, Lcom/kwad/sdk/utils/o$a;-><init>()V

    sput-object v0, Lcom/kwad/sdk/core/view/AdBaseFrameLayout;->b:Lcom/kwad/sdk/utils/o$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/core/view/AdBaseFrameLayout;->a:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_3a

    goto :goto_35

    :pswitch_f
    sget-object v0, Lcom/kwad/sdk/core/view/AdBaseFrameLayout;->b:Lcom/kwad/sdk/utils/o$a;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/utils/o$a;->b(FF)V

    goto :goto_35

    :pswitch_1d
    sget-object v0, Lcom/kwad/sdk/core/view/AdBaseFrameLayout;->b:Lcom/kwad/sdk/utils/o$a;

    invoke-virtual {p0}, Lcom/kwad/sdk/core/view/AdBaseFrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/kwad/sdk/core/view/AdBaseFrameLayout;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/utils/o$a;->a(II)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/utils/o$a;->a(FF)V

    :goto_35
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_f
    .end packed-switch
.end method

.method public getTouchCoords()Lcom/kwad/sdk/utils/o$a;
    .registers 2

    sget-object v0, Lcom/kwad/sdk/core/view/AdBaseFrameLayout;->b:Lcom/kwad/sdk/utils/o$a;

    return-object v0
.end method

.method public saveHierarchyState(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setDispatchTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/view/AdBaseFrameLayout;->a:Landroid/view/View$OnTouchListener;

    return-void
.end method
