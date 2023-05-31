.class public final Lcom/mintegral/msdk/base/entity/CampaignEx$a;
.super Ljava/lang/Object;
.source "CampaignEx.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/base/entity/CampaignEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2442
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx$a;->a:Ljava/lang/String;

    .line 2443
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx$a;->b:Ljava/lang/String;

    .line 2444
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx$a;->c:Ljava/lang/String;

    .line 2445
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx$a;->d:Ljava/lang/String;

    .line 2446
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx$a;->e:Ljava/lang/String;

    .line 2447
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx$a;->f:Ljava/lang/String;

    .line 2448
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx$a;->g:Ljava/lang/String;

    .line 2449
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx$a;->h:Ljava/lang/String;

    .line 2467
    iput v1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx$a;->i:I

    .line 2468
    iput v1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx$a;->j:I

    .line 2470
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx$a;->k:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/mintegral/msdk/base/entity/CampaignEx$a;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 2546
    :try_start_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2559
    :cond_7
    :goto_7
    return-object v0

    .line 2549
    :cond_8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx$a;->a(Lorg/json/JSONObject;)Lcom/mintegral/msdk/base/entity/CampaignEx$a;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_12
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_10} :catch_1b

    move-result-object v0

    goto :goto_7

    .line 2550
    :catch_12
    move-exception v1

    .line 2551
    sget-boolean v2, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v2, :cond_7

    .line 2552
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 2554
    :catch_1b
    move-exception v1

    .line 2555
    sget-boolean v2, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v2, :cond_7

    .line 2556
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7
.end method

.method private static a(Lorg/json/JSONObject;)Lcom/mintegral/msdk/base/entity/CampaignEx$a;
    .registers 5

    .prologue
    .line 2563
    const/4 v1, 0x0

    .line 2566
    :try_start_1
    new-instance v0, Lcom/mintegral/msdk/base/entity/CampaignEx$a;

    invoke-direct {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx$a;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_59
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6} :catch_65

    .line 2567
    :try_start_6
    const-string v1, "adchoice_icon"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3501
    iput-object v1, v0, Lcom/mintegral/msdk/base/entity/CampaignEx$a;->c:Ljava/lang/String;

    .line 2568
    const-string v1, "adchoice_link"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4493
    iput-object v1, v0, Lcom/mintegral/msdk/base/entity/CampaignEx$a;->b:Ljava/lang/String;

    .line 2569
    const-string v1, "adchoice_size"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4509
    iput-object v1, v0, Lcom/mintegral/msdk/base/entity/CampaignEx$a;->d:Ljava/lang/String;

    .line 2571
    const-string v2, "ad_logo_link"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5485
    iput-object v2, v0, Lcom/mintegral/msdk/base/entity/CampaignEx$a;->a:Ljava/lang/String;

    .line 2572
    const-string v2, "adv_logo"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5541
    iput-object v2, v0, Lcom/mintegral/msdk/base/entity/CampaignEx$a;->h:Ljava/lang/String;

    .line 2573
    const-string v2, "adv_name"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6533
    iput-object v2, v0, Lcom/mintegral/msdk/base/entity/CampaignEx$a;->g:Ljava/lang/String;

    .line 2574
    const-string v2, "platform_logo"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7525
    iput-object v2, v0, Lcom/mintegral/msdk/base/entity/CampaignEx$a;->f:Ljava/lang/String;

    .line 2575
    const-string v2, "platform_name"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8517
    iput-object v2, v0, Lcom/mintegral/msdk/base/entity/CampaignEx$a;->e:Ljava/lang/String;

    .line 2576
    invoke-static {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx$a;->b(Ljava/lang/String;)I

    move-result v2

    .line 9464
    iput v2, v0, Lcom/mintegral/msdk/base/entity/CampaignEx$a;->j:I

    .line 2578
    invoke-static {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx$a;->c(Ljava/lang/String;)I

    move-result v1

    .line 10456
    iput v1, v0, Lcom/mintegral/msdk/base/entity/CampaignEx$a;->i:I

    .line 2580
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10473
    iput-object v1, v0, Lcom/mintegral/msdk/base/entity/CampaignEx$a;->k:Ljava/lang/String;
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_58} :catch_73
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_58} :catch_71

    .line 2591
    :cond_58
    :goto_58
    return-object v0

    .line 2582
    :catch_59
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 2583
    :goto_5d
    sget-boolean v2, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v2, :cond_58

    .line 2584
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_58

    .line 2586
    :catch_65
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 2587
    :goto_69
    sget-boolean v2, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v2, :cond_58

    .line 2588
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_58

    .line 2586
    :catch_71
    move-exception v1

    goto :goto_69

    .line 2582
    :catch_73
    move-exception v1

    goto :goto_5d
.end method

.method private static b(Ljava/lang/String;)I
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 2600
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2616
    :cond_8
    :goto_8
    return v0

    .line 2604
    :cond_9
    :try_start_9
    const-string v1, "x"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2605
    const-string v1, "x"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2606
    if-eqz v1, :cond_8

    array-length v2, v1

    if-le v2, v3, :cond_8

    .line 2607
    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_22} :catch_26
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_22} :catch_24

    move-result v0

    goto :goto_8

    .line 2613
    :catch_24
    move-exception v1

    goto :goto_8

    .line 2611
    :catch_26
    move-exception v1

    goto :goto_8
.end method

.method private static c(Ljava/lang/String;)I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 2620
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2636
    :cond_7
    :goto_7
    return v0

    .line 2624
    :cond_8
    :try_start_8
    const-string v1, "x"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2625
    const-string v1, "x"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2626
    if-eqz v1, :cond_7

    array-length v2, v1

    if-lez v2, :cond_7

    .line 2627
    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_21} :catch_25
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_21} :catch_23

    move-result v0

    goto :goto_7

    .line 2633
    :catch_23
    move-exception v1

    goto :goto_7

    .line 2631
    :catch_25
    move-exception v1

    goto :goto_7
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 2452
    iget v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx$a;->i:I

    return v0
.end method

.method public final b()I
    .registers 2

    .prologue
    .line 2460
    iget v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx$a;->j:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2477
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx$a;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2489
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2497
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2505
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx$a;->d:Ljava/lang/String;

    return-object v0
.end method
