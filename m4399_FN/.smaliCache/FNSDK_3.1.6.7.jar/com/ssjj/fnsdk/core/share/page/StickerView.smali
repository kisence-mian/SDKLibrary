.class public Lcom/ssjj/fnsdk/core/share/page/StickerView;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ssjj/fnsdk/core/share/page/StickerView$StickerViewListener;
    }
.end annotation


# static fields
.field public static final CTR_LEFT_TOP:I = 0x0

.field public static final CTR_MID_MID:I = 0x4

.field public static final CTR_NONE:I = -0x1

.field public static final CTR_RIGHT_BOTTOM:I = 0x2

.field public static final OPER_DEFAULT:I = -0x1

.field public static final OPER_ROTATE:I = 0x2

.field public static final OPER_SCALE:I = 0x1

.field public static final OPER_SELECTED:I = 0x3

.field public static final OPER_TRANSLATE:I


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:F

.field private K:F

.field private L:Lcom/ssjj/fnsdk/core/share/page/StickerView$StickerViewListener;

.field private a:Ljava/lang/String;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Bitmap;

.field public current_ctr:I

.field private d:Landroid/graphics/Bitmap;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:[F

.field private l:[F

.field public lastOper:I

.field private m:Landroid/graphics/Matrix;

.field private n:Landroid/graphics/Paint;

.field private o:Landroid/graphics/Paint;

.field private p:F

.field private q:F

.field private r:F

.field private s:Landroid/graphics/Point;

.field private t:Landroid/graphics/Point;

.field private u:Landroid/graphics/Point;

.field private v:F

.field private w:F

.field private x:F

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->p:F

    iput p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->q:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->r:F

    const/4 v0, 0x3

    iput v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->lastOper:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->A:Z

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->B:Z

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->C:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->D:Z

    iput-boolean v1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->E:Z

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->F:Z

    iput-boolean v1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->G:Z

    iput-boolean v1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->H:Z

    iput-boolean v1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->I:Z

    iput p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->J:F

    iput p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->K:F

    const/4 p1, -0x1

    iput p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->current_ctr:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->L:Lcom/ssjj/fnsdk/core/share/page/StickerView$StickerViewListener;

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/ssjj/fnsdk/core/share/page/StickerView;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;FF)V
    .registers 7

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->p:F

    iput p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->q:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->r:F

    const/4 v0, 0x3

    iput v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->lastOper:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->A:Z

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->B:Z

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->C:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->D:Z

    iput-boolean v1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->E:Z

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->F:Z

    iput-boolean v1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->G:Z

    iput-boolean v1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->H:Z

    iput-boolean v1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->I:Z

    iput p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->J:F

    iput p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->K:F

    const/4 p1, -0x1

    iput p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->current_ctr:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->L:Lcom/ssjj/fnsdk/core/share/page/StickerView$StickerViewListener;

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->a:Ljava/lang/String;

    iput p3, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->J:F

    iput p4, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->K:F

    invoke-direct {p0, p2}, Lcom/ssjj/fnsdk/core/share/page/StickerView;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->p:F

    iput p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->q:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->r:F

    const/4 v0, 0x3

    iput v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->lastOper:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->A:Z

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->B:Z

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->C:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->D:Z

    iput-boolean v1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->E:Z

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->F:Z

    iput-boolean v1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->G:Z

    iput-boolean v1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->H:Z

    iput-boolean v1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->I:Z

    iput p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->J:F

    iput p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->K:F

    const/4 p1, -0x1

    iput p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->current_ctr:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->L:Lcom/ssjj/fnsdk/core/share/page/StickerView$StickerViewListener;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->a:Ljava/lang/String;

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/share/page/StickerView;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;FF)V
    .registers 7

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->p:F

    iput p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->q:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->r:F

    const/4 v0, 0x3

    iput v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->lastOper:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->A:Z

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->B:Z

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->C:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->D:Z

    iput-boolean v1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->E:Z

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->F:Z

    iput-boolean v1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->G:Z

    iput-boolean v1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->H:Z

    iput-boolean v1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->I:Z

    iput p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->J:F

    iput p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->K:F

    const/4 p1, -0x1

    iput p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->current_ctr:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->L:Lcom/ssjj/fnsdk/core/share/page/StickerView$StickerViewListener;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->a:Ljava/lang/String;

    iput p3, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->J:F

    iput p4, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->K:F

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/share/page/StickerView;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private a(FFFF)F
    .registers 5

    sub-float/2addr p1, p3

    mul-float p1, p1, p1

    sub-float/2addr p2, p4

    mul-float p2, p2, p2

    add-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method private a(Landroid/view/MotionEvent;)I
    .registers 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->lastOper:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v3, 0x3

    packed-switch p1, :pswitch_data_38

    goto :goto_36

    :pswitch_15
    iget p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->current_ctr:I

    if-eqz p1, :cond_36

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1e

    const/4 v2, 0x2

    goto :goto_36

    :cond_1e
    iget p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->lastOper:I

    if-ne p1, v3, :cond_36

    const/4 v2, 0x0

    goto :goto_36

    :cond_24
    :goto_24
    :pswitch_24
    const/4 v2, 0x3

    goto :goto_36

    :pswitch_26
    invoke-direct {p0, v0, v1}, Lcom/ssjj/fnsdk/core/share/page/StickerView;->b(II)I

    move-result p1

    iput p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->current_ctr:I

    const/4 v4, -0x1

    if-ne p1, v4, :cond_24

    invoke-direct {p0, v0, v1}, Lcom/ssjj/fnsdk/core/share/page/StickerView;->a(II)Z

    move-result p1

    if-eqz p1, :cond_36

    goto :goto_24

    :cond_36
    :goto_36
    return v2

    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_26
        :pswitch_24
        :pswitch_15
    .end packed-switch
