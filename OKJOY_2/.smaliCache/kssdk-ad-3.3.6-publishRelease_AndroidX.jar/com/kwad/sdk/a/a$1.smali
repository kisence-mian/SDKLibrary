.class Lcom/kwad/sdk/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/a/a;->a(Landroid/view/ViewGroup;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/utils/o$a;

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Lcom/kwad/sdk/a/a;

.field private d:[I


# direct methods
.method constructor <init>(Lcom/kwad/sdk/a/a;Lcom/kwad/sdk/utils/o$a;Landroid/view/ViewGroup;)V
    .registers 4

    iput-object p1, p0, Lcom/kwad/sdk/a/a$1;->c:Lcom/kwad/sdk/a/a;

    iput-object p2, p0, Lcom/kwad/sdk/a/a$1;->a:Lcom/kwad/sdk/utils/o$a;

    iput-object p3, p0, Lcom/kwad/sdk/a/a$1;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/kwad/sdk/a/a$1;->d:[I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_66

    goto :goto_65

    :pswitch_a
    iget-object p1, p0, Lcom/kwad/sdk/a/a$1;->a:Lcom/kwad/sdk/utils/o$a;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget-object v3, p0, Lcom/kwad/sdk/a/a$1;->d:[I

    aget v3, v3, v1

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget-object v3, p0, Lcom/kwad/sdk/a/a$1;->d:[I

    aget v0, v3, v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-virtual {p1, v2, p2}, Lcom/kwad/sdk/utils/o$a;->b(FF)V

    goto :goto_65

    :pswitch_2c
    iget-object p1, p0, Lcom/kwad/sdk/a/a$1;->a:Lcom/kwad/sdk/utils/o$a;

    iget-object v2, p0, Lcom/kwad/sdk/a/a$1;->b:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/kwad/sdk/a/a$1;->b:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/kwad/sdk/utils/o$a;->a(II)V

    iget-object p1, p0, Lcom/kwad/sdk/a/a$1;->b:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/kwad/sdk/a/a$1;->d:[I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    iget-object p1, p0, Lcom/kwad/sdk/a/a$1;->a:Lcom/kwad/sdk/utils/o$a;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget-object v3, p0, Lcom/kwad/sdk/a/a$1;->d:[I

    aget v3, v3, v1

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget-object v3, p0, Lcom/kwad/sdk/a/a$1;->d:[I

    aget v0, v3, v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-virtual {p1, v2, p2}, Lcom/kwad/sdk/utils/o$a;->a(FF)V

    :goto_65
    return v1

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_a
    .end packed-switch
.end method
