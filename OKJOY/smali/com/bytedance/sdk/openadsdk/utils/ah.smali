.class public Lcom/bytedance/sdk/openadsdk/utils/ah;
.super Ljava/lang/Object;
.source "ToolUtils.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 433
    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/ah;->a:Ljava/lang/String;

    .line 434
    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/ah;->b:Ljava/lang/String;

    .line 435
    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/ah;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;Z)I
    .registers 4

    .prologue
    .line 820
    const/4 v0, 0x3

    .line 821
    if-eqz p0, :cond_16

    invoke-interface {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->t()Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 822
    invoke-interface {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->t()Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->g()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 823
    if-eqz p1, :cond_17

    const/4 v0, 0x0

    .line 826
    :cond_16
    :goto_16
    return v0

    .line 823
    :cond_17
    const/4 v0, 0x1

    goto :goto_16
.end method

.method public static a(Ljava/lang/String;)I
    .registers 8

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 215
    const/4 v5, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_6e

    :cond_d
    :goto_d
    packed-switch v5, :pswitch_data_90

    .line 232
    :goto_10
    :pswitch_10
    return v0

    .line 215
    :sswitch_11
    const-string v6, "embeded_ad"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v5, 0x0

    goto :goto_d

    :sswitch_1b
    const-string v6, "draw_ad"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    move v5, v0

    goto :goto_d

    :sswitch_25
    const-string v6, "banner_ad"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    move v5, v1

    goto :goto_d

    :sswitch_2f
    const-string v6, "interaction"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    move v5, v2

    goto :goto_d

    :sswitch_39
    const-string v6, "splash_ad"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    move v5, v3

    goto :goto_d

    :sswitch_43
    const-string v6, "cache_splash_ad"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    move v5, v4

    goto :goto_d

    :sswitch_4d
    const-string v6, "fullscreen_interstitial_ad"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v5, 0x6

    goto :goto_d

    :sswitch_57
    const-string v6, "rewarded_video"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v5, 0x7

    goto :goto_d

    .line 219
    :pswitch_61
    const/4 v0, 0x6

    goto :goto_10

    :pswitch_63
    move v0, v1

    .line 221
    goto :goto_10

    :pswitch_65
    move v0, v2

    .line 223
    goto :goto_10

    :pswitch_67
    move v0, v3

    .line 226
    goto :goto_10

    :pswitch_69
    move v0, v4

    .line 228
    goto :goto_10

    .line 230
    :pswitch_6b
    const/4 v0, 0x7

    goto :goto_10

    .line 215
    nop

    :sswitch_data_6e
    .sparse-switch
        -0x65146dea -> :sswitch_25
        -0x514cfef6 -> :sswitch_57
        -0x2d935a6e -> :sswitch_4d
        -0x2a77c376 -> :sswitch_11
        0xa6dd8fb -> :sswitch_39
        0x21a3887e -> :sswitch_43
        0x6deace12 -> :sswitch_2f
        0x72060cfe -> :sswitch_1b
    .end sparse-switch

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_10
        :pswitch_61
        :pswitch_63
        :pswitch_65
        :pswitch_67
        :pswitch_67
        :pswitch_69
        :pswitch_6b
    .end packed-switch
.end method

.method public static a()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 387
    :try_start_1
    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_11

    move-result-object v0

    .line 391
    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 392
    if-nez v0, :cond_15

    .line 393
    const-string v0, ""

    .line 411
    :goto_10
    return-object v0

    .line 388
    :catch_11
    move-exception v0

    .line 389
    const-string v0, "unKnow"

    goto :goto_7

    .line 396
    :cond_15
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 397
    const/4 v4, -0x1

    if-eq v1, v4, :cond_6b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v1, :cond_6b

    .line 398
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 399
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "-"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ";"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 401
    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 403
    :cond_6b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    move v1, v2

    :goto_70
    if-ge v1, v4, :cond_97

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 405
    const/16 v6, 0x1f

    if-le v5, v6, :cond_7e

    const/16 v6, 0x7f

    if-lt v5, v6, :cond_93

    .line 406
    :cond_7e
    const-string v6, "\\u%04x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    :goto_90
    add-int/lit8 v1, v1, 0x1

    goto :goto_70

    .line 408
    :cond_93
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_90

    .line 411
    :cond_97
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10
.end method

.method public static a(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 189
    packed-switch p0, :pswitch_data_1a

    .line 205
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 191
    :pswitch_5
    const-string v0, "embeded_ad_landingpage"

    goto :goto_4

    .line 193
    :pswitch_8
    const-string v0, "draw_ad_landingpage"

    goto :goto_4

    .line 195
    :pswitch_b
    const-string v0, "banner_ad_landingpage"

    goto :goto_4

    .line 197
    :pswitch_e
    const-string v0, "interaction_landingpage"

    goto :goto_4

    .line 199
    :pswitch_11
    const-string v0, "splash_ad_landingpage"

    goto :goto_4

    .line 201
    :pswitch_14
    const-string v0, "fullscreen_interstitial_ad_landingpage"

    goto :goto_4

    .line 203
    :pswitch_17
    const-string v0, "rewarded_video_landingpage"

    goto :goto_4

    .line 189
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_5
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_8
        :pswitch_17
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 516
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/d;

    move-result-object v0

    const-string v1, "total_memory"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 517
    if-nez v0, :cond_1c

    .line 518
    const-string v0, "MemTotal"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 519
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/d;

    move-result-object v1

    const-string v2, "total_memory"

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    :cond_1c
    return-object v0
.end method

.method public static a(JLcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/core/video/c/d;)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/bytedance/sdk/openadsdk/core/d/k;",
            "Lcom/bytedance/sdk/openadsdk/core/video/c/d;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 647
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 648
    const-string v1, "video_start_duration"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    if-eqz p2, :cond_3f

    .line 650
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->M()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 651
    const-string v1, "creative_id"

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->M()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    :cond_23
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v1

    .line 654
    if-eqz v1, :cond_3f

    .line 655
    const-string v2, "video_resolution"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/r;->e()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    const-string v2, "video_size"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/r;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    :cond_3f
    invoke-static {v0, p3}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/video/c/d;)V

    .line 662
    return-object v0
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/d/k;IILcom/bytedance/sdk/openadsdk/core/video/c/d;)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/d/k;",
            "II",
            "Lcom/bytedance/sdk/openadsdk/core/video/c/d;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 705
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 706
    const-string v1, "creative_id"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->M()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    const-string v1, "error_code"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    const-string v1, "extra_error_code"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v1

    .line 710
    if-eqz v1, :cond_3c

    .line 711
    const-string v2, "video_size"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/r;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    const-string v2, "video_resolution"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/r;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    :cond_3c
    invoke-static {v0, p3}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/video/c/d;)V

    .line 717
    return-object v0
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/d/k;JLcom/bytedance/sdk/openadsdk/core/video/c/d;)Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/d/k;",
            "J",
            "Lcom/bytedance/sdk/openadsdk/core/video/c/d;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 721
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 722
    const-string v1, "creative_id"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->M()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    const-string v1, "buffers_time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v1

    .line 725
    if-eqz v1, :cond_33

    .line 726
    const-string v2, "video_size"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/r;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    const-string v2, "video_resolution"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/r;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    :cond_33
    invoke-static {v0, p3}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/video/c/d;)V

    .line 732
    return-object v0
