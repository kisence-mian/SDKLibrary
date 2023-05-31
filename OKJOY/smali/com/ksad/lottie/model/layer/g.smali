.class public Lcom/ksad/lottie/model/layer/g;
.super Lcom/ksad/lottie/model/layer/a;
.source ""


# instance fields
.field private final A:Landroid/graphics/Paint;

.field private final B:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/ksad/lottie/p/d;",
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/n/a/c;",
            ">;>;"
        }
    .end annotation
.end field

.field private final C:Lcom/ksad/lottie/n/b/n;

.field private final D:Lcom/ksad/lottie/f;

.field private final E:Lcom/ksad/lottie/d;

.field private F:Lcom/ksad/lottie/n/b/a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksad/lottie/n/b/a",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private G:Lcom/ksad/lottie/n/b/a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksad/lottie/n/b/a",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private H:Lcom/ksad/lottie/n/b/a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksad/lottie/n/b/a",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private I:Lcom/ksad/lottie/n/b/a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksad/lottie/n/b/a",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final w:[C

.field private final x:Landroid/graphics/RectF;

.field private final y:Landroid/graphics/Matrix;

.field private final z:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/Layer;)V
    .registers 5

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Lcom/ksad/lottie/model/layer/a;-><init>(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/Layer;)V

    new-array v0, v1, [C

    iput-object v0, p0, Lcom/ksad/lottie/model/layer/g;->w:[C

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/model/layer/g;->x:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/model/layer/g;->y:Landroid/graphics/Matrix;

    new-instance v0, Lcom/ksad/lottie/model/layer/g$a;

    invoke-direct {v0, p0, v1}, Lcom/ksad/lottie/model/layer/g$a;-><init>(Lcom/ksad/lottie/model/layer/g;I)V

    iput-object v0, p0, Lcom/ksad/lottie/model/layer/g;->z:Landroid/graphics/Paint;

    new-instance v0, Lcom/ksad/lottie/model/layer/g$b;

    invoke-direct {v0, p0, v1}, Lcom/ksad/lottie/model/layer/g$b;-><init>(Lcom/ksad/lottie/model/layer/g;I)V

    iput-object v0, p0, Lcom/ksad/lottie/model/layer/g;->A:Landroid/graphics/Paint;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/model/layer/g;->B:Ljava/util/Map;

    iput-object p1, p0, Lcom/ksad/lottie/model/layer/g;->D:Lcom/ksad/lottie/f;

    invoke-virtual {p2}, Lcom/ksad/lottie/model/layer/Layer;->a()Lcom/ksad/lottie/d;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/model/layer/g;->E:Lcom/ksad/lottie/d;

    invoke-virtual {p2}, Lcom/ksad/lottie/model/layer/Layer;->q()Lcom/ksad/lottie/p/h/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/p/h/j;->a()Lcom/ksad/lottie/n/b/n;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/model/layer/g;->C:Lcom/ksad/lottie/n/b/n;

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/g;->C:Lcom/ksad/lottie/n/b/n;

    invoke-virtual {v0, p0}, Lcom/ksad/lottie/n/b/a;->a(Lcom/ksad/lottie/n/b/a$a;)V

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/g;->C:Lcom/ksad/lottie/n/b/n;

    invoke-virtual {p0, v0}, Lcom/ksad/lottie/model/layer/a;->a(Lcom/ksad/lottie/n/b/a;)V

    invoke-virtual {p2}, Lcom/ksad/lottie/model/layer/Layer;->r()Lcom/ksad/lottie/p/h/k;

    move-result-object v0

    if-eqz v0, :cond_61

    iget-object v1, v0, Lcom/ksad/lottie/p/h/k;->a:Lcom/ksad/lottie/p/h/a;

    if-eqz v1, :cond_61

    invoke-virtual {v1}, Lcom/ksad/lottie/p/h/a;->a()Lcom/ksad/lottie/n/b/a;

    move-result-object v1

    iput-object v1, p0, Lcom/ksad/lottie/model/layer/g;->F:Lcom/ksad/lottie/n/b/a;

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/g;->F:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v1, p0}, Lcom/ksad/lottie/n/b/a;->a(Lcom/ksad/lottie/n/b/a$a;)V

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/g;->F:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p0, v1}, Lcom/ksad/lottie/model/layer/a;->a(Lcom/ksad/lottie/n/b/a;)V

    :cond_61
    if-eqz v0, :cond_77

    iget-object v1, v0, Lcom/ksad/lottie/p/h/k;->b:Lcom/ksad/lottie/p/h/a;

    if-eqz v1, :cond_77

    invoke-virtual {v1}, Lcom/ksad/lottie/p/h/a;->a()Lcom/ksad/lottie/n/b/a;

    move-result-object v1

    iput-object v1, p0, Lcom/ksad/lottie/model/layer/g;->G:Lcom/ksad/lottie/n/b/a;

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/g;->G:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v1, p0}, Lcom/ksad/lottie/n/b/a;->a(Lcom/ksad/lottie/n/b/a$a;)V

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/g;->G:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p0, v1}, Lcom/ksad/lottie/model/layer/a;->a(Lcom/ksad/lottie/n/b/a;)V

    :cond_77
    if-eqz v0, :cond_8d

    iget-object v1, v0, Lcom/ksad/lottie/p/h/k;->c:Lcom/ksad/lottie/p/h/b;

    if-eqz v1, :cond_8d

    invoke-virtual {v1}, Lcom/ksad/lottie/p/h/b;->a()Lcom/ksad/lottie/n/b/a;

    move-result-object v1

    iput-object v1, p0, Lcom/ksad/lottie/model/layer/g;->H:Lcom/ksad/lottie/n/b/a;

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/g;->H:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v1, p0}, Lcom/ksad/lottie/n/b/a;->a(Lcom/ksad/lottie/n/b/a$a;)V

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/g;->H:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p0, v1}, Lcom/ksad/lottie/model/layer/a;->a(Lcom/ksad/lottie/n/b/a;)V

    :cond_8d
    if-eqz v0, :cond_a3

    iget-object v0, v0, Lcom/ksad/lottie/p/h/k;->d:Lcom/ksad/lottie/p/h/b;

    if-eqz v0, :cond_a3

    invoke-virtual {v0}, Lcom/ksad/lottie/p/h/b;->a()Lcom/ksad/lottie/n/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/model/layer/g;->I:Lcom/ksad/lottie/n/b/a;

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/g;->I:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0, p0}, Lcom/ksad/lottie/n/b/a;->a(Lcom/ksad/lottie/n/b/a$a;)V

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/g;->I:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p0, v0}, Lcom/ksad/lottie/model/layer/a;->a(Lcom/ksad/lottie/n/b/a;)V

    :cond_a3
    return-void
