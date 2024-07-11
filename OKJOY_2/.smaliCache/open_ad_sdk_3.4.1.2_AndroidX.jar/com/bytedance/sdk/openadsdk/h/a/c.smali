.class public Lcom/bytedance/sdk/openadsdk/h/a/c;
.super Lcom/bytedance/sdk/adnet/core/Request;
.source "GifRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/h/a/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/adnet/core/Request<",
        "[B>;"
    }
.end annotation


# static fields
.field private static final i:Ljava/lang/Object;


# instance fields
.field private final c:Ljava/lang/Object;

.field private d:Lcom/bytedance/sdk/openadsdk/h/a/c$a;

.field private final e:Landroid/graphics/Bitmap$Config;

.field private final f:I

.field private final g:I

.field private final h:Landroid/widget/ImageView$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/h/a/c;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/h/a/c$a;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;)V
    .registers 11

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/bytedance/sdk/adnet/core/Request;-><init>(ILjava/lang/String;Lcom/bytedance/sdk/adnet/core/m$a;)V

    .line 42
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->c:Ljava/lang/Object;

    .line 84
    new-instance p1, Lcom/bytedance/sdk/adnet/core/e;

    const/16 v1, 0x3e8

    const/4 v2, 0x2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {p1, v1, v2, v3}, Lcom/bytedance/sdk/adnet/core/e;-><init>(IIF)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/h/a/c;->setRetryPolicy(Lcom/bytedance/sdk/adnet/face/d;)Lcom/bytedance/sdk/adnet/core/Request;

    .line 89
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->d:Lcom/bytedance/sdk/openadsdk/h/a/c$a;

    .line 90
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->e:Landroid/graphics/Bitmap$Config;

    .line 91
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->f:I

    .line 92
    iput p4, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->g:I

    .line 93
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->h:Landroid/widget/ImageView$ScaleType;

    .line 95
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/h/a/c;->setShouldCache(Z)Lcom/bytedance/sdk/adnet/core/Request;

    .line 96
    return-void
.end method

.method static a(IIII)I
    .registers 8

    .line 314
    int-to-double v0, p0

    int-to-double v2, p2

    div-double/2addr v0, v2

    .line 315
    int-to-double p0, p1

    int-to-double p2, p3

    div-double/2addr p0, p2

    .line 316
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    .line 317
    const/high16 p2, 0x3f800000    # 1.0f

    .line 318
    :goto_c
    const/high16 p3, 0x40000000    # 2.0f

    mul-float/2addr p3, p2

    float-to-double v0, p3

    cmpg-double v0, v0, p0

    if-gtz v0, :cond_16

    .line 319
    move p2, p3

    goto :goto_c

    .line 322
    :cond_16
    float-to-int p0, p2

    return p0
.end method

.method private static a(IIIILandroid/widget/ImageView$ScaleType;)I
    .registers 9

    .line 142
    if-nez p0, :cond_5

    if-nez p1, :cond_5

    .line 143
    return p2

    .line 147
    :cond_5
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-ne p4, v0, :cond_d

    .line 148
    if-nez p0, :cond_c

    .line 149
    return p2

    .line 151
    :cond_c
    return p0

    .line 155
    :cond_d
    if-nez p0, :cond_16

    .line 156
    int-to-double p0, p1

    int-to-double p3, p3

    div-double/2addr p0, p3

    .line 157
    int-to-double p2, p2

    mul-double/2addr p2, p0

    double-to-int p0, p2

    return p0

    .line 160
    :cond_16
    if-nez p1, :cond_19

    .line 161
    return p0

    .line 164
    :cond_19
    int-to-double v0, p3

    int-to-double p2, p2

    div-double/2addr v0, p2

    .line 165
    nop

    .line 168
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne p4, p2, :cond_2b

    .line 169
    int-to-double p2, p0

    mul-double/2addr p2, v0

    int-to-double v2, p1

    cmpg-double p1, p2, v2

    if-gez p1, :cond_2a

    .line 170
    div-double/2addr v2, v0

    double-to-int p0, v2

    .line 172
    :cond_2a
    return p0

    .line 175
    :cond_2b
    int-to-double p2, p0

    mul-double/2addr p2, v0

    int-to-double v2, p1

    cmpl-double p1, p2, v2

    if-lez p1, :cond_34

    .line 176
    div-double/2addr v2, v0

    double-to-int p0, v2

    .line 178
    :cond_34
    return p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/h/a/c;)Lcom/bytedance/sdk/openadsdk/h/a/c$a;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->d:Lcom/bytedance/sdk/openadsdk/h/a/c$a;

    return-object p0
