.class public final Lcom/mintegral/msdk/base/utils/k;
.super Ljava/lang/Object;
.source "CommonUtil.java"


# static fields
.field static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/String;

.field private static c:Ljava/util/regex/Pattern;

.field private static d:I

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 1072
    const-string v0, "[\u4e00-\u9fa5]"

    .line 1073
    sput-object v0, Lcom/mintegral/msdk/base/utils/k;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/utils/k;->c:Ljava/util/regex/Pattern;

    .line 1097
    sput v1, Lcom/mintegral/msdk/base/utils/k;->d:I

    .line 1252
    sput-boolean v1, Lcom/mintegral/msdk/base/utils/k;->e:Z

    return-void
.end method

.method public static a(Ljava/lang/Double;)D
    .registers 5

    .prologue
    .line 1544
    :try_start_0
    const-string v0, "CommonUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "format before num:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1545
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    .line 1546
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0.00"

    invoke-direct {v1, v2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 1547
    invoke-virtual {v1, p0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1548
    const-string v1, "CommonUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "format after format:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1549
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 1550
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_42} :catch_44

    move-result-wide v0

    .line 1555
    :goto_43
    return-wide v0

    .line 1553
    :catch_44
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1555
    :cond_48
    const-wide/16 v0, 0x0

    goto :goto_43
.end method

.method public static a(Landroid/content/Context;F)I
    .registers 5

    .prologue
    const/high16 v0, 0x40200000    # 2.5f

    .line 367
    .line 370
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_18

    .line 371
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1d

    .line 378
    :goto_11
    div-float v0, p1, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 375
    :catch_18
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11

    :cond_1d
    move v0, v1

    goto :goto_11
.end method

.method public static a(Ljava/lang/Object;)I
    .registers 5

    .prologue
    .line 1531
    const/4 v0, 0x0

    .line 1533
    if-eqz p0, :cond_d

    :try_start_3
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 1534
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_c} :catch_e

    move-result v0

    .line 1539
    :cond_d
    :goto_d
    return v0

    .line 1536
    :catch_e
    move-exception v1

    .line 1537
    const-string v2, "CommonUtils"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method public static a(Ljava/io/File;)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 516
    const-wide/16 v0, 0x0

    .line 517
    const/4 v3, 0x0

    .line 519
    :try_start_3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 520
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_22
    .catchall {:try_start_3 .. :try_end_e} :catchall_2c

    .line 521
    :try_start_e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_3a
    .catchall {:try_start_e .. :try_end_11} :catchall_37

    move-result v0

    int-to-long v0, v0

    .line 529
    :goto_13
    if-eqz v2, :cond_18

    .line 530
    :try_start_15
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_33

    .line 536
    :cond_18
    :goto_18
    return-wide v0

    .line 523
    :cond_19
    :try_start_19
    const-string v2, "\u83b7\u53d6\u6587\u4ef6\u5927\u5c0f"

    const-string v4, "\u6587\u4ef6\u4e0d\u5b58\u5728!"

    invoke-static {v2, v4}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_20} :catch_22
    .catchall {:try_start_19 .. :try_end_20} :catchall_2c

    move-object v2, v3

    goto :goto_13

    :catch_22
    move-exception v2

    move-object v2, v3

    .line 529
    :goto_24
    if-eqz v2, :cond_18

    .line 530
    :try_start_26
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_18

    .line 535
    :catch_2a
    move-exception v2

    goto :goto_18

    .line 528
    :catchall_2c
    move-exception v0

    .line 529
    :goto_2d
    if-eqz v3, :cond_32

    .line 530
    :try_start_2f
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_35

    .line 534
    :cond_32
    :goto_32
    throw v0

    .line 535
    :catch_33
    move-exception v2

    goto :goto_18

    :catch_35
    move-exception v1

    goto :goto_32

    .line 528
    :catchall_37
    move-exception v0

    move-object v3, v2

    goto :goto_2d

    :catch_3a
    move-exception v3

    goto :goto_24
