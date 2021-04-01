.class public Lcom/sigmob/volley/toolbox/u;
.super Lcom/sigmob/volley/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/volley/q",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:I = 0x3e8

.field public static final c:I = 0x2

.field public static final d:F = 2.0f

.field private static final e:Ljava/lang/Object;


# instance fields
.field private final f:Ljava/lang/Object;

.field private final g:Landroid/graphics/Bitmap$Config;

.field private final h:I

.field private final i:I

.field private final j:Landroid/widget/ImageView$ScaleType;

.field private k:Lcom/sigmob/volley/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/volley/z",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sigmob/volley/toolbox/u;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sigmob/volley/z;IILandroid/graphics/Bitmap$Config;Lcom/sigmob/volley/y;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sigmob/volley/z",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap$Config;",
            "Lcom/sigmob/volley/y;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/sigmob/volley/toolbox/u;-><init>(Ljava/lang/String;Lcom/sigmob/volley/z;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lcom/sigmob/volley/y;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sigmob/volley/z;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lcom/sigmob/volley/y;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sigmob/volley/z",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/widget/ImageView$ScaleType;",
            "Landroid/graphics/Bitmap$Config;",
            "Lcom/sigmob/volley/y;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p7}, Lcom/sigmob/volley/q;-><init>(ILjava/lang/String;Lcom/sigmob/volley/y;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sigmob/volley/toolbox/u;->f:Ljava/lang/Object;

    new-instance v0, Lcom/sigmob/volley/g;

    const/16 v1, 0x3e8

    const/4 v2, 0x2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/volley/g;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/sigmob/volley/toolbox/u;->a(Lcom/sigmob/volley/ab;)Lcom/sigmob/volley/q;

    iput-object p2, p0, Lcom/sigmob/volley/toolbox/u;->k:Lcom/sigmob/volley/z;

    iput-object p6, p0, Lcom/sigmob/volley/toolbox/u;->g:Landroid/graphics/Bitmap$Config;

    iput p3, p0, Lcom/sigmob/volley/toolbox/u;->h:I

    iput p4, p0, Lcom/sigmob/volley/toolbox/u;->i:I

    iput-object p5, p0, Lcom/sigmob/volley/toolbox/u;->j:Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method static a(IIII)I
    .registers 11

    const/high16 v6, 0x40000000    # 2.0f

    int-to-double v0, p0

    int-to-double v2, p2

    div-double/2addr v0, v2

    int-to-double v2, p1

    int-to-double v4, p3

    div-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_e
    mul-float v1, v0, v6

    float-to-double v4, v1

    cmpg-double v1, v4, v2

    if-gtz v1, :cond_17

    mul-float/2addr v0, v6

    goto :goto_e

    :cond_17
    float-to-int v0, v0

    return v0
.end method

.method private static a(IIIILandroid/widget/ImageView$ScaleType;)I
    .registers 11

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    move p0, p2

    :cond_5
    :goto_5
    return p0

    :cond_6
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-ne p4, v0, :cond_e

    if-nez p0, :cond_5

    move p0, p2

    goto :goto_5

    :cond_e
    if-nez p0, :cond_17

    int-to-double v0, p1

    int-to-double v2, p3

    div-double/2addr v0, v2

    int-to-double v2, p2

    mul-double/2addr v0, v2

    double-to-int p0, v0

    goto :goto_5

    :cond_17
    if-eqz p1, :cond_5

    int-to-double v0, p3

    int-to-double v2, p2

    div-double/2addr v0, v2

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne p4, v2, :cond_2c

    int-to-double v2, p0

    mul-double/2addr v2, v0

    int-to-double v4, p1

    cmpg-double v2, v2, v4

    if-gez v2, :cond_5

    int-to-double v2, p1

    div-double v0, v2, v0

    double-to-int p0, v0

    goto :goto_5

    :cond_2c
    int-to-double v2, p0

    mul-double/2addr v2, v0

    int-to-double v4, p1

    cmpl-double v2, v2, v4

    if-lez v2, :cond_5

    int-to-double v2, p1

    div-double v0, v2, v0

    double-to-int p0, v0

    goto :goto_5
.end method

