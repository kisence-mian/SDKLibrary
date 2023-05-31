.class public Lcom/kwad/sdk/core/view/KsAdBaseFrameLayout;
.super Landroid/widget/FrameLayout;
.source ""


# static fields
.field private static a:Lcom/kwad/sdk/e/g$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/kwad/sdk/e/g$a;

    invoke-direct {v0}, Lcom/kwad/sdk/e/g$a;-><init>()V

    sput-object v0, Lcom/kwad/sdk/core/view/KsAdBaseFrameLayout;->a:Lcom/kwad/sdk/e/g$a;

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

.method public static getTouchCoords()Lcom/kwad/sdk/e/g$a;
    .registers 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    sget-object v0, Lcom/kwad/sdk/core/view/KsAdBaseFrameLayout;->a:Lcom/kwad/sdk/e/g$a;

    return-object v0
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
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_e
    sget-object v0, Lcom/kwad/sdk/core/view/KsAdBaseFrameLayout;->a:Lcom/kwad/sdk/e/g$a;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/e/g$a;->b(FF)V

    goto :goto_9

    :cond_1c
    new-instance v0, Lcom/kwad/sdk/e/g$a;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/e/g$a;-><init>(II)V

    sput-object v0, Lcom/kwad/sdk/core/view/KsAdBaseFrameLayout;->a:Lcom/kwad/sdk/e/g$a;

    sget-object v0, Lcom/kwad/sdk/core/view/KsAdBaseFrameLayout;->a:Lcom/kwad/sdk/e/g$a;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/e/g$a;->a(FF)V

    goto :goto_9
.end method
