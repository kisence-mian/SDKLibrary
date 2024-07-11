.class public Lcom/loongcheer/admobsdk/pangle/AdmobAdapterUtil;
.super Ljava/lang/Object;
.source "AdmobAdapterUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dp2px(Landroid/content/Context;F)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dipValue"    # F

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 18
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static getAdPlacementId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "serverParameter"    # Ljava/lang/String;

    .line 45
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 47
    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 48
    .local v0, "serverParametersJson":Lorg/json/JSONObject;
    const-string v1, "ad_placement_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_11} :catch_12

    return-object v1

    .line 49
    .end local v0    # "serverParametersJson":Lorg/json/JSONObject;
    :catch_12
    move-exception v0

    .line 50
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 53
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAdSizeSafely(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)[I
    .registers 10
    .param p0, "params"    # Landroid/os/Bundle;
    .param p1, "widthName"    # Ljava/lang/String;
    .param p2, "heightName"    # Ljava/lang/String;

    .line 112
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_42

    .line 113
    .local v0, "adSize":[I
    if-eqz p0, :cond_40

    if-eqz p1, :cond_40

    if-nez p2, :cond_d

    goto :goto_40

    .line 117
    :cond_d
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 118
    .local v1, "oWidth":Ljava/lang/Object;
    const/4 v2, 0x0

    if-eqz v1, :cond_22

    .line 119
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, "w":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v0, v2

    .line 123
    .end local v3    # "w":Ljava/lang/String;
    :cond_22
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 125
    .local v3, "oHeight":Ljava/lang/Object;
    if-eqz v3, :cond_37

    .line 126
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, "h":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v0, v5

    .line 130
    .end local v4    # "h":Ljava/lang/String;
    :cond_37
    aget v4, v0, v2

    if-nez v4, :cond_3f

    .line 131
    const/16 v4, 0x1c2

    aput v4, v0, v2

    .line 134
    :cond_3f
    return-object v0

    .line 114
    .end local v1    # "oWidth":Ljava/lang/Object;
    .end local v3    # "oHeight":Ljava/lang/Object;
    :cond_40
    :goto_40
    return-object v0

    nop

    :array_42
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static getAdmobError(I)I
    .registers 2
    .param p0, "errorCode"    # I

    .line 138
    sparse-switch p0, :sswitch_data_c

    .line 154
    return p0

    .line 142
    :sswitch_4
    const/4 v0, 0x1

    return v0

    .line 146
    :sswitch_6
    const/4 v0, 0x3

    return v0

    .line 144
    :sswitch_8
    const/4 v0, 0x2

    return v0

    .line 151
    :sswitch_a
    const/4 v0, 0x0

    return v0

    :sswitch_data_c
    .sparse-switch
        -0x4 -> :sswitch_a
        -0x3 -> :sswitch_a
        -0x2 -> :sswitch_8
        -0x1 -> :sswitch_a
        0x4e21 -> :sswitch_6
        0x9c46 -> :sswitch_4
        0x9c49 -> :sswitch_4
        0x9c50 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getBannerAdSizeAdapterSafely(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)[I
    .registers 11
    .param p0, "params"    # Landroid/os/Bundle;
    .param p1, "widthName"    # Ljava/lang/String;
    .param p2, "heightName"    # Ljava/lang/String;

    .line 68
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_8a

    .line 69
    .local v0, "adSize":[I
    if-eqz p0, :cond_88

    if-eqz p1, :cond_88

    if-nez p2, :cond_e

    goto/16 :goto_88

    .line 73
    :cond_e
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 75
    .local v1, "oHeight":Ljava/lang/Object;
    const/4 v2, 0x1

    if-eqz v1, :cond_1e

    .line 76
    move-object v3, v1

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v2

    .line 79
    :cond_1e
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 80
    .local v3, "oWidth":Ljava/lang/Object;
    if-eqz v3, :cond_87

    .line 81
    move-object v4, v3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    aput v4, v0, v5

    .line 83
    aget v4, v0, v5

    const/16 v6, 0x64

    const/16 v7, 0x258

    if-lez v4, :cond_70

    aget v4, v0, v5

    if-gt v4, v7, :cond_70

    .line 84
    aput v7, v0, v5

    .line 85
    aget v4, v0, v2

    if-gt v4, v6, :cond_45

    .line 86
    const/16 v4, 0x5a

    aput v4, v0, v2

    goto :goto_87

    .line 87
    :cond_45
    aget v4, v0, v2

    const/16 v5, 0x96

    if-gt v4, v5, :cond_4e

    .line 88
    aput v5, v0, v2

    goto :goto_87

    .line 89
    :cond_4e
    aget v4, v0, v2

    const/16 v5, 0x104

    if-gt v4, v5, :cond_57

    .line 90
    aput v5, v0, v2

    goto :goto_87

    .line 91
    :cond_57
    aget v4, v0, v2

    const/16 v5, 0x12c

    if-gt v4, v5, :cond_60

    .line 92
    aput v5, v0, v2

    goto :goto_87

    .line 93
    :cond_60
    aget v4, v0, v2

    const/16 v5, 0x1c2

    if-gt v4, v5, :cond_6b

    .line 94
    const/16 v4, 0x190

    aput v4, v0, v2

    goto :goto_87

    .line 96
    :cond_6b
    const/16 v4, 0x1f4

    aput v4, v0, v2

    goto :goto_87

    .line 98
    :cond_70
    aget v4, v0, v5

    if-le v4, v7, :cond_7f

    aget v4, v0, v5

    const/16 v7, 0x280

    if-gt v4, v7, :cond_7f

    .line 99
    aput v7, v0, v5

    .line 100
    aput v6, v0, v2

    goto :goto_87

    .line 102
    :cond_7f
    const/16 v4, 0x2b2

    aput v4, v0, v5

    .line 103
    const/16 v4, 0x184

    aput v4, v0, v2

    .line 108
    :cond_87
    :goto_87
    return-object v0

    .line 70
    .end local v1    # "oHeight":Ljava/lang/Object;
    .end local v3    # "oWidth":Ljava/lang/Object;
    :cond_88
    :goto_88
    return-object v0

    nop

    :array_8a
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static getValue(Ljava/lang/Object;)D
    .registers 4
    .param p0, "price"    # Ljava/lang/Object;

    .line 158
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_d

    .line 159
    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 160
    .local v0, "result":I
    int-to-double v1, v0

    return-wide v1

    .line 163
    .end local v0    # "result":I
    :cond_d
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 164
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 167
    :cond_1d
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_29

    .line 168
    move-object v0, p0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 171
    :cond_29
    const-wide/16 v0, 0x0

    return-wide v0
.end method
