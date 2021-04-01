.class public Lcom/bytedance/sdk/adnet/b/e;
.super Lcom/bytedance/sdk/adnet/core/Request;
.source "ImageRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/adnet/core/Request",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final i:Ljava/lang/Object;


# instance fields
.field private final c:Ljava/lang/Object;

.field private d:Lcom/bytedance/sdk/adnet/core/n$a;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/adnet/core/n$a",
            "<",
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

    .prologue
    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/adnet/b/e;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/n$a;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/adnet/core/n$a",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/widget/ImageView$ScaleType;",
            "Landroid/graphics/Bitmap$Config;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 94
    invoke-direct {p0, v4, p1, p2}, Lcom/bytedance/sdk/adnet/core/Request;-><init>(ILjava/lang/String;Lcom/bytedance/sdk/adnet/core/n$a;)V

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/b/e;->c:Ljava/lang/Object;

    .line 95
    new-instance v0, Lcom/bytedance/sdk/adnet/core/e;

    const/16 v1, 0x3e8

    const/4 v2, 0x2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/adnet/core/e;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/adnet/b/e;->setRetryPolicy(Lcom/bytedance/sdk/adnet/face/d;)Lcom/bytedance/sdk/adnet/core/Request;

    .line 100
    iput-object p2, p0, Lcom/bytedance/sdk/adnet/b/e;->d:Lcom/bytedance/sdk/adnet/core/n$a;

    .line 101
    iput-object p6, p0, Lcom/bytedance/sdk/adnet/b/e;->e:Landroid/graphics/Bitmap$Config;

    .line 102
    iput p3, p0, Lcom/bytedance/sdk/adnet/b/e;->f:I

    .line 103
    iput p4, p0, Lcom/bytedance/sdk/adnet/b/e;->g:I

    .line 104
    iput-object p5, p0, Lcom/bytedance/sdk/adnet/b/e;->h:Landroid/widget/ImageView$ScaleType;

    .line 105
    invoke-virtual {p0, v4}, Lcom/bytedance/sdk/adnet/b/e;->setShouldCache(Z)Lcom/bytedance/sdk/adnet/core/Request;

    .line 106
    return-void
.end method

.method static a(IIII)I
    .registers 11
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 286
    int-to-double v0, p0

    int-to-double v2, p2

    div-double/2addr v0, v2

    .line 287
    int-to-double v2, p1

    int-to-double v4, p3

    div-double/2addr v2, v4

    .line 288
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 289
    const/high16 v0, 0x3f800000    # 1.0f

    .line 290
    :goto_e
    mul-float v1, v0, v6

    float-to-double v4, v1

    cmpg-double v1, v4, v2

    if-gtz v1, :cond_17

    .line 291
    mul-float/2addr v0, v6

    goto :goto_e

    .line 294
    :cond_17
    float-to-int v0, v0

    return v0
.end method

.method private static a(IIIILandroid/widget/ImageView$ScaleType;)I
    .registers 11

    .prologue
    .line 152
    if-nez p0, :cond_6

    if-nez p1, :cond_6

    move p0, p2

    .line 188
    :cond_5
    :goto_5
    return p0

    .line 157
    :cond_6
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-ne p4, v0, :cond_e

    .line 158
    if-nez p0, :cond_5

    move p0, p2

    .line 159
    goto :goto_5

    .line 165
    :cond_e
    if-nez p0, :cond_17

    .line 166
    int-to-double v0, p1

    int-to-double v2, p3

    div-double/2addr v0, v2

    .line 167
    int-to-double v2, p2

    mul-double/2addr v0, v2

    double-to-int p0, v0

    goto :goto_5

    .line 170
    :cond_17
    if-eqz p1, :cond_5

    .line 174
    int-to-double v0, p3

    int-to-double v2, p2

    div-double/2addr v0, v2

    .line 178
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne p4, v2, :cond_2c

    .line 179
    int-to-double v2, p0

    mul-double/2addr v2, v0

    int-to-double v4, p1

    cmpg-double v2, v2, v4

    if-gez v2, :cond_5

    .line 180
    int-to-double v2, p1

    div-double v0, v2, v0

    double-to-int p0, v0

    goto :goto_5

    .line 185
    :cond_2c
    int-to-double v2, p0

    mul-double/2addr v2, v0

    int-to-double v4, p1

    cmpl-double v2, v2, v4

    if-lez v2, :cond_5

    .line 186
    int-to-double v2, p1

    div-double v0, v2, v0

    double-to-int p0, v0

    goto :goto_5
.end method

