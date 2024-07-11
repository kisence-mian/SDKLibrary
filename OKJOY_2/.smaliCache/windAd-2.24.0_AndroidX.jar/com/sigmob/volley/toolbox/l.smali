.class public Lcom/sigmob/volley/toolbox/l;
.super Lcom/sigmob/volley/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/volley/m<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/Object;


# instance fields
.field private final c:Ljava/lang/Object;

.field private final d:Landroid/graphics/Bitmap$Config;

.field private final e:I

.field private final f:I

.field private final g:Landroid/widget/ImageView$ScaleType;

.field private h:Lcom/sigmob/volley/o$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/volley/o$b<",
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

    sput-object v0, Lcom/sigmob/volley/toolbox/l;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sigmob/volley/o$b;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lcom/sigmob/volley/o$a;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sigmob/volley/o$b<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/widget/ImageView$ScaleType;",
            "Landroid/graphics/Bitmap$Config;",
            "Lcom/sigmob/volley/o$a;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p7}, Lcom/sigmob/volley/m;-><init>(ILjava/lang/String;Lcom/sigmob/volley/o$a;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/volley/toolbox/l;->c:Ljava/lang/Object;

    new-instance p1, Lcom/sigmob/volley/d;

    const/16 p7, 0x3e8

    const/4 v0, 0x2

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p1, p7, v0, v1}, Lcom/sigmob/volley/d;-><init>(IIF)V

    invoke-virtual {p0, p1}, Lcom/sigmob/volley/toolbox/l;->a(Lcom/sigmob/volley/q;)Lcom/sigmob/volley/m;

    iput-object p2, p0, Lcom/sigmob/volley/toolbox/l;->h:Lcom/sigmob/volley/o$b;

    iput-object p6, p0, Lcom/sigmob/volley/toolbox/l;->d:Landroid/graphics/Bitmap$Config;

    iput p3, p0, Lcom/sigmob/volley/toolbox/l;->e:I

    iput p4, p0, Lcom/sigmob/volley/toolbox/l;->f:I

    iput-object p5, p0, Lcom/sigmob/volley/toolbox/l;->g:Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method static a(IIII)I
    .registers 8

    int-to-double v0, p0

    int-to-double v2, p2

    div-double/2addr v0, v2

    int-to-double p0, p1

    int-to-double p2, p3

    div-double/2addr p0, p2

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    const/high16 p2, 0x3f800000    # 1.0f

    :goto_c
    const/high16 p3, 0x40000000    # 2.0f

    mul-float/2addr p3, p2

    float-to-double v0, p3

    cmpg-double v0, v0, p0

    if-gtz v0, :cond_16

    move p2, p3

    goto :goto_c

    :cond_16
    float-to-int p0, p2

    return p0
.end method

.method private static a(IIIILandroid/widget/ImageView$ScaleType;)I
    .registers 9

    if-nez p0, :cond_5

    if-nez p1, :cond_5

    return p2

    :cond_5
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-ne p4, v0, :cond_d

    if-nez p0, :cond_c

    return p2

    :cond_c
    return p0

    :cond_d
    if-nez p0, :cond_16

    int-to-double p0, p1

    int-to-double p3, p3

    div-double/2addr p0, p3

    int-to-double p2, p2

    mul-double/2addr p2, p0

    double-to-int p0, p2

    return p0

    :cond_16
    if-nez p1, :cond_19

    return p0

    :cond_19
    int-to-double v0, p3

    int-to-double p2, p2

    div-double/2addr v0, p2

    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne p4, p2, :cond_2a

    int-to-double p2, p0

    mul-double/2addr p2, v0

    int-to-double v2, p1

    cmpg-double p1, p2, v2

    if-gez p1, :cond_29

    div-double/2addr v2, v0

    double-to-int p0, v2

    :cond_29
    return p0

    :cond_2a
    int-to-double p2, p0

    mul-double/2addr p2, v0

    int-to-double v2, p1

    cmpl-double p1, p2, v2

    if-lez p1, :cond_33

    div-double/2addr v2, v0

    double-to-int p0, v2

    :cond_33
    return p0
.end method

