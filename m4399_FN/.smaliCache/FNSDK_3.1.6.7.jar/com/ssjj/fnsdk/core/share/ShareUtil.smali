.class public Lcom/ssjj/fnsdk/core/share/ShareUtil;
.super Ljava/lang/Object;


# static fields
.field public static final SHARE_ICON_DIR:Ljava/lang/String; = "fnres/share/"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bitmapToByte(Landroid/graphics/Bitmap;)[B
    .registers 3

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x32

    invoke-static {p0, v0, v1}, Lcom/ssjj/fnsdk/core/share/ShareUtil;->bitmapToByte(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static bitmapToByte(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)[B
    .registers 5

    const/4 p1, 0x0

    if-nez p0, :cond_4

    return-object p1

    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string p0, "ERROR: bitmapToByte -> bitmap isRecycled"

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    return-object p1

    :cond_10
    :try_start_10
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v1, p2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception p0

    :goto_23
    return-object p1
.end method

.method public static bitmapToByte(Landroid/graphics/Bitmap;Ljava/lang/String;I)[B
    .registers 6

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/share/ShareUtil;->isInRes(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_16

    :cond_14
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :cond_16
    invoke-static {p0, v0, p2}, Lcom/ssjj/fnsdk/core/share/ShareUtil;->bitmapToByte(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 6

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_12

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_14

    :cond_12
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_14
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .registers 6

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_c

    :cond_a
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_c
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public static extractThumbNail(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;
    .registers 25

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x0

    if-eqz v1, :cond_110

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_110

    if-lez v2, :cond_110

    if-gtz v3, :cond_17

    goto/16 :goto_110

    :cond_17
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v6, 0x1

    :try_start_1d
    iput-boolean v6, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static/range {p1 .. p1}, Lcom/ssjj/fnsdk/core/share/ShareUtil;->isInRes(Ljava/lang/String;)Z

    move-result v7
    :try_end_23
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1d .. :try_end_23} :catch_10c

    :try_start_23
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_2f} :catch_31
    .catch Ljava/lang/OutOfMemoryError; {:try_start_23 .. :try_end_2f} :catch_10c

    const/4 v7, 0x1

    goto :goto_33

    :catch_31
    move-exception v0

    const/4 v0, 0x0

    :goto_33
    if-eqz v7, :cond_42

    :try_start_35
    invoke-static/range {p0 .. p1}, Lcom/ssjj/fnsdk/core/share/ShareUtil;->resPathToId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9, v0, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    goto :goto_46

    :cond_42
    invoke-static {v1, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    :goto_46
    if-eqz v9, :cond_4b

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4b
    iget v9, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v9, v9

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    mul-double v9, v9, v11

    int-to-double v13, v2

    div-double/2addr v9, v13

    iget v15, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v17, v7

    int-to-double v6, v15

    mul-double v6, v6, v11

    int-to-double v11, v3

    div-double/2addr v6, v11

    if-eqz p4, :cond_64

    cmpl-double v15, v9, v6

    if-lez v15, :cond_6c

    goto :goto_68

    :cond_64
    cmpg-double v15, v9, v6

    if-gez v15, :cond_6c

    :goto_68
    move-wide/from16 v18, v9

    move-wide v8, v6

    goto :goto_70

    :cond_6c
    move-wide/from16 v18, v9

    move-wide/from16 v8, v18

    :goto_70
    double-to-int v8, v8

    iput v8, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v9, 0x1

    if-gt v8, v9, :cond_7a

    iput v9, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_7a
    :goto_7a
    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v9, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    mul-int v8, v8, v9

    iget v9, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v8, v9

    const v9, 0x2a3000

    if-gt v8, v9, :cond_ff

    if-eqz p4, :cond_a2

    cmpl-double v8, v18, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    if-lez v8, :cond_95

    mul-double v11, v11, v6

    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_ac

    :cond_95
    mul-double v13, v13, v6

    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v6, v6

    mul-double v13, v13, v6

    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_9e
    int-to-double v6, v6

    div-double/2addr v13, v6

    double-to-int v6, v13

    goto :goto_c4

    :cond_a2
    cmpg-double v8, v18, v6

    if-gez v8, :cond_b8

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double v11, v11, v6

    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_ac
    int-to-double v6, v6

    mul-double v11, v11, v6

    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v6, v6

    div-double/2addr v11, v6

    double-to-int v6, v11

    move v7, v6

    const/4 v10, 0x0

    move v6, v3

    goto :goto_c6

    :cond_b8
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    mul-double v13, v13, v8

    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v6, v6

    mul-double v13, v13, v6

    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_9e

    :goto_c4
    move v7, v2

    const/4 v10, 0x0

    :goto_c6
    iput-boolean v10, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v17, :cond_d3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_d7

    :cond_d3
    invoke-static {v1, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_d7
    if-nez v0, :cond_df

    const-string v0, "bitmap decode failed"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    return-object v4

    :cond_df
    const/4 v1, 0x1

    invoke-static {v0, v6, v7, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_e7

    move-object v0, v5

    :cond_e7
    if-eqz p4, :cond_fe

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v5, v3

    shr-int/2addr v5, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v6, v2

    shr-int/lit8 v1, v6, 0x1

    invoke-static {v0, v5, v1, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_fd

    return-object v0

    :cond_fd
    move-object v0, v1

    :cond_fe
    return-object v0

    :cond_ff
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/4 v10, 0x0

    iget v15, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    iput v15, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_10a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_35 .. :try_end_10a} :catch_10c

    goto/16 :goto_7a

    :catch_10c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    :cond_110
    :goto_110
    return-object v4
.end method

.method public static getBitmapByteArrayFit32k(Landroid/content/Context;Ljava/lang/String;Z)[B
    .registers 11

    const/4 v0, 0x0

    if-eqz p1, :cond_dd

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_dd

    :cond_f
    invoke-static {p1}, Lcom/ssjj/fnsdk/core/share/ShareUtil;->isInRes(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_46

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_21

    return-object v0

    :cond_21
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x8000

    cmp-long v4, v0, v2

    if-gez v4, :cond_46

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/share/ShareUtil;->readByteFromFile(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_46

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "extract buf, size = "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-object v0

    :cond_46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 v2, 0xa

    new-array v2, v2, [I

    fill-array-data v2, :array_de

    const/16 v3, 0x9

    if-eqz p2, :cond_5a

    new-array v2, v3, [I

    fill-array-data v2, :array_f6

    :cond_5a
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "png"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_75

    if-eqz p2, :cond_70

    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_10c

    goto :goto_75

    :cond_70
    new-array v2, v3, [I

    fill-array-data v2, :array_120

    :cond_75
    :goto_75
    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_77
    aget v5, v2, v4

    invoke-static {p0, p1, v5, v5, p2}, Lcom/ssjj/fnsdk/core/share/ShareUtil;->extractThumbNail(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    const/16 v6, 0x32

    invoke-static {v5, p1, v6}, Lcom/ssjj/fnsdk/core/share/ShareUtil;->bitmapToByte(Landroid/graphics/Bitmap;Ljava/lang/String;I)[B

    move-result-object v6

    if-eqz v5, :cond_8e

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_8e

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    :cond_8e
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "extract "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v7, v2, v4

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", size = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v6, :cond_a5

    const/4 v7, 0x0

    goto :goto_a6

    :cond_a5
    array-length v7, v6

    :goto_a6
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    if-eqz v6, :cond_bf

    array-length v5, v6

    const v7, 0x8000

    if-ge v5, v7, :cond_ba

    goto :goto_bf

    :cond_ba
    add-int/lit8 v4, v4, 0x1

    array-length v5, v2

    if-lt v4, v5, :cond_77

    :cond_bf
    :goto_bf
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "extract use "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "ms"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-object v6

    :cond_dd
    :goto_dd
    return-object v0

    :array_de
    .array-data 4
        0xdc
        0xc0
        0xa0
        0x90
        0x80
        0x72
        0x60
        0x48
        0x40
        0x30
    .end array-data

    :array_f6
    .array-data 4
        0xc0
        0xa0
        0x90
        0x80
        0x72
        0x60
        0x48
        0x40
        0x30
    .end array-data

    :array_10c
    .array-data 4
        0xa0
        0x90
        0x80
        0x72
        0x60
        0x48
        0x40
        0x30
    .end array-data

    :array_120
    .array-data 4
        0xc0
        0xa0
        0x90
        0x80
        0x72
        0x60
        0x48
        0x40
        0x30
    .end array-data
.end method

.method public static getBitmapByteArrayFit32kForShareLink(Landroid/content/Context;Ljava/lang/String;)[B
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_be

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_be

    :cond_f
    invoke-static {p1}, Lcom/ssjj/fnsdk/core/share/ShareUtil;->isInRes(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_45

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_21

    return-object v0

    :cond_21
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x4000

    cmp-long v4, v0, v2

    if-gez v4, :cond_45

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/share/ShareUtil;->readByteFromFile(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_45

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "extract buf, size = "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-object v0

    :cond_45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 v2, 0x40

    const/16 v3, 0x30

    const/16 v4, 0x60

    const/16 v5, 0x48

    filled-new-array {v4, v5, v2, v3}, [I

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_57
    aget v5, v2, v4

    const/4 v6, 0x1

    invoke-static {p0, p1, v5, v5, v6}, Lcom/ssjj/fnsdk/core/share/ShareUtil;->extractThumbNail(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    const/16 v6, 0x32

    invoke-static {v5, p1, v6}, Lcom/ssjj/fnsdk/core/share/ShareUtil;->bitmapToByte(Landroid/graphics/Bitmap;Ljava/lang/String;I)[B

    move-result-object v6

    if-eqz v5, :cond_6f

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_6f

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6f
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "extract "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v7, v2, v4

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", size = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v6, :cond_86

    const/4 v7, 0x0

    goto :goto_87

    :cond_86
    array-length v7, v6

    :goto_87
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    if-eqz v6, :cond_a0

    array-length v5, v6

    const v7, 0x8000

    if-ge v5, v7, :cond_9b

    goto :goto_a0

    :cond_9b
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x4

    if-lt v4, v5, :cond_57

    :cond_a0
    :goto_a0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "extract use "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "ms"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-object v6

    :cond_be
    :goto_be
    return-object v0
.end method

.method public static getBitmapFromUrl(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 13

    const-string v0, "load failed: "

    const-string v1, "image: "

    const/4 v2, 0x0

    :try_start_5
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_92

    if-gez p1, :cond_1e

    if-gez p2, :cond_1e

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz v3, :cond_1d

    :try_start_18
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_1c

    goto :goto_1d

    :catch_1c
    move-exception p1

    :cond_1d
    :goto_1d
    return-object p0

    :cond_1e
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v3, v2, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v7, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v6, v6

    int-to-float p1, p1

    div-float/2addr v6, p1

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int p1, v8

    int-to-float v6, v7

    int-to-float p2, p2

    div-float/2addr v6, p2

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int p2, v6

    if-gt p1, v5, :cond_43

    if-le p2, v5, :cond_4a

    :cond_43
    if-le p1, p2, :cond_48

    iput p1, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_4a

    :cond_48
    iput p2, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_4a
    :goto_4a
    const/4 p1, 0x0

    iput-boolean p1, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v3, :cond_57

    :try_start_4f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_57

    :catch_53
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_57
    :goto_57
    :try_start_57
    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_60} :catch_6c

    invoke-static {p0, v2, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p0, :cond_6b

    :try_start_66
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_6a

    goto :goto_6b

    :catch_6a
    move-exception p0

    :cond_6b
    :goto_6b
    return-object p1

    :catch_6c
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_82
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    return-object v2

    :catch_92
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_82
.end method

.method public static getImageFromAssets(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_9
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_d} :catch_14

    :try_start_d
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_11} :catch_12

    goto :goto_2e

    :catch_12
    move-exception v1

    goto :goto_16

    :catch_14
    move-exception p0

    move-object p0, v0

    :goto_16
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not found "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " in assets"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    :goto_2e
    if-eqz p0, :cond_38

    :try_start_30
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_38

    :catch_34
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_38
    :goto_38
    return-object v0
.end method

.method public static getShareIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fnres/share/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ".png"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ssjj/fnsdk/core/share/ShareUtil;->getImageFromAssets(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static isInRes(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    :try_start_5
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_c} :catch_d

    return v1

    :catch_d
    move-exception v2

    const-string v2, "R.drawable."

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "R.raw."

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1f

    return v0

    :cond_1f
    return v1
.end method

.method public static readByteFromFile(Ljava/lang/String;)[B
    .registers 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/ssjj/fnsdk/core/share/ShareUtil;->readByteFromFile(Ljava/lang/String;II)[B

    move-result-object p0

    return-object p0
.end method

.method public static readByteFromFile(Ljava/lang/String;II)[B
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_10

    return-object v0

    :cond_10
    const/4 v2, -0x1

    if-ne p2, v2, :cond_18

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int p2, v2

    :cond_18
    if-gez p1, :cond_2d

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "readFromFile invalid offset:"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    :goto_25
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    return-object v0

    :cond_2d
    if-gtz p2, :cond_3b

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "readFromFile invalid len:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    goto :goto_25

    :cond_3b
    add-int v2, p1, p2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v4, v3

    if-le v2, v4, :cond_54

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "readFromFile invalid file len:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    goto :goto_25

    :cond_54
    :try_start_54
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_5b} :catch_67

    :try_start_5b
    new-array v0, p2, [B

    int-to-long p0, p1

    invoke-virtual {v1, p0, p1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_64} :catch_65

    goto :goto_6c

    :catch_65
    move-exception p0

    goto :goto_69

    :catch_67
    move-exception p0

    move-object v1, v0

    :goto_69
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6c
    if-eqz v1, :cond_76

    :try_start_6e
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_72

    goto :goto_76

    :catch_72
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_76
    :goto_76
    return-object v0
.end method

.method public static readImageByteForShare(Ljava/lang/String;)[B
    .registers 1

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/share/ShareUtil;->readByteFromFile(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static resPathToId(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/share/ShareUtil;->isInRes(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    const-string v0, "R.drawable."

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "R.raw."

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1f

    const-string p1, "raw"

    goto :goto_21

    :cond_1f
    const-string p1, "drawable"

    :goto_21
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
