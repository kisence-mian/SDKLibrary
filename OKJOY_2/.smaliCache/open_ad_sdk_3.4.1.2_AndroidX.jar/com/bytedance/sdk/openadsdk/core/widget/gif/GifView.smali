.class public Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;
.super Landroid/widget/ImageView;
.source "GifView.java"


# instance fields
.field private a:Landroid/graphics/Movie;

.field private b:J

.field private c:I

.field private d:Landroid/graphics/drawable/AnimatedImageDrawable;

.field private e:Z

.field private f:Z

.field private g:F

.field private h:F

.field private i:F

.field private j:I

.field private k:I

.field private volatile l:Z

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 77
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 50
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-lt p1, v2, :cond_d

    move p1, v0

    goto :goto_e

    :cond_d
    move p1, v1

    :goto_e
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->e:Z

    .line 51
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->f:Z

    .line 74
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->m:Z

    .line 78
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->a()V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/16 v1, 0x1c

    if-lt p1, v1, :cond_d

    move p1, p2

    goto :goto_e

    :cond_d
    move p1, v0

    :goto_e
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->e:Z

    .line 51
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->f:Z

    .line 74
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->m:Z

    .line 83
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->a()V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 p2, 0x1

    const/4 p3, 0x0

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_d

    move p1, p2

    goto :goto_e

    :cond_d
    move p1, p3

    :goto_e
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->e:Z

    .line 51
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->f:Z

    .line 74
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->m:Z

    .line 88
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->a()V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 50
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 p2, 0x1

    const/4 p3, 0x0

    const/16 p4, 0x1c

    if-lt p1, p4, :cond_d

    move p1, p2

    goto :goto_e

    :cond_d
    move p1, p3

    :goto_e
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->e:Z

    .line 51
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->f:Z

    .line 74
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->m:Z

    .line 94
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->a()V

    .line 95
    return-void
.end method

