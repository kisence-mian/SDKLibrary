.class public Lcom/bytedance/sdk/adnet/b/e;
.super Lcom/bytedance/sdk/adnet/core/Request;
.source "ImageRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/adnet/core/Request<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final i:Ljava/lang/Object;


# instance fields
.field private final c:Ljava/lang/Object;

.field private d:Lcom/bytedance/sdk/adnet/core/m$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/adnet/core/m$a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/graphics/Bitmap$Config;

.field private final f:I

.field private final g:I

.field private final h:Landroid/widget/ImageView$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/adnet/b/e;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/m$a;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/adnet/core/m$a<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/widget/ImageView$ScaleType;",
            "Landroid/graphics/Bitmap$Config;",
            ")V"
        }
    .end annotation

    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/bytedance/sdk/adnet/core/Request;-><init>(ILjava/lang/String;Lcom/bytedance/sdk/adnet/core/m$a;)V

    .line 57
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/adnet/b/e;->c:Ljava/lang/Object;

    .line 95
    new-instance p1, Lcom/bytedance/sdk/adnet/core/e;

    const/16 v1, 0x3e8

    const/4 v2, 0x2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {p1, v1, v2, v3}, Lcom/bytedance/sdk/adnet/core/e;-><init>(IIF)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/adnet/b/e;->setRetryPolicy(Lcom/bytedance/sdk/adnet/face/d;)Lcom/bytedance/sdk/adnet/core/Request;

    .line 100
    iput-object p2, p0, Lcom/bytedance/sdk/adnet/b/e;->d:Lcom/bytedance/sdk/adnet/core/m$a;

    .line 101
    iput-object p6, p0, Lcom/bytedance/sdk/adnet/b/e;->e:Landroid/graphics/Bitmap$Config;

    .line 102
    iput p3, p0, Lcom/bytedance/sdk/adnet/b/e;->f:I

    .line 103
    iput p4, p0, Lcom/bytedance/sdk/adnet/b/e;->g:I

    .line 104
    iput-object p5, p0, Lcom/bytedance/sdk/adnet/b/e;->h:Landroid/widget/ImageView$ScaleType;

    .line 105
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/adnet/b/e;->setShouldCache(Z)Lcom/bytedance/sdk/adnet/core/Request;

    .line 106
    return-void
.end method

.method static a(IIII)I
    .registers 8

    .line 286
    int-to-double v0, p0

    int-to-double v2, p2

    div-double/2addr v0, v2

    .line 287
    int-to-double p0, p1

    int-to-double p2, p3

    div-double/2addr p0, p2

    .line 288
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    .line 289
    const/high16 p2, 0x3f800000    # 1.0f

    .line 290
    :goto_c
    const/high16 p3, 0x40000000    # 2.0f

    mul-float/2addr p3, p2

    float-to-double v0, p3

    cmpg-double v0, v0, p0

    if-gtz v0, :cond_16

    .line 291
    move p2, p3

    goto :goto_c

    .line 294
    :cond_16
    float-to-int p0, p2

    return p0
.end method

.method private static a(IIIILandroid/widget/ImageView$ScaleType;)I
    .registers 9

    .line 152
    if-nez p0, :cond_5

    if-nez p1, :cond_5

    .line 153
    return p2

    .line 157
    :cond_5
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-ne p4, v0, :cond_d

    .line 158
    if-nez p0, :cond_c

    .line 159
    return p2

    .line 161
    :cond_c
    return p0

    .line 165
    :cond_d
    if-nez p0, :cond_16

    .line 166
    int-to-double p0, p1

    int-to-double p3, p3

    div-double/2addr p0, p3

    .line 167
    int-to-double p2, p2

    mul-double/2addr p2, p0

    double-to-int p0, p2

    return p0

    .line 170
    :cond_16
    if-nez p1, :cond_19

    .line 171
    return p0

    .line 174
    :cond_19
    int-to-double v0, p3

    int-to-double p2, p2

    div-double/2addr v0, p2

    .line 175
    nop

    .line 178
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne p4, p2, :cond_2b

    .line 179
    int-to-double p2, p0

    mul-double/2addr p2, v0

    int-to-double v2, p1

    cmpg-double p1, p2, v2

    if-gez p1, :cond_2a

    .line 180
    div-double/2addr v2, v0

    double-to-int p0, v2

    .line 182
    :cond_2a
    return p0

    .line 185
    :cond_2b
    int-to-double p2, p0

    mul-double/2addr p2, v0

    int-to-double v2, p1

    cmpl-double p1, p2, v2

    if-lez p1, :cond_34

    .line 186
    div-double/2addr v2, v0

    double-to-int p0, v2

    .line 188
    :cond_34
    return p0
.end method