.end method

.method private a(Lcom/ksad/lottie/p/d;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ksad/lottie/p/d;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/n/a/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/g;->B:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/g;->B:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_10
    return-object v0

    :cond_11
    invoke-virtual {p1}, Lcom/ksad/lottie/p/d;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v2, v0

    :goto_20
    if-ge v2, v4, :cond_36

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/model/content/j;

    new-instance v5, Lcom/ksad/lottie/n/a/c;

    iget-object v6, p0, Lcom/ksad/lottie/model/layer/g;->D:Lcom/ksad/lottie/f;

    invoke-direct {v5, v6, p0, v0}, Lcom/ksad/lottie/n/a/c;-><init>(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/a;Lcom/ksad/lottie/model/content/j;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_20

    :cond_36
    iget-object v0, p0, Lcom/ksad/lottie/model/layer/g;->B:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto :goto_10
.end method

.method private a(CLcom/ksad/lottie/p/b;Landroid/graphics/Canvas;)V
    .registers 6

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/g;->w:[C

    const/4 v1, 0x0

    aput-char p1, v0, v1

    iget-boolean v1, p2, Lcom/ksad/lottie/p/b;->k:Z

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/g;->z:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v1, p3}, Lcom/ksad/lottie/model/layer/g;->a([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/g;->w:[C

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/g;->A:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v1, p3}, Lcom/ksad/lottie/model/layer/g;->a([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    :goto_15
    return-void

    :cond_16
    iget-object v1, p0, Lcom/ksad/lottie/model/layer/g;->A:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v1, p3}, Lcom/ksad/lottie/model/layer/g;->a([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/g;->w:[C

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/g;->z:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v1, p3}, Lcom/ksad/lottie/model/layer/g;->a([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_15
.end method

.method private a(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .registers 6

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_18

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    :cond_18
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_6
.end method

.method private a(Lcom/ksad/lottie/p/b;Landroid/graphics/Matrix;Lcom/ksad/lottie/p/c;Landroid/graphics/Canvas;)V
    .registers 14

    iget-wide v0, p1, Lcom/ksad/lottie/p/b;->c:D

    double-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v3, v0, v1

    invoke-static {p2}, Lcom/ksad/lottie/r/f;->a(Landroid/graphics/Matrix;)F

    move-result v7

    iget-object v8, p1, Lcom/ksad/lottie/p/b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    move v6, v0

    :goto_f
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v6, v0, :cond_68

    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p3}, Lcom/ksad/lottie/p/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/ksad/lottie/p/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ksad/lottie/p/d;->a(CLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/g;->E:Lcom/ksad/lottie/d;

    invoke-virtual {v1}, Lcom/ksad/lottie/d;->b()Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ksad/lottie/p/d;

    if-nez v1, :cond_37

    :goto_33
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_f

    :cond_37
    move-object v0, p0

    move-object v2, p2

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ksad/lottie/model/layer/g;->a(Lcom/ksad/lottie/p/d;Landroid/graphics/Matrix;FLcom/ksad/lottie/p/b;Landroid/graphics/Canvas;)V

    invoke-virtual {v1}, Lcom/ksad/lottie/p/d;->b()D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v3

    invoke-static {}, Lcom/ksad/lottie/r/f;->a()F

    move-result v1

    mul-float/2addr v0, v1

    mul-float v2, v0, v7

    iget v0, p1, Lcom/ksad/lottie/p/b;->e:I

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float v1, v0, v1

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/g;->I:Lcom/ksad/lottie/n/b/a;

    if-eqz v0, :cond_69

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr v0, v1

    :goto_61
    mul-float/2addr v0, v7

    add-float/2addr v0, v2

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_33

    :cond_68
    return-void

    :cond_69
    move v0, v1

    goto :goto_61
.end method

.method private a(Lcom/ksad/lottie/p/b;Lcom/ksad/lottie/p/c;Landroid/graphics/Matrix;Landroid/graphics/Canvas;)V
    .registers 15

    const/4 v3, 0x0

    invoke-static {p3}, Lcom/ksad/lottie/r/f;->a(Landroid/graphics/Matrix;)F

    move-result v4

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/g;->D:Lcom/ksad/lottie/f;

    invoke-virtual {p2}, Lcom/ksad/lottie/p/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/ksad/lottie/p/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ksad/lottie/f;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_16

    :cond_15
    return-void

    :cond_16
    iget-object v5, p1, Lcom/ksad/lottie/p/b;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/g;->D:Lcom/ksad/lottie/f;

    invoke-virtual {v1}, Lcom/ksad/lottie/f;->p()Lcom/ksad/lottie/m;

    move-result-object v1

    if-nez v1, :cond_82

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/g;->z:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/g;->z:Landroid/graphics/Paint;

    iget-wide v6, p1, Lcom/ksad/lottie/p/b;->c:D

    invoke-static {}, Lcom/ksad/lottie/r/f;->a()F

    move-result v1

    float-to-double v8, v1

    mul-double/2addr v6, v8

    double-to-float v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/g;->A:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/g;->z:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/g;->A:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/g;->z:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    move v2, v3

    :goto_4a
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_15

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0, p1, p4}, Lcom/ksad/lottie/model/layer/g;->a(CLcom/ksad/lottie/p/b;Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/g;->w:[C

    aput-char v0, v1, v3

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/g;->z:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v0, v1, v3, v6}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v6

    iget v0, p1, Lcom/ksad/lottie/p/b;->e:I

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float v1, v0, v1

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/g;->I:Lcom/ksad/lottie/n/b/a;

    if-eqz v0, :cond_87

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr v0, v1

    :goto_78
    mul-float/2addr v0, v4

    add-float/2addr v0, v6

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4a

    :cond_82
    invoke-virtual {v1, v5}, Lcom/ksad/lottie/m;->a(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    throw v0

    :cond_87
    move v0, v1

    goto :goto_78
.end method

.method private a(Lcom/ksad/lottie/p/d;Landroid/graphics/Matrix;FLcom/ksad/lottie/p/b;Landroid/graphics/Canvas;)V
    .registers 14

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/ksad/lottie/model/layer/g;->a(Lcom/ksad/lottie/p/d;)Ljava/util/List;

    move-result-object v3

    move v1, v2

    :goto_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_56

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/n/a/c;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/a/c;->b()Landroid/graphics/Path;

    move-result-object v0

    iget-object v4, p0, Lcom/ksad/lottie/model/layer/g;->x:Landroid/graphics/RectF;

    invoke-virtual {v0, v4, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v4, p0, Lcom/ksad/lottie/model/layer/g;->y:Landroid/graphics/Matrix;

    invoke-virtual {v4, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v4, p0, Lcom/ksad/lottie/model/layer/g;->y:Landroid/graphics/Matrix;

    iget-wide v6, p4, Lcom/ksad/lottie/p/b;->g:D

    neg-double v6, v6

    double-to-float v5, v6

    invoke-static {}, Lcom/ksad/lottie/r/f;->a()F

    move-result v6

    mul-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v4, p0, Lcom/ksad/lottie/model/layer/g;->y:Landroid/graphics/Matrix;

    invoke-virtual {v4, p3, p3}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v4, p0, Lcom/ksad/lottie/model/layer/g;->y:Landroid/graphics/Matrix;

    invoke-virtual {v0, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-boolean v4, p4, Lcom/ksad/lottie/p/b;->k:Z

    if-eqz v4, :cond_4b

    iget-object v4, p0, Lcom/ksad/lottie/model/layer/g;->z:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v4, p5}, Lcom/ksad/lottie/model/layer/g;->a(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object v4, p0, Lcom/ksad/lottie/model/layer/g;->A:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v4, p5}, Lcom/ksad/lottie/model/layer/g;->a(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    :goto_47
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_4b
    iget-object v4, p0, Lcom/ksad/lottie/model/layer/g;->A:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v4, p5}, Lcom/ksad/lottie/model/layer/g;->a(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object v4, p0, Lcom/ksad/lottie/model/layer/g;->z:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v4, p5}, Lcom/ksad/lottie/model/layer/g;->a(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_47

    :cond_56
    return-void
.end method

.method private a([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .registers 11

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_18

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_7

    :cond_18
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p3

    move-object v1, p1

    move v5, v4

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    goto :goto_7
.end method


# virtual methods
.method b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 12

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/g;->D:Lcom/ksad/lottie/f;

    invoke-virtual {v0}, Lcom/ksad/lottie/f;->t()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    :cond_e
    iget-object v0, p0, Lcom/ksad/lottie/model/layer/g;->C:Lcom/ksad/lottie/n/b/n;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/p/b;

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/g;->E:Lcom/ksad/lottie/d;

    invoke-virtual {v1}, Lcom/ksad/lottie/d;->f()Ljava/util/Map;

    move-result-object v1

    iget-object v2, v0, Lcom/ksad/lottie/p/b;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ksad/lottie/p/c;

    if-nez v1, :cond_2a

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_29
    return-void

    :cond_2a
    iget-object v2, p0, Lcom/ksad/lottie/model/layer/g;->F:Lcom/ksad/lottie/n/b/a;

    if-eqz v2, :cond_90

    iget-object v3, p0, Lcom/ksad/lottie/model/layer/g;->z:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_3d
    iget-object v2, p0, Lcom/ksad/lottie/model/layer/g;->G:Lcom/ksad/lottie/n/b/a;

    if-eqz v2, :cond_98

    iget-object v3, p0, Lcom/ksad/lottie/model/layer/g;->A:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_50
    iget-object v2, p0, Lcom/ksad/lottie/model/layer/a;->u:Lcom/ksad/lottie/n/b/o;

    invoke-virtual {v2}, Lcom/ksad/lottie/n/b/o;->c()Lcom/ksad/lottie/n/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit16 v2, v2, 0xff

    div-int/lit8 v2, v2, 0x64

    iget-object v3, p0, Lcom/ksad/lottie/model/layer/g;->z:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v3, p0, Lcom/ksad/lottie/model/layer/g;->A:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lcom/ksad/lottie/model/layer/g;->H:Lcom/ksad/lottie/n/b/a;

    if-eqz v2, :cond_a0

    iget-object v3, p0, Lcom/ksad/lottie/model/layer/g;->A:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :goto_81
    iget-object v2, p0, Lcom/ksad/lottie/model/layer/g;->D:Lcom/ksad/lottie/f;

    invoke-virtual {v2}, Lcom/ksad/lottie/f;->t()Z

    move-result v2

    if-eqz v2, :cond_b5

    invoke-direct {p0, v0, p2, v1, p1}, Lcom/ksad/lottie/model/layer/g;->a(Lcom/ksad/lottie/p/b;Landroid/graphics/Matrix;Lcom/ksad/lottie/p/c;Landroid/graphics/Canvas;)V

    :goto_8c
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_29

    :cond_90
    iget-object v2, p0, Lcom/ksad/lottie/model/layer/g;->z:Landroid/graphics/Paint;

    iget v3, v0, Lcom/ksad/lottie/p/b;->h:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3d

    :cond_98
    iget-object v2, p0, Lcom/ksad/lottie/model/layer/g;->A:Landroid/graphics/Paint;

    iget v3, v0, Lcom/ksad/lottie/p/b;->i:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_50

    :cond_a0
    invoke-static {p2}, Lcom/ksad/lottie/r/f;->a(Landroid/graphics/Matrix;)F

    move-result v2

    iget-object v3, p0, Lcom/ksad/lottie/model/layer/g;->A:Landroid/graphics/Paint;

    iget-wide v4, v0, Lcom/ksad/lottie/p/b;->j:D

    invoke-static {}, Lcom/ksad/lottie/r/f;->a()F

    move-result v6

    float-to-double v6, v6

    mul-double/2addr v4, v6

    float-to-double v6, v2

    mul-double/2addr v4, v6

    double-to-float v2, v4

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_81

    :cond_b5
    invoke-direct {p0, v0, v1, p2, p1}, Lcom/ksad/lottie/model/layer/g;->a(Lcom/ksad/lottie/p/b;Lcom/ksad/lottie/p/c;Landroid/graphics/Matrix;Landroid/graphics/Canvas;)V

    goto :goto_8c
.end method