.end method

.method public static a(ZLcom/bytedance/sdk/openadsdk/core/d/k;JJLjava/lang/String;)Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/bytedance/sdk/openadsdk/core/d/k;",
            "JJ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 675
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 676
    const-string v1, "creative_id"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->M()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    const-string v1, "load_time"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v1

    .line 679
    if-eqz v1, :cond_33

    .line 680
    const-string v2, "video_size"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/r;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    const-string v2, "video_resolution"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/r;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    :cond_33
    if-nez p0, :cond_4b

    .line 686
    const-string v1, "error_code"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    const-string v1, "error_message"

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_48

    const-string p6, "unknown"

    :cond_48
    invoke-interface {v0, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    :cond_4b
    return-object v0
.end method

.method public static a(Ljava/util/Map;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 879
    const/4 v0, 0x0

    .line 880
    if-eqz p0, :cond_32

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_32

    .line 882
    :try_start_9
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_35

    .line 883
    :try_start_e
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 884
    check-cast v0, Ljava/util/Map$Entry;

    .line 885
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2f} :catch_30

    goto :goto_16

    .line 887
    :catch_30
    move-exception v0

    move-object v0, v2

    .line 890
    :cond_32
    :goto_32
    return-object v0

    :cond_33
    move-object v0, v2

    .line 888
    goto :goto_32

    .line 887
    :catch_35
    move-exception v1

    goto :goto_32
.end method

.method public static a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 6

    .prologue
    .line 833
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 834
    if-nez p0, :cond_8

    .line 857
    :goto_7
    return-object v0

    .line 838
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/a;->a()Ljava/lang/String;

    move-result-object v1

    .line 839
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 840
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/bytedance/sdk/openadsdk/core/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 841
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 842
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_53

    .line 843
    const-string v2, "message"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 844
    const-string v1, "cypher"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_3f} :catch_40

    goto :goto_7

    .line 849
    :catch_40
    move-exception v1

    .line 851
    :try_start_41
    const-string v1, "message"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 852
    const-string v1, "cypher"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_50} :catch_51

    goto :goto_7

    .line 853
    :catch_51
    move-exception v1

    goto :goto_7

    .line 846
    :cond_53
    :try_start_53
    const-string v1, "message"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 847
    const-string v1, "cypher"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_62} :catch_40

    goto :goto_7
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/d/k;Landroid/view/View;)V
    .registers 5
    .param p0    # Lcom/bytedance/sdk/openadsdk/core/d/k;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 370
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/utils/ah$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ah$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/k;Landroid/view/View;)V

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/i/a;->c(Ljava/lang/Runnable;I)V

    .line 382
    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 948
    if-eqz p0, :cond_47

    .line 949
    :try_start_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->E()Ljava/lang/String;

    move-result-object v1

    .line 950
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->O()Lcom/bytedance/sdk/openadsdk/core/d/f;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 951
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->O()Lcom/bytedance/sdk/openadsdk/core/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/f;->c()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_33

    .line 952
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->O()Lcom/bytedance/sdk/openadsdk/core/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 953
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->O()Lcom/bytedance/sdk/openadsdk/core/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/f;->b()Ljava/lang/String;

    move-result-object v1

    .line 955
    :cond_33
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 956
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    .line 957
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x0

    move-object v2, p0

    move-object v4, p1

    .line 956
    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/z;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/k;ILjava/lang/String;Z)Z
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_47} :catch_48

    .line 962
    :cond_47
    :goto_47
    return-void

    .line 960
    :catch_48
    move-exception v0

    goto :goto_47