.end method

.method private b(Lcom/bytedance/sdk/adnet/core/i;)Lcom/bytedance/sdk/adnet/core/m;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/i;",
            ")",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "[B>;"
        }
    .end annotation

    .line 198
    iget-object v0, p1, Lcom/bytedance/sdk/adnet/core/i;->b:[B

    .line 200
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/a/a;->a()Lcom/bytedance/sdk/openadsdk/h/a/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/a/c;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->f:I

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->g:I

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->h:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/h/a/a;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;

    move-result-object v1

    .line 203
    array-length v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-lt v2, v5, :cond_4c

    aget-byte v2, v0, v4

    const/16 v5, 0x47

    if-ne v2, v5, :cond_4c

    aget-byte v2, v0, v3

    const/16 v5, 0x49

    if-ne v2, v5, :cond_4c

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    const/16 v5, 0x46

    if-ne v2, v5, :cond_4c

    .line 206
    :try_start_2d
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/a/a;->a()Lcom/bytedance/sdk/openadsdk/h/a/a;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/h/a/a;->a(Ljava/lang/String;[B)V

    .line 207
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->d:Lcom/bytedance/sdk/openadsdk/h/a/c$a;

    if-eqz v2, :cond_42

    .line 208
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->b:Landroid/os/Handler;

    new-instance v5, Lcom/bytedance/sdk/openadsdk/h/a/c$1;

    invoke-direct {v5, p0, v0}, Lcom/bytedance/sdk/openadsdk/h/a/c$1;-><init>(Lcom/bytedance/sdk/openadsdk/h/a/c;[B)V

    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 218
    :cond_42
    invoke-static {p1}, Lcom/bytedance/sdk/adnet/d/b;->a(Lcom/bytedance/sdk/adnet/core/i;)Lcom/bytedance/sdk/adnet/face/a$a;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/adnet/core/m;->a(Ljava/lang/Object;Lcom/bytedance/sdk/adnet/face/a$a;)Lcom/bytedance/sdk/adnet/core/m;

    move-result-object p1
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_4a} :catch_4b

    return-object p1

    .line 219
    :catch_4b
    move-exception v2

    .line 223
    :cond_4c
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 224
    nop

    .line 225
    iget v5, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->f:I

    if-nez v5, :cond_64

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->g:I

    if-nez v5, :cond_64

    .line 226
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->e:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 227
    array-length v3, v0

    invoke-static {v0, v4, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_a8

    .line 230
    :cond_64
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 231
    array-length v5, v0

    invoke-static {v0, v4, v5, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 232
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 233
    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 236
    iget v7, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->f:I

    iget v8, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->g:I

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->h:Landroid/widget/ImageView$ScaleType;

    .line 237
    invoke-static {v7, v8, v5, v6, v9}, Lcom/bytedance/sdk/openadsdk/h/a/c;->a(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v7

    .line 239
    iget v8, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->g:I

    iget v9, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->f:I

    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->h:Landroid/widget/ImageView$ScaleType;

    .line 240
    invoke-static {v8, v9, v6, v5, v10}, Lcom/bytedance/sdk/openadsdk/h/a/c;->a(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v8

    .line 244
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 247
    nop

    .line 248
    invoke-static {v5, v6, v7, v8}, Lcom/bytedance/sdk/openadsdk/h/a/c;->a(IIII)I

    move-result v5

    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 249
    array-length v5, v0

    invoke-static {v0, v4, v5, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_a7

    .line 253
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-gt v2, v7, :cond_9e

    .line 254
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-le v2, v8, :cond_a7

    .line 255
    :cond_9e
    invoke-static {v0, v7, v8, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 256
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v2

    goto :goto_a8

    .line 258
    :cond_a7
    nop

    .line 262
    :goto_a8
    if-nez v0, :cond_b4

    .line 263
    new-instance v0, Lcom/bytedance/sdk/adnet/err/e;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/adnet/err/e;-><init>(Lcom/bytedance/sdk/adnet/core/i;)V

    invoke-static {v0}, Lcom/bytedance/sdk/adnet/core/m;->a(Lcom/bytedance/sdk/adnet/err/VAdError;)Lcom/bytedance/sdk/adnet/core/m;

    move-result-object p1

    return-object p1

    .line 266
    :cond_b4
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/f;->b(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 267
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/a/a;->a()Lcom/bytedance/sdk/openadsdk/h/a/a;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/h/a/a;->a(Ljava/lang/String;[B)V

    .line 268
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->d:Lcom/bytedance/sdk/openadsdk/h/a/c$a;

    if-eqz v1, :cond_cd

    .line 269
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->b:Landroid/os/Handler;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/h/a/c$2;

    invoke-direct {v2, p0, v0}, Lcom/bytedance/sdk/openadsdk/h/a/c$2;-><init>(Lcom/bytedance/sdk/openadsdk/h/a/c;[B)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 279
    :cond_cd
    invoke-static {p1}, Lcom/bytedance/sdk/adnet/d/b;->a(Lcom/bytedance/sdk/adnet/core/i;)Lcom/bytedance/sdk/adnet/face/a$a;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/adnet/core/m;->a(Ljava/lang/Object;Lcom/bytedance/sdk/adnet/face/a$a;)Lcom/bytedance/sdk/adnet/core/m;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected a(Lcom/bytedance/sdk/adnet/core/i;)Lcom/bytedance/sdk/adnet/core/m;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/i;",
            ")",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "[B>;"
        }
    .end annotation

    .line 184
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/a/c;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 186
    :try_start_3
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/h/a/c;->b(Lcom/bytedance/sdk/adnet/core/i;)Lcom/bytedance/sdk/adnet/core/m;

    move-result-object p1
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_7} :catch_b
    .catchall {:try_start_3 .. :try_end_7} :catchall_9

    :try_start_7
    monitor-exit v0

    return-object p1

    .line 191
    :catchall_9
    move-exception p1

    goto :goto_1e

    .line 187
    :catch_b
    move-exception p1

    .line 188
    const-string v1, "GifRequest"

    const-string v2, "Caught OOM for byte image"

    invoke-static {v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    new-instance v1, Lcom/bytedance/sdk/adnet/err/e;

    invoke-direct {v1, p1}, Lcom/bytedance/sdk/adnet/err/e;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/bytedance/sdk/adnet/core/m;->a(Lcom/bytedance/sdk/adnet/err/VAdError;)Lcom/bytedance/sdk/adnet/core/m;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 191
    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_9

    throw p1
.end method

.method protected a(Lcom/bytedance/sdk/adnet/core/m;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "[B>;)V"
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 295
    :try_start_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->d:Lcom/bytedance/sdk/openadsdk/h/a/c$a;

    .line 296
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    .line 297
    if-eqz v1, :cond_b

    .line 298
    invoke-interface {v1, p1}, Lcom/bytedance/sdk/adnet/core/m$a;->a(Lcom/bytedance/sdk/adnet/core/m;)V

    .line 300
    :cond_b
    return-void

    .line 296
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

    .line 285
    invoke-super {p0}, Lcom/bytedance/sdk/adnet/core/Request;->cancel()V

    .line 286
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    const/4 v1, 0x0

    :try_start_7
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->d:Lcom/bytedance/sdk/openadsdk/h/a/c$a;

    .line 288
    monitor-exit v0

    .line 289
    return-void

    .line 288
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getPriority()Lcom/bytedance/sdk/adnet/core/Request$b;
    .registers 2

    .line 120
    sget-object v0, Lcom/bytedance/sdk/adnet/core/Request$b;->a:Lcom/bytedance/sdk/adnet/core/Request$b;

    return-object v0
.end method
