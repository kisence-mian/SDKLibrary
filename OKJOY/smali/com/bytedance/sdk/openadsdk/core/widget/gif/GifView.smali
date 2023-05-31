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
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 77
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v0, v3, :cond_16

    move v0, v1

    :goto_c
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->e:Z

    .line 51
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->f:Z

    .line 74
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->m:Z

    .line 78
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->a()V

    .line 79
    return-void

    :cond_16
    move v0, v2

    .line 50
    goto :goto_c
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v0, v3, :cond_16

    move v0, v1

    :goto_c
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->e:Z

    .line 51
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->f:Z

    .line 74
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->m:Z

    .line 83
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->a()V

    .line 84
    return-void

    :cond_16
    move v0, v2

    .line 50
    goto :goto_c
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v0, v3, :cond_16

    move v0, v1

    :goto_c
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->e:Z

    .line 51
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->f:Z

    .line 74
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->m:Z

    .line 88
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->a()V

    .line 89
    return-void

    :cond_16
    move v0, v2

    .line 50
    goto :goto_c
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 9
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v0, v3, :cond_16

    move v0, v1

    :goto_c
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->e:Z

    .line 51
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->f:Z

    .line 74
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->m:Z

    .line 94
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->a()V

    .line 95
    return-void

    :cond_16
    move v0, v2

    .line 50
    goto :goto_c
.end method