.end method

.method public static a(I)Ljava/lang/String;
    .registers 7

    .prologue
    .line 1330
    const-string v1, ""

    .line 1333
    :try_start_2
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1334
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->g()Ljava/util/List;

    move-result-object v3

    .line 1335
    if-eqz v3, :cond_2e

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2e

    .line 1336
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 1337
    if-le v4, p0, :cond_1e

    if-nez p0, :cond_2b

    :cond_1e
    const/4 v0, 0x0

    .line 1338
    :goto_1f
    if-ge v0, v4, :cond_2e

    .line 1339
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1338
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 1337
    :cond_2b
    sub-int v0, v4, p0

    goto :goto_1f

    .line 1343
    :cond_2e
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_3d

    .line 1344
    invoke-static {v2}, Lcom/mintegral/msdk/base/utils/k;->a(Lorg/json/JSONArray;)Ljava/lang/String;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_37} :catch_39

    move-result-object v0

    .line 1349
    :goto_38
    return-object v0

    .line 1347
    :catch_39
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3d
    move-object v0, v1

    goto :goto_38
.end method

.method public static a(Lorg/json/JSONArray;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 1400
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    .line 1401
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 1402
    if-nez v0, :cond_18

    .line 1403
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/c/b;->b()Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 1405
    :cond_18
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->ae()I

    move-result v2

    .line 1407
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-le v0, v2, :cond_40

    .line 1408
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 1409
    const/4 v0, 0x0

    move v1, v0

    :goto_29
    if-ge v1, v2, :cond_3b

    .line 1411
    :try_start_2b
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_2b .. :try_end_32} :catch_36

    .line 1409
    :goto_32
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_29

    .line 1413
    :catch_36
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_32

    .line 1416
    :cond_3b
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1421
    :goto_3f
    return-object v0

    .line 1418
    :cond_40
    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3f
.end method