.end method

.method private static a(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/video/c/d;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/video/c/d;",
            ")V"
        }
    .end annotation

    .prologue
    .line 736
    const-string v0, "video_resolution"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 739
    if-eqz p1, :cond_40

    :try_start_a
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a()Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 740
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    .line 741
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a()Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    .line 742
    const-string v2, "video_resolution"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "%d\u00d7%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_40} :catch_41

    .line 747
    :cond_40
    :goto_40
    return-void

    .line 744
    :catch_41
    move-exception v0

    goto :goto_40
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 107
    if-nez p1, :cond_4

    .line 113
    :cond_3
    :goto_3
    return v0

    .line 110
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 111
    const/high16 v2, 0x10000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 113
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 57
    if-eqz p0, :cond_a

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 72
    :cond_a
    :goto_a
    return v0

    .line 61
    :cond_b
    :try_start_b
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 62
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 63
    if-eqz v2, :cond_a

    .line 66
    const-string v3, "START_ONLY_FOR_ANDROID"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 67
    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/b;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/openadsdk/utils/b$a;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_21} :catch_23

    move v0, v1

    .line 68
    goto :goto_a

    .line 70
    :catch_23
    move-exception v1

    goto :goto_a
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/d/k;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 270
    .line 271
    if-eqz p0, :cond_10

    .line 272
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->c(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_10

    const/4 v0, 0x1

    .line 274
    :cond_10
    return v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 77
    if-nez v1, :cond_c

    .line 89
    :goto_b
    return-object v0

    .line 81
    :cond_c
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 82
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    :cond_19
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const/high16 v0, 0x200000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 88
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object v0, v1

    .line 89
    goto :goto_b
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    .prologue
    .line 415
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 237
    packed-switch p0, :pswitch_data_18

    .line 253
    :pswitch_3
    const-string v0, "embeded_ad"

    :goto_5
    return-object v0

    .line 239
    :pswitch_6
    const-string v0, "banner_ad"

    goto :goto_5

    .line 241
    :pswitch_9
    const-string v0, "interaction"

    goto :goto_5

    .line 244
    :pswitch_c
    const-string v0, "splash_ad"

    goto :goto_5

    .line 246
    :pswitch_f
    const-string v0, "rewarded_video"

    goto :goto_5

    .line 248
    :pswitch_12
    const-string v0, "fullscreen_interstitial_ad"

    goto :goto_5

    .line 250
    :pswitch_15
    const-string v0, "draw_ad"

    goto :goto_5

    .line 237
    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_c
        :pswitch_3
        :pswitch_3
        :pswitch_f
        :pswitch_12
        :pswitch_15
    .end packed-switch
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 804
    const-string v0, ""

    .line 807
    :try_start_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1e

    .line 808
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    .line 812
    :goto_19
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 816
    :goto_1d
    return-object v0

    .line 810
    :cond_1e
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_21} :catch_23

    move-result-object v1

    goto :goto_19

    .line 813
    :catch_23
    move-exception v1

    .line 814
    const-string v2, "ToolUtils"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d
