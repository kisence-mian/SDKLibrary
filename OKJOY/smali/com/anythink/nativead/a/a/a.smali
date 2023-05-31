.class public final Lcom/anythink/nativead/a/a/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 13

    .prologue
    const-wide/16 v8, 0x4

    const/4 v0, 0x1

    .line 41
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 42
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 44
    if-gtz p1, :cond_c

    if-gtz p2, :cond_c

    .line 81
    :cond_b
    return v0

    .line 49
    :cond_c
    if-gt v1, p2, :cond_10

    if-le v2, p1, :cond_b

    .line 50
    :cond_10
    if-lez p1, :cond_18

    if-nez p2, :cond_18

    .line 51
    mul-int v3, v1, p1

    div-int p2, v3, v2

    .line 53
    :cond_18
    if-lez p2, :cond_20

    if-nez p1, :cond_20

    .line 54
    mul-int v3, v2, p2

    div-int p1, v3, v1

    .line 56
    :cond_20
    div-int/lit8 v3, v1, 0x2

    .line 57
    div-int/lit8 v4, v2, 0x2

    .line 61
    :goto_24
    div-int v5, v3, v0

    if-le v5, p2, :cond_2f

    div-int v5, v4, v0

    if-le v5, p1, :cond_2f

    .line 62
    mul-int/lit8 v0, v0, 0x2

    goto :goto_24

    .line 71
    :cond_2f
    mul-int/2addr v1, v2

    mul-int v2, v0, v0

    div-int/2addr v1, v2

    int-to-long v2, v1

    .line 74
    mul-int v1, p1, p2

    mul-int/lit8 v1, v1, 0x4

    int-to-long v6, v1

    .line 76
    :goto_39
    cmp-long v1, v2, v6

    if-lez v1, :cond_b

    div-long v4, v2, v8

    cmp-long v1, v4, v6

    if-lez v1, :cond_b

    .line 77
    mul-int/lit8 v4, v0, 0x2

    .line 78
    div-long v0, v2, v8

    move-wide v2, v0

    move v0, v4

    goto :goto_39
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 8

    .prologue
    .line 95
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 96
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v1

    .line 98
    invoke-static {v1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v2

    .line 99
    invoke-static {v1, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v3

    .line 100
    invoke-static {v1, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v4

    .line 101
    const/high16 v5, 0x41c80000    # 25.0f

    invoke-virtual {v2, v5}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 102
    invoke-virtual {v2, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 103
    invoke-virtual {v2, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 104
    invoke-virtual {v4, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 106
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 107
    const/high16 v3, 0x33000000

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 109
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->destroy()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_41} :catch_42

    .line 115
    :goto_41
    return-object v0

    :catch_42
    move-exception v0

    const/4 v0, 0x0

    goto :goto_41
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 90
    :cond_11
    :goto_11
    return v0

    .line 89
    :cond_12
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    goto :goto_11
.end method
