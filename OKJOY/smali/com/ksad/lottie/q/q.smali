.class Lcom/ksad/lottie/q/q;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Landroid/view/animation/Interpolator;

.field private static b:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/animation/Interpolator;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/ksad/lottie/q/q;->a:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Landroid/support/v4/util/SparseArrayCompat;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/animation/Interpolator;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/ksad/lottie/q/q;->b:Landroid/support/v4/util/SparseArrayCompat;

    if-nez v0, :cond_b

    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    sput-object v0, Lcom/ksad/lottie/q/q;->b:Landroid/support/v4/util/SparseArrayCompat;

    :cond_b
    sget-object v0, Lcom/ksad/lottie/q/q;->b:Landroid/support/v4/util/SparseArrayCompat;

    return-object v0
.end method

.method private static a(Landroid/util/JsonReader;FLcom/ksad/lottie/q/j0;)Lcom/ksad/lottie/s/a;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/JsonReader;",
            "F",
            "Lcom/ksad/lottie/q/j0",
            "<TT;>;)",
            "Lcom/ksad/lottie/s/a",
            "<TT;>;"
        }
    .end annotation

    invoke-interface {p2, p0, p1}, Lcom/ksad/lottie/q/j0;->a(Landroid/util/JsonReader;F)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/ksad/lottie/s/a;

    invoke-direct {v1, v0}, Lcom/ksad/lottie/s/a;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method static a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;FLcom/ksad/lottie/q/j0;Z)Lcom/ksad/lottie/s/a;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/JsonReader;",
            "Lcom/ksad/lottie/d;",
            "F",
            "Lcom/ksad/lottie/q/j0",
            "<TT;>;Z)",
            "Lcom/ksad/lottie/s/a",
            "<TT;>;"
        }
    .end annotation

    if-eqz p4, :cond_7

    invoke-static {p1, p0, p2, p3}, Lcom/ksad/lottie/q/q;->a(Lcom/ksad/lottie/d;Landroid/util/JsonReader;FLcom/ksad/lottie/q/j0;)Lcom/ksad/lottie/s/a;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    invoke-static {p0, p2, p3}, Lcom/ksad/lottie/q/q;->a(Landroid/util/JsonReader;FLcom/ksad/lottie/q/j0;)Lcom/ksad/lottie/s/a;

    move-result-object v0

    goto :goto_6
.end method

