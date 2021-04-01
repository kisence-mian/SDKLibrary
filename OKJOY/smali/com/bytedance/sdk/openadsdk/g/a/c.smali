.class public Lcom/bytedance/sdk/openadsdk/g/a/c;
.super Lcom/bytedance/sdk/adnet/core/Request;
.source "GifRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/g/a/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/adnet/core/Request",
        "<[B>;"
    }
.end annotation


# static fields
.field private static final i:Ljava/lang/Object;


# instance fields
.field private final c:Ljava/lang/Object;

.field private d:Lcom/bytedance/sdk/openadsdk/g/a/c$a;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
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
    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/g/a/c;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/c$a;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;)V
    .registers 12

    .prologue
    const/4 v4, 0x0

    .line 83
    invoke-direct {p0, v4, p1, p2}, Lcom/bytedance/sdk/adnet/core/Request;-><init>(ILjava/lang/String;Lcom/bytedance/sdk/adnet/core/n$a;)V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->c:Ljava/lang/Object;

    .line 84
    new-instance v0, Lcom/bytedance/sdk/adnet/core/e;

    const/16 v1, 0x3e8

    const/4 v2, 0x2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/adnet/core/e;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->setRetryPolicy(Lcom/bytedance/sdk/adnet/face/d;)Lcom/bytedance/sdk/adnet/core/Request;

    .line 89
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->d:Lcom/bytedance/sdk/openadsdk/g/a/c$a;

    .line 90
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->e:Landroid/graphics/Bitmap$Config;

    .line 91
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->f:I

    .line 92
    iput p4, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->g:I

    .line 93
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->h:Landroid/widget/ImageView$ScaleType;

    .line 95
    invoke-virtual {p0, v4}, Lcom/bytedance/sdk/openadsdk/g/a/c;->setShouldCache(Z)Lcom/bytedance/sdk/adnet/core/Request;

    .line 96
    return-void
.end method

.method static a(IIII)I
    .registers 11
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 314
    int-to-double v0, p0

    int-to-double v2, p2

    div-double/2addr v0, v2

    .line 315
    int-to-double v2, p1

    int-to-double v4, p3

    div-double/2addr v2, v4

    .line 316
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 317
    const/high16 v0, 0x3f800000    # 1.0f

    .line 318
    :goto_e
    mul-float v1, v0, v6

    float-to-double v4, v1

    cmpg-double v1, v4, v2

    if-gtz v1, :cond_17

    .line 319
    mul-float/2addr v0, v6

    goto :goto_e

    .line 322
    :cond_17
    float-to-int v0, v0

    return v0
.end method

.method private static a(IIIILandroid/widget/ImageView$ScaleType;)I
    .registers 11

    .prologue
    .line 142
    if-nez p0, :cond_6

    if-nez p1, :cond_6

    move p0, p2

    .line 178
    :cond_5
    :goto_5
    return p0

    .line 147
    :cond_6
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-ne p4, v0, :cond_e

    .line 148
    if-nez p0, :cond_5

    move p0, p2

    .line 149
    goto :goto_5

    .line 155
    :cond_e
    if-nez p0, :cond_17

    .line 156
    int-to-double v0, p1

    int-to-double v2, p3

    div-double/2addr v0, v2

    .line 157
    int-to-double v2, p2

    mul-double/2addr v0, v2

    double-to-int p0, v0

    goto :goto_5

    .line 160
    :cond_17
    if-eqz p1, :cond_5

    .line 164
    int-to-double v0, p3

    int-to-double v2, p2

    div-double/2addr v0, v2

    .line 168
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne p4, v2, :cond_2c

    .line 169
    int-to-double v2, p0

    mul-double/2addr v2, v0

    int-to-double v4, p1

    cmpg-double v2, v2, v4

    if-gez v2, :cond_5

    .line 170
    int-to-double v2, p1

    div-double v0, v2, v0

    double-to-int p0, v0

    goto :goto_5

    .line 175
    :cond_2c
    int-to-double v2, p0

    mul-double/2addr v2, v0

    int-to-double v4, p1

    cmpl-double v2, v2, v4

    if-lez v2, :cond_5

    .line 176
    int-to-double v2, p1

    div-double v0, v2, v0

    double-to-int p0, v0

    goto :goto_5
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/g/a/c;)Lcom/bytedance/sdk/openadsdk/g/a/c$a;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->d:Lcom/bytedance/sdk/openadsdk/g/a/c$a;

    return-object v0