.end method

.method public static b(ZLcom/bytedance/sdk/openadsdk/core/d/k;JJLjava/lang/String;)Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/bytedance/sdk/openadsdk/core/d/k;",
            "JJ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 693
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 694
    const-string v1, "creative_id"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->M()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    const-string v1, "load_time"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    if-nez p0, :cond_2f

    .line 698
    const-string v1, "error_code"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    const-string v1, "error_message"

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2c

    const-string p6, "unknown"

    :cond_2c
    invoke-interface {v0, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    :cond_2f
    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 3

    .prologue
    .line 258
    const/4 v1, 0x0

    .line 259
    if-eqz p0, :cond_d

    .line 261
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_8} :catch_9

    .line 266
    :goto_8
    return-object v0

    .line 262
    :catch_9
    move-exception v0

    .line 263
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_d
    move-object v0, v1

    goto :goto_8
.end method

.method public static b(Lcom/bytedance/sdk/openadsdk/core/d/k;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 278
    .line 279
    if-eqz p0, :cond_1a

    .line 280
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->c(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_19

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->c(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1a

    :cond_19
    const/4 v0, 0x1

    .line 282
    :cond_1a
    return v0
.end method

.method public static c(Ljava/lang/String;)I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 313
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 314
    if-eqz v1, :cond_d

    .line 315
    const-string v2, "ad_slot_type"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 317
    :cond_d
    return v0
.end method

.method public static c()Ljava/lang/String;
    .registers 3

    .prologue
    .line 420
    const/4 v0, 0x0

    .line 421
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 423
    const/16 v2, 0x8

    :try_start_8
    new-array v2, v2, [B

    .line 424
    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 425
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/j;->a([B)Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_10} :catch_12

    move-result-object v0

    .line 429
    :goto_11
    return-object v0

    .line 426
    :catch_12
    move-exception v1

    goto :goto_11
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 93
    .line 94
    if-eqz p0, :cond_15

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 97
    const/4 v2, 0x0

    :try_start_e
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_11} :catch_16

    move-result-object v1

    if-eqz v1, :cond_15

    .line 98
    const/4 v0, 0x1

    .line 103
    :cond_15
    :goto_15
    return v0

    .line 99
    :catch_16
    move-exception v1

    goto :goto_15
.end method

.method public static c(Lcom/bytedance/sdk/openadsdk/core/d/k;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 286
    .line 287
    if-eqz p0, :cond_f

    .line 288
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->c(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_f

    const/4 v0, 0x1

    .line 290
    :cond_f
    return v0
.end method

.method public static d(Ljava/lang/String;)I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 321
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 322
    if-eqz v1, :cond_d

    .line 323
    const-string v2, "rit"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 325
    :cond_d
    return v0
.end method

.method public static declared-synchronized d()Ljava/lang/String;
    .registers 4

    .prologue
    .line 438
    const-class v1, Lcom/bytedance/sdk/openadsdk/utils/ah;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/ah;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 439
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_28

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 442
    :try_start_11
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/ah;->a:Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_1b} :catch_1f
    .catchall {:try_start_11 .. :try_end_1b} :catchall_28

    .line 449
    :cond_1b
    :goto_1b
    :try_start_1b
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/ah;->a:Ljava/lang/String;
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_28

    monitor-exit v1

    return-object v0

    .line 443
    :catch_1f
    move-exception v0

    .line 444
    :try_start_20
    const-string v2, "ToolUtils"

    const-string v3, "ToolUtils getPackageName throws exception :"

    invoke-static {v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_28

    goto :goto_1b

    .line 438
    :catchall_28
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 121
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->a()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static d(Lcom/bytedance/sdk/openadsdk/core/d/k;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 294
    .line 295
    if-eqz p0, :cond_10

    .line 296
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->c(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_10

    const/4 v0, 0x1

    .line 298
    :cond_10
    return v0
.end method

.method public static e(Ljava/lang/String;)J
    .registers 5

    .prologue
    const-wide/16 v0, 0x0

    .line 329
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 330
    if-eqz v2, :cond_e

    .line 331
    const-string v3, "uid"

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 333
    :cond_e
    return-wide v0
.end method

.method public static declared-synchronized e()Ljava/lang/String;
    .registers 4

    .prologue
    .line 453
    const-class v1, Lcom/bytedance/sdk/openadsdk/utils/ah;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/ah;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 454
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_3b

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 456
    :try_start_11
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ah;->d()Ljava/lang/String;

    move-result-object v0

    .line 457
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 459
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 460
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/bytedance/sdk/openadsdk/utils/ah;->b:Ljava/lang/String;

    .line 461
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/ah;->c:Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_2e} :catch_32
    .catchall {:try_start_11 .. :try_end_2e} :catchall_3b

    .line 468
    :cond_2e
    :goto_2e
    :try_start_2e
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/ah;->b:Ljava/lang/String;
    :try_end_30
    .catchall {:try_start_2e .. :try_end_30} :catchall_3b

    monitor-exit v1

    return-object v0

    .line 462
    :catch_32
    move-exception v0

    .line 463
    :try_start_33
    const-string v2, "ToolUtils"

    const-string v3, "ToolUtils getVersionCode throws exception :"

    invoke-static {v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_3b

    goto :goto_2e

    .line 453
    :catchall_3b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 132
    if-eqz p0, :cond_9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 146
    :cond_9
    :goto_9
    return v0

    .line 136
    :cond_a
    :try_start_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 137
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 138
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_35

    .line 139
    const/high16 v1, 0x10000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 141
    :cond_35
    const/4 v1, 0x0

    invoke-static {p0, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/b;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/openadsdk/utils/b$a;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_39} :catch_3b

    .line 142
    const/4 v0, 0x1

    goto :goto_9

    .line 143
    :catch_3b
    move-exception v1

    goto :goto_9
.end method

.method public static e(Lcom/bytedance/sdk/openadsdk/core/d/k;)Z
    .registers 2

    .prologue
    .line 302
    if-eqz p0, :cond_18

    .line 303
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->O()Lcom/bytedance/sdk/openadsdk/core/d/f;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 304
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->O()Lcom/bytedance/sdk/openadsdk/core/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    .line 302
    :goto_17
    return v0

    .line 304
    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static f(Ljava/lang/String;)I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 337
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 338
    if-eqz v1, :cond_d

    .line 339
    const-string v2, "ut"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 341
    :cond_d
    return v0
.end method

.method public static declared-synchronized f()Ljava/lang/String;
    .registers 4

    .prologue
    .line 472
    const-class v1, Lcom/bytedance/sdk/openadsdk/utils/ah;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/ah;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 473
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_3b

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 475
    :try_start_11
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ah;->d()Ljava/lang/String;

    move-result-object v0

    .line 476
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 478
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 479
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/bytedance/sdk/openadsdk/utils/ah;->b:Ljava/lang/String;

    .line 480
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/ah;->c:Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_2e} :catch_32
    .catchall {:try_start_11 .. :try_end_2e} :catchall_3b

    .line 487
    :cond_2e
    :goto_2e
    :try_start_2e
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/ah;->c:Ljava/lang/String;
    :try_end_30
    .catchall {:try_start_2e .. :try_end_30} :catchall_3b

    monitor-exit v1

    return-object v0

    .line 481
    :catch_32
    move-exception v0

    .line 482
    :try_start_33
    const-string v2, "ToolUtils"

    const-string v3, "ToolUtils getVersionName throws exception :"

    invoke-static {v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_3b

    goto :goto_2e

    .line 472
    :catchall_3b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 542
    .line 545
    :try_start_1
    new-instance v3, Ljava/io/FileReader;

    const-string v1, "/proc/meminfo"

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_8} :catch_59
    .catchall {:try_start_1 .. :try_end_8} :catchall_6c

    .line 546
    :try_start_8
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v1, 0x1000

    invoke-direct {v2, v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_f} :catch_8d
    .catchall {:try_start_8 .. :try_end_f} :catchall_87

    .line 548
    :cond_f
    :try_start_f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 549
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_18} :catch_90
    .catchall {:try_start_f .. :try_end_18} :catchall_8b

    move-result v4

    if-eqz v4, :cond_f

    .line 556
    :cond_1b
    if-nez v1, :cond_28

    .line 567
    if-eqz v2, :cond_22

    .line 569
    :try_start_1f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_7b

    .line 573
    :cond_22
    :goto_22
    if-eqz v3, :cond_27

    .line 575
    :try_start_24
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_7d

    .line 580
    :cond_27
    :goto_27
    return-object v0

    .line 558
    :cond_28
    :try_start_28
    const-string v4, "\\s+"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 561
    const-string v4, "ToolUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTotalMemory = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const/4 v4, 0x1

    aget-object v0, v1, v4
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_4c} :catch_90
    .catchall {:try_start_28 .. :try_end_4c} :catchall_8b

    .line 567
    if-eqz v2, :cond_51

    .line 569
    :try_start_4e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_7f

    .line 573
    :cond_51
    :goto_51
    if-eqz v3, :cond_27

    .line 575
    :try_start_53
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_27

    .line 576
    :catch_57
    move-exception v1

    goto :goto_27

    .line 564
    :catch_59
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    .line 565
    :goto_5c
    :try_start_5c
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_8b

    .line 567
    if-eqz v2, :cond_64

    .line 569
    :try_start_61
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_64} :catch_81

    .line 573
    :cond_64
    :goto_64
    if-eqz v3, :cond_27

    .line 575
    :try_start_66
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_69} :catch_6a

    goto :goto_27

    .line 576
    :catch_6a
    move-exception v1

    goto :goto_27

    .line 567
    :catchall_6c
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_70
    if-eqz v2, :cond_75

    .line 569
    :try_start_72
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_75} :catch_83

    .line 573
    :cond_75
    :goto_75
    if-eqz v3, :cond_7a

    .line 575
    :try_start_77
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7a} :catch_85

    .line 577
    :cond_7a
    :goto_7a
    throw v0

    .line 570
    :catch_7b
    move-exception v1

    goto :goto_22

    .line 576
    :catch_7d
    move-exception v1

    goto :goto_27

    .line 570
    :catch_7f
    move-exception v1

    goto :goto_51

    :catch_81
    move-exception v1

    goto :goto_64

    :catch_83
    move-exception v1

    goto :goto_75

    .line 576
    :catch_85
    move-exception v1

    goto :goto_7a

    .line 567
    :catchall_87
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_70

    :catchall_8b
    move-exception v0

    goto :goto_70

    .line 564
    :catch_8d
    move-exception v1

    move-object v2, v0

    goto :goto_5c

    :catch_90
    move-exception v1

    goto :goto_5c
