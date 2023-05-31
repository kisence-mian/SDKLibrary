.class public Lcom/kwad/sdk/e/i;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private static a(Landroid/content/Context;)B
    .registers 4

    const/4 v1, 0x0

    if-nez p0, :cond_5

    move v0, v1

    :goto_4
    return v0

    :cond_5
    invoke-static {p0}, Lcom/kwad/sdk/e/i;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    move v0, v1

    goto :goto_4

    :cond_d
    invoke-static {p0}, Lcom/kwad/sdk/e/i;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 v0, 0x64

    goto :goto_4

    :cond_16
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_36

    move v0, v1

    goto :goto_4

    :pswitch_2d
    const/4 v0, 0x4

    goto :goto_4

    :pswitch_2f
    const/4 v0, 0x3

    goto :goto_4

    :pswitch_31
    const/4 v0, 0x2

    goto :goto_4

    :cond_33
    move v0, v1

    goto :goto_4

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_31
        :pswitch_31
        :pswitch_2f
        :pswitch_31
        :pswitch_2f
        :pswitch_2f
        :pswitch_31
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_31
        :pswitch_2f
        :pswitch_2d
        :pswitch_2f
        :pswitch_2f
        :pswitch_31
    .end packed-switch
.end method

.method public static b(Landroid/content/Context;)I
    .registers 2

    invoke-static {p0}, Lcom/kwad/sdk/e/i;->a(Landroid/content/Context;)B

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;)I
    .registers 10

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_7

    :cond_6
    :goto_6
    return v3

    :cond_7
    :try_start_7
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_6

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x16

    if-lt v5, v6, :cond_2e

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v6

    const/4 v5, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, 0x2f60c8e

    if-eq v7, v8, :cond_b1

    packed-switch v7, :pswitch_data_e2

    packed-switch v7, :pswitch_data_ee

    :cond_2b
    :goto_2b
    packed-switch v5, :pswitch_data_fc

    :cond_2e
    :goto_2e
    if-nez v3, :cond_df

    const-string v5, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v5}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_df

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "46000"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_52

    const-string v5, "46002"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c6

    :cond_52
    move v0, v4

    :goto_53
    move v3, v0

    goto :goto_6

    :pswitch_55
    const-string v7, "46009"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    const/4 v5, 0x6

    goto :goto_2b

    :pswitch_5f
    const-string v7, "46008"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    move v5, v1

    goto :goto_2b

    :pswitch_69
    const-string v7, "46007"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    move v5, v2

    goto :goto_2b

    :pswitch_73
    const-string v7, "46006"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    const/4 v5, 0x5

    goto :goto_2b

    :pswitch_7d
    const-string v7, "46005"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    const/16 v5, 0x8

    goto :goto_2b

    :pswitch_88
    const-string v7, "46003"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    const/4 v5, 0x7

    goto :goto_2b

    :pswitch_92
    const-string v7, "46002"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    move v5, v4

    goto :goto_2b

    :pswitch_9c
    const-string v7, "46001"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    const/4 v5, 0x4

    goto :goto_2b

    :pswitch_a6
    const-string v7, "46000"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    move v5, v3

    goto/16 :goto_2b

    :cond_b1
    const-string v7, "46011"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    const/16 v5, 0x9

    goto/16 :goto_2b

    :pswitch_bd
    move v3, v2

    goto/16 :goto_2e

    :pswitch_c0
    move v3, v1

    goto/16 :goto_2e

    :pswitch_c3
    move v3, v4

    goto/16 :goto_2e

    :cond_c6
    const-string v4, "46001"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d0

    move v0, v1

    goto :goto_53

    :cond_d0
    const-string v1, "46003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_d5} :catch_db

    move-result v0

    if-eqz v0, :cond_df

    move v0, v2

    goto/16 :goto_53

    :catch_db
    move-exception v0

    move v0, v3

    goto/16 :goto_53

    :cond_df
    move v0, v3

    goto/16 :goto_53

    :pswitch_data_e2
    .packed-switch 0x2f60c6e
        :pswitch_a6
        :pswitch_9c
        :pswitch_92
        :pswitch_88
    .end packed-switch

    :pswitch_data_ee
    .packed-switch 0x2f60c73
        :pswitch_7d
        :pswitch_73
        :pswitch_69
        :pswitch_5f
        :pswitch_55
    .end packed-switch

    :pswitch_data_fc
    .packed-switch 0x0
        :pswitch_c3
        :pswitch_c3
        :pswitch_c3
        :pswitch_c3
        :pswitch_c0
        :pswitch_c0
        :pswitch_c0
        :pswitch_bd
        :pswitch_bd
        :pswitch_bd
    .end packed-switch
.end method

.method public static d(Landroid/content/Context;)Z
    .registers 6

    const/4 v1, 0x0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_22

    array-length v3, v2

    move v0, v1

    :goto_13
    if-ge v0, v3, :cond_22

    aget-object v4, v2, v0

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1f

    const/4 v0, 0x1

    :goto_1e
    return v0

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_22
    move v0, v1

    goto :goto_1e
.end method

.method public static e(Landroid/content/Context;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_e
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_19

    move-result-object v0

    :goto_12
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    :goto_18
    return v0

    :catch_19
    move-exception v0

    move-object v0, v1

    goto :goto_12

    :cond_1c
    const/4 v0, 0x0

    goto :goto_18
.end method
