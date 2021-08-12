.class public Lcom/bytedance/sdk/openadsdk/utils/f;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# direct methods
.method public static a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 11

    .line 155
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 156
    return-object v0

    .line 158
    :cond_4
    if-lez p1, :cond_38

    if-gtz p2, :cond_9

    goto :goto_38

    .line 162
    :cond_9
    nop

    .line 163
    :try_start_a
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 164
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 165
    if-ge p1, v4, :cond_2e

    if-lt p2, v5, :cond_17

    goto :goto_2e

    .line 168
    :cond_17
    int-to-float p1, p1

    int-to-float v1, v4

    div-float/2addr p1, v1

    .line 169
    int-to-float p2, p2

    int-to-float v1, v5

    div-float/2addr p2, v1

    .line 170
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 171
    invoke-virtual {v6, p1, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 172
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_2d
    .catchall {:try_start_a .. :try_end_2d} :catchall_2f

    .line 174
    return-object p0

    .line 166
    :cond_2e
    :goto_2e
    return-object p0

    .line 175
    :catchall_2f
    move-exception p0

    .line 176
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;)V

    .line 178
    return-object v0

    .line 159
    :cond_38
    :goto_38
    return-object p0
.end method

.method public static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4

    .line 62
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 63
    return-object v1

    .line 66
    :cond_8
    nop

    .line 68
    const/4 v0, 0x0

    :try_start_a
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 69
    array-length v2, p0

    invoke-static {p0, v0, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_14

    .line 71
    goto :goto_15

    .line 70
    :catchall_14
    move-exception p0

    .line 72
    :goto_15
    return-object v1
.end method

.method public static a(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 5

    .line 28
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 29
    return-object v0

    .line 31
    :cond_4
    nop

    .line 32
    nop

    .line 34
    :try_start_6
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_2d

    .line 35
    :try_start_b
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 36
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 37
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 38
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 39
    const/4 v2, 0x0

    invoke-static {p0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_2b

    .line 44
    nop

    .line 45
    :try_start_22
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 46
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 49
    :cond_28
    :goto_28
    goto :goto_38

    .line 48
    :catchall_29
    move-exception p0

    .line 50
    goto :goto_38

    .line 40
    :catchall_2b
    move-exception p0

    goto :goto_2f

    :catchall_2d
    move-exception p0

    move-object v1, v0

    .line 44
    :goto_2f
    if-eqz v1, :cond_28

    .line 45
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 46
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_37
    .catchall {:try_start_22 .. :try_end_37} :catchall_29

    goto :goto_28

    .line 51
    :goto_38
    return-object v0
.end method

.method public static b(Landroid/graphics/Bitmap;)[B
    .registers 4

    .line 76
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 77
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 78
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