.method public static a(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1635
    if-nez p0, :cond_3

    .line 1648
    :cond_2
    :goto_2
    return-void

    .line 1639
    :cond_3
    :try_start_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 1643
    const/16 v0, 0x1006

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_e} :catch_f

    goto :goto_2

    .line 1646
    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public static a(Landroid/widget/ImageView;)V
    .registers 3

    .prologue
    .line 1745
    if-nez p0, :cond_3

    .line 1758
    :cond_2
    :goto_2
    return-void

    .line 1749
    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1750
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1751
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 1752
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_13} :catch_14

    goto :goto_2

    .line 1753
    :catch_14
    move-exception v0

    .line 1754
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 1755
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public static a(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1470
    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 1486
    :cond_8
    :goto_8
    return-void

    .line 1473
    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1475
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_14
    if-ge v1, v3, :cond_43

    .line 1476
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 1477
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v4

    .line 1478
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1477
    invoke-static {v4, v5}, Lcom/mintegral/msdk/base/utils/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    .line 1479
    if-nez v4, :cond_36

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getOfferType()I

    move-result v4

    const/16 v5, 0x63

    if-eq v4, v5, :cond_3c

    :cond_36
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/k;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 1480
    :cond_3c
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1475
    :cond_3f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14

    .line 1484
    :cond_43
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/s;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/s;

    move-result-object v0

    .line 1485
    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/b/s;->a(Ljava/util/List;)V

    goto :goto_8
.end method

.method public static a()Z
    .registers 1

    .prologue
    .line 299
    sget-boolean v0, Lcom/mintegral/msdk/base/utils/k;->e:Z

    return v0
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 4

    .prologue
    .line 126
    :try_start_0
    const-string v0, "connectivity"

    .line 127
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 128
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_26

    .line 130
    const-string v1, "wifi"

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_22

    move-result v0

    if-eqz v0, :cond_26

    .line 131
    const/4 v0, 0x1

    .line 137
    :goto_21
    return v0

    .line 135
    :catch_22
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 137
    :cond_26
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 253
    sget-object v0, Lcom/mintegral/msdk/base/utils/k;->a:Ljava/util/List;

    if-nez v0, :cond_93

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/base/utils/k;->a:Ljava/util/List;

    .line 257
    :try_start_c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 258
    sget-object v2, Lcom/mintegral/msdk/base/controller/a;->b:Ljava/util/List;

    if-eqz v2, :cond_1c

    sget-object v2, Lcom/mintegral/msdk/base/controller/a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_72

    .line 259
    :cond_1c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/mintegral/msdk/base/controller/a;->b:Ljava/util/List;

    .line 260
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 261
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->b()Ljava/util/List;

    move-result-object v4

    move v2, v1

    .line 262
    :goto_31
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_72

    .line 263
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 264
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-gtz v5, :cond_50

    .line 266
    sget-object v5, Lcom/mintegral/msdk/base/controller/a;->b:Ljava/util/List;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_4c
    :goto_4c
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_31

    .line 269
    :cond_50
    if-eqz v4, :cond_4c

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4c

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 270
    sget-object v5, Lcom/mintegral/msdk/base/controller/a;->b:Ljava/util/List;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_67} :catch_68

    goto :goto_4c

    .line 282
    :catch_68
    move-exception v0

    .line 283
    sget-boolean v2, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v2, :cond_70

    .line 284
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_70
    move v0, v1

    .line 289
    :goto_71
    return v0

    :cond_72
    move v2, v1

    .line 276
    :goto_73
    :try_start_73
    sget-object v0, Lcom/mintegral/msdk/base/controller/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_8c

    .line 277
    sget-object v0, Lcom/mintegral/msdk/base/controller/a;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 278
    sget-object v3, Lcom/mintegral/msdk/base/utils/k;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_73

    .line 281
    :cond_8c
    sget-object v0, Lcom/mintegral/msdk/base/utils/k;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_91
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_91} :catch_68

    move-result v0

    goto :goto_71

    .line 289
    :cond_93
    sget-object v0, Lcom/mintegral/msdk/base/utils/k;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_71
.end method

.method public static a(Lcom/mintegral/msdk/base/entity/CampaignEx;)Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 240
    if-eqz p0, :cond_e

    .line 241
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getDeepLinkURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x1

    .line 243
    :cond_e
    return v0
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/String;",
            ">(TT;)Z"
        }
    .end annotation

    .prologue
    .line 95
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 1425
    .line 1428
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1429
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1430
    if-nez v0, :cond_2b

    .line 1431
    const/4 v0, 0x1

    .line 1432
    const-string v2, "CommonUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Permission "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is granted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    :goto_2a
    return v0

    .line 1434
    :cond_2b
    const-string v0, "CommonUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Permission "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is NOT granted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_45} :catch_47

    move v0, v1

    .line 1438
    goto :goto_2a

    .line 1437
    :catch_47
    move-exception v0

    move v0, v1

    goto :goto_2a
.end method

.method public static b()I
    .registers 2

    .prologue
    .line 1100
    sget v0, Lcom/mintegral/msdk/base/utils/k;->d:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/mintegral/msdk/base/utils/k;->d:I

    return v0
.end method

.method public static b(Landroid/content/Context;F)I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 391
    if-nez p0, :cond_4

    .line 400
    :cond_3
    :goto_3
    return v0

    .line 394
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 396
    if-eqz v1, :cond_3

    .line 399
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 400
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_3
.end method