.end method

.method private b(Lcom/bytedance/sdk/adnet/core/j;)Lcom/bytedance/sdk/adnet/core/n;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/j;",
            ")",
            "Lcom/bytedance/sdk/adnet/core/n",
            "<[B>;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 198
    iget-object v0, p1, Lcom/bytedance/sdk/adnet/core/j;->b:[B

    .line 200
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a/a;->a()Lcom/bytedance/sdk/openadsdk/g/a/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->f:I

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->g:I

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->h:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/g/a/a;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;

    move-result-object v2

    .line 203
    array-length v1, v0

    const/4 v3, 0x3

    if-lt v1, v3, :cond_4c

    aget-byte v1, v0, v9

    const/16 v3, 0x47

    if-ne v1, v3, :cond_4c

    aget-byte v1, v0, v10

    const/16 v3, 0x49

    if-ne v1, v3, :cond_4c

    const/4 v1, 0x2

    aget-byte v1, v0, v1

    const/16 v3, 0x46

    if-ne v1, v3, :cond_4c

    .line 206
    :try_start_2d
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a/a;->a()Lcom/bytedance/sdk/openadsdk/g/a/a;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/g/a/a;->a(Ljava/lang/String;[B)V

    .line 207
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->d:Lcom/bytedance/sdk/openadsdk/g/a/c$a;

    if-eqz v1, :cond_42

    .line 208
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->b:Landroid/os/Handler;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/g/a/c$1;

    invoke-direct {v3, p0, v0}, Lcom/bytedance/sdk/openadsdk/g/a/c$1;-><init>(Lcom/bytedance/sdk/openadsdk/g/a/c;[B)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 218
    :cond_42
    invoke-static {p1}, Lcom/bytedance/sdk/adnet/d/c;->a(Lcom/bytedance/sdk/adnet/core/j;)Lcom/bytedance/sdk/adnet/face/a$a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/core/n;->a(Ljava/lang/Object;Lcom/bytedance/sdk/adnet/face/a$a;)Lcom/bytedance/sdk/adnet/core/n;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_49} :catch_4b

    move-result-object v0

    .line 279
    :goto_4a
    return-object v0

    .line 219
    :catch_4b
    move-exception v1

    .line 223
    :cond_4c
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 225
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->f:I

    if-nez v3, :cond_6e

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->g:I

    if-nez v3, :cond_6e

    .line 226
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->e:Landroid/graphics/Bitmap$Config;

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 227
    array-length v3, v0

    invoke-static {v0, v9, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 262
    :goto_62
    if-nez v0, :cond_b1

    .line 263
    new-instance v0, Lcom/bytedance/sdk/adnet/err/e;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/adnet/err/e;-><init>(Lcom/bytedance/sdk/adnet/core/j;)V

    invoke-static {v0}, Lcom/bytedance/sdk/adnet/core/n;->a(Lcom/bytedance/sdk/adnet/err/VAdError;)Lcom/bytedance/sdk/adnet/core/n;

    move-result-object v0

    goto :goto_4a

    .line 230
    :cond_6e
    iput-boolean v10, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 231
    array-length v3, v0

    invoke-static {v0, v9, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 232
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 233
    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 236
    iget v5, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->f:I

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->g:I

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->h:Landroid/widget/ImageView$ScaleType;

    .line 237
    invoke-static {v5, v6, v3, v4, v7}, Lcom/bytedance/sdk/openadsdk/g/a/c;->a(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v5

    .line 239
    iget v6, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->g:I

    iget v7, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->f:I

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->h:Landroid/widget/ImageView$ScaleType;

    .line 240
    invoke-static {v6, v7, v4, v3, v8}, Lcom/bytedance/sdk/openadsdk/g/a/c;->a(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v6

    .line 244
    iput-boolean v9, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 248
    invoke-static {v3, v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/g/a/c;->a(IIII)I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 249
    array-length v3, v0

    invoke-static {v0, v9, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 252
    if-eqz v1, :cond_af

    .line 253
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-gt v0, v5, :cond_a7

    .line 254
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-le v0, v6, :cond_af

    .line 255
    :cond_a7
    invoke-static {v1, v5, v6, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 256
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_62

    :cond_af
    move-object v0, v1

    .line 258
    goto :goto_62

    .line 266
    :cond_b1
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/f;->b(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 267
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a/a;->a()Lcom/bytedance/sdk/openadsdk/g/a/a;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/g/a/a;->a(Ljava/lang/String;[B)V

    .line 268
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->d:Lcom/bytedance/sdk/openadsdk/g/a/c$a;

    if-eqz v1, :cond_ca

    .line 269
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->b:Landroid/os/Handler;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/g/a/c$2;

    invoke-direct {v2, p0, v0}, Lcom/bytedance/sdk/openadsdk/g/a/c$2;-><init>(Lcom/bytedance/sdk/openadsdk/g/a/c;[B)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 279
    :cond_ca
    invoke-static {p1}, Lcom/bytedance/sdk/adnet/d/c;->a(Lcom/bytedance/sdk/adnet/core/j;)Lcom/bytedance/sdk/adnet/face/a$a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/core/n;->a(Ljava/lang/Object;Lcom/bytedance/sdk/adnet/face/a$a;)Lcom/bytedance/sdk/adnet/core/n;

    move-result-object v0

    goto/16 :goto_4a
.end method


# virtual methods
.method protected a(Lcom/bytedance/sdk/adnet/core/j;)Lcom/bytedance/sdk/adnet/core/n;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/j;",
            ")",
            "Lcom/bytedance/sdk/adnet/core/n",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 184
    sget-object v1, Lcom/bytedance/sdk/openadsdk/g/a/c;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 186
    :try_start_3
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->b(Lcom/bytedance/sdk/adnet/core/j;)Lcom/bytedance/sdk/adnet/core/n;
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_6} :catch_9
    .catchall {:try_start_3 .. :try_end_6} :catchall_1c

    move-result-object v0

    :try_start_7
    monitor-exit v1

    .line 189
    :goto_8
    return-object v0

    .line 187
    :catch_9
    move-exception v0

    .line 188
    const-string v2, "GifRequest"

    const-string v3, "Caught OOM for byte image"

    invoke-static {v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    new-instance v2, Lcom/bytedance/sdk/adnet/err/e;

    invoke-direct {v2, v0}, Lcom/bytedance/sdk/adnet/err/e;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v2}, Lcom/bytedance/sdk/adnet/core/n;->a(Lcom/bytedance/sdk/adnet/err/VAdError;)Lcom/bytedance/sdk/adnet/core/n;

    move-result-object v0

    monitor-exit v1

    goto :goto_8

    .line 191
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method protected a(Lcom/bytedance/sdk/adnet/core/n;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/n",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 294
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 295
    :try_start_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->d:Lcom/bytedance/sdk/openadsdk/g/a/c$a;

    .line 296
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    .line 297
    if-eqz v0, :cond_b

    .line 298
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/adnet/core/n$a;->a(Lcom/bytedance/sdk/adnet/core/n;)V

    .line 300
    :cond_b
    return-void

    .line 296
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
    .line 285
    invoke-super {p0}, Lcom/bytedance/sdk/adnet/core/Request;->cancel()V

    .line 286
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 287
    const/4 v0, 0x0

    :try_start_7
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->d:Lcom/bytedance/sdk/openadsdk/g/a/c$a;

    .line 288
    monitor-exit v1

    .line 289
    return-void

    .line 288
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
    .line 120
    sget-object v0, Lcom/bytedance/sdk/adnet/core/Request$b;->a:Lcom/bytedance/sdk/adnet/core/Request$b;

    return-object v0
.end method
