.class public abstract Lcom/ksad/lottie/model/layer/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ksad/lottie/n/a/d;
.implements Lcom/ksad/lottie/n/b/a$a;
.implements Lcom/ksad/lottie/p/e;


# instance fields
.field private final a:Landroid/graphics/Path;

.field private final b:Landroid/graphics/Matrix;

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/Paint;

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/Paint;

.field private final g:Landroid/graphics/Paint;

.field private final h:Landroid/graphics/RectF;

.field private final i:Landroid/graphics/RectF;

.field private final j:Landroid/graphics/RectF;

.field private final k:Landroid/graphics/RectF;

.field private final l:Ljava/lang/String;

.field final m:Landroid/graphics/Matrix;

.field final n:Lcom/ksad/lottie/f;

.field final o:Lcom/ksad/lottie/model/layer/Layer;

.field private p:Lcom/ksad/lottie/n/b/g;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private q:Lcom/ksad/lottie/model/layer/a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private r:Lcom/ksad/lottie/model/layer/a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/model/layer/a;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/n/b/a",
            "<**>;>;"
        }
    .end annotation
.end field

.field final u:Lcom/ksad/lottie/n/b/o;

.field private v:Z


# direct methods
.method constructor <init>(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/Layer;)V
    .registers 6

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/model/layer/a;->a:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/model/layer/a;->b:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/ksad/lottie/model/layer/a;->c:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/ksad/lottie/model/layer/a;->d:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/ksad/lottie/model/layer/a;->e:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/ksad/lottie/model/layer/a;->f:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/model/layer/a;->g:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/model/layer/a;->h:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/model/layer/a;->i:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/model/layer/a;->j:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/model/layer/a;->k:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/model/layer/a;->m:Landroid/graphics/Matrix;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/model/layer/a;->t:Ljava/util/List;

    iput-boolean v1, p0, Lcom/ksad/lottie/model/layer/a;->v:Z

    iput-object p1, p0, Lcom/ksad/lottie/model/layer/a;->n:Lcom/ksad/lottie/f;

    iput-object p2, p0, Lcom/ksad/lottie/model/layer/a;->o:Lcom/ksad/lottie/model/layer/Layer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/ksad/lottie/model/layer/Layer;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#draw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/model/layer/a;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->g:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->d:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->e:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p2}, Lcom/ksad/lottie/model/layer/Layer;->f()Lcom/ksad/lottie/model/layer/Layer$MatteType;

    move-result-object v0

    sget-object v1, Lcom/ksad/lottie/model/layer/Layer$MatteType;->Invert:Lcom/ksad/lottie/model/layer/Layer$MatteType;

    if-ne v0, v1, :cond_fa

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->f:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :goto_b6
    invoke-virtual {p2}, Lcom/ksad/lottie/model/layer/Layer;->u()Lcom/ksad/lottie/p/h/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/p/h/l;->a()Lcom/ksad/lottie/n/b/o;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/model/layer/a;->u:Lcom/ksad/lottie/n/b/o;

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->u:Lcom/ksad/lottie/n/b/o;

    invoke-virtual {v0, p0}, Lcom/ksad/lottie/n/b/o;->a(Lcom/ksad/lottie/n/b/a$a;)V

    invoke-virtual {p2}, Lcom/ksad/lottie/model/layer/Layer;->e()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_124

    invoke-virtual {p2}, Lcom/ksad/lottie/model/layer/Layer;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_124

    new-instance v0, Lcom/ksad/lottie/n/b/g;

    invoke-virtual {p2}, Lcom/ksad/lottie/model/layer/Layer;->e()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ksad/lottie/n/b/g;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/ksad/lottie/model/layer/a;->p:Lcom/ksad/lottie/n/b/g;

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->p:Lcom/ksad/lottie/n/b/g;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/g;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_ea
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_107

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0, p0}, Lcom/ksad/lottie/n/b/a;->a(Lcom/ksad/lottie/n/b/a$a;)V

    goto :goto_ea

    :cond_fa
    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->f:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_b6

    :cond_107
    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->p:Lcom/ksad/lottie/n/b/g;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/g;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_111
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_124

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p0, v0}, Lcom/ksad/lottie/model/layer/a;->a(Lcom/ksad/lottie/n/b/a;)V

    invoke-virtual {v0, p0}, Lcom/ksad/lottie/n/b/a;->a(Lcom/ksad/lottie/n/b/a$a;)V

    goto :goto_111

    :cond_124
    invoke-direct {p0}, Lcom/ksad/lottie/model/layer/a;->g()V

    return-void