.method public static b(Ljava/io/File;)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 540
    const-wide/16 v0, 0x0

    .line 541
    const/4 v3, 0x0

    .line 543
    :try_start_3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 544
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_25
    .catchall {:try_start_3 .. :try_end_e} :catchall_2f

    .line 545
    :try_start_e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_3d
    .catchall {:try_start_e .. :try_end_11} :catchall_3a

    move-result v0

    int-to-long v0, v0

    .line 554
    :goto_13
    if-eqz v2, :cond_18

    .line 555
    :try_start_15
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_36

    .line 561
    :cond_18
    :goto_18
    return-wide v0

    .line 547
    :cond_19
    :try_start_19
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 548
    const-string v2, "\u83b7\u53d6\u6587\u4ef6\u5927\u5c0f"

    const-string v4, "\u6587\u4ef6\u4e0d\u5b58\u5728!"

    invoke-static {v2, v4}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_23} :catch_25
    .catchall {:try_start_19 .. :try_end_23} :catchall_2f

    move-object v2, v3

    goto :goto_13

    :catch_25
    move-exception v2

    move-object v2, v3

    .line 554
    :goto_27
    if-eqz v2, :cond_18

    .line 555
    :try_start_29
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_18

    .line 560
    :catch_2d
    move-exception v2

    goto :goto_18

    .line 553
    :catchall_2f
    move-exception v0

    .line 554
    :goto_30
    if-eqz v3, :cond_35

    .line 555
    :try_start_32
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_38

    .line 559
    :cond_35
    :goto_35
    throw v0

    .line 560
    :catch_36
    move-exception v2

    goto :goto_18

    :catch_38
    move-exception v1

    goto :goto_35

    .line 553
    :catchall_3a
    move-exception v0

    move-object v3, v2

    goto :goto_30

    :catch_3d
    move-exception v3

    goto :goto_27
.end method

.method public static b(I)Ljava/lang/String;
    .registers 10

    .prologue
    .line 1359
    const-string v1, ""

    .line 1363
    :try_start_2
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 1364
    if-nez v0, :cond_1a

    .line 1365
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/c/b;->b()Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 1367
    :cond_1a
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1369
    if-eqz v0, :cond_7d

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->aK()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7d

    .line 1370
    const-string v3, "CommonUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "excludes cfc:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->aK()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/m;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/m;

    move-result-object v0

    .line 1373
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/b/m;->c()[J

    move-result-object v3

    .line 1375
    if-eqz v3, :cond_7d

    .line 1376
    array-length v4, v3

    .line 1377
    if-le v4, p0, :cond_5b

    if-nez p0, :cond_7a

    :cond_5b
    const/4 v0, 0x0

    .line 1378
    :goto_5c
    if-ge v0, v4, :cond_7d

    .line 1379
    const-string v5, "CommonUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "excludes campaignIds:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    aget-wide v6, v3, v0

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 1378
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 1377
    :cond_7a
    sub-int v0, v4, p0

    goto :goto_5c

    .line 1384
    :cond_7d
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_a6

    .line 1385
    invoke-static {v2}, Lcom/mintegral/msdk/base/utils/k;->a(Lorg/json/JSONArray;)Ljava/lang/String;
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_86} :catch_9c

    move-result-object v0

    .line 1387
    :goto_87
    :try_start_87
    const-string v1, "CommonUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get excludes:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_9b} :catch_a4

    .line 1391
    :goto_9b
    return-object v0

    .line 1389
    :catch_9c
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    :goto_a0
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9b

    :catch_a4
    move-exception v1

    goto :goto_a0

    :cond_a6
    move-object v0, v1

    goto :goto_87
.end method

.method public static b(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1912
    if-eqz p0, :cond_8

    :try_start_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    .line 1913
    :cond_8
    const-string v0, "[]"

    .line 1925
    :goto_a
    return-object v0

    .line 1915
    :cond_b
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1916
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1917
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1918
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_29} :catch_2a

    goto :goto_14

    .line 1922
    :catch_2a
    move-exception v0

    .line 1923
    const-string v1, "CommonUtils"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1925
    const-string v0, "[]"

    goto :goto_a

    .line 1921
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_3a} :catch_2a

    move-result-object v0

    goto :goto_a
.end method