.method private a([B)Landroid/graphics/Movie;
    .registers 4

    .line 162
    const/4 v0, 0x0

    :try_start_1
    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/Movie;->decodeByteArray([BII)Landroid/graphics/Movie;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_7

    return-object p1

    .line 163
    :catchall_7
    move-exception p1

    .line 164
    const-string v0, "GifView"

    const-string v1, "createMovieWithByteArrayBySafely error1"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/drawable/AnimatedImageDrawable;
    .registers 4

    .line 228
    :try_start_0
    invoke-static {p1}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 230
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 231
    instance-of v0, p1, Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz v0, :cond_15

    .line 232
    check-cast p1, Landroid/graphics/drawable/AnimatedImageDrawable;

    .line 233
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->l:Z

    if-nez v0, :cond_14

    .line 234
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedImageDrawable;->start()V
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_16

    .line 236
    :cond_14
    return-object p1

    .line 240
    :cond_15
    goto :goto_1e

    .line 238
    :catchall_16
    move-exception p1

    .line 239
    const-string v0, "GifView"

    const-string v1, "getAnimatedImageDrawable error"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 242
    :goto_1e
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 5

    .line 382
    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 383
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    invoke-static {p1, v0, p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/l;->a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/graphics/Canvas;)V
    .registers 6

    .line 464
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->a:Landroid/graphics/Movie;

    if-nez v0, :cond_5

    return-void

    .line 465
    :cond_5
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->c:I

    invoke-virtual {v0, v1}, Landroid/graphics/Movie;->setTime(I)Z

    .line 466
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->i:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 467
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->a:Landroid/graphics/Movie;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->g:F

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->i:F

    div-float/2addr v1, v2

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->h:F

    div-float/2addr v3, v2

    invoke-virtual {v0, p1, v1, v3}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 468
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 469
    return-void
.end method

.method private b([B)Landroid/graphics/drawable/AnimatedImageDrawable;
    .registers 10

    .line 184
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 185
    :cond_4
    nop

    .line 186
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->f:Z

    if-eqz v1, :cond_3d

    .line 188
    :try_start_9
    const-class v1, Landroid/graphics/ImageDecoder;

    const-string v2, "createSource"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/res/Resources;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/io/InputStream;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 189
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    aput-object v3, v2, v6

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    aput-object v3, v2, v7

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/ImageDecoder$Source;
    :try_end_33
    .catchall {:try_start_9 .. :try_end_33} :catchall_35

    .line 192
    move-object v0, v1

    goto :goto_3d

    .line 190
    :catchall_35
    move-exception v1

    .line 191
    const-string v2, "GifView"

    const-string v3, "GifView android P  : Use Reflection fail : "

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    :cond_3d
    :goto_3d
    if-nez v0, :cond_43

    .line 196
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->c([B)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    .line 199
    :cond_43
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->a(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/drawable/AnimatedImageDrawable;

    move-result-object p1

    return-object p1
.end method

.method private b()V
    .registers 3

    .line 426
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->a:Landroid/graphics/Movie;

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->e:Z

    if-nez v0, :cond_19

    .line 427
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->m:Z

    if-eqz v0, :cond_19

    .line 428
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_16

    .line 429
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->postInvalidateOnAnimation()V

    goto :goto_19

    .line 431
    :cond_16
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->invalidate()V

    .line 435
    :cond_19
    :goto_19
    return-void
.end method

.method private c([B)Landroid/graphics/ImageDecoder$Source;
    .registers 7

    .line 205
    nop

    .line 207
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "GIF_AD_CACHE/"

    goto :goto_11

    :cond_f
    const-string v2, "/GIF_CACHE/"

    :goto_11
    const-string v3, "TT_GIF_FILE"

    invoke-direct {p0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 208
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1c
    .catchall {:try_start_2 .. :try_end_1c} :catchall_2e

    .line 209
    const/4 v3, 0x0

    :try_start_1d
    array-length v4, p1

    invoke-virtual {v2, p1, v3, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 210
    invoke-static {v1}, Landroid/graphics/ImageDecoder;->createSource(Ljava/io/File;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p1
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_2c

    .line 215
    nop

    .line 216
    :try_start_26
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    .line 219
    goto :goto_2b

    .line 218
    :catchall_2a
    move-exception v0

    .line 210
    :goto_2b
    return-object p1

    .line 211
    :catchall_2c
    move-exception p1

    goto :goto_30

    :catchall_2e
    move-exception p1

    move-object v2, v0

    .line 212
    :goto_30
    :try_start_30
    const-string v1, "GifView"

    const-string v3, "GifView  getSourceByFile fail : "

    invoke-static {v1, v3, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_41

    .line 215
    if-eqz v2, :cond_3f

    .line 216
    :try_start_39
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    goto :goto_3f

    .line 218
    :catchall_3d
    move-exception p1

    .line 220
    goto :goto_40

    .line 219
    :cond_3f
    :goto_3f
    nop

    .line 221
    :goto_40
    return-object v0

    .line 214
    :catchall_41
    move-exception p1

    .line 215
    if-eqz v2, :cond_4a

    .line 216
    :try_start_44
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_4a

    .line 218
    :catchall_48
    move-exception v0

    goto :goto_4b

    .line 219
    :cond_4a
    :goto_4a
    nop

    .line 220
    :goto_4b
    throw p1
.end method

.method private c()V
    .registers 7

    .line 442
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->a:Landroid/graphics/Movie;

    if-nez v0, :cond_5

    return-void

    .line 444
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 446
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_13

    .line 447
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->b:J

    .line 450
    :cond_13
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->a:Landroid/graphics/Movie;

    invoke-virtual {v2}, Landroid/graphics/Movie;->duration()I

    move-result v2

    .line 452
    if-nez v2, :cond_1d

    .line 453
    const/16 v2, 0x3e8

    .line 456
    :cond_1d
    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->b:J

    sub-long/2addr v0, v3

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->c:I

    .line 457
    return-void
.end method


# virtual methods
.method a()V
    .registers 3

    .line 102
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->e:Z

    if-nez v0, :cond_a

    .line 103
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_2a

    .line 105
    :cond_a
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ab;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->f:Z

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android p \u53cd\u5c04\u89e3\u9501\uff1aexempt result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GifView"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :goto_2a
    return-void
.end method

.method public a([BZ)V
    .registers 3

    .line 129
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->l:Z

    .line 130
    if-eqz p1, :cond_15

    .line 131
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->e:Z

    if-nez p2, :cond_f

    .line 132
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->a([B)Landroid/graphics/Movie;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->a:Landroid/graphics/Movie;

    goto :goto_15

    .line 134
    :cond_f
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->b([B)Landroid/graphics/drawable/AnimatedImageDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->d:Landroid/graphics/drawable/AnimatedImageDrawable;

    .line 137
    :cond_15
    :goto_15
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 402
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->a:Landroid/graphics/Movie;

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->e:Z

    if-nez v0, :cond_23

    .line 404
    :try_start_8
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->l:Z

    if-nez v0, :cond_16

    .line 405
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->c()V

    .line 406
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->a(Landroid/graphics/Canvas;)V

    .line 407
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->b()V

    goto :goto_22

    .line 409
    :cond_16
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->a(Landroid/graphics/Canvas;)V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1a

    goto :goto_22

    .line 411
    :catchall_1a
    move-exception p1

    .line 412
    const-string v0, "GifView"

    const-string v1, "onDraw->Throwable->"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 413
    :goto_22
    goto :goto_26

    .line 415
    :cond_23
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 417
    :goto_26
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 389
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 390
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->a:Landroid/graphics/Movie;

    if-eqz p1, :cond_23

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->e:Z

    if-nez p1, :cond_23

    .line 394
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->getWidth()I

    move-result p1

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->j:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->g:F

    .line 395
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->getHeight()I

    move-result p1

    iget p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->k:I

    sub-int/2addr p1, p3

    int-to-float p1, p1

    div-float/2addr p1, p2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->h:F

    .line 397
    :cond_23
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2b

    const/4 p1, 0x1

    goto :goto_2c

    :cond_2b
    const/4 p1, 0x0

    :goto_2c
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->m:Z

    .line 398
    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    .line 322
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 323
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->e:Z

    if-nez v0, :cond_4f

    .line 324
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->a:Landroid/graphics/Movie;

    if-eqz v0, :cond_4f

    .line 325
    invoke-virtual {v0}, Landroid/graphics/Movie;->width()I

    move-result v0

    .line 326
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->a:Landroid/graphics/Movie;

    invoke-virtual {v1}, Landroid/graphics/Movie;->height()I

    move-result v1

    .line 331
    nop

    .line 332
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 334
    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_28

    .line 335
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 336
    if-le v0, p1, :cond_28

    .line 337
    int-to-float v2, v0

    int-to-float p1, p1

    div-float/2addr v2, p1

    goto :goto_29

    .line 344
    :cond_28
    move v2, v3

    :goto_29
    nop

    .line 345
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 347
    if-eqz p1, :cond_3a

    .line 348
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 349
    if-le v1, p1, :cond_3a

    .line 350
    int-to-float p2, v1

    int-to-float p1, p1

    div-float/2addr p2, p1

    goto :goto_3b

    .line 357
    :cond_3a
    move p2, v3

    :goto_3b
    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    div-float/2addr v3, p1

    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->i:F

    .line 359
    int-to-float p1, v0

    mul-float/2addr p1, v3

    float-to-int p1, p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->j:I

    .line 360
    int-to-float p2, v1

    mul-float/2addr p2, v3

    float-to-int p2, p2

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->k:I

    .line 362
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->setMeasuredDimension(II)V

    .line 372
    :cond_4f
    return-void
.end method

.method public onScreenStateChanged(I)V
    .registers 3

    .line 474
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onScreenStateChanged(I)V

    .line 475
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->a:Landroid/graphics/Movie;

    if-eqz v0, :cond_11

    .line 476
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->m:Z

    .line 477
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->b()V

    .line 479
    :cond_11
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    .line 484
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 485
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->a:Landroid/graphics/Movie;

    if-eqz p1, :cond_11

    .line 486
    if-nez p2, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->m:Z

    .line 487
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->b()V

    .line 489
    :cond_11
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 3

    .line 493
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onWindowVisibilityChanged(I)V

    .line 494
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->a:Landroid/graphics/Movie;

    if-eqz v0, :cond_11

    .line 495
    if-nez p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->m:Z

    .line 496
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->b()V

    .line 498
    :cond_11
    return-void
.end method
