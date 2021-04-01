.class Lcom/kwad/sdk/nativead/a$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/nativead/a;->a(Landroid/view/ViewGroup;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:[I

.field final synthetic b:Lcom/kwad/sdk/e/g$a;

.field final synthetic c:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/nativead/a;Lcom/kwad/sdk/e/g$a;Landroid/view/ViewGroup;)V
    .registers 5

    iput-object p2, p0, Lcom/kwad/sdk/nativead/a$c;->b:Lcom/kwad/sdk/e/g$a;

    iput-object p3, p0, Lcom/kwad/sdk/nativead/a$c;->c:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/kwad/sdk/nativead/a$c;->a:[I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2d

    if-eq v0, v5, :cond_b

    :goto_a
    return v4

    :cond_b
    iget-object v0, p0, Lcom/kwad/sdk/nativead/a$c;->b:Lcom/kwad/sdk/e/g$a;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget-object v2, p0, Lcom/kwad/sdk/nativead/a$c;->a:[I

    aget v2, v2, v4

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget-object v3, p0, Lcom/kwad/sdk/nativead/a$c;->a:[I

    aget v3, v3, v5

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/e/g$a;->b(FF)V

    goto :goto_a

    :cond_2d
    iget-object v0, p0, Lcom/kwad/sdk/nativead/a$c;->b:Lcom/kwad/sdk/e/g$a;

    iget-object v1, p0, Lcom/kwad/sdk/nativead/a$c;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/kwad/sdk/nativead/a$c;->c:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/e/g$a;->a(II)V

    iget-object v0, p0, Lcom/kwad/sdk/nativead/a$c;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/kwad/sdk/nativead/a$c;->a:[I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/kwad/sdk/nativead/a$c;->b:Lcom/kwad/sdk/e/g$a;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget-object v2, p0, Lcom/kwad/sdk/nativead/a$c;->a:[I

    aget v2, v2, v4

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget-object v3, p0, Lcom/kwad/sdk/nativead/a$c;->a:[I

    aget v3, v3, v5

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/e/g$a;->a(FF)V

    goto :goto_a
.end method