.method public static b(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1762
    .line 1763
    if-eqz p0, :cond_25

    :try_start_3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_25

    .line 1764
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1765
    const/4 v2, 0x0

    :goto_f
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_26

    .line 1766
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 1767
    invoke-static {v3}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1768
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_22} :catch_28

    .line 1765
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_25
    move-object v0, v1

    :cond_26
    move-object v1, v0

    .line 1776
    :goto_27
    return-object v1

    .line 1773
    :catch_28
    move-exception v0

    .line 1774
    const-string v2, "CommonUtils"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_27
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 148
    :try_start_1
    const-string v0, "connectivity"

    .line 149
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 150
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_13

    move-result-object v0

    .line 151
    if-eqz v0, :cond_11

    const/4 v0, 0x1

    .line 155
    :goto_10
    return v0

    :cond_11
    move v0, v1

    .line 151
    goto :goto_10

    .line 153
    :catch_13
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    .line 155
    goto :goto_10
.end method

.method public static b(Lcom/mintegral/msdk/base/entity/CampaignEx;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1449
    if-eqz p0, :cond_11

    .line 1450
    :try_start_4
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRetarget_offer()I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_d

    move-result v2

    .line 1451
    if-ne v2, v0, :cond_b

    .line 1460
    :goto_a
    return v0

    :cond_b
    move v0, v1

    .line 1454
    goto :goto_a

    .line 1458
    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_11
    move v0, v1

    .line 1460
    goto :goto_a
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/String;",
            ">(TT;)Z"
        }
    .end annotation

    .prologue
    .line 99
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static c(Ljava/lang/String;)D
    .registers 4

    .prologue
    .line 1515
    const-wide/16 v0, 0x0

    .line 1517
    :try_start_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1518
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_d

    move-result-wide v0

    .line 1523
    :cond_c
    :goto_c
    return-wide v0

    .line 1521
    :catch_d
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method

.method public static c(Landroid/content/Context;)F
    .registers 4

    .prologue
    const/high16 v0, 0x40200000    # 2.5f

    .line 346
    .line 349
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_12

    .line 350
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_17

    .line 357
    :goto_11
    return v0

    .line 354
    :catch_12
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11

    :cond_17
    move v0, v1

    goto :goto_11
.end method

.method public static c()Z
    .registers 2

    .prologue
    .line 1791
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static d(Landroid/content/Context;)I
    .registers 3

    .prologue
    .line 422
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 423
    const/high16 v1, 0x41f00000    # 30.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 1781
    :try_start_0
    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1782
    const-string v0, "utf-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v0

    .line 1787
    :goto_c
    return-object v0

    .line 1784
    :catch_d
    move-exception v0

    .line 1785
    const-string v1, "CommonUtils"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1787
    :cond_17
    const-string v0, ""

    goto :goto_c
.end method