.end method

.method public static f(Lcom/bytedance/sdk/openadsdk/core/d/k;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 308
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->e(Lcom/bytedance/sdk/openadsdk/core/d/k;)Z

    move-result v0

    .line 309
    if-eqz v0, :cond_9

    const-string v0, "deeplink_fail"

    :goto_8
    return-object v0

    :cond_9
    const-string v0, "installed"

    goto :goto_8
.end method

.method public static g(Ljava/lang/String;)D
    .registers 5

    .prologue
    const-wide/16 v0, 0x0

    .line 345
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 346
    if-eqz v2, :cond_e

    .line 347
    const-string v3, "pack_time"

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    .line 349
    :cond_e
    return-wide v0
.end method

.method public static g()Ljava/lang/String;
    .registers 4

    .prologue
    .line 989
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->c()Ljava/lang/String;

    move-result-object v0

    .line 990
    const-string v1, "https://%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g(Lcom/bytedance/sdk/openadsdk/core/d/k;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 361
    const/4 v0, 0x0

    .line 362
    if-eqz p0, :cond_1f

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->N()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->N()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 363
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->N()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b()Ljava/lang/String;

    move-result-object v0

    .line 365
    :cond_1f
    return-object v0
.end method

.method public static h()I
    .registers 4

    .prologue
    .line 998
    const/4 v0, -0x1

    .line 1001
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_12

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 1005
    :goto_11
    return v0

    .line 1002
    :catch_12
    move-exception v1

    goto :goto_11
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 353
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 354
    if-eqz v0, :cond_f

    .line 355
    const-string v1, "req_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 357
    :goto_e
    return-object v0

    :cond_f
    const-string v0, ""

    goto :goto_e
.end method

.method public static h(Lcom/bytedance/sdk/openadsdk/core/d/k;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 966
    if-nez p0, :cond_5

    .line 980
    :goto_4
    :pswitch_4
    return v1

    .line 967
    :cond_5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/ah;->d(Ljava/lang/String;)I

    move-result v2

    .line 968
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/bytedance/sdk/openadsdk/core/h/l;->c(I)I

    move-result v2

    .line 970
    packed-switch v2, :pswitch_data_3c

    goto :goto_4

    .line 974
    :pswitch_19
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/w;->d(Landroid/content/Context;)Z

    move-result v1

    goto :goto_4

    :pswitch_22
    move v1, v0

    .line 972
    goto :goto_4

    .line 976
    :pswitch_24
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/w;->e(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_38

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/w;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_39

    :cond_38
    move v0, v1

    :cond_39
    move v1, v0

    goto :goto_4

    .line 970
    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_19
        :pswitch_24
        :pswitch_22
        :pswitch_4
    .end packed-switch
.end method

.method public static i()I
    .registers 4

    .prologue
    .line 1013
    const/4 v0, -0x1

    .line 1016
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->freeMemory()J
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_12

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 1020
    :goto_11
    return v0

    .line 1017
    :catch_12
    move-exception v1

    goto :goto_11
.end method

.method public static i(Ljava/lang/String;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 757
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    .line 776
    :cond_9
    :goto_9
    return-object v0

    .line 760
    :cond_a
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 761
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 763
    :try_start_14
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1b} :catch_2e
    .catchall {:try_start_14 .. :try_end_1b} :catchall_45

    .line 768
    if-eqz v2, :cond_20

    .line 770
    :try_start_1d
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_25

    .line 776
    :cond_20
    :goto_20
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_9

    .line 771
    :catch_25
    move-exception v0

    .line 772
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;)V

    goto :goto_20

    .line 764
    :catch_2e
    move-exception v1

    .line 765
    :try_start_2f
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_45

    .line 768
    if-eqz v2, :cond_9

    .line 770
    :try_start_38
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_9

    .line 771
    :catch_3c
    move-exception v1

    .line 772
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;)V

    goto :goto_9

    .line 768
    :catchall_45
    move-exception v0

    if-eqz v2, :cond_4b

    .line 770
    :try_start_48
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4b} :catch_4c

    .line 773
    :cond_4b
    :goto_4b
    throw v0

    .line 771
    :catch_4c
    move-exception v1

    .line 772
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;)V

    goto :goto_4b