.end method

.method private a(I)V
    .registers 6

    const/16 v0, 0x9

    const/16 v1, 0x8

    packed-switch p1, :pswitch_data_46

    goto :goto_3c

    :pswitch_8
    iget-boolean p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->D:Z

    if-eqz p1, :cond_3c

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->m:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->w:F

    iget v3, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->x:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->l:[F

    aget v1, v3, v1

    aget v0, v3, v0

    invoke-virtual {p1, v2, v1, v0}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto :goto_3c

    :pswitch_1d
    iget-boolean p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->E:Z

    if-eqz p1, :cond_3c

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->m:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->r:F

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->l:[F

    aget v1, v3, v1

    aget v0, v3, v0

    invoke-virtual {p1, v2, v2, v1, v0}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_3c

    :pswitch_2f
    iget-boolean p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->F:Z

    if-eqz p1, :cond_3c

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->m:Landroid/graphics/Matrix;

    iget v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->p:F

    iget v1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->q:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_3c
    :goto_3c
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->m:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->l:[F

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->k:[F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    return-void

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_1d
        :pswitch_8
    .end packed-switch
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .registers 10

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->b:Landroid/graphics/Bitmap;

    sget-object p1, Lcom/ssjj/fnsdk/core/share/page/SharePageRes;->deleteBm:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->c:Landroid/graphics/Bitmap;

    sget-object p1, Lcom/ssjj/fnsdk/core/share/page/SharePageRes;->controlBm:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->d:Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->e:I

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->f:I

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->c:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->g:I

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->h:I

    :cond_2c
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->d:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_3e

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->i:I

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->d:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->j:I

    :cond_3e
    const/16 p1, 0xa

    new-array p1, p1, [F

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, p1, v0

    const/4 v2, 0x1

    aput v1, p1, v2

    iget v3, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->e:I

    int-to-float v4, v3

    const/4 v5, 0x2

    aput v4, p1, v5

    const/4 v4, 0x3

    aput v1, p1, v4

    const/4 v4, 0x4

    int-to-float v6, v3

    aput v6, p1, v4

    iget v4, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->f:I

    int-to-float v6, v4

    const/4 v7, 0x5

    aput v6, p1, v7

    const/4 v6, 0x6

    aput v1, p1, v6

    const/4 v1, 0x7

    int-to-float v6, v4

    aput v6, p1, v1

    div-int/2addr v3, v5

    int-to-float v1, v3

    const/16 v3, 0x8

    aput v1, p1, v3

    div-int/2addr v4, v5

    int-to-float v1, v4

    const/16 v3, 0x9

    aput v1, p1, v3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->k:[F

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->l:[F

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->m:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Point;

    iget v1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->e:I

    div-int/2addr v1, v5

    iget v3, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->f:I

    div-int/2addr v3, v5

    invoke-direct {p1, v1, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->t:Landroid/graphics/Point;

    new-instance p1, Landroid/graphics/Point;

    iget v1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->e:I

    div-int/2addr v1, v5

    iget v3, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->f:I

    div-int/2addr v3, v5

    invoke-direct {p1, v1, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->u:Landroid/graphics/Point;

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->s:Landroid/graphics/Point;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->o:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p1, Landroid/graphics/Point;

    iget v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->e:I

    iget v1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->f:I

    invoke-direct {p1, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->e:I

    div-int/2addr v1, v5

    iget v2, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->f:I

    div-int/2addr v2, v5

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/ssjj/fnsdk/core/share/page/StickerView;->computeDegree(Landroid/graphics/Point;Landroid/graphics/Point;)F

    move-result p1

    iput p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->x:F

    iput p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->v:F

    const/4 p1, -0x1

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/share/page/StickerView;->a(I)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .registers 13

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->l:[F

    const/4 v1, 0x0

    aget v3, v0, v1

    const/4 v8, 0x1

    aget v4, v0, v8

    const/4 v9, 0x2

    aget v5, v0, v9

    const/4 v10, 0x3

    aget v6, v0, v10

    iget-object v7, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->o:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->l:[F

    aget v3, v0, v9

    aget v4, v0, v10

    const/4 v9, 0x4

    aget v5, v0, v9

    const/4 v10, 0x5

    aget v6, v0, v10

    iget-object v7, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->o:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->l:[F

    aget v3, v0, v9

    aget v4, v0, v10

    const/4 v9, 0x6

    aget v5, v0, v9

    const/4 v10, 0x7

    aget v6, v0, v10

    iget-object v7, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->o:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->l:[F

    aget v3, v0, v1

    aget v4, v0, v8

    aget v5, v0, v9

    aget v6, v0, v10

    iget-object v7, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->o:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private a(II)Z
    .registers 7

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->m:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_42

    new-array v1, v1, [F

    int-to-float p1, p1

    const/4 v3, 0x0

    aput p1, v1, v3

    int-to-float p1, p2

    const/4 p2, 0x1

    aput p1, v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    aget p1, v2, v3

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_41

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_41

    aget p1, v2, p2

    cmpl-float v0, p1, v0

    if-lez v0, :cond_41

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_41

    return p2

    :cond_41
    return v3

    :array_42
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private b(II)I
    .registers 8

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->i:I

    div-int/lit8 v2, v1, 0x2

    sub-int v2, p1, v2

    iget v3, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->j:I

    div-int/lit8 v4, v3, 0x2

    sub-int v4, p2, v4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    div-int/lit8 v3, v3, 0x2

    add-int/2addr p2, v3

    invoke-direct {v0, v2, v4, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_19
    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->l:[F

    array-length v2, v1

    if-lt p1, v2, :cond_20

    const/4 p1, -0x1

    return p1

    :cond_20
    aget v2, v1, p1

    float-to-int v2, v2

    add-int/lit8 v3, p1, 0x1

    aget v1, v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_2f

    return p2

    :cond_2f
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p1, p1, 0x2

    goto :goto_19
.end method

.method private b(Landroid/graphics/Canvas;)V
    .registers 6

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->c:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->l:[F

    const/4 v2, 0x0

    aget v2, v1, v2

    iget v3, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->g:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/4 v3, 0x1

    aget v1, v1, v3

    iget v3, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->h:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private b(Landroid/view/MotionEvent;)V
    .registers 8

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->l:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v3, v0, v2

    const/4 v4, 0x4

    aget v4, v0, v4

    const/4 v5, 0x5

    aget v0, v0, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v1, v3, v4, v0}, Lcom/ssjj/fnsdk/core/share/page/StickerView;->a(FFFF)F

    move-result v0

    invoke-direct {p0, v5, p1, v1, v3}, Lcom/ssjj/fnsdk/core/share/page/StickerView;->a(FFFF)F

    move-result p1

    div-float/2addr p1, v0

    iput p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->r:F

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/share/page/StickerView;->getScaleValue()F

    move-result p1

    const v0, 0x3e99999a    # 0.3f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_34

    iget p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->r:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-ltz p1, :cond_37

    :cond_34
    invoke-direct {p0, v2}, Lcom/ssjj/fnsdk/core/share/page/StickerView;->a(I)V

    :cond_37
    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .registers 6

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->d:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->l:[F

    const/4 v2, 0x4

    aget v2, v1, v2

    iget v3, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->i:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/4 v3, 0x5

    aget v1, v1, v3

    iget v3, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->j:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private c(Landroid/view/MotionEvent;)V
    .registers 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2c

    new-instance v0, Landroid/graphics/Point;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v3, v2}, Landroid/graphics/Point;-><init>(II)V

    new-instance v2, Landroid/graphics/Point;

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    invoke-direct {v2, v4, p1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Lcom/ssjj/fnsdk/core/share/page/StickerView;->computeDegree(Landroid/graphics/Point;Landroid/graphics/Point;)F

    move-result p1

    goto :goto_50

    :cond_2c
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {v0, v2, p1}, Landroid/graphics/Point;-><init>(II)V

    new-instance p1, Landroid/graphics/Point;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->l:[F

    const/16 v3, 0x8

    aget v3, v2, v3

    float-to-int v3, v3

    const/16 v4, 0x9

    aget v2, v2, v4

    float-to-int v2, v2

    invoke-direct {p1, v3, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v0, p1}, Lcom/ssjj/fnsdk/core/share/page/StickerView;->computeDegree(Landroid/graphics/Point;Landroid/graphics/Point;)F

    move-result p1

    :goto_50
    iput p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->w:F

    invoke-direct {p0, v1}, Lcom/ssjj/fnsdk/core/share/page/StickerView;->a(I)V

    iget p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->w:F

    iput p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->x:F

    return-void
.end method

.method private c(II)Z
    .registers 8

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->i:I

    div-int/lit8 v2, v1, 0x2

    sub-int v2, p1, v2

    iget v3, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->j:I

    div-int/lit8 v4, v3, 0x2

    sub-int v4, p2, v4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    div-int/lit8 v3, v3, 0x2

    add-int/2addr p2, v3

    invoke-direct {v0, v2, v4, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->l:[F

    const/4 p2, 0x4

    aget p2, p1, p2

    float-to-int p2, p2

    iget v1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->i:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    const/4 v1, 0x5

    aget p1, p1, v1

    float-to-int p1, p1

    iget v1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->f:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    invoke-virtual {v0, p2, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method private d(II)V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->I:Z

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->s:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->p:F

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->s:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr p2, p1

    int-to-float p1, p2

    iput p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->q:F

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->t:Landroid/graphics/Point;

    iget p2, p1, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    iget v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->p:F

    add-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Point;->x:I

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->t:Landroid/graphics/Point;

    iget p2, p1, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    iget v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->q:F

    add-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Point;->y:I

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->t:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget p2, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->e:I

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    const/4 p2, 0x0

    if-lez p1, :cond_48

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->t:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->e:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    iget v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->y:I

    if-lt p1, v0, :cond_43

    goto :goto_48

    :cond_43
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->u:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->t:Landroid/graphics/Point;

    goto :goto_4e

    :cond_48
    :goto_48
    iput p2, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->p:F

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->t:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->u:Landroid/graphics/Point;

    :goto_4e
    iget v0, v0, Landroid/graphics/Point;->x:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->t:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->f:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    if-lez p1, :cond_70

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->t:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->f:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    iget v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->z:I

    if-lt p1, v0, :cond_6b

    goto :goto_70

    :cond_6b
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->u:Landroid/graphics/Point;

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->t:Landroid/graphics/Point;

    goto :goto_76

    :cond_70
    :goto_70
    iput p2, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->q:F

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->t:Landroid/graphics/Point;

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->u:Landroid/graphics/Point;

    :goto_76
    iget p2, p2, Landroid/graphics/Point;->y:I

    iput p2, p1, Landroid/graphics/Point;->y:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/share/page/StickerView;->a(I)V

    return-void
.end method

.method private d(Landroid/graphics/Canvas;)V
    .registers 7

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->d:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->l:[F

    const/4 v2, 0x4

    aget v2, v1, v2

    const/4 v3, 0x5

    int-to-float v4, v3

    add-float/2addr v2, v4

    aget v1, v1, v3

    iget v3, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->f:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->j:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public computeDegree(Landroid/graphics/Point;Landroid/graphics/Point;)F
    .registers 8

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    float-to-double v1, v0

    mul-float p2, v0, v0

    mul-float v3, p1, p1

    add-float/2addr p2, v3

    float-to-double v3, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    const-wide v3, 0x4066800000000000L    # 180.0

    mul-double v1, v1, v3

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v1, v3

    double-to-float p2, v1

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_57

    cmpl-float v1, v0, v2

    if-ltz v1, :cond_3a

    cmpg-float v3, p1, v2

    if-gtz v3, :cond_3a

    goto :goto_58

    :cond_3a
    cmpg-float v0, v0, v2

    if-gtz v0, :cond_43

    cmpg-float v3, p1, v2

    if-gtz v3, :cond_43

    goto :goto_58

    :cond_43
    if-gtz v0, :cond_4e

    cmpl-float v0, p1, v2

    if-ltz v0, :cond_4e

    const/high16 p1, -0x3ccc0000    # -180.0f

    :goto_4b
    sub-float p2, p1, p2

    goto :goto_58

    :cond_4e
    if-ltz v1, :cond_57

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_57

    const/high16 p1, 0x43340000    # 180.0f

    goto :goto_4b

    :cond_57
    const/4 p2, 0x0

    :goto_58
    return p2
.end method

.method public enableChange(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->H:Z

    return-void
.end method

.method public enableDelete(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->G:Z

    return-void
.end method

.method public enableRotate(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->D:Z

    return-void
.end method

.method public enableScale(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->E:Z

    return-void
.end method

.method public enableTrans(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->F:Z

    return-void
.end method

.method public getCenterPoint()[F
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->l:[F

    const/16 v2, 0x8

    aget v2, v1, v2

    const/4 v3, 0x0

    aput v2, v0, v3

    const/16 v2, 0x9

    aget v1, v1, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    return-object v0
.end method

.method public getDegree()F
    .registers 3

    iget v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->x:F

    iget v1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->v:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getImgPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getIsActive()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->B:Z

    return v0
.end method

.method public getLocation()Landroid/graphics/Point;
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->u:Landroid/graphics/Point;

    return-object v0
.end method

.method public getScaleValue()F
    .registers 9

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->k:[F

    const/16 v1, 0x8

    aget v2, v0, v1

    const/4 v3, 0x0

    aget v4, v0, v3

    sub-float v5, v2, v4

    sub-float/2addr v2, v4

    mul-float v5, v5, v2

    const/16 v2, 0x9

    aget v4, v0, v2

    const/4 v6, 0x1

    aget v0, v0, v6

    sub-float v7, v4, v0

    sub-float/2addr v4, v0

    mul-float v7, v7, v4

    add-float/2addr v5, v7

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->l:[F

    aget v1, v0, v1

    aget v3, v0, v3

    sub-float v4, v1, v3

    sub-float/2addr v1, v3

    mul-float v4, v4, v1

    aget v1, v0, v2

    aget v0, v0, v6

    sub-float v2, v1, v0

    sub-float/2addr v1, v0

    mul-float v2, v2, v1

    add-float/2addr v4, v2

    div-float/2addr v4, v5

    float-to-double v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public hasMoved()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->I:Z

    return v0
.end method

.method public hide()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->B:Z

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/share/page/StickerView;->invalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->B:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/share/page/StickerView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->y:I

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/share/page/StickerView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->z:I

    iget-boolean v1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->C:Z

    if-eqz v1, :cond_43

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->C:Z

    iget v2, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->y:I

    iget v3, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->e:I

    sub-int v4, v2, v3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->J:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    add-int v5, v4, v3

    if-le v5, v2, :cond_2c

    sub-int/2addr v2, v3

    add-int/lit8 v4, v2, -0x5

    :cond_2c
    iget v2, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->f:I

    sub-int v3, v0, v2

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v5, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->K:F

    add-float/2addr v3, v5

    float-to-int v3, v3

    add-int v5, v3, v2

    if-le v5, v0, :cond_3e

    sub-int/2addr v0, v2

    add-int/lit8 v3, v0, -0x5

    :cond_3e
    invoke-direct {p0, v4, v3}, Lcom/ssjj/fnsdk/core/share/page/StickerView;->d(II)V

    iput-boolean v1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->I:Z

    :cond_43
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->m:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->A:Z

    if-eqz v0, :cond_6c

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/share/page/StickerView;->a(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->D:Z

    if-eqz v0, :cond_5e

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->E:Z

    if-eqz v0, :cond_5e

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/share/page/StickerView;->c(Landroid/graphics/Canvas;)V

    :cond_5e
    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->G:Z

    if-eqz v0, :cond_65

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/share/page/StickerView;->b(Landroid/graphics/Canvas;)V

    :cond_65
    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->H:Z

    if-eqz v0, :cond_6c

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/share/page/StickerView;->d(Landroid/graphics/Canvas;)V

    :cond_6c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget-boolean v2, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->H:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_4b

    invoke-direct {p0, v0, v1}, Lcom/ssjj/fnsdk/core/share/page/StickerView;->c(II)Z

    move-result v2

    if-eqz v2, :cond_4b

    iput-boolean v3, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->A:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_98

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, v0, p1}, Lcom/ssjj/fnsdk/core/share/page/StickerView;->c(II)Z

    move-result p1

    if-eqz p1, :cond_98

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->L:Lcom/ssjj/fnsdk/core/share/page/StickerView$StickerViewListener;

    if-eqz p1, :cond_98

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->l:[F

    const/16 v1, 0x8

    aget v1, v0, v1

    iget v2, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->y:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/16 v2, 0x9

    aget v0, v0, v2

    iget v2, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->z:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-interface {p1, v1, v0}, Lcom/ssjj/fnsdk/core/share/page/StickerView$StickerViewListener;->onChange(FF)V

    goto :goto_98

    :cond_4b
    invoke-direct {p0, v0, v1}, Lcom/ssjj/fnsdk/core/share/page/StickerView;->a(II)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_5f

    invoke-direct {p0, v0, v1}, Lcom/ssjj/fnsdk/core/share/page/StickerView;->b(II)I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_5f

    iput-boolean v4, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->A:Z

    :goto_5b
    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/share/page/StickerView;->invalidate()V

    goto :goto_98

    :cond_5f
    invoke-direct {p0, v0, v1}, Lcom/ssjj/fnsdk/core/share/page/StickerView;->b(II)I

    move-result v2

    if-nez v2, :cond_73

    iget-boolean p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->G:Z

    if-eqz p1, :cond_98

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->L:Lcom/ssjj/fnsdk/core/share/page/StickerView$StickerViewListener;

    if-eqz p1, :cond_70

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/share/page/StickerView$StickerViewListener;->onDelete()V

    :cond_70
    iput-boolean v4, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->B:Z

    goto :goto_5b

    :cond_73
    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/share/page/StickerView;->a(Landroid/view/MotionEvent;)I

    move-result v2

    packed-switch v2, :pswitch_data_9c

    :pswitch_7a
    goto :goto_8b

    :pswitch_7b
    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/share/page/StickerView;->c(Landroid/view/MotionEvent;)V

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/share/page/StickerView;->b(Landroid/view/MotionEvent;)V

    goto :goto_8b

    :pswitch_82
    invoke-direct {p0, v0, v1}, Lcom/ssjj/fnsdk/core/share/page/StickerView;->a(II)Z

    move-result p1

    if-eqz p1, :cond_8b

    invoke-direct {p0, v0, v1}, Lcom/ssjj/fnsdk/core/share/page/StickerView;->d(II)V

    :cond_8b
    :goto_8b
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->s:Landroid/graphics/Point;

    iput v0, p1, Landroid/graphics/Point;->x:I

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->s:Landroid/graphics/Point;

    iput v1, p1, Landroid/graphics/Point;->y:I

    iput v2, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->lastOper:I

    iput-boolean v3, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->A:Z

    goto :goto_5b

    :cond_98
    :goto_98
    iget-boolean p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->A:Z

    return p1

    nop

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_82
        :pswitch_7a
        :pswitch_7b
    .end packed-switch
.end method

.method public setIsSelected(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->A:Z

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/share/page/StickerView;->invalidate()V

    return-void
.end method

.method public setStickerViewListener(Lcom/ssjj/fnsdk/core/share/page/StickerView$StickerViewListener;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->L:Lcom/ssjj/fnsdk/core/share/page/StickerView$StickerViewListener;

    return-void
.end method

.method public show()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/share/page/StickerView;->B:Z

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/share/page/StickerView;->invalidate()V

    return-void
.end method