.method public static d()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/m;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1836
    :try_start_2
    const-string v0, "CommonUtils"

    const-string v1, "============getActivePbDatas strat"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1837
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_e} :catch_b6

    .line 1840
    :try_start_e
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "ps"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 1841
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v0, 0x400

    invoke-direct {v1, v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_28} :catch_12e
    .catchall {:try_start_e .. :try_end_28} :catchall_c7

    .line 1843
    :cond_28
    :goto_28
    :try_start_28
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ad

    .line 1844
    const-string v5, "u0_"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 1845
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1846
    if-eqz v5, :cond_28

    array-length v6, v5

    if-lez v6, :cond_28

    .line 1847
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    .line 1848
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1849
    const-string v6, "CommonUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "line:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "  =====pg:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_67} :catch_68
    .catchall {:try_start_28 .. :try_end_67} :catchall_12c

    goto :goto_28

    .line 1854
    :catch_68
    move-exception v0

    :goto_69
    :try_start_69
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_12c

    .line 1856
    if-eqz v1, :cond_71

    .line 1858
    :try_start_6e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_c2
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_71} :catch_b6

    .line 1864
    :cond_71
    :goto_71
    :try_start_71
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1865
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1866
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v6

    .line 1867
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->b()Ljava/util/List;

    move-result-object v7

    move v1, v3

    .line 1868
    :goto_90
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_ea

    .line 1869
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 1870
    iget-object v8, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-gtz v8, :cond_d4

    .line 1871
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a9
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_a9} :catch_b6

    .line 1868
    :cond_a9
    :goto_a9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_90

    .line 1858
    :cond_ad
    :try_start_ad
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b0} :catch_b1
    .catch Ljava/lang/Throwable; {:try_start_ad .. :try_end_b0} :catch_b6

    goto :goto_71

    .line 1860
    :catch_b1
    move-exception v0

    :try_start_b2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b5
    .catch Ljava/lang/Throwable; {:try_start_b2 .. :try_end_b5} :catch_b6

    goto :goto_71

    .line 1891
    :catch_b6
    move-exception v0

    .line 1892
    const-string v1, "CommonUtils"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 1894
    :goto_c1
    return-object v0

    .line 1860
    :catch_c2
    move-exception v0

    :try_start_c3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c6
    .catch Ljava/lang/Throwable; {:try_start_c3 .. :try_end_c6} :catch_b6

    goto :goto_71

    .line 1856
    :catchall_c7
    move-exception v0

    move-object v1, v2

    :goto_c9
    if-eqz v1, :cond_ce

    .line 1858
    :try_start_cb
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_ce} :catch_cf
    .catch Ljava/lang/Throwable; {:try_start_cb .. :try_end_ce} :catch_b6

    .line 1861
    :cond_ce
    :goto_ce
    :try_start_ce
    throw v0

    .line 1860
    :catch_cf
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_ce

    .line 1873
    :cond_d4
    if-eqz v7, :cond_a9

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_a9

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a9

    .line 1874
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a9

    .line 1878
    :cond_ea
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1880
    :goto_ef
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_123

    .line 1881
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1882
    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11f

    .line 1883
    const-string v6, "CommonUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u540e\u53f0\u6d3b\u8dc3\u5305\u540d pg:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1884
    new-instance v6, Lcom/mintegral/msdk/base/entity/m;

    invoke-direct {v6}, Lcom/mintegral/msdk/base/entity/m;-><init>()V

    .line 1885
    iput-object v0, v6, Lcom/mintegral/msdk/base/entity/m;->a:Ljava/lang/String;

    .line 1886
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1880
    :cond_11f
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_ef

    .line 1889
    :cond_123
    const-string v0, "CommonUtils"

    const-string v3, "=============getActivePbDatas end"

    invoke-static {v0, v3}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12a
    .catch Ljava/lang/Throwable; {:try_start_ce .. :try_end_12a} :catch_b6

    move-object v0, v1

    .line 1890
    goto :goto_c1

    .line 1856
    :catchall_12c
    move-exception v0

    goto :goto_c9

    .line 1854
    :catch_12e
    move-exception v0

    move-object v1, v2

    goto/16 :goto_69
.end method

.method public static e(Landroid/content/Context;)I
    .registers 5

    .prologue
    .line 571
    const/4 v0, 0x0

    .line 573
    :try_start_1
    const-string v1, "com.android.internal.R$dimen"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 574
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 575
    const-string v3, "status_bar_height"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 576
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 577
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_24} :catch_26

    move-result v0

    .line 581
    :goto_25
    return v0

    .line 579
    :catch_26
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_25
.end method

.method public static e()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1898
    const-string v0, ""

    .line 1900
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1e} :catch_37

    move-result-object v0

    .line 1904
    :goto_1f
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/s;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1907
    :cond_36
    return-object v0

    .line 1902
    :catch_37
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1f
.end method

.method public static f(Landroid/content/Context;)F
    .registers 2

    .prologue
    .line 602
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 603
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    return v0
.end method