.end method

.method static a(Lcom/ksad/lottie/model/layer/Layer;Lcom/ksad/lottie/f;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/model/layer/a;
    .registers 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    sget-object v0, Lcom/ksad/lottie/model/layer/a$b;->a:[I

    invoke-virtual {p0}, Lcom/ksad/lottie/model/layer/Layer;->d()Lcom/ksad/lottie/model/layer/Layer$LayerType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_58

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown layer type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ksad/lottie/model/layer/Layer;->d()Lcom/ksad/lottie/model/layer/Layer$LayerType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksad/lottie/c;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_2a
    return-object v0

    :pswitch_2b
    new-instance v0, Lcom/ksad/lottie/model/layer/g;

    invoke-direct {v0, p1, p0}, Lcom/ksad/lottie/model/layer/g;-><init>(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/Layer;)V

    goto :goto_2a

    :pswitch_31
    new-instance v0, Lcom/ksad/lottie/model/layer/d;

    invoke-direct {v0, p1, p0}, Lcom/ksad/lottie/model/layer/d;-><init>(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/Layer;)V

    goto :goto_2a

    :pswitch_37
    new-instance v0, Lcom/ksad/lottie/model/layer/c;

    invoke-direct {v0, p1, p0}, Lcom/ksad/lottie/model/layer/c;-><init>(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/Layer;)V

    goto :goto_2a

    :pswitch_3d
    new-instance v0, Lcom/ksad/lottie/model/layer/f;

    invoke-direct {v0, p1, p0}, Lcom/ksad/lottie/model/layer/f;-><init>(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/Layer;)V

    goto :goto_2a

    :pswitch_43
    new-instance v0, Lcom/ksad/lottie/model/layer/b;

    invoke-virtual {p0}, Lcom/ksad/lottie/model/layer/Layer;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/ksad/lottie/d;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1, p2}, Lcom/ksad/lottie/model/layer/b;-><init>(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/Layer;Ljava/util/List;Lcom/ksad/lottie/d;)V

    goto :goto_2a

    :pswitch_51
    new-instance v0, Lcom/ksad/lottie/model/layer/e;

    invoke-direct {v0, p1, p0}, Lcom/ksad/lottie/model/layer/e;-><init>(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/Layer;)V

    goto :goto_2a

    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_51
        :pswitch_43
        :pswitch_3d
        :pswitch_37
        :pswitch_31
        :pswitch_2b
    .end packed-switch
.end method

.method private a(Landroid/graphics/Canvas;)V
    .registers 8

    const/high16 v4, 0x3f800000    # 1.0f

    const-string v0, "Layer#clearLayer"

    invoke-static {v0}, Lcom/ksad/lottie/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->h:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v4

    iget v2, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v4

    iget v3, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/ksad/lottie/model/layer/a;->g:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const-string v0, "Layer#clearLayer"

    invoke-static {v0}, Lcom/ksad/lottie/c;->c(Ljava/lang/String;)F

    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .registers 4

    sget-object v0, Lcom/ksad/lottie/model/content/Mask$MaskMode;->MaskModeAdd:Lcom/ksad/lottie/model/content/Mask$MaskMode;

    invoke-direct {p0, p1, p2, v0}, Lcom/ksad/lottie/model/layer/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/ksad/lottie/model/content/Mask$MaskMode;)V

    sget-object v0, Lcom/ksad/lottie/model/content/Mask$MaskMode;->MaskModeIntersect:Lcom/ksad/lottie/model/content/Mask$MaskMode;

    invoke-direct {p0, p1, p2, v0}, Lcom/ksad/lottie/model/layer/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/ksad/lottie/model/content/Mask$MaskMode;)V

    sget-object v0, Lcom/ksad/lottie/model/content/Mask$MaskMode;->MaskModeSubtract:Lcom/ksad/lottie/model/content/Mask$MaskMode;

    invoke-direct {p0, p1, p2, v0}, Lcom/ksad/lottie/model/layer/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/ksad/lottie/model/content/Mask$MaskMode;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/ksad/lottie/model/content/Mask$MaskMode;)V
    .registers 10

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/ksad/lottie/model/layer/a$b;->b:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v3, :cond_32

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->d:Landroid/graphics/Paint;

    move-object v1, v0

    :goto_f
    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->p:Lcom/ksad/lottie/n/b/g;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/g;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    move v4, v2

    :goto_1a
    if-ge v4, v5, :cond_ce

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->p:Lcom/ksad/lottie/n/b/g;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/g;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/model/content/Mask;

    invoke-virtual {v0}, Lcom/ksad/lottie/model/content/Mask;->a()Lcom/ksad/lottie/model/content/Mask$MaskMode;

    move-result-object v0

    if-ne v0, p3, :cond_36

    move v0, v3

    :goto_2f
    if-nez v0, :cond_3a

    :goto_31
    return-void

    :cond_32
    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->e:Landroid/graphics/Paint;

    move-object v1, v0

    goto :goto_f

    :cond_36
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1a

    :cond_3a
    const-string v0, "Layer#drawMask"

    invoke-static {v0}, Lcom/ksad/lottie/c;->a(Ljava/lang/String;)V

    const-string v0, "Layer#saveLayer"

    invoke-static {v0}, Lcom/ksad/lottie/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->h:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/ksad/lottie/model/layer/a;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V

    const-string v0, "Layer#saveLayer"

    invoke-static {v0}, Lcom/ksad/lottie/c;->c(Ljava/lang/String;)F

    invoke-direct {p0, p1}, Lcom/ksad/lottie/model/layer/a;->a(Landroid/graphics/Canvas;)V

    move v1, v2

    :goto_52
    if-ge v1, v5, :cond_ba

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->p:Lcom/ksad/lottie/n/b/g;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/g;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/model/content/Mask;

    invoke-virtual {v0}, Lcom/ksad/lottie/model/content/Mask;->a()Lcom/ksad/lottie/model/content/Mask$MaskMode;

    move-result-object v0

    if-eq v0, p3, :cond_6a

    :goto_66
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_52

    :cond_6a
    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->p:Lcom/ksad/lottie/n/b/g;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/g;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    iget-object v2, p0, Lcom/ksad/lottie/model/layer/a;->a:Landroid/graphics/Path;

    invoke-virtual {v2, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->a:Landroid/graphics/Path;

    invoke-virtual {v0, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->p:Lcom/ksad/lottie/n/b/g;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/g;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/n/b/a;

    iget-object v2, p0, Lcom/ksad/lottie/model/layer/a;->c:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    iget-object v3, p0, Lcom/ksad/lottie/model/layer/a;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const v4, 0x40233333    # 2.55f

    mul-float/2addr v0, v4

    float-to-int v0, v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->a:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/ksad/lottie/model/layer/a;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_66

    :cond_ba
    const-string v0, "Layer#restoreLayer"

    invoke-static {v0}, Lcom/ksad/lottie/c;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const-string v0, "Layer#restoreLayer"

    invoke-static {v0}, Lcom/ksad/lottie/c;->c(Ljava/lang/String;)F

    const-string v0, "Layer#drawMask"

    invoke-static {v0}, Lcom/ksad/lottie/c;->c(Ljava/lang/String;)F

    goto/16 :goto_31

    :cond_ce
    move v0, v2

    goto/16 :goto_2f
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_11

    if-eqz p4, :cond_e

    const/16 v0, 0x1f

    :goto_a
    invoke-virtual {p1, p2, p3, v0}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    :goto_d
    return-void

    :cond_e
    const/16 v0, 0x13

    goto :goto_a

    :cond_11
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    goto :goto_d
.end method

.method static synthetic a(Lcom/ksad/lottie/model/layer/a;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ksad/lottie/model/layer/a;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/ksad/lottie/model/layer/a;->v:Z

    if-eq p1, v0, :cond_9

    iput-boolean p1, p0, Lcom/ksad/lottie/model/layer/a;->v:Z

    invoke-direct {p0}, Lcom/ksad/lottie/model/layer/a;->f()V

    :cond_9
    return-void
.end method

.method private b(F)V
    .registers 4

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->n:Lcom/ksad/lottie/f;

    invoke-virtual {v0}, Lcom/ksad/lottie/f;->e()Lcom/ksad/lottie/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/d;->j()Lcom/ksad/lottie/l;

    move-result-object v0

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/a;->o:Lcom/ksad/lottie/model/layer/Layer;

    invoke-virtual {v1}, Lcom/ksad/lottie/model/layer/Layer;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/ksad/lottie/l;->a(Ljava/lang/String;F)V

    return-void
.end method

.method private b(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .registers 12

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->i:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Lcom/ksad/lottie/model/layer/a;->c()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->p:Lcom/ksad/lottie/n/b/g;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/g;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v2, v3

    :goto_19
    if-ge v2, v4, :cond_9d

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->p:Lcom/ksad/lottie/n/b/g;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/g;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/model/content/Mask;

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/a;->p:Lcom/ksad/lottie/n/b/g;

    invoke-virtual {v1}, Lcom/ksad/lottie/n/b/g;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v1}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Path;

    iget-object v5, p0, Lcom/ksad/lottie/model/layer/a;->a:Landroid/graphics/Path;

    invoke-virtual {v5, v1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/a;->a:Landroid/graphics/Path;

    invoke-virtual {v1, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    sget-object v1, Lcom/ksad/lottie/model/layer/a$b;->b:[I

    invoke-virtual {v0}, Lcom/ksad/lottie/model/content/Mask;->a()Lcom/ksad/lottie/model/content/Mask$MaskMode;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->a:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/a;->k:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    if-nez v2, :cond_69

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->i:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/a;->k:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :goto_65
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_19

    :cond_69
    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->i:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/ksad/lottie/model/layer/a;->k:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v5, p0, Lcom/ksad/lottie/model/layer/a;->i:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/ksad/lottie/model/layer/a;->k:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget-object v6, p0, Lcom/ksad/lottie/model/layer/a;->i:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget-object v7, p0, Lcom/ksad/lottie/model/layer/a;->k:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iget-object v7, p0, Lcom/ksad/lottie/model/layer/a;->i:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/ksad/lottie/model/layer/a;->k:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_65

    :cond_9d
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/a;->i:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/ksad/lottie/model/layer/a;->i:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/ksad/lottie/model/layer/a;->i:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/ksad/lottie/model/layer/a;->i:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_d
.end method

.method private c(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .registers 8

    invoke-virtual {p0}, Lcom/ksad/lottie/model/layer/a;->d()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->o:Lcom/ksad/lottie/model/layer/Layer;

    invoke-virtual {v0}, Lcom/ksad/lottie/model/layer/Layer;->f()Lcom/ksad/lottie/model/layer/Layer$MatteType;

    move-result-object v0

    sget-object v1, Lcom/ksad/lottie/model/layer/Layer$MatteType;->Invert:Lcom/ksad/lottie/model/layer/Layer$MatteType;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->q:Lcom/ksad/lottie/model/layer/a;

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/a;->j:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, p2}, Lcom/ksad/lottie/model/layer/a;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/a;->j:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/ksad/lottie/model/layer/a;->j:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/ksad/lottie/model/layer/a;->j:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/ksad/lottie/model/layer/a;->j:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_6
.end method

.method private e()V
    .registers 3

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->s:Ljava/util/List;

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->r:Lcom/ksad/lottie/model/layer/a;

    if-nez v0, :cond_10

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/model/layer/a;->s:Ljava/util/List;

    goto :goto_4

    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/model/layer/a;->s:Ljava/util/List;

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->r:Lcom/ksad/lottie/model/layer/a;

    :goto_19
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/a;->s:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/ksad/lottie/model/layer/a;->r:Lcom/ksad/lottie/model/layer/a;

    goto :goto_19
.end method

.method private f()V
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->n:Lcom/ksad/lottie/f;

    invoke-virtual {v0}, Lcom/ksad/lottie/f;->invalidateSelf()V

    return-void
.end method

.method private g()V
    .registers 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->o:Lcom/ksad/lottie/model/layer/Layer;

    invoke-virtual {v0}, Lcom/ksad/lottie/model/layer/Layer;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3d

    new-instance v2, Lcom/ksad/lottie/n/b/c;

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->o:Lcom/ksad/lottie/model/layer/Layer;

    invoke-virtual {v0}, Lcom/ksad/lottie/model/layer/Layer;->c()Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/ksad/lottie/n/b/c;-><init>(Ljava/util/List;)V

    invoke-virtual {v2}, Lcom/ksad/lottie/n/b/a;->f()V

    new-instance v0, Lcom/ksad/lottie/model/layer/a$a;

    invoke-direct {v0, p0, v2}, Lcom/ksad/lottie/model/layer/a$a;-><init>(Lcom/ksad/lottie/model/layer/a;Lcom/ksad/lottie/n/b/c;)V

    invoke-virtual {v2, v0}, Lcom/ksad/lottie/n/b/a;->a(Lcom/ksad/lottie/n/b/a$a;)V

    invoke-virtual {v2}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3b

    move v0, v1

    :goto_34
    invoke-direct {p0, v0}, Lcom/ksad/lottie/model/layer/a;->a(Z)V

    invoke-virtual {p0, v2}, Lcom/ksad/lottie/model/layer/a;->a(Lcom/ksad/lottie/n/b/a;)V

    :goto_3a
    return-void

    :cond_3b
    const/4 v0, 0x0

    goto :goto_34

    :cond_3d
    invoke-direct {p0, v1}, Lcom/ksad/lottie/model/layer/a;->a(Z)V

    goto :goto_3a
.end method


# virtual methods
.method public a()V
    .registers 1

    invoke-direct {p0}, Lcom/ksad/lottie/model/layer/a;->f()V

    return-void
.end method

.method a(F)V
    .registers 5
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->u:Lcom/ksad/lottie/n/b/o;

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/n/b/o;->b(F)V

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->p:Lcom/ksad/lottie/n/b/g;

    if-eqz v0, :cond_2a

    move v1, v2

    :goto_b
    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->p:Lcom/ksad/lottie/n/b/g;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/g;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2a

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->p:Lcom/ksad/lottie/n/b/g;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/g;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/n/b/a;->a(F)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_2a
    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->o:Lcom/ksad/lottie/model/layer/Layer;

    invoke-virtual {v0}, Lcom/ksad/lottie/model/layer/Layer;->t()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->o:Lcom/ksad/lottie/model/layer/Layer;

    invoke-virtual {v0}, Lcom/ksad/lottie/model/layer/Layer;->t()F

    move-result v0

    div-float/2addr p1, v0

    :cond_3c
    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->q:Lcom/ksad/lottie/model/layer/a;

    if-eqz v0, :cond_4c

    iget-object v0, v0, Lcom/ksad/lottie/model/layer/a;->o:Lcom/ksad/lottie/model/layer/Layer;

    invoke-virtual {v0}, Lcom/ksad/lottie/model/layer/Layer;->t()F

    move-result v0

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/a;->q:Lcom/ksad/lottie/model/layer/a;

    mul-float/2addr v0, p1

    invoke-virtual {v1, v0}, Lcom/ksad/lottie/model/layer/a;->a(F)V

    :cond_4c
    :goto_4c
    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_62

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->t:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/n/b/a;->a(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    :cond_62
    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 9

    const/high16 v3, 0x437f0000    # 255.0f

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/ksad/lottie/c;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/ksad/lottie/model/layer/a;->v:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/ksad/lottie/c;->c(Ljava/lang/String;)F

    :goto_11
    return-void

    :cond_12
    invoke-direct {p0}, Lcom/ksad/lottie/model/layer/a;->e()V

    const-string v0, "Layer#parentMatrix"

    invoke-static {v0}, Lcom/ksad/lottie/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2d
    if-ltz v1, :cond_46

    iget-object v2, p0, Lcom/ksad/lottie/model/layer/a;->b:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->s:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/model/layer/a;

    iget-object v0, v0, Lcom/ksad/lottie/model/layer/a;->u:Lcom/ksad/lottie/n/b/o;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/o;->b()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2d

    :cond_46
    const-string v0, "Layer#parentMatrix"

    invoke-static {v0}, Lcom/ksad/lottie/c;->c(Ljava/lang/String;)F

    int-to-float v0, p3

    div-float v1, v0, v3

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->u:Lcom/ksad/lottie/n/b/o;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/o;->c()Lcom/ksad/lottie/n/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/ksad/lottie/model/layer/a;->d()Z

    move-result v1

    if-nez v1, :cond_96

    invoke-virtual {p0}, Lcom/ksad/lottie/model/layer/a;->c()Z

    move-result v1

    if-nez v1, :cond_96

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/a;->b:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/ksad/lottie/model/layer/a;->u:Lcom/ksad/lottie/n/b/o;

    invoke-virtual {v2}, Lcom/ksad/lottie/n/b/o;->b()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    const-string v1, "Layer#drawLayer"

    invoke-static {v1}, Lcom/ksad/lottie/c;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/a;->b:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, v1, v0}, Lcom/ksad/lottie/model/layer/a;->b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    const-string v0, "Layer#drawLayer"

    invoke-static {v0}, Lcom/ksad/lottie/c;->c(Ljava/lang/String;)F

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/ksad/lottie/c;->c(Ljava/lang/String;)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/ksad/lottie/model/layer/a;->b(F)V

    goto/16 :goto_11

    :cond_96
    const-string v1, "Layer#computeBounds"

    invoke-static {v1}, Lcom/ksad/lottie/c;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/a;->h:Landroid/graphics/RectF;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/a;->h:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/ksad/lottie/model/layer/a;->b:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1, v2}, Lcom/ksad/lottie/model/layer/a;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/a;->h:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/ksad/lottie/model/layer/a;->b:Landroid/graphics/Matrix;

    invoke-direct {p0, v1, v2}, Lcom/ksad/lottie/model/layer/a;->c(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/a;->b:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/ksad/lottie/model/layer/a;->u:Lcom/ksad/lottie/n/b/o;

    invoke-virtual {v2}, Lcom/ksad/lottie/n/b/o;->b()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/a;->h:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/ksad/lottie/model/layer/a;->b:Landroid/graphics/Matrix;

    invoke-direct {p0, v1, v2}, Lcom/ksad/lottie/model/layer/a;->b(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/a;->h:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    const-string v1, "Layer#computeBounds"

    invoke-static {v1}, Lcom/ksad/lottie/c;->c(Ljava/lang/String;)F

    const-string v1, "Layer#saveLayer"

    invoke-static {v1}, Lcom/ksad/lottie/c;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/a;->h:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/ksad/lottie/model/layer/a;->c:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/ksad/lottie/model/layer/a;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V

    const-string v1, "Layer#saveLayer"

    invoke-static {v1}, Lcom/ksad/lottie/c;->c(Ljava/lang/String;)F

    invoke-direct {p0, p1}, Lcom/ksad/lottie/model/layer/a;->a(Landroid/graphics/Canvas;)V

    const-string v1, "Layer#drawLayer"

    invoke-static {v1}, Lcom/ksad/lottie/c;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/a;->b:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, v1, v0}, Lcom/ksad/lottie/model/layer/a;->b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    const-string v1, "Layer#drawLayer"

    invoke-static {v1}, Lcom/ksad/lottie/c;->c(Ljava/lang/String;)F

    invoke-virtual {p0}, Lcom/ksad/lottie/model/layer/a;->c()Z

    move-result v1

    if-eqz v1, :cond_103

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/a;->b:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v1}, Lcom/ksad/lottie/model/layer/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    :cond_103
    invoke-virtual {p0}, Lcom/ksad/lottie/model/layer/a;->d()Z

    move-result v1

    if-eqz v1, :cond_13a

    const-string v1, "Layer#drawMatte"

    invoke-static {v1}, Lcom/ksad/lottie/c;->a(Ljava/lang/String;)V

    const-string v1, "Layer#saveLayer"

    invoke-static {v1}, Lcom/ksad/lottie/c;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/a;->h:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/ksad/lottie/model/layer/a;->f:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/ksad/lottie/model/layer/a;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V

    const-string v1, "Layer#saveLayer"

    invoke-static {v1}, Lcom/ksad/lottie/c;->c(Ljava/lang/String;)F

    invoke-direct {p0, p1}, Lcom/ksad/lottie/model/layer/a;->a(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/a;->q:Lcom/ksad/lottie/model/layer/a;

    invoke-virtual {v1, p1, p2, v0}, Lcom/ksad/lottie/model/layer/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    const-string v0, "Layer#restoreLayer"

    invoke-static {v0}, Lcom/ksad/lottie/c;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const-string v0, "Layer#restoreLayer"

    invoke-static {v0}, Lcom/ksad/lottie/c;->c(Ljava/lang/String;)F

    const-string v0, "Layer#drawMatte"

    invoke-static {v0}, Lcom/ksad/lottie/c;->c(Ljava/lang/String;)F

    :cond_13a
    const-string v0, "Layer#restoreLayer"

    invoke-static {v0}, Lcom/ksad/lottie/c;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const-string v0, "Layer#restoreLayer"

    invoke-static {v0}, Lcom/ksad/lottie/c;->c(Ljava/lang/String;)F

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/ksad/lottie/c;->c(Ljava/lang/String;)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/ksad/lottie/model/layer/a;->b(F)V

    goto/16 :goto_11
.end method

.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .registers 5
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->m:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/a;->u:Lcom/ksad/lottie/n/b/o;

    invoke-virtual {v1}, Lcom/ksad/lottie/n/b/o;->b()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method a(Lcom/ksad/lottie/model/layer/a;)V
    .registers 2
    .param p1    # Lcom/ksad/lottie/model/layer/a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/ksad/lottie/model/layer/a;->q:Lcom/ksad/lottie/model/layer/a;

    return-void
.end method

.method public a(Lcom/ksad/lottie/n/b/a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ksad/lottie/n/b/a",
            "<**>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->t:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/n/a/b;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/n/a/b;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method b()Lcom/ksad/lottie/model/layer/Layer;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->o:Lcom/ksad/lottie/model/layer/Layer;

    return-object v0
.end method

.method abstract b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
.end method

.method b(Lcom/ksad/lottie/model/layer/a;)V
    .registers 2
    .param p1    # Lcom/ksad/lottie/model/layer/a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/ksad/lottie/model/layer/a;->r:Lcom/ksad/lottie/model/layer/a;

    return-void
.end method

.method c()Z
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->p:Lcom/ksad/lottie/n/b/g;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/g;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method d()Z
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->q:Lcom/ksad/lottie/model/layer/a;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
