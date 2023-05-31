.class public final Lcom/mintegral/msdk/base/common/c/a;
.super Ljava/lang/Object;
.source "CommonBitmapUtil.java"


# direct methods
.method public static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 42
    .line 43
    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 44
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 47
    const/4 v1, 0x1

    :try_start_d
    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 48
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 49
    const/4 v1, 0x0

    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 50
    const/4 v1, 0x1

    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 51
    const/4 v1, 0x1

    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 52
    const/4 v1, 0x1

    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 53
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_21
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_21} :catch_23
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_21} :catch_3f

    move-result-object v0

    .line 71
    :cond_22
    :goto_22
    return-object v0

    .line 55
    :catch_23
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 56
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 57
    invoke-static {}, Lcom/mintegral/msdk/base/common/c/b;->b()V

    .line 59
    :try_start_2d
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 60
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 61
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
    :try_end_39
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2d .. :try_end_39} :catch_3a

    goto :goto_22

    .line 63
    :catch_3a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_22

    .line 66
    :catch_3f
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_22
.end method

.method public static a(Landroid/graphics/Bitmap;)Ljava/io/InputStream;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 183
    .line 186
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_23
    .catchall {:try_start_1 .. :try_end_6} :catchall_3d

    .line 187
    :try_start_6
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v0, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 188
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_16} :catch_50
    .catchall {:try_start_6 .. :try_end_16} :catchall_4e

    .line 196
    :try_start_16
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_1a

    .line 204
    :cond_19
    :goto_19
    return-object v0

    .line 197
    :catch_1a
    move-exception v1

    .line 198
    sget-boolean v2, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v2, :cond_19

    .line 199
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_19

    .line 189
    :catch_23
    move-exception v0

    move-object v2, v1

    .line 190
    :goto_25
    :try_start_25
    sget-boolean v3, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v3, :cond_2c

    .line 191
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_4e

    .line 194
    :cond_2c
    if-eqz v2, :cond_52

    .line 196
    :try_start_2e
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_33

    move-object v0, v1

    .line 201
    goto :goto_19

    .line 197
    :catch_33
    move-exception v0

    .line 198
    sget-boolean v2, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v2, :cond_3b

    .line 199
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3b
    move-object v0, v1

    .line 201
    goto :goto_19

    .line 194
    :catchall_3d
    move-exception v0

    move-object v2, v1

    :goto_3f
    if-eqz v2, :cond_44

    .line 196
    :try_start_41
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_45

    .line 201
    :cond_44
    :goto_44
    throw v0

    .line 197
    :catch_45
    move-exception v1

    .line 198
    sget-boolean v2, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v2, :cond_44

    .line 199
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_44

    .line 194
    :catchall_4e
    move-exception v0

    goto :goto_3f

    .line 189
    :catch_50
    move-exception v0

    goto :goto_25

    :cond_52
    move-object v0, v1

    goto :goto_19
.end method