.method public static g(Landroid/content/Context;)I
    .registers 4

    .prologue
    const/4 v0, -0x1

    .line 1491
    if-nez p0, :cond_4

    .line 1504
    :cond_3
    :goto_3
    return v0

    .line 1494
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1495
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 1496
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 1497
    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_18} :catch_1a

    move-result v0

    goto :goto_3

    .line 1502
    :catch_1a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public static h(Landroid/content/Context;)I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1578
    if-nez p0, :cond_4

    .line 1588
    :goto_3
    return v0

    .line 1582
    :cond_4
    :try_start_4
    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/k;->o(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1583
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_b

    goto :goto_3

    .line 1585
    :catch_b
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public static i(Landroid/content/Context;)I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1592
    if-nez p0, :cond_4

    .line 1602
    :goto_3
    return v0

    .line 1596
    :cond_4
    :try_start_4
    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/k;->o(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1597
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_b

    goto :goto_3

    .line 1599
    :catch_b
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public static j(Landroid/content/Context;)I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1608
    if-nez p0, :cond_4

    .line 1616
    :goto_3
    return v0

    .line 1611
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1612
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_f

    goto :goto_3

    .line 1614
    :catch_f
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public static k(Landroid/content/Context;)I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1621
    if-nez p0, :cond_4

    .line 1629
    :goto_3
    return v0

    .line 1624
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1625
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_f

    goto :goto_3

    .line 1627
    :catch_f
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public static l(Landroid/content/Context;)I
    .registers 5

    .prologue
    .line 1659
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config_showNavigationBar"

    const-string v2, "bool"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1660
    if-eqz v0, :cond_2b

    .line 1661
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "navigation_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1662
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_27

    move-result v0

    .line 1667
    :goto_26
    return v0

    .line 1665
    :catch_27
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1667
    :cond_2b
    const/4 v0, 0x0

    goto :goto_26
.end method

.method public static m(Landroid/content/Context;)Z
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1676
    .line 1678
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1679
    const-string v2, "config_showNavigationBar"

    const-string v4, "bool"

    const-string v5, "android"

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1680
    if-lez v2, :cond_5f

    .line 1681
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_15} :catch_4c

    move-result v2

    .line 1683
    :goto_16
    :try_start_16
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1684
    const-string v4, "get"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1685
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "qemu.hw.mainkeys"

    aput-object v7, v5, v6

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1686
    const-string v4, "1"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    move v0, v3

    .line 1694
    :goto_41
    return v0

    .line 1688
    :cond_42
    const-string v3, "0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_47} :catch_59

    move-result v0

    if-eqz v0, :cond_5d

    move v0, v1

    .line 1689
    goto :goto_41

    .line 1691
    :catch_4c
    move-exception v0

    move-object v1, v0

    move v0, v3

    .line 1692
    :goto_4f
    const-string v2, "CommonUtils"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_41

    .line 1691
    :catch_59
    move-exception v0

    move-object v1, v0

    move v0, v2

    goto :goto_4f

    :cond_5d
    move v0, v2

    goto :goto_41

    :cond_5f
    move v2, v3

    goto :goto_16
.end method

.method public static n(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 1826
    :try_start_0
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1827
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_d

    move-result v0

    .line 1831
    :goto_c
    return v0

    .line 1829
    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1831
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private static o(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .registers 8

    .prologue
    .line 1559
    if-nez p0, :cond_4

    .line 1560
    const/4 v0, 0x0

    .line 1573
    :goto_3
    return-object v0

    .line 1562
    :cond_4
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1564
    :try_start_9
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1565
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1566
    const-string v2, "android.view.Display"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1567
    const-string v3, "getRealMetrics"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/util/DisplayMetrics;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1568
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_32} :catch_34

    move-object v0, v1

    .line 1572
    goto :goto_3

    .line 1570
    :catch_34
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1571
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    goto :goto_3
.end method