.method private b(Lcom/sigmob/volley/j;)Lcom/sigmob/volley/o;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/j;",
            ")",
            "Lcom/sigmob/volley/o<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object v0, p1, Lcom/sigmob/volley/j;->b:[B

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iget v2, p0, Lcom/sigmob/volley/toolbox/l;->e:I

    const/4 v3, 0x0

    if-nez v2, :cond_1a

    iget v2, p0, Lcom/sigmob/volley/toolbox/l;->f:I

    if-nez v2, :cond_1a

    iget-object v2, p0, Lcom/sigmob/volley/toolbox/l;->d:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    array-length v2, v0

    invoke-static {v0, v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_5c

    :cond_1a
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v4, v0

    invoke-static {v0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v6, p0, Lcom/sigmob/volley/toolbox/l;->e:I

    iget v7, p0, Lcom/sigmob/volley/toolbox/l;->f:I

    iget-object v8, p0, Lcom/sigmob/volley/toolbox/l;->g:Landroid/widget/ImageView$ScaleType;

    invoke-static {v6, v7, v4, v5, v8}, Lcom/sigmob/volley/toolbox/l;->a(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v6

    iget v7, p0, Lcom/sigmob/volley/toolbox/l;->f:I

    iget v8, p0, Lcom/sigmob/volley/toolbox/l;->e:I

    iget-object v9, p0, Lcom/sigmob/volley/toolbox/l;->g:Landroid/widget/ImageView$ScaleType;

    invoke-static {v7, v8, v5, v4, v9}, Lcom/sigmob/volley/toolbox/l;->a(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v7

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v4, v5, v6, v7}, Lcom/sigmob/volley/toolbox/l;->a(IIII)I

    move-result v4

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    array-length v4, v0

    invoke-static {v0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gt v1, v6, :cond_54

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v1, v7, :cond_5c

    :cond_54
    invoke-static {v0, v6, v7, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v1

    :cond_5c
    :goto_5c
    if-nez v0, :cond_68

    new-instance v0, Lcom/sigmob/volley/l;

    invoke-direct {v0, p1}, Lcom/sigmob/volley/l;-><init>(Lcom/sigmob/volley/j;)V

    invoke-static {v0}, Lcom/sigmob/volley/o;->a(Lcom/sigmob/volley/t;)Lcom/sigmob/volley/o;

    move-result-object p1

    return-object p1

    :cond_68
    invoke-static {p1}, Lcom/sigmob/volley/toolbox/h;->a(Lcom/sigmob/volley/j;)Lcom/sigmob/volley/b$a;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sigmob/volley/o;->a(Ljava/lang/Object;Lcom/sigmob/volley/b$a;)Lcom/sigmob/volley/o;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected a(Lcom/sigmob/volley/j;)Lcom/sigmob/volley/o;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/j;",
            ")",
            "Lcom/sigmob/volley/o<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/sigmob/volley/toolbox/l;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p1}, Lcom/sigmob/volley/toolbox/l;->b(Lcom/sigmob/volley/j;)Lcom/sigmob/volley/o;

    move-result-object p1
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_7} :catch_b
    .catchall {:try_start_3 .. :try_end_7} :catchall_9

    :try_start_7
    monitor-exit v0

    return-object p1

    :catchall_9
    move-exception p1

    goto :goto_30

    :catch_b
    move-exception v1

    const-string v2, "Caught OOM for %d byte image, url=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object p1, p1, Lcom/sigmob/volley/j;->b:[B

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    const/4 p1, 0x1

    invoke-virtual {p0}, Lcom/sigmob/volley/toolbox/l;->i()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    invoke-static {v2, v3}, Lcom/sigmob/volley/u;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/sigmob/volley/l;

    invoke-direct {p1, v1}, Lcom/sigmob/volley/l;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcom/sigmob/volley/o;->a(Lcom/sigmob/volley/t;)Lcom/sigmob/volley/o;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_9

    throw p1
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/l;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/sigmob/volley/toolbox/l;->h:Lcom/sigmob/volley/o$b;

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    if-eqz v1, :cond_b

    invoke-interface {v1, p1}, Lcom/sigmob/volley/o$b;->a(Ljava/lang/Object;)V

    :cond_b
    return-void

    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/sigmob/volley/toolbox/l;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public l()V
    .registers 3

    invoke-super {p0}, Lcom/sigmob/volley/m;->l()V

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/l;->c:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_7
    iput-object v1, p0, Lcom/sigmob/volley/toolbox/l;->h:Lcom/sigmob/volley/o$b;

    monitor-exit v0

    return-void

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public r()Lcom/sigmob/volley/m$b;
    .registers 2

    sget-object v0, Lcom/sigmob/volley/m$b;->a:Lcom/sigmob/volley/m$b;

    return-object v0
.end method