.method private static a(Lcom/ksad/lottie/d;Landroid/util/JsonReader;FLcom/ksad/lottie/q/j0;)Lcom/ksad/lottie/s/a;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ksad/lottie/d;",
            "Landroid/util/JsonReader;",
            "F",
            "Lcom/ksad/lottie/q/j0",
            "<TT;>;)",
            "Lcom/ksad/lottie/s/a",
            "<TT;>;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    move-object v8, v1

    move v1, v2

    move-object v2, v4

    move-object v4, v6

    move-object v6, v7

    move-object v7, v0

    :goto_12
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b7

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v10

    const/4 v0, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_136

    :cond_24
    :goto_24
    packed-switch v0, :pswitch_data_158

    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_12

    :sswitch_2b
    const-string v11, "to"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_24

    const/4 v0, 0x6

    goto :goto_24

    :sswitch_35
    const-string v11, "ti"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_24

    const/4 v0, 0x7

    goto :goto_24

    :sswitch_3f
    const-string v11, "t"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_24

    const/4 v0, 0x0

    goto :goto_24

    :sswitch_49
    const-string v11, "s"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_24

    const/4 v0, 0x1

    goto :goto_24

    :sswitch_53
    const-string v11, "o"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_24

    const/4 v0, 0x3

    goto :goto_24

    :sswitch_5d
    const-string v11, "i"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_24

    const/4 v0, 0x4

    goto :goto_24

    :sswitch_67
    const-string v11, "h"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_24

    const/4 v0, 0x5

    goto :goto_24

    :sswitch_71
    const-string v11, "e"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_24

    const/4 v0, 0x2

    goto :goto_24

    :pswitch_7b
    invoke-static {p1, p2}, Lcom/ksad/lottie/q/p;->d(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v0

    move-object v7, v0

    goto :goto_12

    :pswitch_81
    invoke-static {p1, p2}, Lcom/ksad/lottie/q/p;->d(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v0

    move-object v8, v0

    goto :goto_12

    :pswitch_87
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_91

    const/4 v0, 0x1

    move v1, v0

    goto :goto_12

    :cond_91
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_12

    :pswitch_95
    invoke-static {p1, p2}, Lcom/ksad/lottie/q/p;->d(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v0

    move-object v4, v0

    goto/16 :goto_12

    :pswitch_9c
    invoke-static {p1, p2}, Lcom/ksad/lottie/q/p;->d(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v0

    move-object v6, v0

    goto/16 :goto_12

    :pswitch_a3
    invoke-interface {p3, p1, p2}, Lcom/ksad/lottie/q/j0;->a(Landroid/util/JsonReader;F)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    goto/16 :goto_12

    :pswitch_aa
    invoke-interface {p3, p1, p2}, Lcom/ksad/lottie/q/j0;->a(Landroid/util/JsonReader;F)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_12

    :pswitch_b0
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v10

    double-to-float v5, v10

    goto/16 :goto_12

    :cond_b7
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    if-eqz v1, :cond_cb

    sget-object v4, Lcom/ksad/lottie/q/q;->a:Landroid/view/animation/Interpolator;

    move-object v3, v2

    :goto_bf
    new-instance v0, Lcom/ksad/lottie/s/a;

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/ksad/lottie/s/a;-><init>(Lcom/ksad/lottie/d;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    iput-object v8, v0, Lcom/ksad/lottie/s/a;->i:Landroid/graphics/PointF;

    iput-object v7, v0, Lcom/ksad/lottie/s/a;->j:Landroid/graphics/PointF;

    return-object v0

    :cond_cb
    if-eqz v6, :cond_12f

    if-eqz v4, :cond_12f

    iget v0, v6, Landroid/graphics/PointF;->x:F

    neg-float v1, p2

    invoke-static {v0, v1, p2}, Lcom/ksad/lottie/r/e;->a(FFF)F

    move-result v0

    iput v0, v6, Landroid/graphics/PointF;->x:F

    iget v0, v6, Landroid/graphics/PointF;->y:F

    const/high16 v10, -0x3d380000    # -100.0f

    const/high16 v11, 0x42c80000    # 100.0f

    invoke-static {v0, v10, v11}, Lcom/ksad/lottie/r/e;->a(FFF)F

    move-result v0

    iput v0, v6, Landroid/graphics/PointF;->y:F

    iget v0, v4, Landroid/graphics/PointF;->x:F

    invoke-static {v0, v1, p2}, Lcom/ksad/lottie/r/e;->a(FFF)F

    move-result v0

    iput v0, v4, Landroid/graphics/PointF;->x:F

    iget v0, v4, Landroid/graphics/PointF;->y:F

    const/high16 v1, -0x3d380000    # -100.0f

    const/high16 v10, 0x42c80000    # 100.0f

    invoke-static {v0, v1, v10}, Lcom/ksad/lottie/r/e;->a(FFF)F

    move-result v0

    iput v0, v4, Landroid/graphics/PointF;->y:F

    iget v0, v6, Landroid/graphics/PointF;->x:F

    iget v1, v6, Landroid/graphics/PointF;->y:F

    iget v10, v4, Landroid/graphics/PointF;->x:F

    iget v11, v4, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v1, v10, v11}, Lcom/ksad/lottie/r/f;->a(FFFF)I

    move-result v1

    invoke-static {v1}, Lcom/ksad/lottie/q/q;->a(I)Ljava/lang/ref/WeakReference;

    move-result-object v10

    if-eqz v10, :cond_134

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Interpolator;

    :goto_110
    if-eqz v10, :cond_114

    if-nez v0, :cond_132

    :cond_114
    iget v0, v6, Landroid/graphics/PointF;->x:F

    div-float/2addr v0, p2

    iget v6, v6, Landroid/graphics/PointF;->y:F

    div-float/2addr v6, p2

    iget v9, v4, Landroid/graphics/PointF;->x:F

    div-float/2addr v9, p2

    iget v4, v4, Landroid/graphics/PointF;->y:F

    div-float/2addr v4, p2

    invoke-static {v0, v6, v9, v4}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v4

    :try_start_124
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v0}, Lcom/ksad/lottie/q/q;->a(ILjava/lang/ref/WeakReference;)V
    :try_end_12c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_124 .. :try_end_12c} :catch_12d

    goto :goto_bf

    :catch_12d
    move-exception v0

    goto :goto_bf

    :cond_12f
    sget-object v4, Lcom/ksad/lottie/q/q;->a:Landroid/view/animation/Interpolator;

    goto :goto_bf

    :cond_132
    move-object v4, v0

    goto :goto_bf

    :cond_134
    move-object v0, v9

    goto :goto_110

    :sswitch_data_136
    .sparse-switch
        0x65 -> :sswitch_71
        0x68 -> :sswitch_67
        0x69 -> :sswitch_5d
        0x6f -> :sswitch_53
        0x73 -> :sswitch_49
        0x74 -> :sswitch_3f
        0xe75 -> :sswitch_35
        0xe7b -> :sswitch_2b
    .end sparse-switch

    :pswitch_data_158
    .packed-switch 0x0
        :pswitch_b0
        :pswitch_aa
        :pswitch_a3
        :pswitch_9c
        :pswitch_95
        :pswitch_87
        :pswitch_81
        :pswitch_7b
    .end packed-switch
.end method

.method private static a(I)Ljava/lang/ref/WeakReference;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/animation/Interpolator;",
            ">;"
        }
    .end annotation

    const-class v1, Lcom/ksad/lottie/q/q;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/ksad/lottie/q/q;->a()Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    monitor-exit v1

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method private static a(ILjava/lang/ref/WeakReference;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/animation/Interpolator;",
            ">;)V"
        }
    .end annotation

    const-class v1, Lcom/ksad/lottie/q/q;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/ksad/lottie/q/q;->b:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method