.method private b(Lcom/bytedance/sdk/adnet/core/j;)Lcom/bytedance/sdk/adnet/core/n;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/j;",
            ")",
            "Lcom/bytedance/sdk/adnet/core/n",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 208
    iget-object v0, p1, Lcom/bytedance/sdk/adnet/core/j;->b:[B

    .line 209
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 211
    iget v2, p0, Lcom/bytedance/sdk/adnet/b/e;->f:I

    if-nez v2, :cond_26

    iget v2, p0, Lcom/bytedance/sdk/adnet/b/e;->g:I

    if-nez v2, :cond_26

    .line 212
    iget-object v2, p0, Lcom/bytedance/sdk/adnet/b/e;->e:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 213
    array-length v2, v0

    invoke-static {v0, v8, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 248
    :goto_1a
    if-nez v0, :cond_69

    .line 249
    new-instance v0, Lcom/bytedance/sdk/adnet/err/e;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/adnet/err/e;-><init>(Lcom/bytedance/sdk/adnet/core/j;)V

    invoke-static {v0}, Lcom/bytedance/sdk/adnet/core/n;->a(Lcom/bytedance/sdk/adnet/err/VAdError;)Lcom/bytedance/sdk/adnet/core/n;

    move-result-object v0

    .line 251
    :goto_25
    return-object v0

    .line 216
    :cond_26
    iput-boolean v9, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 217
    array-length v2, v0

    invoke-static {v0, v8, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 218
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 219
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 222
    iget v4, p0, Lcom/bytedance/sdk/adnet/b/e;->f:I

    iget v5, p0, Lcom/bytedance/sdk/adnet/b/e;->g:I

    iget-object v6, p0, Lcom/bytedance/sdk/adnet/b/e;->h:Landroid/widget/ImageView$ScaleType;

    .line 223
    invoke-static {v4, v5, v2, v3, v6}, Lcom/bytedance/sdk/adnet/b/e;->a(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v4

    .line 225
    iget v5, p0, Lcom/bytedance/sdk/adnet/b/e;->g:I

    iget v6, p0, Lcom/bytedance/sdk/adnet/b/e;->f:I

    iget-object v7, p0, Lcom/bytedance/sdk/adnet/b/e;->h:Landroid/widget/ImageView$ScaleType;

    .line 226
    invoke-static {v5, v6, v3, v2, v7}, Lcom/bytedance/sdk/adnet/b/e;->a(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v5

    .line 230
    iput-boolean v8, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 234
    invoke-static {v2, v3, v4, v5}, Lcom/bytedance/sdk/adnet/b/e;->a(IIII)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 235
    array-length v2, v0

    invoke-static {v0, v8, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 238
    if-eqz v1, :cond_67

    .line 239
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-gt v0, v4, :cond_5f

    .line 240
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-le v0, v5, :cond_67

    .line 241
    :cond_5f
    invoke-static {v1, v4, v5, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 242
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1a

    :cond_67
    move-object v0, v1

    .line 244
    goto :goto_1a

    .line 251
    :cond_69
    invoke-static {p1}, Lcom/bytedance/sdk/adnet/d/c;->a(Lcom/bytedance/sdk/adnet/core/j;)Lcom/bytedance/sdk/adnet/face/a$a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/core/n;->a(Ljava/lang/Object;Lcom/bytedance/sdk/adnet/face/a$a;)Lcom/bytedance/sdk/adnet/core/n;

    move-result-object v0

    goto :goto_25
.end method


# virtual methods
.method protected a(Lcom/bytedance/sdk/adnet/core/j;)Lcom/bytedance/sdk/adnet/core/n;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/j;",
            ")",
            "Lcom/bytedance/sdk/adnet/core/n",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    sget-object v1, Lcom/bytedance/sdk/adnet/b/e;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 196
    :try_start_3
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/b/e;->b(Lcom/bytedance/sdk/adnet/core/j;)Lcom/bytedance/sdk/adnet/core/n;
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_6} :catch_9
    .catchall {:try_start_3 .. :try_end_6} :catchall_2e

    move-result-object v0

    :try_start_7
    monitor-exit v1

    .line 199
    :goto_8
    return-object v0

    .line 197
    :catch_9
    move-exception v0

    .line 198
    const-string v2, "Caught OOM for %d byte image, url=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/bytedance/sdk/adnet/core/j;->b:[B

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/b/e;->getUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/bytedance/sdk/adnet/core/p;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    new-instance v2, Lcom/bytedance/sdk/adnet/err/e;

    invoke-direct {v2, v0}, Lcom/bytedance/sdk/adnet/err/e;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v2}, Lcom/bytedance/sdk/adnet/core/n;->a(Lcom/bytedance/sdk/adnet/err/VAdError;)Lcom/bytedance/sdk/adnet/core/n;

    move-result-object v0

    monitor-exit v1

    goto :goto_8

    .line 201
    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method protected a(Lcom/bytedance/sdk/adnet/core/n;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/n",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 266
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/b/e;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 267
    :try_start_3
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/e;->d:Lcom/bytedance/sdk/adnet/core/n$a;

    .line 268
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    .line 269
    if-eqz v0, :cond_b

    .line 270
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/adnet/core/n$a;->a(Lcom/bytedance/sdk/adnet/core/n;)V

    .line 272
    :cond_b
    return-void

    .line 268
    :catchall_c
    move-exception v0

    :try_start_d
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v0
.end method

.method public cancel()V
    .registers 3

    .prologue
    .line 257
    invoke-super {p0}, Lcom/bytedance/sdk/adnet/core/Request;->cancel()V

    .line 258
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/b/e;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 259
    const/4 v0, 0x0

    :try_start_7
    iput-object v0, p0, Lcom/bytedance/sdk/adnet/b/e;->d:Lcom/bytedance/sdk/adnet/core/n$a;

    .line 260
    monitor-exit v1

    .line 261
    return-void

    .line 260
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public getPriority()Lcom/bytedance/sdk/adnet/core/Request$b;
    .registers 2

    .prologue
    .line 130
    sget-object v0, Lcom/bytedance/sdk/adnet/core/Request$b;->a:Lcom/bytedance/sdk/adnet/core/Request$b;

    return-object v0
.end method