.end method

.method public static j()I
    .registers 4

    .prologue
    .line 1028
    const/4 v0, -0x1

    .line 1031
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->totalMemory()J
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_12

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 1035
    :goto_11
    return v0

    .line 1032
    :catch_12
    move-exception v1

    goto :goto_11
.end method

.method public static j(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 787
    :try_start_0
    const-string v0, "[\u4e00-\u9fa5]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 788
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 789
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_12

    move-result v0

    if-eqz v0, :cond_13

    .line 790
    const/4 v0, 0x1

    .line 795
    :goto_11
    return v0

    .line 792
    :catch_12
    move-exception v0

    .line 795
    :cond_13
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static k(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    const/16 v1, 0x11

    .line 861
    .line 862
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_1f

    .line 863
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 864
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 866
    :cond_1f
    return-object p0
.end method

.method public static l(Ljava/lang/String;)Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 911
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 914
    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->m(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->n(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_14
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static m(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 918
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 919
    const/4 v0, 0x0

    .line 921
    :goto_7
    return v0

    :cond_8
    const-string v0, "([1-9]|[1-9]\\d|1\\d{2}|2[0-4]\\d|25[0-5])(\\.(\\d|[1-9]\\d|1\\d{2}|2[0-4]\\d|25[0-5])){3}"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_7
.end method

.method public static n(Ljava/lang/String;)Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 925
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 928
    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->o(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->p(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_14
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static o(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 933
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 934
    const/4 v0, 0x0

    .line 936
    :goto_7
    return v0

    :cond_8
    const-string v0, "^(?:[0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_7
.end method

.method public static p(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 940
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 941
    const/4 v0, 0x0

    .line 943
    :goto_7
    return v0

    :cond_8
    const-string v0, "^((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)::((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_7
.end method

.method public static q(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 984
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->b()Ljava/lang/String;

    move-result-object v0

    .line 985
    const-string v1, "https://%s%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p0, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static r(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 870
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 871
    if-nez p0, :cond_16

    .line 872
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 873
    invoke-virtual {v0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 875
    :cond_16
    return-object v0
.end method
