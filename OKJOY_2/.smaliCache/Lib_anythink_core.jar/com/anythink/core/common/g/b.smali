.class public final Lcom/anythink/core/common/g/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(IIII)I
    .registers 6

    .line 63
    nop

    .line 64
    const/4 v0, 0x1

    if-gtz p2, :cond_7

    if-gtz p3, :cond_7

    .line 65
    return v0

    .line 70
    :cond_7
    :goto_7
    div-int v1, p0, v0

    if-le v1, p2, :cond_12

    div-int v1, p1, v0

    if-le v1, p3, :cond_12

    .line 71
    mul-int/lit8 v0, v0, 0x2

    goto :goto_7

    .line 73
    :cond_12
    return v0
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 6

    .line 78
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

    .line 80
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_48

    .line 81
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p0

    .line 82
    invoke-static {p0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v1

    .line 83
    invoke-static {p0, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object p1

    .line 84
    invoke-static {p0, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v2

    .line 85
    const/high16 v3, 0x41c80000    # 25.0f

    invoke-virtual {v1, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 86
    invoke-virtual {v1, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 87
    invoke-virtual {v1, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 88
    invoke-virtual {v2, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 90
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 91
    const/high16 v1, 0x33000000

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 93
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 94
    goto :goto_4c

    .line 95
    :cond_48
    invoke-static {v0}, Lcom/anythink/core/common/g/b;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_4c
    .catchall {:try_start_0 .. :try_end_4c} :catchall_4d

    .line 98
    :goto_4c
    return-object v0

    .line 100
    :catchall_4d
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 103
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 34

    .line 148
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 149
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 151
    mul-int v10, v8, v9

    new-array v11, v10, [I

    .line 152
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    move v3, v8

    move v6, v8

    move v7, v9

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 154
    add-int/lit8 v0, v8, -0x1

    .line 155
    add-int/lit8 v1, v9, -0x1

    .line 156
    nop

    .line 159
    new-array v2, v10, [I

    .line 160
    new-array v3, v10, [I

    .line 161
    new-array v4, v10, [I

    .line 163
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    new-array v5, v5, [I

    .line 167
    const v6, 0x2a400

    new-array v7, v6, [I

    .line 168
    const/4 v12, 0x0

    :goto_2f
    if-ge v12, v6, :cond_38

    .line 169
    div-int/lit16 v13, v12, 0x2a4

    aput v13, v7, v12

    .line 168
    add-int/lit8 v12, v12, 0x1

    goto :goto_2f

    .line 172
    :cond_38
    nop

    .line 174
    const/4 v6, 0x2

    new-array v12, v6, [I

    fill-array-data v12, :array_2a8

    const-class v13, I

    invoke-static {v13, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[I

    .line 183
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_4a
    const/16 v16, -0x19

    const/16 v6, 0x19

    const/16 v18, 0x1

    if-ge v13, v9, :cond_172

    .line 184
    nop

    .line 185
    move/from16 v10, v16

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    :goto_67
    const v28, 0xff00

    const/high16 v29, 0xff0000

    if-gt v10, v6, :cond_d0

    .line 186
    move/from16 v31, v9

    const/4 v6, 0x0

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    add-int/2addr v9, v14

    aget v9, v11, v9

    .line 187
    add-int/lit8 v19, v10, 0x19

    aget-object v32, v12, v19

    .line 188
    and-int v19, v9, v29

    shr-int/lit8 v19, v19, 0x10

    aput v19, v32, v6

    .line 189
    and-int v6, v9, v28

    shr-int/lit8 v6, v6, 0x8

    aput v6, v32, v18

    .line 190
    and-int/lit16 v6, v9, 0xff

    const/4 v9, 0x2

    aput v6, v32, v9

    .line 191
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x1a

    .line 192
    const/4 v9, 0x0

    aget v28, v32, v9

    mul-int v28, v28, v6

    add-int v16, v16, v28

    .line 193
    aget v9, v32, v18

    mul-int/2addr v9, v6

    add-int v20, v20, v9

    .line 194
    const/4 v9, 0x2

    aget v28, v32, v9

    mul-int v28, v28, v6

    add-int v21, v21, v28

    .line 195
    if-lez v10, :cond_bb

    .line 196
    const/4 v6, 0x0

    aget v9, v32, v6

    add-int v25, v25, v9

    .line 197
    aget v9, v32, v18

    add-int v26, v26, v9

    .line 198
    const/4 v9, 0x2

    aget v17, v32, v9

    add-int v27, v27, v17

    goto :goto_c9

    .line 200
    :cond_bb
    const/4 v6, 0x0

    const/4 v9, 0x2

    aget v17, v32, v6

    add-int v22, v22, v17

    .line 201
    aget v6, v32, v18

    add-int v23, v23, v6

    .line 202
    aget v6, v32, v9

    add-int v24, v24, v6

    .line 185
    :goto_c9
    add-int/lit8 v10, v10, 0x1

    move/from16 v9, v31

    const/16 v6, 0x19

    goto :goto_67

    .line 205
    :cond_d0
    move/from16 v31, v9

    .line 207
    const/16 v6, 0x19

    const/4 v9, 0x0

    :goto_d5
    if-ge v9, v8, :cond_168

    .line 209
    aget v10, v7, v16

    aput v10, v2, v14

    .line 210
    aget v10, v7, v20

    aput v10, v3, v14

    .line 211
    aget v10, v7, v21

    aput v10, v4, v14

    .line 213
    sub-int v16, v16, v22

    .line 214
    sub-int v20, v20, v23

    .line 215
    sub-int v21, v21, v24

    .line 217
    add-int/lit8 v10, v6, -0x19

    add-int/lit8 v10, v10, 0x33

    .line 218
    rem-int/lit8 v10, v10, 0x33

    aget-object v10, v12, v10

    .line 220
    const/16 v19, 0x0

    aget v30, v10, v19

    sub-int v22, v22, v30

    .line 221
    aget v30, v10, v18

    sub-int v23, v23, v30

    .line 222
    const/16 v17, 0x2

    aget v30, v10, v17

    sub-int v24, v24, v30

    .line 224
    if-nez v13, :cond_110

    .line 225
    add-int/lit8 v30, v9, 0x19

    move-object/from16 v32, v7

    add-int/lit8 v7, v30, 0x1

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    aput v7, v5, v9

    goto :goto_112

    .line 224
    :cond_110
    move-object/from16 v32, v7

    .line 227
    :goto_112
    aget v7, v5, v9

    add-int/2addr v7, v15

    aget v7, v11, v7

    .line 229
    and-int v30, v7, v29

    shr-int/lit8 v30, v30, 0x10

    const/16 v19, 0x0

    aput v30, v10, v19

    .line 230
    and-int v30, v7, v28

    shr-int/lit8 v30, v30, 0x8

    aput v30, v10, v18

    .line 231
    and-int/lit16 v7, v7, 0xff

    const/16 v17, 0x2

    aput v7, v10, v17

    .line 233
    aget v7, v10, v19

    add-int v25, v25, v7

    .line 234
    aget v7, v10, v18

    add-int v26, v26, v7

    .line 235
    aget v7, v10, v17

    add-int v27, v27, v7

    .line 237
    add-int v16, v16, v25

    .line 238
    add-int v20, v20, v26

    .line 239
    add-int v21, v21, v27

    .line 241
    add-int/lit8 v6, v6, 0x1

    rem-int/lit8 v6, v6, 0x33

    .line 242
    rem-int/lit8 v7, v6, 0x33

    aget-object v7, v12, v7

    .line 244
    const/4 v10, 0x0

    aget v19, v7, v10

    add-int v22, v22, v19

    .line 245
    aget v19, v7, v18

    add-int v23, v23, v19

    .line 246
    const/16 v17, 0x2

    aget v19, v7, v17

    add-int v24, v24, v19

    .line 248
    aget v30, v7, v10

    sub-int v25, v25, v30

    .line 249
    aget v10, v7, v18

    sub-int v26, v26, v10

    .line 250
    aget v7, v7, v17

    sub-int v27, v27, v7

    .line 252
    add-int/lit8 v14, v14, 0x1

    .line 207
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v7, v32

    goto/16 :goto_d5

    .line 254
    :cond_168
    move-object/from16 v32, v7

    add-int/2addr v15, v8

    .line 183
    add-int/lit8 v13, v13, 0x1

    move/from16 v9, v31

    const/4 v6, 0x2

    goto/16 :goto_4a

    .line 256
    :cond_172
    move-object/from16 v32, v7

    move/from16 v31, v9

    const/4 v6, 0x0

    :goto_177
    if-ge v6, v8, :cond_297

    .line 257
    nop

    .line 258
    mul-int/lit8 v0, v8, -0x19

    .line 259
    move-object/from16 v23, v5

    move/from16 v5, v16

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    :goto_18c
    move-object/from16 v24, v11

    const/16 v11, 0x19

    if-gt v5, v11, :cond_1ea

    .line 260
    const/4 v11, 0x0

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v19

    add-int v25, v19, v6

    .line 262
    add-int/lit8 v19, v5, 0x19

    aget-object v26, v12, v19

    .line 264
    aget v19, v2, v25

    aput v19, v26, v11

    .line 265
    aget v11, v3, v25

    aput v11, v26, v18

    .line 266
    aget v11, v4, v25

    const/16 v17, 0x2

    aput v11, v26, v17

    .line 268
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v11

    rsub-int/lit8 v11, v11, 0x1a

    .line 270
    aget v27, v2, v25

    mul-int v27, v27, v11

    add-int v7, v7, v27

    .line 271
    aget v27, v3, v25

    mul-int v27, v27, v11

    add-int v9, v9, v27

    .line 272
    aget v25, v4, v25

    mul-int v25, v25, v11

    add-int v10, v10, v25

    .line 274
    if-lez v5, :cond_1d5

    .line 275
    const/4 v11, 0x0

    aget v19, v26, v11

    add-int v20, v20, v19

    .line 276
    aget v19, v26, v18

    add-int v21, v21, v19

    .line 277
    const/16 v17, 0x2

    aget v19, v26, v17

    add-int v22, v22, v19

    goto :goto_1e2

    .line 279
    :cond_1d5
    const/4 v11, 0x0

    const/16 v17, 0x2

    aget v25, v26, v11

    add-int v13, v13, v25

    .line 280
    aget v11, v26, v18

    add-int/2addr v14, v11

    .line 281
    aget v11, v26, v17

    add-int/2addr v15, v11

    .line 284
    :goto_1e2
    if-ge v5, v1, :cond_1e5

    .line 285
    add-int/2addr v0, v8

    .line 259
    :cond_1e5
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v11, v24

    goto :goto_18c

    .line 288
    :cond_1ea
    nop

    .line 289
    nop

    .line 290
    move v5, v6

    const/4 v0, 0x0

    const/16 v11, 0x19

    :goto_1f0
    move-object/from16 v25, v4

    move/from16 v4, v31

    if-ge v0, v4, :cond_287

    .line 292
    const/high16 v26, -0x1000000

    aget v27, v24, v5

    and-int v26, v27, v26

    aget v27, v32, v7

    shl-int/lit8 v27, v27, 0x10

    or-int v26, v26, v27

    aget v27, v32, v9

    shl-int/lit8 v27, v27, 0x8

    or-int v26, v26, v27

    aget v27, v32, v10

    or-int v26, v26, v27

    aput v26, v24, v5

    .line 294
    sub-int/2addr v7, v13

    .line 295
    sub-int/2addr v9, v14

    .line 296
    sub-int/2addr v10, v15

    .line 298
    add-int/lit8 v26, v11, -0x19

    add-int/lit8 v26, v26, 0x33

    .line 299
    rem-int/lit8 v26, v26, 0x33

    aget-object v26, v12, v26

    .line 301
    const/16 v19, 0x0

    aget v27, v26, v19

    sub-int v13, v13, v27

    .line 302
    aget v27, v26, v18

    sub-int v14, v14, v27

    .line 303
    const/16 v17, 0x2

    aget v27, v26, v17

    sub-int v15, v15, v27

    .line 305
    if-nez v6, :cond_237

    .line 306
    move/from16 v31, v4

    add-int/lit8 v4, v0, 0x1a

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/2addr v4, v8

    aput v4, v23, v0

    goto :goto_239

    .line 305
    :cond_237
    move/from16 v31, v4

    .line 308
    :goto_239
    aget v4, v23, v0

    add-int/2addr v4, v6

    .line 310
    aget v27, v2, v4

    const/16 v19, 0x0

    aput v27, v26, v19

    .line 311
    aget v27, v3, v4

    aput v27, v26, v18

    .line 312
    aget v4, v25, v4

    const/16 v17, 0x2

    aput v4, v26, v17

    .line 314
    aget v4, v26, v19

    add-int v20, v20, v4

    .line 315
    aget v4, v26, v18

    add-int v21, v21, v4

    .line 316
    aget v4, v26, v17

    add-int v22, v22, v4

    .line 318
    add-int v7, v7, v20

    .line 319
    add-int v9, v9, v21

    .line 320
    add-int v10, v10, v22

    .line 322
    add-int/lit8 v11, v11, 0x1

    rem-int/lit8 v11, v11, 0x33

    .line 323
    aget-object v4, v12, v11

    .line 325
    const/16 v19, 0x0

    aget v26, v4, v19

    add-int v13, v13, v26

    .line 326
    aget v26, v4, v18

    add-int v14, v14, v26

    .line 327
    const/16 v17, 0x2

    aget v26, v4, v17

    add-int v15, v15, v26

    .line 329
    aget v26, v4, v19

    sub-int v20, v20, v26

    .line 330
    aget v26, v4, v18

    sub-int v21, v21, v26

    .line 331
    aget v4, v4, v17

    sub-int v22, v22, v4

    .line 333
    add-int/2addr v5, v8

    .line 290
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v4, v25

    goto/16 :goto_1f0

    .line 256
    :cond_287
    move/from16 v31, v4

    const/16 v17, 0x2

    const/16 v19, 0x0

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v5, v23

    move-object/from16 v11, v24

    move-object/from16 v4, v25

    goto/16 :goto_177

    .line 337
    :cond_297
    move-object/from16 v24, v11

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move v3, v8

    move/from16 v7, v31

    move v6, v8

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 339
    return-object p0

    :array_2a8
    .array-data 4
        0x33
        0x3
    .end array-data
.end method

.method public static a(Ljava/io/FileDescriptor;II)Landroid/graphics/Bitmap;
    .registers 7

    .line 44
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 45
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 47
    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 48
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v2, v3, p1, p2}, Lcom/anythink/core/common/g/b;->a(IIII)I

    move-result p1

    iput p1, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 49
    const/4 p1, 0x0

    iput-boolean p1, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 51
    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1d} :catch_23
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1e

    return-object p0

    .line 55
    :catchall_1e
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_28

    .line 53
    :catch_23
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 56
    nop

    .line 57
    :goto_28
    return-object v0
.end method

.method private static a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 6

    .line 25
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 26
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 28
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 29
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1, v2, p1, p2}, Lcom/anythink/core/common/g/b;->a(IIII)I

    move-result p1

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 30
    const/4 p1, 0x0

    iput-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 32
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_1c} :catch_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    return-object p0

    .line 36
    :catch_1d
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_24

    .line 33
    :catch_22
    move-exception p0

    .line 37
    nop

    .line 38
    :goto_24
    const/4 p0, 0x0

    return-object p0
.end method
