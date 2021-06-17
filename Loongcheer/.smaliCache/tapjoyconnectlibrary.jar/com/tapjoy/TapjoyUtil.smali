.class public Lcom/tapjoy/TapjoyUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/tapjoy/TapjoyUtil;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SHA1(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "text"    # Ljava/lang/String;

    .line 60
    const-string v0, "SHA-1"

    invoke-static {v0, p0}, Lcom/tapjoy/TapjoyUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static SHA256(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "text"    # Ljava/lang/String;

    .line 75
    const-string v0, "SHA-256"

    invoke-static {v0, p0}, Lcom/tapjoy/TapjoyUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 95
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    .line 96
    const-string v0, "iso-8859-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Ljava/security/MessageDigest;->update([BII)V

    .line 97
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 99
    invoke-static {p0}, Lcom/tapjoy/TapjoyUtil;->convertToHex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .registers 4
    .param p0, "xml"    # Ljava/lang/String;

    .line 142
    nop

    .line 146
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 150
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 152
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 153
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_19

    .line 158
    goto :goto_33

    .line 155
    :catch_19
    move-exception v0

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "buildDocument exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TapjoyUtil"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 160
    :goto_33
    return-object v0
.end method

.method public static convertToHex([B)Ljava/lang/String;
    .registers 7
    .param p0, "data"    # [B

    .line 111
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 113
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    array-length v3, p0

    if-ge v2, v3, :cond_33

    .line 115
    aget-byte v3, p0, v2

    ushr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    .line 116
    const/4 v4, 0x0

    .line 120
    :goto_11
    if-ltz v3, :cond_1e

    const/16 v5, 0x9

    if-gt v3, v5, :cond_1e

    .line 121
    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_26

    .line 123
    :cond_1e
    add-int/lit8 v3, v3, -0xa

    add-int/lit8 v3, v3, 0x61

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 124
    :goto_26
    aget-byte v3, p0, v2

    and-int/lit8 v3, v3, 0xf

    .line 127
    add-int/lit8 v5, v4, 0x1

    if-lez v4, :cond_31

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 127
    :cond_31
    move v4, v5

    goto :goto_11

    .line 130
    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertURLParams(Ljava/util/Map;Z)Ljava/lang/String;
    .registers 7
    .param p1, "encode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 363
    .local p0, "source":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    nop

    .line 365
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, ""

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_88

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 368
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_30

    .line 369
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 371
    :cond_30
    const-string v3, "="

    if-eqz p1, :cond_62

    .line 372
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    .line 374
    :cond_62
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 375
    goto :goto_b

    .line 377
    :cond_88
    return-object v1
.end method

.method public static convertURLParams(Ljava/lang/String;Z)Ljava/util/Map;
    .registers 12
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "decode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 388
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 390
    nop

    .line 394
    nop

    .line 396
    nop

    .line 397
    const/4 v1, 0x0

    const-string v2, ""

    move-object v5, v2

    move-object v6, v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 401
    :goto_f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ge v3, v7, :cond_6c

    const/4 v7, -0x1

    if-eq v3, v7, :cond_6c

    .line 404
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 407
    if-nez v4, :cond_42

    .line 410
    const/16 v9, 0x3d

    if-ne v7, v9, :cond_30

    .line 412
    nop

    .line 413
    if-eqz p1, :cond_2b

    .line 414
    invoke-static {v5}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2c

    .line 416
    :cond_2b
    nop

    .line 417
    :goto_2c
    move-object v6, v5

    const/4 v4, 0x1

    move-object v5, v2

    goto :goto_69

    .line 422
    :cond_30
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_69

    .line 427
    :cond_42
    if-ne v4, v8, :cond_69

    .line 430
    const/16 v8, 0x26

    if-ne v7, v8, :cond_58

    .line 432
    nop

    .line 434
    if-eqz p1, :cond_50

    .line 435
    invoke-static {v5}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_51

    .line 437
    :cond_50
    nop

    .line 438
    :goto_51
    nop

    .line 441
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v2

    const/4 v4, 0x0

    goto :goto_69

    .line 446
    :cond_58
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 450
    :cond_69
    :goto_69
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 454
    :cond_6c
    if-ne v4, v8, :cond_7f

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7f

    .line 456
    if-eqz p1, :cond_7b

    .line 457
    invoke-static {v5}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_7c

    .line 459
    :cond_7b
    nop

    .line 461
    :goto_7c
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    :cond_7f
    return-object v0
.end method

.method public static createBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 7
    .param p0, "v"    # Landroid/view/View;

    .line 267
    nop

    .line 269
    const/4 v0, 0x0

    if-eqz p0, :cond_5b

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v1, :cond_5b

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v1, :cond_5b

    .line 273
    :try_start_14
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 274
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 275
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 276
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_41} :catch_42

    .line 281
    goto :goto_5b

    .line 278
    :catch_42
    move-exception v1

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error creating bitmap: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TapjoyUtil"

    invoke-static {v2, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_5b
    :goto_5b
    return-object v0
.end method

.method public static deleteFileOrDirectory(Ljava/io/File;)V
    .registers 5
    .param p0, "fileOrDirectory"    # Ljava/io/File;

    .line 207
    if-nez p0, :cond_3

    .line 208
    return-void

    .line 210
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 212
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 213
    if-eqz v0, :cond_1e

    array-length v1, v0

    if-lez v1, :cond_1e

    .line 214
    array-length v1, v0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_1e

    aget-object v3, v0, v2

    .line 215
    invoke-static {v3}, Lcom/tapjoy/TapjoyUtil;->deleteFileOrDirectory(Ljava/io/File;)V

    .line 214
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 220
    :cond_1e
    const-string v0, "TapjoyUtil"

    const-string v1, "****************************************"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deleteFileOrDirectory: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 224
    return-void
.end method

.method public static determineMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "url"    # Ljava/lang/String;

    .line 483
    nop

    .line 487
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 488
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 491
    :cond_14
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_28

    .line 492
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    .line 491
    :cond_28
    const-string v0, ""

    .line 496
    :goto_2a
    const-string v1, "css"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 497
    const-string v0, "text/css"

    goto :goto_4d

    .line 498
    :cond_35
    const-string v1, "js"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 499
    const-string v0, "text/javascript"

    goto :goto_4d

    .line 500
    :cond_40
    const-string v1, "html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 501
    const-string v0, "text/html"

    goto :goto_4d

    .line 503
    :cond_4b
    const-string v0, "application/octet-stream"

    .line 505
    :goto_4d
    return-object v0
.end method

.method public static fileOrDirectorySize(Ljava/io/File;)J
    .registers 8
    .param p0, "fileOrDirectory"    # Ljava/io/File;

    .line 233
    nop

    .line 234
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v1, :cond_21

    aget-object v5, v0, v4

    .line 235
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 236
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v2, v5

    goto :goto_1e

    .line 238
    :cond_19
    invoke-static {v5}, Lcom/tapjoy/TapjoyUtil;->fileOrDirectorySize(Ljava/io/File;)J

    move-result-wide v5

    add-long/2addr v2, v5

    .line 234
    :goto_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 241
    :cond_21
    return-wide v2
.end method

.method public static generateViewId()I
    .registers 4

    .line 570
    :goto_0
    sget-object v0, Lcom/tapjoy/TapjoyUtil;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 572
    add-int/lit8 v2, v1, 0x1

    .line 573
    const v3, 0xffffff

    if-le v2, v3, :cond_e

    const/4 v2, 0x1

    .line 574
    :cond_e
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 575
    return v1

    .line 577
    :cond_15
    goto :goto_0
.end method

.method public static getFileContents(Ljava/io/File;)Ljava/lang/String;
    .registers 7
    .param p0, "file"    # Ljava/io/File;

    .line 546
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 547
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 549
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 551
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 553
    :goto_16
    if-nez v4, :cond_28

    .line 554
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 555
    if-nez v4, :cond_20

    const/4 v5, 0x1

    goto :goto_21

    :cond_20
    const/4 v5, 0x0

    .line 557
    :goto_21
    if-eqz v4, :cond_26

    .line 558
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    :cond_26
    move v4, v5

    goto :goto_16

    .line 562
    :cond_28
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 563
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 565
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;
    .registers 9
    .param p0, "nodeList"    # Lorg/w3c/dom/NodeList;

    .line 171
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 172
    nop

    .line 174
    const/4 v2, 0x0

    if-eqz v1, :cond_44

    .line 176
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 178
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 180
    const-string v4, ""

    move-object v5, v4

    :goto_16
    if-ge v0, v3, :cond_36

    .line 182
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 183
    if-eqz v6, :cond_33

    .line 184
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 180
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 187
    :cond_36
    if-eqz v5, :cond_43

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 189
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 193
    :cond_43
    return-object v2

    .line 196
    :cond_44
    return-object v2
.end method

.method public static getRedirectDomain(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "hostURL"    # Ljava/lang/String;

    .line 472
    nop

    .line 473
    if-eqz p0, :cond_16

    .line 474
    const-string v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 473
    :cond_16
    const-string v0, ""

    .line 476
    :goto_18
    return-object v0
.end method

.method public static getVolume(Landroid/content/Context;)Ljava/lang/Float;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 582
    if-eqz p0, :cond_24

    .line 583
    :try_start_2
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 584
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 585
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 586
    int-to-float v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1a} :catch_1b

    return-object v0

    .line 588
    :catch_1b
    move-exception v0

    .line 589
    const-string v0, "TapjoyUtil"

    const-string v1, "Unable to fetch volume"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    .line 590
    :cond_24
    nop

    .line 591
    :goto_25
    const/4 v0, 0x0

    return-object v0
.end method

.method public static jsonToStringMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 3
    .param p0, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 510
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 512
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq p0, v1, :cond_d

    .line 513
    invoke-static {p0}, Lcom/tapjoy/TapjoyUtil;->toStringMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    .line 515
    :cond_d
    return-object v0
.end method

.method public static runOnMainThread(Ljava/lang/Runnable;)V
    .registers 3
    .param p0, "task"    # Ljava/lang/Runnable;

    .line 537
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_e

    .line 538
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 540
    :cond_e
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 541
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 543
    return-void
.end method

.method public static safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ")V"
        }
    .end annotation

    .line 349
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_11

    if-eqz p2, :cond_11

    .line 351
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    :cond_11
    return-void
.end method

.method public static safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "encode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 332
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_21

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_21

    if-eqz p2, :cond_21

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_21

    .line 334
    if-eqz p3, :cond_1e

    .line 335
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 337
    :cond_1e
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    :cond_21
    return-void
.end method

.method public static scaleDisplayAd(Landroid/view/View;I)Landroid/view/View;
    .registers 8
    .param p0, "adView"    # Landroid/view/View;
    .param p1, "targetWidth"    # I

    .line 295
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 296
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "wxh: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TapjoyUtil"

    invoke-static {v3, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    if-le v0, p1, :cond_7a

    .line 305
    int-to-double v2, p1

    int-to-double v4, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    .line 306
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 307
    invoke-virtual {v2}, Ljava/lang/Double;->intValue()I

    move-result v2

    .line 309
    move-object v3, p0

    check-cast v3, Landroid/webkit/WebView;

    check-cast v3, Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 310
    move-object v3, p0

    check-cast v3, Landroid/webkit/WebView;

    check-cast v3, Landroid/webkit/WebView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/webkit/WebView;->setPadding(IIII)V

    .line 311
    move-object v3, p0

    check-cast v3, Landroid/webkit/WebView;

    check-cast v3, Landroid/webkit/WebView;

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 312
    move-object v3, p0

    check-cast v3, Landroid/webkit/WebView;

    check-cast v3, Landroid/webkit/WebView;

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 313
    move-object v3, p0

    check-cast v3, Landroid/webkit/WebView;

    check-cast v3, Landroid/webkit/WebView;

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 316
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    mul-int v1, v1, p1

    div-int/2addr v1, v0

    invoke-direct {v2, p1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 317
    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    :cond_7a
    return-object p0
.end method

.method public static toStringMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 5
    .param p0, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 519
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 521
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 522
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 523
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 524
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 526
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    goto :goto_9

    .line 528
    :cond_21
    return-object v0
.end method

.method public static writeFileToDevice(Ljava/io/BufferedInputStream;Ljava/io/OutputStream;)V
    .registers 5
    .param p0, "inputStream"    # Ljava/io/BufferedInputStream;
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .line 252
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 253
    :goto_4
    invoke-virtual {p0, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    .line 255
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4

    .line 257
    :cond_10
    return-void
.end method