.method private a([B)Landroid/graphics/Movie;
    .registers 5

    .prologue
    .line 162
    const/4 v0, 0x0

    :try_start_1
    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/Movie;->decodeByteArray([BII)Landroid/graphics/Movie;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_5} :catch_7

    move-result-object v0

    .line 166
    :goto_6
    return-object v0

    .line 163
    :catch_7
    move-exception v0

    .line 164
    const-string v1, "GifView"

    const-string v2, "createMovieWithByteArrayBySafely error1"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private a(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/drawable/AnimatedImageDrawable;
    .registers 5
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    .prologue
    .line 228
    :try_start_0
    invoke-static {p1}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 230
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 231
    instance-of v1, v0, Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz v1, :cond_1d

    .line 232
    check-cast v0, Landroid/graphics/drawable/AnimatedImageDrawable;

    .line 233
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->l:Z

    if-nez v1, :cond_14

    .line 234
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->start()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_14} :catch_15

    .line 242
    :cond_14
    :goto_14
    return-object v0

    .line 238
    :catch_15
    move-exception v0

    .line 239
    const-string v1, "GifView"

    const-string v2, "getAnimatedImageDrawable error"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 242
    :cond_1d
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 5

    .prologue
    .line 382
    if-nez p1, :cond_4

    const/4 v0, 0x0

    .line 383
    :goto_3
    return-object v0

    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    invoke-static {p1, v0, p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/k;->a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_3
.end method

.method private a(Landroid/graphics/Canvas;)V
    .registers 6

    .prologue
    .line 464
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->a:Landroid/graphics/Movie;

    if-nez v0, :cond_5

    .line 469
    :goto_4
    return-void

    .line 465
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->a:Landroid/graphics/Movie;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->c:I

    invoke-virtual {v0, v1}, Landroid/graphics/Movie;->setTime(I)Z

    .line 466
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->i:F

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->i:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 467
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->a:Landroid/graphics/Movie;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->g:F

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->i:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->h:F

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->i:F

    div-float/2addr v2, v3

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 468
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_4
.end method

.method private b([B)Landroid/graphics/drawable/AnimatedImageDrawable;
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 184
    if-nez p1, :cond_5

    move-object v0, v1

    .line 199
    :goto_4
    return-object v0

    .line 186
    :cond_5
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->f:Z

    if-eqz v0, :cond_4a

    .line 188
    :try_start_9
    const-class v0, Landroid/graphics/ImageDecoder;

    const-string v2, "createSource"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/res/Resources;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/io/InputStream;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 189
    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ImageDecoder$Source;
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_37} :catch_42

    .line 195
    :goto_37
    if-nez v0, :cond_3d

    .line 196
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->c([B)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    .line 199
    :cond_3d
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->a(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/drawable/AnimatedImageDrawable;

    move-result-object v0

    goto :goto_4

    .line 190
    :catch_42
    move-exception v0

    .line 191
    const-string v2, "GifView"

    const-string v3, "GifView android P  : Use Reflection fail : "

    invoke-static {v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4a
    move-object v0, v1

    goto :goto_37
.end method

.method private b()V
    .registers 3

    .prologue
    .line 426
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->a:Landroid/graphics/Movie;

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->e:Z

    if-nez v0, :cond_15

    .line 427
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->m:Z

    if-eqz v0, :cond_15

    .line 428
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_16

    .line 429
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->postInvalidateOnAnimation()V

    .line 435
    :cond_15
    :goto_15
    return-void

    .line 431
    :cond_16
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->invalidate()V

    goto :goto_15
.end method

.method private c([B)Landroid/graphics/ImageDecoder$Source;
    .registers 7
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 205
    .line 207
    :try_start_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v1

    if-eqz v1, :cond_27

    const-string v1, "GIF_AD_CACHE/"

    :goto_d
    const-string v3, "TT_GIF_FILE"

    invoke-direct {p0, v2, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 208
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_18} :catch_2a
    .catchall {:try_start_1 .. :try_end_18} :catchall_3b

    .line 209
    const/4 v3, 0x0

    :try_start_19
    array-length v4, p1

    invoke-virtual {v2, p1, v3, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 210
    invoke-static {v1}, Landroid/graphics/ImageDecoder;->createSource(Ljava/io/File;)Landroid/graphics/ImageDecoder$Source;
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_20} :catch_4a
    .catchall {:try_start_19 .. :try_end_20} :catchall_48

    move-result-object v0

    .line 215
    if-eqz v2, :cond_26

    .line 216
    :try_start_23
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_26} :catch_44

    .line 221
    :cond_26
    :goto_26
    return-object v0

    .line 207
    :cond_27
    :try_start_27
    const-string v1, "/GIF_CACHE/"
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_29} :catch_2a
    .catchall {:try_start_27 .. :try_end_29} :catchall_3b

    goto :goto_d

    .line 211
    :catch_2a
    move-exception v1

    move-object v2, v0

    .line 212
    :goto_2c
    :try_start_2c
    const-string v3, "GifView"

    const-string v4, "GifView  getSourceByFile fail : "

    invoke-static {v3, v4, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_48

    .line 215
    if-eqz v2, :cond_26

    .line 216
    :try_start_35
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_26

    .line 218
    :catch_39
    move-exception v1

    goto :goto_26

    .line 214
    :catchall_3b
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 215
    :goto_3e
    if-eqz v2, :cond_43

    .line 216
    :try_start_40
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_43} :catch_46

    .line 219
    :cond_43
    :goto_43
    throw v0

    .line 218
    :catch_44
    move-exception v1

    goto :goto_26

    :catch_46
    move-exception v1

    goto :goto_43

    .line 214
    :catchall_48
    move-exception v0

    goto :goto_3e

    .line 211
    :catch_4a
    move-exception v1

    goto :goto_2c
.end method

.method private c()V
    .registers 7

    .prologue
    .line 442
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->a:Landroid/graphics/Movie;

    if-nez v0, :cond_5

    .line 457
    :goto_4
    return-void

    .line 444
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 446
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->b:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_13

    .line 447
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->b:J

    .line 450
    :cond_13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->a:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->duration()I

    move-result v0

    .line 452
    if-nez v0, :cond_1d

    .line 453
    const/16 v0, 0x3e8

    .line 456
    :cond_1d
    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->b:J

    sub-long/2addr v2, v4

    int-to-long v0, v0

    rem-long v0, v2, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->c:I

    goto :goto_4
.end method


# virtual methods
.method a()V
    .registers 4

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->e:Z

    if-nez v0, :cond_a

    .line 103
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 109
    :goto_9
    return-void

    .line 105
    :cond_a
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/aa;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->f:Z

    .line 107
    const-string v0, "GifView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android p \u53cd\u5c04\u89e3\u9501\uff1aexempt result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->f:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public a([BZ)V
    .registers 4

    .prologue
    .line 129
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->l:Z

    .line 130
    if-eqz p1, :cond_e

    .line 131
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->e:Z

    if-nez v0, :cond_f

    .line 132
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->a([B)Landroid/graphics/Movie;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->a:Landroid/graphics/Movie;

    .line 137
    :cond_e
    :goto_e
    return-void

    .line 134
    :cond_f
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->b([B)Landroid/graphics/drawable/AnimatedImageDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->d:Landroid/graphics/drawable/AnimatedImageDrawable;

    goto :goto_e
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    .prologue
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

    .line 417
    :goto_15
    return-void

    .line 409
    :cond_16
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->a(Landroid/graphics/Canvas;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_19} :catch_1a

    goto :goto_15

    .line 411
    :catch_1a
    move-exception v0

    .line 412
    const-string v1, "GifView"

    const-string v2, "onDraw->Throwable->"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_15

    .line 415
    :cond_23
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_15
.end method

.method protected onLayout(ZIIII)V
    .registers 9

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 389
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 390
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->a:Landroid/graphics/Movie;

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->e:Z

    if-nez v0, :cond_23

    .line 394
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->j:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->g:F

    .line 395
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->k:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->h:F

    .line 397
    :cond_23
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2d

    const/4 v0, 0x1

    :goto_2a
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->m:Z

    .line 398
    return-void

    .line 397
    :cond_2d
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method protected onMeasure(II)V
    .registers 9

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 322
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 323
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->e:Z

    if-nez v0, :cond_56

    .line 324
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->a:Landroid/graphics/Movie;

    if-eqz v0, :cond_56

    .line 325
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->a:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->width()I

    move-result v3

    .line 326
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->a:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->height()I

    move-result v4

    .line 332
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 334
    if-eqz v0, :cond_59

    .line 335
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 336
    if-le v3, v0, :cond_59

    .line 337
    int-to-float v2, v3

    int-to-float v0, v0

    div-float v0, v2, v0

    .line 345
    :goto_29
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 347
    if-eqz v2, :cond_57

    .line 348
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 349
    if-le v4, v2, :cond_57

    .line 350
    int-to-float v5, v4

    int-to-float v2, v2

    div-float v2, v5, v2

    .line 357
    :goto_39
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float v0, v1, v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->i:F

    .line 359
    int-to-float v0, v3

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->i:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->j:I

    .line 360
    int-to-float v0, v4

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->i:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->k:I

    .line 362
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->j:I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->k:I

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->setMeasuredDimension(II)V

    .line 372
    :cond_56
    return-void

    :cond_57
    move v2, v1

    goto :goto_39

    :cond_59
    move v0, v1

    goto :goto_29
.end method

.method public onScreenStateChanged(I)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 474
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onScreenStateChanged(I)V

    .line 475
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->a:Landroid/graphics/Movie;

    if-eqz v1, :cond_f

    .line 476
    if-ne p1, v0, :cond_10

    :goto_a
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->m:Z

    .line 477
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->b()V

    .line 479
    :cond_f
    return-void

    .line 476
    :cond_10
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 484
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 485
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->a:Landroid/graphics/Movie;

    if-eqz v0, :cond_f

    .line 486
    if-nez p2, :cond_10

    const/4 v0, 0x1

    :goto_a
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->m:Z

    .line 487
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->b()V

    .line 489
    :cond_f
    return-void

    .line 486
    :cond_10
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 3

    .prologue
    .line 493
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onWindowVisibilityChanged(I)V

    .line 494
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->a:Landroid/graphics/Movie;

    if-eqz v0, :cond_f

    .line 495
    if-nez p1, :cond_10

    const/4 v0, 0x1

    :goto_a
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->m:Z

    .line 496
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/gif/GifView;->b()V

    .line 498
    :cond_f
    return-void

    .line 495
    :cond_10
    const/4 v0, 0x0

    goto :goto_a
.end method
