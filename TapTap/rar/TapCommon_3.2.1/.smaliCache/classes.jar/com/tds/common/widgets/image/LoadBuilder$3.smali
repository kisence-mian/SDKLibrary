.class Lcom/tds/common/widgets/image/LoadBuilder$3;
.super Ljava/lang/Object;
.source "LoadBuilder.java"

# interfaces
.implements Lcom/tds/common/reactor/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/widgets/image/LoadBuilder;->loadImageInto(Lcom/tds/common/widgets/image/ImageTarget;)Lcom/tds/common/reactor/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tds/common/reactor/Observable$OnSubscribe<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/common/widgets/image/LoadBuilder;


# direct methods
.method constructor <init>(Lcom/tds/common/widgets/image/LoadBuilder;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tds/common/widgets/image/LoadBuilder;

    .line 197
    iput-object p1, p0, Lcom/tds/common/widgets/image/LoadBuilder$3;->this$0:Lcom/tds/common/widgets/image/LoadBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private findBestSampleSize(IIII)I
    .registers 15
    .param p1, "actualWidth"    # I
    .param p2, "actualHeight"    # I
    .param p3, "desiredWidth"    # I
    .param p4, "desiredHeight"    # I

    .line 319
    int-to-double v0, p1

    int-to-double v2, p3

    div-double/2addr v0, v2

    .line 320
    .local v0, "wr":D
    int-to-double v2, p2

    int-to-double v4, p4

    div-double/2addr v2, v4

    .line 321
    .local v2, "hr":D
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 324
    .local v4, "ratio":D
    const/high16 v6, 0x3f800000    # 1.0f

    .local v6, "n":F
    :goto_c
    const/high16 v7, 0x40000000    # 2.0f

    mul-float v8, v6, v7

    float-to-double v8, v8

    cmpg-double v8, v8, v4

    if-gtz v8, :cond_17

    mul-float/2addr v6, v7

    goto :goto_c

    .line 327
    :cond_17
    float-to-int v7, v6

    return v7
.end method

.method private getResizedDimension(IIIILandroid/widget/ImageView$ScaleType;)I
    .registers 13
    .param p1, "maxPrimary"    # I
    .param p2, "maxSecondary"    # I
    .param p3, "actualPrimary"    # I
    .param p4, "actualSecondary"    # I
    .param p5, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .line 331
    if-nez p1, :cond_5

    if-nez p2, :cond_5

    .line 332
    return p3

    .line 333
    :cond_5
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-ne p5, v0, :cond_f

    .line 334
    if-nez p1, :cond_d

    move v0, p3

    goto :goto_e

    :cond_d
    move v0, p1

    :goto_e
    return v0

    .line 337
    :cond_f
    if-nez p1, :cond_18

    .line 338
    int-to-double v0, p2

    int-to-double v2, p4

    div-double/2addr v0, v2

    .line 339
    .local v0, "ratio":D
    int-to-double v2, p3

    mul-double/2addr v2, v0

    double-to-int v2, v2

    return v2

    .line 340
    .end local v0    # "ratio":D
    :cond_18
    if-nez p2, :cond_1b

    .line 341
    return p1

    .line 343
    :cond_1b
    int-to-double v0, p4

    int-to-double v2, p3

    div-double/2addr v0, v2

    .line 344
    .restart local v0    # "ratio":D
    move v2, p1

    .line 345
    .local v2, "resized":I
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne p5, v3, :cond_2e

    .line 346
    int-to-double v3, p1

    mul-double/2addr v3, v0

    int-to-double v5, p2

    cmpg-double v3, v3, v5

    if-gez v3, :cond_2d

    .line 347
    int-to-double v3, p2

    div-double/2addr v3, v0

    double-to-int v2, v3

    .line 350
    :cond_2d
    return v2

    .line 352
    :cond_2e
    int-to-double v3, p1

    mul-double/2addr v3, v0

    int-to-double v5, p2

    cmpl-double v3, v3, v5

    if-lez v3, :cond_38

    .line 353
    int-to-double v3, p2

    div-double/2addr v3, v0

    double-to-int v2, v3

    .line 356
    :cond_38
    return v2
.end method

.method private getScaleBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;
    .registers 14
    .param p1, "file"    # Ljava/io/File;

    .line 295
    if-eqz p1, :cond_60

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_60

    .line 298
    :cond_9
    const/4 v0, 0x0

    .line 299
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 300
    .local v1, "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 301
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 302
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 303
    .local v3, "actualWidth":I
    iget v10, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 304
    .local v10, "actualHeight":I
    iget-object v4, p0, Lcom/tds/common/widgets/image/LoadBuilder$3;->this$0:Lcom/tds/common/widgets/image/LoadBuilder;

    iget v5, v4, Lcom/tds/common/widgets/image/LoadBuilder;->width:I

    iget-object v4, p0, Lcom/tds/common/widgets/image/LoadBuilder$3;->this$0:Lcom/tds/common/widgets/image/LoadBuilder;

    iget v6, v4, Lcom/tds/common/widgets/image/LoadBuilder;->height:I

    iget-object v4, p0, Lcom/tds/common/widgets/image/LoadBuilder$3;->this$0:Lcom/tds/common/widgets/image/LoadBuilder;

    iget-object v9, v4, Lcom/tds/common/widgets/image/LoadBuilder;->scaleType:Landroid/widget/ImageView$ScaleType;

    move-object v4, p0

    move v7, v3

    move v8, v10

    invoke-direct/range {v4 .. v9}, Lcom/tds/common/widgets/image/LoadBuilder$3;->getResizedDimension(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v11

    .line 305
    .local v11, "desiredWidth":I
    iget-object v4, p0, Lcom/tds/common/widgets/image/LoadBuilder$3;->this$0:Lcom/tds/common/widgets/image/LoadBuilder;

    iget v5, v4, Lcom/tds/common/widgets/image/LoadBuilder;->height:I

    iget-object v4, p0, Lcom/tds/common/widgets/image/LoadBuilder$3;->this$0:Lcom/tds/common/widgets/image/LoadBuilder;

    iget v6, v4, Lcom/tds/common/widgets/image/LoadBuilder;->width:I

    iget-object v4, p0, Lcom/tds/common/widgets/image/LoadBuilder$3;->this$0:Lcom/tds/common/widgets/image/LoadBuilder;

    iget-object v9, v4, Lcom/tds/common/widgets/image/LoadBuilder;->scaleType:Landroid/widget/ImageView$ScaleType;

    move-object v4, p0

    move v7, v10

    move v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/tds/common/widgets/image/LoadBuilder$3;->getResizedDimension(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v4

    .line 306
    .local v4, "desiredHeight":I
    const/4 v5, 0x0

    iput-boolean v5, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 307
    invoke-direct {p0, v3, v10, v11, v4}, Lcom/tds/common/widgets/image/LoadBuilder$3;->findBestSampleSize(IIII)I

    move-result v5

    iput v5, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 308
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 309
    .local v5, "tempBitmap":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_5e

    .line 310
    invoke-static {v5, v11, v4, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 311
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_5f

    .line 313
    :cond_5e
    const/4 v0, 0x0

    .line 315
    :goto_5f
    return-object v0

    .line 296
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v3    # "actualWidth":I
    .end local v4    # "desiredHeight":I
    .end local v5    # "tempBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "actualHeight":I
    .end local v11    # "desiredWidth":I
    :cond_60
    :goto_60
    const/4 v0, 0x0

    return-object v0
.end method

.method private loadAndCacheFromNet()Landroid/graphics/Bitmap;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    new-instance v0, Lcom/tds/common/net/TdsHttp$Request$Builder;

    invoke-direct {v0}, Lcom/tds/common/net/TdsHttp$Request$Builder;-><init>()V

    iget-object v1, p0, Lcom/tds/common/widgets/image/LoadBuilder$3;->this$0:Lcom/tds/common/widgets/image/LoadBuilder;

    iget-object v1, v1, Lcom/tds/common/widgets/image/LoadBuilder;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tds/common/net/TdsHttp$Request$Builder;->url(Ljava/lang/String;)Lcom/tds/common/net/TdsHttp$Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tds/common/net/TdsHttp$Request$Builder;->build()Lcom/tds/common/net/TdsHttp$Request;

    move-result-object v0

    .line 364
    .local v0, "request":Lcom/tds/common/net/TdsHttp$Request;
    const/4 v1, 0x0

    .line 366
    .local v1, "response":Lcom/tds/common/net/TdsHttp$Response;
    :try_start_16
    iget-object v2, p0, Lcom/tds/common/widgets/image/LoadBuilder$3;->this$0:Lcom/tds/common/widgets/image/LoadBuilder;

    iget-object v2, v2, Lcom/tds/common/widgets/image/LoadBuilder;->tdsImage:Lcom/tds/common/widgets/image/TdsImage;

    iget-object v2, v2, Lcom/tds/common/widgets/image/TdsImage;->client:Lcom/tds/common/net/TdsHttp$Client;

    invoke-virtual {v2, v0}, Lcom/tds/common/net/TdsHttp$Client;->newCall(Lcom/tds/common/net/TdsHttp$Request;)Lcom/tds/common/net/TdsHttp$Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tds/common/net/TdsHttp$Call;->execute()Lcom/tds/common/net/TdsHttp$Response;

    move-result-object v2

    move-object v1, v2

    .line 367
    nop

    .line 368
    .local v2, "finalResponse":Lcom/tds/common/net/TdsHttp$Response;
    iget-object v3, p0, Lcom/tds/common/widgets/image/LoadBuilder$3;->this$0:Lcom/tds/common/widgets/image/LoadBuilder;

    iget-object v3, v3, Lcom/tds/common/widgets/image/LoadBuilder;->tdsImage:Lcom/tds/common/widgets/image/TdsImage;

    iget-object v3, v3, Lcom/tds/common/widgets/image/TdsImage;->diskCache:Lcom/tds/common/widgets/image/DiskCache;

    iget-object v4, p0, Lcom/tds/common/widgets/image/LoadBuilder$3;->this$0:Lcom/tds/common/widgets/image/LoadBuilder;

    # invokes: Lcom/tds/common/widgets/image/LoadBuilder;->getDiskKey()Ljava/lang/String;
    invoke-static {v4}, Lcom/tds/common/widgets/image/LoadBuilder;->access$100(Lcom/tds/common/widgets/image/LoadBuilder;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/tds/common/widgets/image/LoadBuilder$3$1;

    invoke-direct {v5, p0, v2}, Lcom/tds/common/widgets/image/LoadBuilder$3$1;-><init>(Lcom/tds/common/widgets/image/LoadBuilder$3;Lcom/tds/common/net/TdsHttp$Response;)V

    invoke-virtual {v3, v4, v5}, Lcom/tds/common/widgets/image/DiskCache;->put(Ljava/lang/String;Lcom/tds/common/widgets/image/DiskCache$Writer;)V

    .line 375
    invoke-direct {p0}, Lcom/tds/common/widgets/image/LoadBuilder$3;->loadFromDisk()Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_3e
    .catchall {:try_start_16 .. :try_end_3e} :catchall_44

    .line 377
    if-eqz v1, :cond_43

    .line 378
    invoke-virtual {v1}, Lcom/tds/common/net/TdsHttp$Response;->close()V

    .line 375
    :cond_43
    return-object v3

    .line 377
    .end local v2    # "finalResponse":Lcom/tds/common/net/TdsHttp$Response;
    :catchall_44
    move-exception v2

    if-eqz v1, :cond_4a

    .line 378
    invoke-virtual {v1}, Lcom/tds/common/net/TdsHttp$Response;->close()V

    .line 380
    :cond_4a
    throw v2
.end method

.method private loadBitmap()Landroid/graphics/Bitmap;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/tds/common/widgets/image/LoadBuilder$3;->this$0:Lcom/tds/common/widgets/image/LoadBuilder;

    iget v0, v0, Lcom/tds/common/widgets/image/LoadBuilder;->resId:I

    if-eqz v0, :cond_2a

    .line 256
    iget-object v0, p0, Lcom/tds/common/widgets/image/LoadBuilder$3;->this$0:Lcom/tds/common/widgets/image/LoadBuilder;

    iget-object v0, v0, Lcom/tds/common/widgets/image/LoadBuilder;->tdsImage:Lcom/tds/common/widgets/image/TdsImage;

    iget-object v0, v0, Lcom/tds/common/widgets/image/TdsImage;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/tds/common/widgets/image/LoadBuilder$3;->this$0:Lcom/tds/common/widgets/image/LoadBuilder;

    iget v1, v1, Lcom/tds/common/widgets/image/LoadBuilder;->resId:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 257
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2a

    .line 258
    iget-object v1, p0, Lcom/tds/common/widgets/image/LoadBuilder$3;->this$0:Lcom/tds/common/widgets/image/LoadBuilder;

    iget-object v1, v1, Lcom/tds/common/widgets/image/LoadBuilder;->tdsImage:Lcom/tds/common/widgets/image/TdsImage;

    iget-object v1, v1, Lcom/tds/common/widgets/image/TdsImage;->memCache:Lcom/tds/common/widgets/image/MemCache;

    iget-object v2, p0, Lcom/tds/common/widgets/image/LoadBuilder$3;->this$0:Lcom/tds/common/widgets/image/LoadBuilder;

    # invokes: Lcom/tds/common/widgets/image/LoadBuilder;->getKey()Ljava/lang/String;
    invoke-static {v2}, Lcom/tds/common/widgets/image/LoadBuilder;->access$000(Lcom/tds/common/widgets/image/LoadBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/tds/common/widgets/image/MemCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 259
    return-object v0

    .line 263
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2a
    invoke-direct {p0}, Lcom/tds/common/widgets/image/LoadBuilder$3;->loadFromDisk()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 264
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_31

    .line 265
    return-object v0

    .line 267
    :cond_31
    invoke-direct {p0}, Lcom/tds/common/widgets/image/LoadBuilder$3;->loadAndCacheFromNet()Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private loadFromDisk()Landroid/graphics/Bitmap;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/tds/common/widgets/image/LoadBuilder$3;->this$0:Lcom/tds/common/widgets/image/LoadBuilder;

    iget-object v0, v0, Lcom/tds/common/widgets/image/LoadBuilder;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 274
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tds/common/widgets/image/LoadBuilder$3;->this$0:Lcom/tds/common/widgets/image/LoadBuilder;

    iget-object v1, v1, Lcom/tds/common/widgets/image/LoadBuilder;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "bmpFile":Ljava/io/File;
    goto :goto_2e

    .line 276
    .end local v0    # "bmpFile":Ljava/io/File;
    :cond_1e
    iget-object v0, p0, Lcom/tds/common/widgets/image/LoadBuilder$3;->this$0:Lcom/tds/common/widgets/image/LoadBuilder;

    iget-object v0, v0, Lcom/tds/common/widgets/image/LoadBuilder;->tdsImage:Lcom/tds/common/widgets/image/TdsImage;

    iget-object v0, v0, Lcom/tds/common/widgets/image/TdsImage;->diskCache:Lcom/tds/common/widgets/image/DiskCache;

    iget-object v1, p0, Lcom/tds/common/widgets/image/LoadBuilder$3;->this$0:Lcom/tds/common/widgets/image/LoadBuilder;

    # invokes: Lcom/tds/common/widgets/image/LoadBuilder;->getDiskKey()Ljava/lang/String;
    invoke-static {v1}, Lcom/tds/common/widgets/image/LoadBuilder;->access$100(Lcom/tds/common/widgets/image/LoadBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tds/common/widgets/image/DiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 278
    .restart local v0    # "bmpFile":Ljava/io/File;
    :goto_2e
    if-eqz v0, :cond_5a

    .line 280
    iget-object v1, p0, Lcom/tds/common/widgets/image/LoadBuilder$3;->this$0:Lcom/tds/common/widgets/image/LoadBuilder;

    iget v1, v1, Lcom/tds/common/widgets/image/LoadBuilder;->width:I

    iget-object v2, p0, Lcom/tds/common/widgets/image/LoadBuilder$3;->this$0:Lcom/tds/common/widgets/image/LoadBuilder;

    iget v2, v2, Lcom/tds/common/widgets/image/LoadBuilder;->height:I

    mul-int/2addr v1, v2

    if-nez v1, :cond_44

    .line 281
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "bmp":Landroid/graphics/Bitmap;
    goto :goto_48

    .line 283
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    :cond_44
    invoke-direct {p0, v0}, Lcom/tds/common/widgets/image/LoadBuilder$3;->getScaleBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 285
    .restart local v1    # "bmp":Landroid/graphics/Bitmap;
    :goto_48
    if-eqz v1, :cond_59

    .line 286
    iget-object v2, p0, Lcom/tds/common/widgets/image/LoadBuilder$3;->this$0:Lcom/tds/common/widgets/image/LoadBuilder;

    iget-object v2, v2, Lcom/tds/common/widgets/image/LoadBuilder;->tdsImage:Lcom/tds/common/widgets/image/TdsImage;

    iget-object v2, v2, Lcom/tds/common/widgets/image/TdsImage;->memCache:Lcom/tds/common/widgets/image/MemCache;

    iget-object v3, p0, Lcom/tds/common/widgets/image/LoadBuilder$3;->this$0:Lcom/tds/common/widgets/image/LoadBuilder;

    # invokes: Lcom/tds/common/widgets/image/LoadBuilder;->getKey()Ljava/lang/String;
    invoke-static {v3}, Lcom/tds/common/widgets/image/LoadBuilder;->access$000(Lcom/tds/common/widgets/image/LoadBuilder;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/tds/common/widgets/image/MemCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 288
    :cond_59
    return-object v1

    .line 290
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    :cond_5a
    const/4 v1, 0x0

    return-object v1
.end method

.method private postProcess(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 12
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 215
    iget-object v0, p0, Lcom/tds/common/widgets/image/LoadBuilder$3;->this$0:Lcom/tds/common/widgets/image/LoadBuilder;

    iget-boolean v0, v0, Lcom/tds/common/widgets/image/LoadBuilder;->circle:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_65

    .line 216
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 218
    .local v0, "result":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/BitmapShader;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, p1, v5, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 219
    .local v4, "shader":Landroid/graphics/BitmapShader;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 220
    .local v5, "paint":Landroid/graphics/Paint;
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 221
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 223
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 224
    .local v3, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 226
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v2, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v2, v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v6

    div-float/2addr v8, v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v6

    div-float/2addr v9, v7

    invoke-virtual {v3, v2, v8, v9, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 228
    invoke-virtual {v3, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 230
    iget-object v1, p0, Lcom/tds/common/widgets/image/LoadBuilder$3;->this$0:Lcom/tds/common/widgets/image/LoadBuilder;

    iget-object v1, v1, Lcom/tds/common/widgets/image/LoadBuilder;->tdsImage:Lcom/tds/common/widgets/image/TdsImage;

    iget-object v1, v1, Lcom/tds/common/widgets/image/TdsImage;->memCache:Lcom/tds/common/widgets/image/MemCache;

    iget-object v2, p0, Lcom/tds/common/widgets/image/LoadBuilder$3;->this$0:Lcom/tds/common/widgets/image/LoadBuilder;

    # invokes: Lcom/tds/common/widgets/image/LoadBuilder;->getKey()Ljava/lang/String;
    invoke-static {v2}, Lcom/tds/common/widgets/image/LoadBuilder;->access$000(Lcom/tds/common/widgets/image/LoadBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/tds/common/widgets/image/MemCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 231
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 232
    return-object v0

    .line 233
    .end local v0    # "result":Landroid/graphics/Bitmap;
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "shader":Landroid/graphics/BitmapShader;
    .end local v5    # "paint":Landroid/graphics/Paint;
    :cond_65
    iget-object v0, p0, Lcom/tds/common/widgets/image/LoadBuilder$3;->this$0:Lcom/tds/common/widgets/image/LoadBuilder;

    iget v0, v0, Lcom/tds/common/widgets/image/LoadBuilder;->roundCornerRadius:I

    if-lez v0, :cond_c8

    .line 234
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 236
    .restart local v0    # "result":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/BitmapShader;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, p1, v5, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 237
    .restart local v4    # "shader":Landroid/graphics/BitmapShader;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 238
    .restart local v5    # "paint":Landroid/graphics/Paint;
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 239
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 241
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 242
    .restart local v3    # "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 243
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-direct {v2, v8, v8, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v6, p0, Lcom/tds/common/widgets/image/LoadBuilder$3;->this$0:Lcom/tds/common/widgets/image/LoadBuilder;

    iget v6, v6, Lcom/tds/common/widgets/image/LoadBuilder;->roundCornerRadius:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/tds/common/widgets/image/LoadBuilder$3;->this$0:Lcom/tds/common/widgets/image/LoadBuilder;

    iget v7, v7, Lcom/tds/common/widgets/image/LoadBuilder;->roundCornerRadius:I

    int-to-float v7, v7

    invoke-virtual {v3, v2, v6, v7, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 244
    invoke-virtual {v3, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 246
    iget-object v1, p0, Lcom/tds/common/widgets/image/LoadBuilder$3;->this$0:Lcom/tds/common/widgets/image/LoadBuilder;

    iget-object v1, v1, Lcom/tds/common/widgets/image/LoadBuilder;->tdsImage:Lcom/tds/common/widgets/image/TdsImage;

    iget-object v1, v1, Lcom/tds/common/widgets/image/TdsImage;->memCache:Lcom/tds/common/widgets/image/MemCache;

    iget-object v2, p0, Lcom/tds/common/widgets/image/LoadBuilder$3;->this$0:Lcom/tds/common/widgets/image/LoadBuilder;

    # invokes: Lcom/tds/common/widgets/image/LoadBuilder;->getKey()Ljava/lang/String;
    invoke-static {v2}, Lcom/tds/common/widgets/image/LoadBuilder;->access$000(Lcom/tds/common/widgets/image/LoadBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/tds/common/widgets/image/MemCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 247
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 248
    return-object v0

    .line 250
    .end local v0    # "result":Landroid/graphics/Bitmap;
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "shader":Landroid/graphics/BitmapShader;
    .end local v5    # "paint":Landroid/graphics/Paint;
    :cond_c8
    return-object p1
.end method


# virtual methods
.method public call(Lcom/tds/common/reactor/Subscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 201
    .local p1, "subscriber":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-Landroid/graphics/Bitmap;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/tds/common/widgets/image/LoadBuilder$3;->loadBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 202
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Lcom/tds/common/reactor/Subscriber;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_15

    .line 203
    invoke-direct {p0, v0}, Lcom/tds/common/widgets/image/LoadBuilder$3;->postProcess(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v0, v1

    .line 204
    invoke-virtual {p1, v0}, Lcom/tds/common/reactor/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 205
    invoke-virtual {p1}, Lcom/tds/common/reactor/Subscriber;->onCompleted()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_15} :catch_16

    .line 211
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_15
    goto :goto_20

    .line 207
    :catch_16
    move-exception v0

    .line 208
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p1}, Lcom/tds/common/reactor/Subscriber;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_20

    .line 209
    invoke-virtual {p1, v0}, Lcom/tds/common/reactor/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 212
    .end local v0    # "e":Ljava/io/IOException;
    :cond_20
    :goto_20
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .line 197
    check-cast p1, Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {p0, p1}, Lcom/tds/common/widgets/image/LoadBuilder$3;->call(Lcom/tds/common/reactor/Subscriber;)V

    return-void
.end method
