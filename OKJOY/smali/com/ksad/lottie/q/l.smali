.class public Lcom/ksad/lottie/q/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ksad/lottie/q/j0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ksad/lottie/q/j0",
        "<",
        "Lcom/ksad/lottie/model/content/c;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ksad/lottie/q/l;->a:I

    return-void
.end method

.method private a(D[D[D)I
    .registers 16
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x0L
        to = 0xffL
    .end annotation

    const/4 v0, 0x1

    move v2, v0

    :goto_2
    array-length v0, p3

    if-ge v2, v0, :cond_2b

    add-int/lit8 v0, v2, -0x1

    aget-wide v4, p3, v0

    aget-wide v6, p3, v2

    aget-wide v8, p3, v2

    cmpl-double v1, v8, p1

    if-ltz v1, :cond_27

    sub-double v8, p1, v4

    sub-double v4, v6, v4

    div-double v4, v8, v4

    aget-wide v0, p4, v0

    aget-wide v2, p4, v2

    invoke-static/range {v0 .. v5}, Lcom/ksad/lottie/r/e;->a(DDD)D

    move-result-wide v0

    const-wide v2, 0x406fe00000000000L    # 255.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    :goto_26
    return v0

    :cond_27
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_2b
    array-length v0, p4

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, p4, v0

    const-wide v2, 0x406fe00000000000L    # 255.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_26
.end method

.method private a(Lcom/ksad/lottie/model/content/c;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ksad/lottie/model/content/c;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    iget v0, p0, Lcom/ksad/lottie/q/l;->a:I

    mul-int/lit8 v0, v0, 0x4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v0, :cond_c

    :cond_b
    return-void

    :cond_c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    new-array v4, v1, [D

    new-array v5, v1, [D

    move v1, v2

    move v3, v0

    :goto_19
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_46

    rem-int/lit8 v0, v3, 0x2

    if-nez v0, :cond_36

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v6, v0

    aput-wide v6, v4, v1

    move v0, v1

    :goto_31
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_19

    :cond_36
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v6, v0

    aput-wide v6, v5, v1

    add-int/lit8 v0, v1, 0x1

    goto :goto_31

    :cond_46
    :goto_46
    invoke-virtual {p1}, Lcom/ksad/lottie/model/content/c;->c()I

    move-result v0

    if-ge v2, v0, :cond_b

    invoke-virtual {p1}, Lcom/ksad/lottie/model/content/c;->a()[I

    move-result-object v0

    aget v0, v0, v2

    invoke-virtual {p1}, Lcom/ksad/lottie/model/content/c;->b()[F

    move-result-object v1

    aget v1, v1, v2

    float-to-double v6, v1

    invoke-direct {p0, v6, v7, v4, v5}, Lcom/ksad/lottie/q/l;->a(D[D[D)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {v1, v3, v6, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p1}, Lcom/ksad/lottie/model/content/c;->a()[I

    move-result-object v1

    aput v0, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_46
.end method


# virtual methods
.method public a(Landroid/util/JsonReader;F)Lcom/ksad/lottie/model/content/c;
    .registers 15

    const-wide v10, 0x406fe00000000000L    # 255.0

    const/4 v0, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    if-ne v1, v2, :cond_2c

    const/4 v1, 0x1

    :goto_14
    if-eqz v1, :cond_19

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    :cond_19
    :goto_19
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_2c
    move v1, v0

    goto :goto_14

    :cond_2e
    if-eqz v1, :cond_33

    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    :cond_33
    iget v1, p0, Lcom/ksad/lottie/q/l;->a:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_40

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/ksad/lottie/q/l;->a:I

    :cond_40
    iget v1, p0, Lcom/ksad/lottie/q/l;->a:I

    new-array v5, v1, [F

    new-array v6, v1, [I

    move v1, v0

    move v2, v0

    move v3, v0

    :goto_49
    iget v0, p0, Lcom/ksad/lottie/q/l;->a:I

    mul-int/lit8 v0, v0, 0x4

    if-ge v1, v0, :cond_7a

    div-int/lit8 v7, v1, 0x4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v8, v0

    rem-int/lit8 v0, v1, 0x4

    packed-switch v0, :pswitch_data_84

    :goto_61
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_49

    :pswitch_65
    mul-double/2addr v8, v10

    double-to-int v0, v8

    const/16 v8, 0xff

    invoke-static {v8, v3, v2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    aput v0, v6, v7

    goto :goto_61

    :pswitch_70
    mul-double/2addr v8, v10

    double-to-int v2, v8

    goto :goto_61

    :pswitch_73
    mul-double/2addr v8, v10

    double-to-int v3, v8

    goto :goto_61

    :pswitch_76
    double-to-float v0, v8

    aput v0, v5, v7

    goto :goto_61

    :cond_7a
    new-instance v0, Lcom/ksad/lottie/model/content/c;

    invoke-direct {v0, v5, v6}, Lcom/ksad/lottie/model/content/c;-><init>([F[I)V

    invoke-direct {p0, v0, v4}, Lcom/ksad/lottie/q/l;->a(Lcom/ksad/lottie/model/content/c;Ljava/util/List;)V

    return-object v0

    nop

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_76
        :pswitch_73
        :pswitch_70
        :pswitch_65
    .end packed-switch
.end method

.method public bridge synthetic a(Landroid/util/JsonReader;F)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/ksad/lottie/q/l;->a(Landroid/util/JsonReader;F)Lcom/ksad/lottie/model/content/c;

    move-result-object v0

    return-object v0
.end method