.method private b(Lcom/bytedance/sdk/adnet/core/i;)Lcom/bytedance/sdk/adnet/core/m;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/i;",
            ")",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 208
    iget-object v0, p1, Lcom/bytedance/sdk/adnet/core/i;->b:[B

    .line 209
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 210
    nop

    .line 211
    iget v2, p0, Lcom/bytedance/sdk/adnet/b/e;->f:I

    const/4 v3, 0x0

    if-nez v2, :cond_1b

    iget v2, p0, Lcom/bytedance/sdk/adnet/b/e;->g:I

    if-nez v2, :cond_1b

    .line 212
    iget-object v2, p0, Lcom/bytedance/sdk/adnet/b/e;->e:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 213
    array-length v2, v0

    invoke-static {v0, v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_60

    .line 216
    :cond_1b
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 217
    array-length v4, v0

    invoke-static {v0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 218
    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 219
    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 222
    iget v6, p0, Lcom/bytedance/sdk/adnet/b/e;->f:I

    iget v7, p0, Lcom/bytedance/sdk/adnet/b/e;->g:I

    iget-object v8, p0, Lcom/bytedance/sdk/adnet/b/e;->h:Landroid/widget/ImageView$ScaleType;

    .line 223
    invoke-static {v6, v7, v4, v5, v8}, Lcom/bytedance/sdk/adnet/b/e;->a(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v6

    .line 225
    iget v7, p0, Lcom/bytedance/sdk/adnet/b/e;->g:I

    iget v8, p0, Lcom/bytedance/sdk/adnet/b/e;->f:I

    iget-object v9, p0, Lcom/bytedance/sdk/adnet/b/e;->h:Landroid/widget/ImageView$ScaleType;

    .line 226
    invoke-static {v7, v8, v5, v4, v9}, Lcom/bytedance/sdk/adnet/b/e;->a(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v7

    .line 230
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 233
    nop

    .line 234
    invoke-static {v4, v5, v6, v7}, Lcom/bytedance/sdk/adnet/b/e;->a(IIII)I

    move-result v4

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 235
    array-length v4, v0

    invoke-static {v0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 238
    if-eqz v0, :cond_5f

    .line 239
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gt v1, v6, :cond_56

    .line 240
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v1, v7, :cond_5f

    .line 241
    :cond_56
    invoke-static {v0, v6, v7, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 242
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v1

    goto :goto_60

    .line 244
    :cond_5f
    nop

    .line 248
    :goto_60
    if-nez v0, :cond_6c

    .line 249
    new-instance v0, Lcom/bytedance/sdk/adnet/err/e;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/adnet/err/e;-><init>(Lcom/bytedance/sdk/adnet/core/i;)V

    invoke-static {v0}, Lcom/bytedance/sdk/adnet/core/m;->a(Lcom/bytedance/sdk/adnet/err/VAdError;)Lcom/bytedance/sdk/adnet/core/m;

    move-result-object p1

    return-object p1

    .line 251
    :cond_6c
    invoke-static {p1}, Lcom/bytedance/sdk/adnet/d/b;->a(Lcom/bytedance/sdk/adnet/core/i;)Lcom/bytedance/sdk/adnet/face/a$a;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/adnet/core/m;->a(Ljava/lang/Object;Lcom/bytedance/sdk/adnet/face/a$a;)Lcom/bytedance/sdk/adnet/core/m;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected a(Lcom/bytedance/sdk/adnet/core/i;)Lcom/bytedance/sdk/adnet/core/m;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/i;",
            ")",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 194
    sget-object v0, Lcom/bytedance/sdk/adnet/b/e;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_3
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/b/e;->b(Lcom/bytedance/sdk/adnet/core/i;)Lcom/bytedance/sdk/adnet/core/m;

    move-result-object p1
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_7} :catch_b
    .catchall {:try_start_3 .. :try_end_7} :catchall_9

    :try_start_7
    monitor-exit v0

    return-object p1

    .line 201
    :catchall_9
    move-exception p1

    goto :goto_30

    .line 197
    :catch_b
    move-exception v1

    .line 198
    const-string v2, "Caught OOM for %d byte image, url=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object p1, p1, Lcom/bytedance/sdk/adnet/core/i;->b:[B

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    const/4 p1, 0x1

    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/b/e;->getUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    invoke-static {v2, v3}, Lcom/bytedance/sdk/adnet/core/o;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    new-instance p1, Lcom/bytedance/sdk/adnet/err/e;

    invoke-direct {p1, v1}, Lcom/bytedance/sdk/adnet/err/e;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcom/bytedance/sdk/adnet/core/m;->a(Lcom/bytedance/sdk/adnet/err/VAdError;)Lcom/bytedance/sdk/adnet/core/m;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 201
    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_9

    throw p1
.end method

.method protected a(Lcom/bytedance/sdk/adnet/core/m;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/e;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_3
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/b/e;->d:Lcom/bytedance/sdk/adnet/core/m$a;

    .line 268
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    .line 269
    if-eqz v1, :cond_b

    .line 270
    invoke-interface {v1, p1}, Lcom/bytedance/sdk/adnet/core/m$a;->a(Lcom/bytedance/sdk/adnet/core/m;)V

    .line 272
    :cond_b
    return-void

    .line 268
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public cancel()V
    .registers 3

    .line 257
    invoke-super {p0}, Lcom/bytedance/sdk/adnet/core/Request;->cancel()V

    .line 258
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/e;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 259
    const/4 v1, 0x0

    :try_start_7
    iput-object v1, p0, Lcom/bytedance/sdk/adnet/b/e;->d:Lcom/bytedance/sdk/adnet/core/m$a;

    .line 260
    monitor-exit v0

    .line 261
    return-void

    .line 260
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getPriority()Lcom/bytedance/sdk/adnet/core/Request$b;
    .registers 2

    .line 130
    sget-object v0, Lcom/bytedance/sdk/adnet/core/Request$b;->a:Lcom/bytedance/sdk/adnet/core/Request$b;

    return-object v0
.end method
