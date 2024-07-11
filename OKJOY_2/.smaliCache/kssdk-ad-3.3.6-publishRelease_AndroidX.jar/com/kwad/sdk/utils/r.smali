.class public Lcom/kwad/sdk/utils/r;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_c

    move v1, v2

    goto :goto_d

    :cond_c
    move v1, v0

    :goto_d
    if-nez v1, :cond_10

    return v0

    :cond_10
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-nez p0, :cond_1f

    return v0

    :cond_1f
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_2c

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_29} :catch_2d

    if-eqz p0, :cond_2c

    move v0, v2

    :cond_2c
    return v0

    :catch_2d
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_c

    move v1, v2

    goto :goto_d

    :cond_c
    move v1, v0

    :goto_d
    if-nez v1, :cond_10

    return v0

    :cond_10
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-nez p0, :cond_1f

    return v0

    :cond_1f
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_37

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2f} :catch_33

    if-ne v2, p0, :cond_32

    move v0, v2

    :cond_32
    return v0

    :catch_33
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_37
    return v0
.end method

.method public static c(Landroid/content/Context;)I
    .registers 1

    invoke-static {p0}, Lcom/kwad/sdk/utils/r;->e(Landroid/content/Context;)B

    move-result p0

    return p0
.end method

.method public static d(Landroid/content/Context;)I
    .registers 13

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    :try_start_4
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_f

    return v0

    :cond_f
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_11} :catch_c7

    const/16 v3, 0x16

    const-string v4, "46003"

    const-string v5, "46002"

    const-string v6, "46001"

    const-string v7, "46000"

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v10, 0x1

    if-lt v2, v3, :cond_94

    :try_start_20
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_ce

    goto/16 :goto_8b

    :sswitch_2e
    const-string v11, "46011"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    const/16 v3, 0x9

    goto :goto_8b

    :sswitch_39
    const-string v11, "46009"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    const/4 v3, 0x6

    goto :goto_8b

    :sswitch_43
    const-string v11, "46008"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    move v3, v9

    goto :goto_8b

    :sswitch_4d
    const-string v11, "46007"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    move v3, v8

    goto :goto_8b

    :sswitch_57
    const-string v11, "46006"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    const/4 v3, 0x5

    goto :goto_8b

    :sswitch_61
    const-string v11, "46005"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    const/16 v3, 0x8

    goto :goto_8b

    :sswitch_6c
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    const/4 v3, 0x7

    goto :goto_8b

    :sswitch_74
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    move v3, v10

    goto :goto_8b

    :sswitch_7c
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    const/4 v3, 0x4

    goto :goto_8b

    :sswitch_84
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    move v3, v0

    :cond_8b
    :goto_8b
    packed-switch v3, :pswitch_data_f8

    goto :goto_94

    :pswitch_8f
    move v0, v8

    goto :goto_94

    :pswitch_91
    move v0, v9

    goto :goto_94

    :pswitch_93
    move v0, v10

    :cond_94
    :goto_94
    if-nez v0, :cond_cb

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_cb

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a9

    return v0

    :cond_a9
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c5

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b6

    goto :goto_c5

    :cond_b6
    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_be

    move v8, v9

    goto :goto_cc

    :cond_be
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_c2} :catch_c7

    if-eqz p0, :cond_cb

    goto :goto_cc

    :cond_c5
    :goto_c5
    move v8, v10

    goto :goto_cc

    :catch_c7
    move-exception p0

    invoke-static {p0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :cond_cb
    move v8, v0

    :goto_cc
    return v8

    nop

    :sswitch_data_ce
    .sparse-switch
        0x2f60c6e -> :sswitch_84
        0x2f60c6f -> :sswitch_7c
        0x2f60c70 -> :sswitch_74
        0x2f60c71 -> :sswitch_6c
        0x2f60c73 -> :sswitch_61
        0x2f60c74 -> :sswitch_57
        0x2f60c75 -> :sswitch_4d
        0x2f60c76 -> :sswitch_43
        0x2f60c77 -> :sswitch_39
        0x2f60c8e -> :sswitch_2e
    .end sparse-switch

    :pswitch_data_f8
    .packed-switch 0x0
        :pswitch_93
        :pswitch_93
        :pswitch_93
        :pswitch_93
        :pswitch_91
        :pswitch_91
        :pswitch_91
        :pswitch_8f
        :pswitch_8f
        :pswitch_8f
    .end packed-switch
.end method

.method private static e(Landroid/content/Context;)B
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-static {p0}, Lcom/kwad/sdk/utils/r;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_b

    return v0

    :cond_b
    invoke-static {p0}, Lcom/kwad/sdk/utils/r;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/16 p0, 0x64

    return p0

    :cond_14
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_30

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    packed-switch p0, :pswitch_data_32

    return v0

    :pswitch_2a
    const/4 p0, 0x4

    return p0

    :pswitch_2c
    const/4 p0, 0x3

    return p0

    :pswitch_2e
    const/4 p0, 0x2

    return p0

    :cond_30
    return v0

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2e
        :pswitch_2c
        :pswitch_2e
        :pswitch_2c
        :pswitch_2c
        :pswitch_2e
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2e
        :pswitch_2c
        :pswitch_2a
        :pswitch_2c
        :pswitch_2c
        :pswitch_2e
    .end packed-switch
.end method
