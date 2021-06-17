.class public Lcom/umeng/analytics/pro/r;
.super Ljava/lang/Object;
.source "EventTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/r$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "fs_lc_tl_uapp"

.field private static final f:Ljava/lang/String; = "-1"

.field private static g:Landroid/content/Context;


# instance fields
.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private h:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/16 v0, 0x80

    iput v0, p0, Lcom/umeng/analytics/pro/r;->b:I

    .line 46
    const/16 v0, 0x100

    iput v0, p0, Lcom/umeng/analytics/pro/r;->c:I

    .line 47
    const/16 v0, 0x400

    iput v0, p0, Lcom/umeng/analytics/pro/r;->d:I

    .line 48
    const/16 v0, 0xa

    iput v0, p0, Lcom/umeng/analytics/pro/r;->e:I

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/pro/r;->h:Lorg/json/JSONObject;

    .line 56
    nop

    .line 57
    :try_start_17
    sget-object v0, Lcom/umeng/analytics/pro/r;->g:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/r;->b(Landroid/content/Context;)V
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_1d

    .line 60
    goto :goto_1e

    .line 59
    :catchall_1d
    move-exception v0

    .line 61
    :goto_1e
    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/pro/r$1;)V
    .registers 2

    .line 42
    invoke-direct {p0}, Lcom/umeng/analytics/pro/r;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/analytics/pro/r;
    .registers 2

    .line 68
    sget-object v0, Lcom/umeng/analytics/pro/r;->g:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 69
    if-eqz p0, :cond_c

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/umeng/analytics/pro/r;->g:Landroid/content/Context;

    .line 74
    :cond_c
    invoke-static {}, Lcom/umeng/analytics/pro/r$a;->a()Lcom/umeng/analytics/pro/r;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/Map;)Lorg/json/JSONObject;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 626
    nop

    .line 627
    nop

    .line 628
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 631
    :try_start_7
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 632
    nop

    .line 633
    nop

    .line 634
    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_15} :catch_152

    if-eqz v1, :cond_151

    .line 636
    :try_start_17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 637
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 638
    if-eqz v2, :cond_14f

    .line 640
    const/16 v3, 0x80

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 642
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 643
    if-eqz v1, :cond_147

    .line 645
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_d4

    .line 646
    instance-of v3, v1, [I

    if-eqz v3, :cond_5a

    .line 647
    check-cast v1, [I

    check-cast v1, [I

    .line 648
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 649
    nop

    :goto_4a
    array-length v5, v1

    if-ge v4, v5, :cond_55

    .line 650
    aget v5, v1, v4

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 649
    add-int/lit8 v4, v4, 0x1

    goto :goto_4a

    .line 652
    :cond_55
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 653
    goto/16 :goto_147

    :cond_5a
    instance-of v3, v1, [D

    if-eqz v3, :cond_78

    .line 654
    check-cast v1, [D

    check-cast v1, [D

    .line 655
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 656
    nop

    :goto_68
    array-length v5, v1

    if-ge v4, v5, :cond_73

    .line 657
    aget-wide v5, v1, v4

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 656
    add-int/lit8 v4, v4, 0x1

    goto :goto_68

    .line 659
    :cond_73
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 660
    goto/16 :goto_147

    :cond_78
    instance-of v3, v1, [J

    if-eqz v3, :cond_96

    .line 661
    check-cast v1, [J

    check-cast v1, [J

    .line 662
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 663
    nop

    :goto_86
    array-length v5, v1

    if-ge v4, v5, :cond_91

    .line 664
    aget-wide v5, v1, v4

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 663
    add-int/lit8 v4, v4, 0x1

    goto :goto_86

    .line 666
    :cond_91
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 667
    goto/16 :goto_147

    :cond_96
    instance-of v3, v1, [F

    if-eqz v3, :cond_b4

    .line 668
    check-cast v1, [F

    check-cast v1, [F

    .line 669
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 670
    nop

    :goto_a4
    array-length v5, v1

    if-ge v4, v5, :cond_b0

    .line 671
    aget v5, v1, v4

    float-to-double v5, v5

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 670
    add-int/lit8 v4, v4, 0x1

    goto :goto_a4

    .line 673
    :cond_b0
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_d2

    .line 674
    :cond_b4
    instance-of v3, v1, [S

    if-eqz v3, :cond_d2

    .line 675
    check-cast v1, [S

    check-cast v1, [S

    .line 676
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 677
    nop

    :goto_c2
    array-length v5, v1

    if-ge v4, v5, :cond_cd

    .line 678
    aget-short v5, v1, v4

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 677
    add-int/lit8 v4, v4, 0x1

    goto :goto_c2

    .line 680
    :cond_cd
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 682
    goto/16 :goto_147

    .line 674
    :cond_d2
    :goto_d2
    goto/16 :goto_147

    .line 687
    :cond_d4
    instance-of v3, v1, Ljava/util/List;

    if-eqz v3, :cond_117

    .line 688
    check-cast v1, Ljava/util/List;

    .line 689
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 690
    nop

    .line 691
    nop

    :goto_e1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_10d

    .line 692
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 693
    instance-of v6, v5, Ljava/lang/String;

    if-nez v6, :cond_103

    instance-of v6, v5, Ljava/lang/Long;

    if-nez v6, :cond_103

    instance-of v6, v5, Ljava/lang/Integer;

    if-nez v6, :cond_103

    instance-of v6, v5, Ljava/lang/Float;

    if-nez v6, :cond_103

    instance-of v6, v5, Ljava/lang/Double;

    if-nez v6, :cond_103

    instance-of v5, v5, Ljava/lang/Short;

    if-eqz v5, :cond_10a

    .line 700
    :cond_103
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 691
    :cond_10a
    add-int/lit8 v4, v4, 0x1

    goto :goto_e1

    .line 703
    :cond_10d
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_116

    .line 704
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 706
    :cond_116
    goto :goto_147

    :cond_117
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_129

    .line 707
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x100

    invoke-static {v1, v3}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 709
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_147

    .line 710
    :cond_129
    instance-of v3, v1, Ljava/lang/Long;

    if-nez v3, :cond_144

    instance-of v3, v1, Ljava/lang/Integer;

    if-nez v3, :cond_144

    instance-of v3, v1, Ljava/lang/Float;

    if-nez v3, :cond_144

    instance-of v3, v1, Ljava/lang/Double;

    if-nez v3, :cond_144

    instance-of v3, v1, Ljava/lang/Short;

    if-eqz v3, :cond_13e

    goto :goto_144

    .line 741
    :cond_13e
    const-string v1, "The param has not support type. please check !"

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    goto :goto_147

    .line 716
    :cond_144
    :goto_144
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_147
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_147} :catch_14b

    .line 745
    :cond_147
    :goto_147
    nop

    .line 746
    nop

    .line 747
    nop

    .line 748
    goto :goto_14f

    .line 750
    :catch_14b
    move-exception v1

    .line 751
    :try_start_14c
    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V
    :try_end_14f
    .catch Ljava/lang/Exception; {:try_start_14c .. :try_end_14f} :catch_152

    .line 752
    :cond_14f
    :goto_14f
    goto/16 :goto_11

    .line 758
    :cond_151
    goto :goto_153

    .line 754
    :catch_152
    move-exception p1

    .line 759
    :goto_153
    return-object v0
.end method

.method private a()V
    .registers 7

    .line 467
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/r;->g:Landroid/content/Context;

    const-string v1, "track_list"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 468
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_68

    .line 469
    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 470
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 472
    iget-object v2, p0, Lcom/umeng/analytics/pro/r;->h:Lorg/json/JSONObject;

    const/4 v3, 0x0

    if-eqz v2, :cond_40

    .line 474
    const/4 v2, 0x0

    :goto_21
    array-length v4, v0

    if-ge v2, v4, :cond_40

    .line 475
    aget-object v4, v0, v2

    const/16 v5, 0x80

    invoke-static {v4, v5}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 476
    iget-object v5, p0, Lcom/umeng/analytics/pro/r;->h:Lorg/json/JSONObject;

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 477
    iget-object v5, p0, Lcom/umeng/analytics/pro/r;->h:Lorg/json/JSONObject;

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 474
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 483
    :cond_40
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, p0, Lcom/umeng/analytics/pro/r;->h:Lorg/json/JSONObject;

    .line 484
    array-length v2, v0

    const/16 v4, 0xa

    if-lt v2, v4, :cond_57

    .line 485
    nop

    :goto_4d
    if-ge v3, v4, :cond_63

    .line 486
    aget-object v2, v0, v3

    invoke-direct {p0, v2, v1}, Lcom/umeng/analytics/pro/r;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 485
    add-int/lit8 v3, v3, 0x1

    goto :goto_4d

    .line 489
    :cond_57
    nop

    :goto_58
    array-length v2, v0

    if-ge v3, v2, :cond_63

    .line 490
    aget-object v2, v0, v3

    invoke-direct {p0, v2, v1}, Lcom/umeng/analytics/pro/r;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 489
    add-int/lit8 v3, v3, 0x1

    goto :goto_58

    .line 494
    :cond_63
    sget-object v0, Lcom/umeng/analytics/pro/r;->g:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/r;->c(Landroid/content/Context;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_68} :catch_69

    .line 502
    :cond_68
    goto :goto_6a

    .line 498
    :catch_69
    move-exception v0

    .line 503
    :goto_6a
    return-void
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 508
    const/16 v0, 0x80

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 509
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 510
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/umeng/analytics/pro/r;->a(Ljava/lang/String;Z)V

    goto :goto_1e

    .line 512
    :cond_1a
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/umeng/analytics/pro/r;->a(Ljava/lang/String;Z)V

    .line 514
    :goto_1e
    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .registers 4

    .line 518
    :try_start_0
    const-string v0, "$st_fl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "du"

    .line 519
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "id"

    .line 520
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "ts"

    .line 521
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 522
    iget-object v0, p0, Lcom/umeng/analytics/pro/r;->h:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 523
    iget-object v0, p0, Lcom/umeng/analytics/pro/r;->h:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2e

    .line 530
    :cond_2d
    goto :goto_2f

    .line 526
    :catch_2e
    move-exception p1

    .line 531
    :goto_2f
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 4

    .line 764
    if-eqz p1, :cond_15

    .line 765
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_13

    .line 767
    if-lez v0, :cond_15

    const/16 v1, 0x80

    if-gt v0, v1, :cond_15

    .line 768
    const/4 p1, 0x1

    return p1

    .line 773
    :catch_13
    move-exception v0

    goto :goto_16

    .line 777
    :cond_15
    nop

    .line 779
    :goto_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", please check key, illegal"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 780
    const/4 p1, 0x0

    return p1
.end method

.method private b(Landroid/content/Context;)V
    .registers 4

    .line 449
    :try_start_0
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 450
    const-string v0, "fs_lc_tl_uapp"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 451
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 452
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/analytics/pro/r;->h:Lorg/json/JSONObject;

    .line 457
    :cond_18
    invoke-direct {p0}, Lcom/umeng/analytics/pro/r;->a()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 459
    goto :goto_1d

    .line 458
    :catch_1c
    move-exception p1

    .line 460
    :goto_1d
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .registers 5

    .line 785
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 786
    return v0

    .line 787
    :cond_4
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_13

    const/16 v2, 0x100

    if-gt v1, v2, :cond_12

    .line 788
    return v0

    .line 795
    :cond_12
    goto :goto_14

    .line 791
    :catch_13
    move-exception v0

    .line 796
    :goto_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", please check value, illegal"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 797
    const/4 p1, 0x0

    return p1
.end method

.method private b(Ljava/util/Map;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 820
    const-string v0, "\\|"

    const/4 v1, 0x0

    if-eqz p1, :cond_9e

    :try_start_5
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    goto/16 :goto_9e

    .line 826
    :cond_d
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 827
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/umeng/analytics/pro/r;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_33

    .line 829
    sget-object p1, Lcom/umeng/analytics/pro/i;->h:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 830
    return v1

    .line 833
    :cond_33
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3f

    .line 835
    sget-object p1, Lcom/umeng/analytics/pro/i;->i:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 836
    return v1

    .line 839
    :cond_3f
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_9b

    .line 841
    const-string v3, "_$!link"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 842
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/umeng/analytics/pro/r;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9b

    .line 843
    const-string p1, "MobclickAgent.onDeepLinkReceived\u65b9\u6cd5link\u53c2\u6570\u957f\u5ea6\u8d85\u8fc7\u9650\u5236\u3002|\u53c2\u6570link\u957f\u5ea6\u4e0d\u80fd\u8d85\u8fc71024\u5b57\u7b26\u3002"

    invoke-static {p1, v1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 844
    return v1

    .line 847
    :cond_67
    const-string v3, "_$!url"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_87

    .line 848
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/umeng/analytics/pro/r;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9b

    .line 849
    const-string p1, "url\u53c2\u6570\u957f\u5ea6\u8d85\u8fc7\u9650\u5236\u3002|\u53c2\u6570url\u957f\u5ea6\u4e0d\u80fd\u8d85\u8fc71024\u5b57\u7b26\u3002"

    invoke-static {p1, v1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 850
    return v1

    .line 854
    :cond_87
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/umeng/analytics/pro/r;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9b

    .line 855
    sget-object p1, Lcom/umeng/analytics/pro/i;->j:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 856
    return v1

    .line 864
    :cond_9b
    goto/16 :goto_15

    .line 869
    :cond_9d
    goto :goto_a5

    .line 822
    :cond_9e
    :goto_9e
    sget-object p1, Lcom/umeng/analytics/pro/i;->g:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a3} :catch_a4

    .line 823
    return v1

    .line 865
    :catch_a4
    move-exception p1

    .line 870
    :goto_a5
    const/4 p1, 0x1

    return p1
.end method

.method private c(Landroid/content/Context;)V
    .registers 4

    .line 540
    :try_start_0
    iget-object p1, p0, Lcom/umeng/analytics/pro/r;->h:Lorg/json/JSONObject;

    if-eqz p1, :cond_1d

    .line 541
    sget-object p1, Lcom/umeng/analytics/pro/r;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 542
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "fs_lc_tl_uapp"

    iget-object v1, p0, Lcom/umeng/analytics/pro/r;->h:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1e

    .line 545
    :cond_1d
    goto :goto_1f

    .line 544
    :catchall_1e
    move-exception p1

    .line 546
    :goto_1f
    return-void
.end method

.method private c(Ljava/lang/String;)Z
    .registers 4

    .line 802
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 804
    return v0

    .line 805
    :cond_4
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length p1, p1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_13

    const/16 v1, 0x400

    if-gt p1, v1, :cond_12

    .line 807
    return v0

    .line 814
    :cond_12
    goto :goto_14

    .line 810
    :catch_13
    move-exception p1

    .line 815
    :goto_14
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V
    .registers 13

    .line 80
    :try_start_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/r;->a(Ljava/lang/String;)Z

    move-result p5
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_10b

    const-string v0, "\\|"

    const/4 v1, 0x0

    if-eqz p5, :cond_105

    :try_start_9
    invoke-direct {p0, p2}, Lcom/umeng/analytics/pro/r;->b(Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_11

    goto/16 :goto_105

    .line 84
    :cond_11
    sget-object p5, Lcom/umeng/analytics/pro/c;->aG:[Ljava/lang/String;

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p5

    invoke-interface {p5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_3f

    .line 85
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "key is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", please check key, illegal"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 86
    sget-object p1, Lcom/umeng/analytics/pro/i;->m:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 87
    return-void

    .line 89
    :cond_3f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 90
    new-instance p5, Lorg/json/JSONObject;

    invoke-direct {p5}, Lorg/json/JSONObject;-><init>()V

    .line 91
    const-string v0, "id"

    invoke-virtual {p5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    const-string v0, "ts"

    invoke-virtual {p5, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 93
    const-wide/16 v4, 0x0

    cmp-long v0, p3, v4

    if-lez v0, :cond_5d

    .line 94
    const-string v0, "du"

    invoke-virtual {p5, v0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 96
    :cond_5d
    const-string p3, "__t"

    const/16 p4, 0x801

    invoke-virtual {p5, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 97
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_6d

    .line 98
    invoke-virtual {p5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    :cond_6d
    nop

    .line 102
    sget-object p2, Lcom/umeng/analytics/pro/r;->g:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_85

    .line 105
    invoke-static {}, Lcom/umeng/analytics/pro/x;->a()Lcom/umeng/analytics/pro/x;

    move-result-object p2

    sget-object p3, Lcom/umeng/analytics/pro/r;->g:Landroid/content/Context;

    invoke-static {p3}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/umeng/analytics/pro/x;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    goto :goto_93

    .line 107
    :cond_85
    invoke-static {}, Lcom/umeng/analytics/pro/x;->a()Lcom/umeng/analytics/pro/x;

    move-result-object p2

    sget-object p3, Lcom/umeng/analytics/pro/r;->g:Landroid/content/Context;

    invoke-static {p3}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p2, p3, v2, v3}, Lcom/umeng/analytics/pro/x;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    .line 110
    :goto_93
    const-string p3, "__i"

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_9d

    const-string p2, "-1"

    :cond_9d
    invoke-virtual {p5, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_a4
    .catchall {:try_start_9 .. :try_end_a4} :catchall_10b

    if-nez p2, :cond_b8

    .line 115
    :try_start_a6
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result p3

    if-lez p3, :cond_b6

    .line 117
    const-string p3, "_$sp"

    invoke-virtual {p5, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b6
    .catch Lorg/json/JSONException; {:try_start_a6 .. :try_end_b6} :catch_b7
    .catchall {:try_start_a6 .. :try_end_b6} :catchall_10b

    .line 120
    :cond_b6
    goto :goto_b8

    .line 119
    :catch_b7
    move-exception p2

    .line 124
    :cond_b8
    :goto_b8
    :try_start_b8
    const-string p2, "ds"

    invoke-virtual {p5, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 125
    const-string p2, "pn"

    sget-object p3, Lcom/umeng/analytics/pro/r;->g:Landroid/content/Context;

    invoke-static {p3}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/service/UMGlobalContext;

    move-result-object p3

    sget-object p4, Lcom/umeng/analytics/pro/r;->g:Landroid/content/Context;

    invoke-virtual {p3, p4}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    invoke-direct {p0}, Lcom/umeng/analytics/pro/r;->a()V

    .line 131
    iget-object p2, p0, Lcom/umeng/analytics/pro/r;->h:Lorg/json/JSONObject;

    if-eqz p2, :cond_f9

    .line 132
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_f9

    .line 133
    iget-object p2, p0, Lcom/umeng/analytics/pro/r;->h:Lorg/json/JSONObject;

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 138
    if-nez p2, :cond_f9

    .line 139
    const-string p2, "$st_fl"

    const/4 p3, 0x1

    invoke-virtual {p5, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 140
    iget-object p2, p0, Lcom/umeng/analytics/pro/r;->h:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 141
    sget-object p1, Lcom/umeng/analytics/pro/r;->g:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/r;->c(Landroid/content/Context;)V

    .line 146
    :cond_f9
    sget-object p1, Lcom/umeng/analytics/pro/r;->g:Landroid/content/Context;

    const/16 p2, 0x1001

    .line 147
    invoke-static {p1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object p3

    .line 146
    invoke-static {p1, p2, p3, p5}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 149
    goto :goto_10c

    .line 81
    :cond_105
    :goto_105
    sget-object p1, Lcom/umeng/analytics/pro/i;->l:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_10a
    .catchall {:try_start_b8 .. :try_end_10a} :catchall_10b

    .line 82
    return-void

    .line 148
    :catchall_10b
    move-exception p1

    .line 150
    :goto_10c
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;JLjava/lang/String;Z)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;J",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 157
    const-string v0, "ts"

    :try_start_2
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/r;->a(Ljava/lang/String;)Z

    move-result v1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_2f3

    const-string v2, "\\|"

    const/4 v3, 0x0

    if-nez v1, :cond_11

    .line 158
    :try_start_b
    sget-object p1, Lcom/umeng/analytics/pro/i;->f:Ljava/lang/String;

    invoke-static {p1, v3, v2}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 159
    return-void

    .line 161
    :cond_11
    invoke-direct {p0, p2}, Lcom/umeng/analytics/pro/r;->b(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 163
    return-void

    .line 166
    :cond_18
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v4, 0x64

    if-le v1, v4, :cond_41

    .line 167
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "map size is "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", please check"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 168
    return-void

    .line 171
    :cond_41
    sget-object v1, Lcom/umeng/analytics/pro/c;->aG:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 172
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "key is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", please check key, illegal"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 173
    sget-object p1, Lcom/umeng/analytics/pro/i;->b:Ljava/lang/String;

    invoke-static {p1, v3, v2}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 174
    return-void

    .line 177
    :cond_6f
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 178
    const-string v4, "id"

    invoke-virtual {v1, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 180
    const-wide/16 v4, 0x0

    cmp-long v6, p3, v4

    if-lez v6, :cond_8b

    .line 181
    const-string v4, "du"

    invoke-virtual {v1, v4, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 183
    :cond_8b
    const-string p3, "__t"

    const/16 p4, 0x801

    invoke-virtual {v1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 185
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "befort ekv map, event is "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;)V

    .line 187
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 188
    nop

    .line 189
    nop

    .line 190
    nop

    .line 191
    :goto_b7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_22f

    .line 192
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 193
    sget-object p4, Lcom/umeng/analytics/pro/c;->aG:[Ljava/lang/String;

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p4, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_229

    .line 194
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    .line 195
    instance-of v4, p4, Ljava/lang/String;

    if-nez v4, :cond_21e

    instance-of v4, p4, Ljava/lang/Integer;

    if-nez v4, :cond_21e

    instance-of v4, p4, Ljava/lang/Long;

    if-nez v4, :cond_21e

    instance-of v4, p4, Ljava/lang/Short;

    if-nez v4, :cond_21e

    instance-of v4, p4, Ljava/lang/Float;

    if-nez v4, :cond_21e

    instance-of v4, p4, Ljava/lang/Double;

    if-eqz v4, :cond_f1

    goto/16 :goto_21e

    .line 202
    :cond_f1
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4
    :try_end_f9
    .catchall {:try_start_b .. :try_end_f9} :catchall_2f3

    const-string v5, "please check key or value, illegal type!"

    if-eqz v4, :cond_21a

    .line 203
    :try_start_fd
    instance-of v4, p4, [I
    :try_end_ff
    .catchall {:try_start_fd .. :try_end_ff} :catchall_2f3

    const-string v6, "please check key or value, size overlength!"

    const/16 v7, 0xa

    if-eqz v4, :cond_12b

    .line 204
    :try_start_105
    check-cast p4, [I

    check-cast p4, [I

    .line 205
    array-length v4, p4

    if-le v4, v7, :cond_110

    .line 206
    invoke-static {v6}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 207
    return-void

    .line 209
    :cond_110
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 210
    const/4 v5, 0x0

    :goto_116
    array-length v6, p4

    if-ge v5, v6, :cond_121

    .line 211
    aget v6, p4, v5

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 210
    add-int/lit8 v5, v5, 0x1

    goto :goto_116

    .line 213
    :cond_121
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v1, p3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    goto :goto_b7

    :cond_12b
    instance-of v4, p4, [D

    if-eqz v4, :cond_156

    .line 215
    check-cast p4, [D

    check-cast p4, [D

    .line 216
    array-length v4, p4

    if-le v4, v7, :cond_13a

    .line 217
    invoke-static {v6}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 218
    return-void

    .line 220
    :cond_13a
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 221
    const/4 v5, 0x0

    :goto_140
    array-length v6, p4

    if-ge v5, v6, :cond_14b

    .line 222
    aget-wide v6, p4, v5

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 221
    add-int/lit8 v5, v5, 0x1

    goto :goto_140

    .line 224
    :cond_14b
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v1, p3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    goto/16 :goto_b7

    :cond_156
    instance-of v4, p4, [J

    if-eqz v4, :cond_181

    .line 226
    check-cast p4, [J

    check-cast p4, [J

    .line 227
    array-length v4, p4

    if-le v4, v7, :cond_165

    .line 228
    invoke-static {v6}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 229
    return-void

    .line 231
    :cond_165
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 232
    const/4 v5, 0x0

    :goto_16b
    array-length v6, p4

    if-ge v5, v6, :cond_176

    .line 233
    aget-wide v6, p4, v5

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 232
    add-int/lit8 v5, v5, 0x1

    goto :goto_16b

    .line 235
    :cond_176
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v1, p3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 236
    goto/16 :goto_b7

    :cond_181
    instance-of v4, p4, [F

    if-eqz v4, :cond_1ad

    .line 237
    check-cast p4, [F

    check-cast p4, [F

    .line 238
    array-length v4, p4

    if-le v4, v7, :cond_190

    .line 239
    invoke-static {v6}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 240
    return-void

    .line 242
    :cond_190
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 243
    const/4 v5, 0x0

    :goto_196
    array-length v6, p4

    if-ge v5, v6, :cond_1a2

    .line 244
    aget v6, p4, v5

    float-to-double v6, v6

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 243
    add-int/lit8 v5, v5, 0x1

    goto :goto_196

    .line 246
    :cond_1a2
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v1, p3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    goto/16 :goto_b7

    :cond_1ad
    instance-of v4, p4, [S

    if-eqz v4, :cond_1d8

    .line 248
    check-cast p4, [S

    check-cast p4, [S

    .line 249
    array-length v4, p4

    if-le v4, v7, :cond_1bc

    .line 250
    invoke-static {v6}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 251
    return-void

    .line 253
    :cond_1bc
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 254
    const/4 v5, 0x0

    :goto_1c2
    array-length v6, p4

    if-ge v5, v6, :cond_1cd

    .line 255
    aget-short v6, p4, v5

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 254
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c2

    .line 257
    :cond_1cd
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v1, p3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 258
    goto/16 :goto_b7

    :cond_1d8
    instance-of v4, p4, [Ljava/lang/String;

    if-eqz v4, :cond_216

    .line 259
    check-cast p4, [Ljava/lang/String;

    check-cast p4, [Ljava/lang/String;

    .line 260
    array-length v4, p4

    if-le v4, v7, :cond_1e7

    .line 261
    invoke-static {v6}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 262
    return-void

    .line 264
    :cond_1e7
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 265
    const/4 v5, 0x0

    :goto_1ed
    array-length v6, p4

    if-ge v5, v6, :cond_20b

    .line 266
    aget-object v6, p4, v5

    if-nez v6, :cond_1fa

    .line 267
    const-string p1, "please check array, null item!"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 268
    return-void

    .line 270
    :cond_1fa
    aget-object v6, p4, v5

    invoke-direct {p0, v6}, Lcom/umeng/analytics/pro/r;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_203

    .line 271
    return-void

    .line 273
    :cond_203
    aget-object v6, p4, v5

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 265
    add-int/lit8 v5, v5, 0x1

    goto :goto_1ed

    .line 275
    :cond_20b
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v1, p3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 276
    goto/16 :goto_b7

    .line 277
    :cond_216
    invoke-static {v5}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 278
    return-void

    .line 281
    :cond_21a
    invoke-static {v5}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 282
    return-void

    .line 201
    :cond_21e
    :goto_21e
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_b7

    .line 286
    :cond_229
    sget-object p1, Lcom/umeng/analytics/pro/i;->e:Ljava/lang/String;

    invoke-static {p1, v3, v2}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 287
    return-void

    .line 292
    :cond_22f
    nop

    .line 293
    sget-object p2, Lcom/umeng/analytics/pro/r;->g:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_247

    .line 296
    invoke-static {}, Lcom/umeng/analytics/pro/x;->a()Lcom/umeng/analytics/pro/x;

    move-result-object p2

    sget-object p3, Lcom/umeng/analytics/pro/r;->g:Landroid/content/Context;

    invoke-static {p3}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/umeng/analytics/pro/x;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    goto :goto_259

    .line 298
    :cond_247
    invoke-static {}, Lcom/umeng/analytics/pro/x;->a()Lcom/umeng/analytics/pro/x;

    move-result-object p2

    sget-object p3, Lcom/umeng/analytics/pro/r;->g:Landroid/content/Context;

    invoke-static {p3}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p3

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p2, p3, v4, v5}, Lcom/umeng/analytics/pro/x;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    .line 301
    :goto_259
    const-string p3, "__i"

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_263

    const-string p2, "-1"

    :cond_263
    invoke-virtual {v1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 304
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_26a
    .catchall {:try_start_105 .. :try_end_26a} :catchall_2f3

    if-nez p2, :cond_27e

    .line 306
    :try_start_26c
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result p3

    if-lez p3, :cond_27c

    .line 308
    const-string p3, "_$sp"

    invoke-virtual {v1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_27c
    .catch Lorg/json/JSONException; {:try_start_26c .. :try_end_27c} :catch_27d
    .catchall {:try_start_26c .. :try_end_27c} :catchall_2f3

    .line 311
    :cond_27c
    goto :goto_27e

    .line 310
    :catch_27d
    move-exception p2

    .line 315
    :cond_27e
    :goto_27e
    :try_start_27e
    const-string p2, "ds"

    invoke-virtual {v1, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 316
    const-string p2, "pn"

    sget-object p3, Lcom/umeng/analytics/pro/r;->g:Landroid/content/Context;

    invoke-static {p3}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/service/UMGlobalContext;

    move-result-object p3

    sget-object p4, Lcom/umeng/analytics/pro/r;->g:Landroid/content/Context;

    invoke-virtual {p3, p4}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 319
    invoke-direct {p0}, Lcom/umeng/analytics/pro/r;->a()V

    .line 322
    iget-object p2, p0, Lcom/umeng/analytics/pro/r;->h:Lorg/json/JSONObject;

    if-eqz p2, :cond_2bf

    .line 323
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2bf

    .line 324
    iget-object p2, p0, Lcom/umeng/analytics/pro/r;->h:Lorg/json/JSONObject;

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 329
    if-nez p2, :cond_2bf

    .line 330
    const-string p2, "$st_fl"

    const/4 p3, 0x1

    invoke-virtual {v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 331
    iget-object p2, p0, Lcom/umeng/analytics/pro/r;->h:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 332
    sget-object p1, Lcom/umeng/analytics/pro/r;->g:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/r;->c(Landroid/content/Context;)V

    .line 337
    :cond_2bf
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "----->>>>>ekv event json is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;)V

    .line 339
    if-nez p6, :cond_2e7

    .line 340
    sget-object p1, Lcom/umeng/analytics/pro/r;->g:Landroid/content/Context;

    const/16 p2, 0x1001

    .line 341
    invoke-static {p1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object p3

    .line 340
    invoke-static {p1, p2, p3, v1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    goto :goto_2f2

    .line 343
    :cond_2e7
    sget-object p1, Lcom/umeng/analytics/pro/r;->g:Landroid/content/Context;

    const/16 p2, 0x1103

    .line 344
    invoke-static {p1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object p3

    .line 343
    invoke-static {p1, p2, p3, v1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_2f2
    .catchall {:try_start_27e .. :try_end_2f2} :catchall_2f3

    .line 347
    :goto_2f2
    goto :goto_2f4

    .line 346
    :catchall_2f3
    move-exception p1

    .line 348
    :goto_2f4
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 352
    const-string v0, "du"

    const-string v1, "ts"

    const-string v2, "id"

    :try_start_6
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/r;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 353
    return-void

    .line 355
    :cond_d
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 356
    invoke-virtual {v3, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 357
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 358
    const/4 p1, 0x0

    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 359
    const-string v4, "__t"

    const/16 v5, 0x802

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 361
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "befort gkv map, event is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;)V

    .line 363
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 364
    nop

    .line 365
    nop

    .line 366
    const/4 v4, 0x0

    .line 367
    :goto_4c
    const/16 v5, 0xa

    if-ge v4, v5, :cond_a2

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a2

    .line 368
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 369
    const-string v6, "$st_fl"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9f

    .line 370
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9f

    .line 371
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9f

    .line 372
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9f

    .line 373
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 374
    instance-of v7, v6, Ljava/lang/String;

    if-nez v7, :cond_96

    instance-of v7, v6, Ljava/lang/Integer;

    if-nez v7, :cond_96

    instance-of v7, v6, Ljava/lang/Long;

    if-eqz v7, :cond_9f

    .line 375
    :cond_96
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 378
    :cond_9f
    add-int/lit8 v4, v4, 0x1

    goto :goto_4c

    .line 383
    :cond_a2
    invoke-static {}, Lcom/umeng/analytics/pro/x;->a()Lcom/umeng/analytics/pro/x;

    move-result-object p2

    sget-object v0, Lcom/umeng/analytics/pro/r;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/umeng/analytics/pro/x;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 385
    const-string v0, "__i"

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_ba

    const-string p2, "-1"

    :cond_ba
    invoke-virtual {v3, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 388
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_c1
    .catchall {:try_start_6 .. :try_end_c1} :catchall_111

    if-nez p2, :cond_d5

    .line 390
    :try_start_c3
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result p3

    if-lez p3, :cond_d3

    .line 392
    const-string p3, "_$sp"

    invoke-virtual {v3, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d3
    .catch Lorg/json/JSONException; {:try_start_c3 .. :try_end_d3} :catch_d4
    .catchall {:try_start_c3 .. :try_end_d3} :catchall_111

    .line 395
    :cond_d3
    goto :goto_d5

    .line 394
    :catch_d4
    move-exception p2

    .line 399
    :cond_d5
    :goto_d5
    :try_start_d5
    const-string p2, "ds"

    invoke-virtual {v3, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 400
    const-string p1, "pn"

    sget-object p2, Lcom/umeng/analytics/pro/r;->g:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/service/UMGlobalContext;

    move-result-object p2

    sget-object p3, Lcom/umeng/analytics/pro/r;->g:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 424
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "----->>>>>gkv event json is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;)V

    .line 426
    sget-object p1, Lcom/umeng/analytics/pro/r;->g:Landroid/content/Context;

    const/16 p2, 0x1002

    .line 427
    invoke-static {p1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object p3

    .line 426
    invoke-static {p1, p2, p3, v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_110
    .catchall {:try_start_d5 .. :try_end_110} :catchall_111

    .line 433
    goto :goto_112

    .line 429
    :catchall_111
    move-exception p1

    .line 434
    :goto_112
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 559
    const/4 v0, 0x0

    if-eqz p1, :cond_8a

    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_b

    goto/16 :goto_8a

    .line 563
    :cond_b
    invoke-direct {p0}, Lcom/umeng/analytics/pro/r;->a()V

    .line 564
    nop

    .line 565
    iget-object v1, p0, Lcom/umeng/analytics/pro/r;->h:Lorg/json/JSONObject;

    const/16 v2, 0x80

    const/4 v3, 0x5

    if-nez v1, :cond_53

    .line 566
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/umeng/analytics/pro/r;->h:Lorg/json/JSONObject;

    .line 567
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 568
    const/4 v4, 0x0

    :goto_22
    if-ge v4, v1, :cond_4d

    .line 570
    iget-object v5, p0, Lcom/umeng/analytics/pro/r;->h:Lorg/json/JSONObject;

    if-nez v5, :cond_30

    .line 571
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    iput-object v5, p0, Lcom/umeng/analytics/pro/r;->h:Lorg/json/JSONObject;

    goto :goto_37

    .line 573
    :cond_30
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-lt v5, v3, :cond_37

    .line 574
    goto :goto_4d

    .line 578
    :cond_37
    :goto_37
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 579
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4a

    .line 580
    invoke-static {v5, v2}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 581
    invoke-direct {p0, v5, v0}, Lcom/umeng/analytics/pro/r;->a(Ljava/lang/String;Z)V

    .line 568
    :cond_4a
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 584
    :cond_4d
    :goto_4d
    sget-object p1, Lcom/umeng/analytics/pro/r;->g:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/r;->c(Landroid/content/Context;)V

    .line 585
    goto :goto_89

    .line 586
    :cond_53
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lt v1, v3, :cond_5f

    .line 587
    const-string p1, "already setFistLaunchEvent, igone."

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    .line 588
    return-void

    .line 590
    :cond_5f
    const/4 v1, 0x0

    :goto_60
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_84

    .line 591
    iget-object v4, p0, Lcom/umeng/analytics/pro/r;->h:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-lt v4, v3, :cond_74

    .line 592
    const-string p1, " add setFistLaunchEvent over."

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    .line 593
    return-void

    .line 595
    :cond_74
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 596
    invoke-direct {p0, v4, v0}, Lcom/umeng/analytics/pro/r;->a(Ljava/lang/String;Z)V

    .line 590
    add-int/lit8 v1, v1, 0x1

    goto :goto_60

    .line 599
    :cond_84
    sget-object p1, Lcom/umeng/analytics/pro/r;->g:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/r;->c(Landroid/content/Context;)V

    .line 609
    :goto_89
    goto :goto_93

    .line 560
    :cond_8a
    :goto_8a
    sget-object p1, Lcom/umeng/analytics/pro/i;->ak:Ljava/lang/String;

    const-string v1, "\\|"

    invoke-static {p1, v0, v1}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_91} :catch_92

    .line 561
    return-void

    .line 605
    :catch_92
    move-exception p1

    .line 610
    :goto_93
    return-void
.end method
