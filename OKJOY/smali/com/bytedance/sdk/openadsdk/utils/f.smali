.class public Lcom/bytedance/sdk/openadsdk/utils/f;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# direct methods
.method public static a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 127
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    if-ge v0, p1, :cond_f

    .line 142
    :cond_e
    :goto_e
    return-object p0

    .line 131
    :cond_f
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 133
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 134
    const/16 v0, 0x5a

    .line 135
    :goto_1d
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    array-length v2, v2

    if-le v2, p1, :cond_2f

    .line 136
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 137
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v2, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 138
    add-int/lit8 v0, v0, -0xa

    goto :goto_1d

    .line 140
    :cond_2f
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 141
    invoke-static {v0, v3, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_e
.end method

.method public static a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 82
    if-nez p0, :cond_5

    const/4 p0, 0x0

    .line 123
    :cond_4
    :goto_4
    return-object p0

    .line 84
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 88
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 89
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 90
    const-string v2, "BitmapUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " originWidth"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string v2, "BitmapUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " originHeight"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    if-ge v1, p1, :cond_47

    if-lt v0, p2, :cond_4

    .line 102
    :cond_47
    if-le v1, p1, :cond_af

    .line 105
    int-to-double v2, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    int-to-double v4, p1

    div-double/2addr v2, v4

    .line 106
    int-to-double v0, v0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 107
    if-lez p1, :cond_ad

    if-lez v0, :cond_ad

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_ad

    .line 108
    invoke-static {p0, p1, v0, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    move-object v1, p0

    .line 113
    :goto_65
    if-le v0, p2, :cond_aa

    .line 115
    if-lez p1, :cond_a8

    if-lez p2, :cond_a8

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_a8

    .line 116
    invoke-static {v1, v6, v6, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 120
    :goto_75
    const-string v1, "BitmapUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " width"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v1, "BitmapUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " height"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v0

    .line 123
    goto/16 :goto_4

    :cond_a8
    move-object v0, v1

    goto :goto_75

    :cond_aa
    move p2, v0

    move-object v0, v1

    goto :goto_75

    :cond_ad
    move-object v1, p0

    goto :goto_65

    :cond_af
    move p1, v1

    move-object v1, p0

    goto :goto_65
.end method

.method public static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 71
    :goto_7
    return-object v0

    .line 67
    :cond_8
    const/4 v1, 0x0

    :try_start_9
    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 68
    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_12} :catch_14

    move-result-object v0

    goto :goto_7

    .line 69
    :catch_14
    move-exception v1

    goto :goto_7
.end method

.method public static a(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 27
    if-nez p0, :cond_4

    .line 50
    :cond_3
    :goto_3
    return-object v0

    .line 33
    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_2a
    .catchall {:try_start_4 .. :try_end_9} :catchall_37

    .line 34
    :try_start_9
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 35
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 36
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 37
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 38
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_1e} :catch_48
    .catchall {:try_start_9 .. :try_end_1e} :catchall_46

    move-result-object v0

    .line 43
    if-eqz v1, :cond_3

    .line 44
    :try_start_21
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 45
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_27} :catch_28

    goto :goto_3

    .line 47
    :catch_28
    move-exception v1

    goto :goto_3

    .line 39
    :catch_2a
    move-exception v1

    move-object v1, v0

    .line 43
    :goto_2c
    if-eqz v1, :cond_3

    .line 44
    :try_start_2e
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 45
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_34} :catch_35

    goto :goto_3

    .line 47
    :catch_35
    move-exception v1

    goto :goto_3

    .line 42
    :catchall_37
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 43
    :goto_3b
    if-eqz v1, :cond_43

    .line 44
    :try_start_3d
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 45
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_43} :catch_44

    .line 48
    :cond_43
    :goto_43
    throw v0

    .line 47
    :catch_44
    move-exception v1

    goto :goto_43

    .line 42
    :catchall_46
    move-exception v0

    goto :goto_3b

    .line 39
    :catch_48
    move-exception v2

    goto :goto_2c
.end method

.method public static b(Landroid/graphics/Bitmap;)[B
    .registers 4

    .prologue
    .line 75
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 76
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 77
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