.method private b(Lcom/sigmob/volley/n;)Lcom/sigmob/volley/x;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/n;",
            ")",
            "Lcom/sigmob/volley/x",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p1, Lcom/sigmob/volley/n;->b:[B

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iget v2, p0, Lcom/sigmob/volley/toolbox/u;->h:I

    if-nez v2, :cond_26

    iget v2, p0, Lcom/sigmob/volley/toolbox/u;->i:I

    if-nez v2, :cond_26

    iget-object v2, p0, Lcom/sigmob/volley/toolbox/u;->g:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    array-length v2, v0

    invoke-static {v0, v8, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1a
    if-nez v0, :cond_69

    new-instance v0, Lcom/sigmob/volley/p;

    invoke-direct {v0, p1}, Lcom/sigmob/volley/p;-><init>(Lcom/sigmob/volley/n;)V

    invoke-static {v0}, Lcom/sigmob/volley/x;->a(Lcom/sigmob/volley/ae;)Lcom/sigmob/volley/x;

    move-result-object v0

    :goto_25
    return-object v0

    :cond_26
    iput-boolean v9, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v2, v0

    invoke-static {v0, v8, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v4, p0, Lcom/sigmob/volley/toolbox/u;->h:I

    iget v5, p0, Lcom/sigmob/volley/toolbox/u;->i:I

    iget-object v6, p0, Lcom/sigmob/volley/toolbox/u;->j:Landroid/widget/ImageView$ScaleType;

    invoke-static {v4, v5, v2, v3, v6}, Lcom/sigmob/volley/toolbox/u;->a(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v4

    iget v5, p0, Lcom/sigmob/volley/toolbox/u;->i:I

    iget v6, p0, Lcom/sigmob/volley/toolbox/u;->h:I

    iget-object v7, p0, Lcom/sigmob/volley/toolbox/u;->j:Landroid/widget/ImageView$ScaleType;

    invoke-static {v5, v6, v3, v2, v7}, Lcom/sigmob/volley/toolbox/u;->a(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v5

    iput-boolean v8, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v2, v3, v4, v5}, Lcom/sigmob/volley/toolbox/u;->a(IIII)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    array-length v2, v0

    invoke-static {v0, v8, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_67

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-gt v0, v4, :cond_5f

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-le v0, v5, :cond_67

    :cond_5f
    invoke-static {v1, v4, v5, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1a

    :cond_67
    move-object v0, v1

    goto :goto_1a

    :cond_69
    invoke-static {p1}, Lcom/sigmob/volley/toolbox/k;->a(Lcom/sigmob/volley/n;)Lcom/sigmob/volley/c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sigmob/volley/x;->a(Ljava/lang/Object;Lcom/sigmob/volley/c;)Lcom/sigmob/volley/x;

    move-result-object v0

    goto :goto_25
.end method


# virtual methods
.method protected a(Lcom/sigmob/volley/n;)Lcom/sigmob/volley/x;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/n;",
            ")",
            "Lcom/sigmob/volley/x",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    sget-object v1, Lcom/sigmob/volley/toolbox/u;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0, p1}, Lcom/sigmob/volley/toolbox/u;->b(Lcom/sigmob/volley/n;)Lcom/sigmob/volley/x;
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_6} :catch_9
    .catchall {:try_start_3 .. :try_end_6} :catchall_2e

    move-result-object v0

    :try_start_7
    monitor-exit v1

    :goto_8
    return-object v0

    :catch_9
    move-exception v0

    const-string v2, "Caught OOM for %d byte image, url=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/sigmob/volley/n;->b:[B

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/sigmob/volley/toolbox/u;->n()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/sigmob/volley/af;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lcom/sigmob/volley/p;

    invoke-direct {v2, v0}, Lcom/sigmob/volley/p;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v2}, Lcom/sigmob/volley/x;->a(Lcom/sigmob/volley/ae;)Lcom/sigmob/volley/x;

    move-result-object v0

    monitor-exit v1

    goto :goto_8

    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .registers 4

    iget-object v1, p0, Lcom/sigmob/volley/toolbox/u;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/sigmob/volley/toolbox/u;->k:Lcom/sigmob/volley/z;

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    if-eqz v0, :cond_b

    invoke-interface {v0, p1}, Lcom/sigmob/volley/z;->a(Ljava/lang/Object;)V

    :cond_b
    return-void

    :catchall_c
    move-exception v0

    :try_start_d
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/sigmob/volley/toolbox/u;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public q()V
    .registers 3

    invoke-super {p0}, Lcom/sigmob/volley/q;->q()V

    iget-object v1, p0, Lcom/sigmob/volley/toolbox/u;->f:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_7
    iput-object v0, p0, Lcom/sigmob/volley/toolbox/u;->k:Lcom/sigmob/volley/z;

    monitor-exit v1

    return-void

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public w()Lcom/sigmob/volley/t;
    .registers 2

    sget-object v0, Lcom/sigmob/volley/t;->a:Lcom/sigmob/volley/t;

    return-object v0
.end method
