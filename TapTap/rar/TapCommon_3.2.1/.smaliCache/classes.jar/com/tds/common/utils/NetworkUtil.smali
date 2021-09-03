.class public Lcom/tds/common/utils/NetworkUtil;
.super Ljava/lang/Object;
.source "NetworkUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkHasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .line 51
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p0, p1}, Ltds/androidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_a

    .line 52
    .local v1, "result":I
    if-eqz v1, :cond_9

    .line 53
    const/4 v0, 0x0

    return v0

    .line 55
    :cond_9
    return v0

    .line 56
    .end local v1    # "result":I
    :catch_a
    move-exception v1

    .line 57
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method public static getConnectedType(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 25
    :try_start_0
    invoke-static {p0}, Lcom/tds/common/utils/NetworkUtil;->getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 26
    .local v0, "net":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1b

    .line 27
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_26

    .line 33
    const-string v1, "unknow"

    goto :goto_1a

    .line 29
    :pswitch_14
    const-string v1, "wifi"

    return-object v1

    .line 31
    :pswitch_17
    const-string v1, "mobile"
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1c
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_19} :catch_1c

    return-object v1

    .line 33
    :goto_1a
    return-object v1

    .line 38
    .end local v0    # "net":Landroid/net/NetworkInfo;
    :cond_1b
    goto :goto_22

    .line 36
    :catch_1c
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 39
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_22
    const-string v0, "not connected"

    return-object v0

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_17
        :pswitch_14
    .end packed-switch
.end method

.method public static getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 19
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public static getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 81
    const-string v0, "unknow"

    :try_start_2
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v1}, Lcom/tds/common/utils/NetworkUtil;->checkHasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 82
    return-object v0

    .line 84
    :cond_b
    const-string v1, "connectivity"

    .line 85
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 86
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_1c

    .line 88
    invoke-static {v1}, Lcom/tds/common/utils/NetworkUtil;->isNetworkAvailable(Landroid/net/ConnectivityManager;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 89
    return-object v0

    .line 93
    :cond_1c
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 94
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-static {p0, v2, v1}, Lcom/tds/common/utils/NetworkUtil;->mobileNetworkType(Landroid/content/Context;Landroid/telephony/TelephonyManager;Landroid/net/ConnectivityManager;)Ljava/lang/String;

    move-result-object v0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_28} :catch_29

    return-object v0

    .line 95
    .end local v1    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v2    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_29
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 97
    return-object v0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 139
    const/4 v0, 0x1

    if-nez p0, :cond_4

    .line 140
    return v0

    .line 143
    :cond_4
    nop

    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 147
    .local v1, "manager":Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    if-nez v1, :cond_15

    .line 148
    return v2

    .line 150
    :cond_15
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 151
    .local v3, "networkinfo":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_22

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_22

    goto :goto_23

    :cond_22
    move v0, v2

    :goto_23
    return v0
.end method

.method private static isNetworkAvailable(Landroid/net/ConnectivityManager;)Z
    .registers 4
    .param p0, "connectivityManager"    # Landroid/net/ConnectivityManager;

    .line 116
    const/4 v0, 0x0

    if-eqz p0, :cond_29

    .line 117
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1b

    .line 118
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    .line 119
    .local v1, "network":Landroid/net/Network;
    if-eqz v1, :cond_1a

    .line 120
    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v2

    .line 121
    .local v2, "capabilities":Landroid/net/NetworkCapabilities;
    if-eqz v2, :cond_1a

    .line 122
    invoke-static {v2}, Lcom/tds/common/utils/NetworkUtil;->isNetworkValid(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    return v0

    .line 125
    .end local v1    # "network":Landroid/net/Network;
    .end local v2    # "capabilities":Landroid/net/NetworkCapabilities;
    :cond_1a
    goto :goto_29

    .line 126
    :cond_1b
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 127
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_28

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 v0, 0x1

    :cond_28
    return v0

    .line 130
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_29
    :goto_29
    return v0
.end method

.method public static isNetworkValid(Landroid/net/NetworkCapabilities;)Z
    .registers 4
    .param p0, "capabilities"    # Landroid/net/NetworkCapabilities;

    .line 103
    const/4 v0, 0x0

    if-eqz p0, :cond_2f

    .line 104
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 105
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_2d

    const/4 v2, 0x3

    .line 106
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_2d

    const/4 v2, 0x7

    .line 107
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_2d

    const/4 v2, 0x4

    .line 108
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_2d

    const/16 v2, 0x10

    .line 109
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_2e

    :cond_2d
    move v0, v1

    .line 104
    :cond_2e
    return v0

    .line 111
    :cond_2f
    return v0
.end method

.method private static isWiFiNetwork(Landroid/net/ConnectivityManager;)Z
    .registers 5
    .param p0, "connectivityManager"    # Landroid/net/ConnectivityManager;

    .line 63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x17

    if-lt v0, v3, :cond_1b

    .line 64
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    .line 65
    .local v0, "network":Landroid/net/Network;
    if-eqz v0, :cond_19

    .line 66
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v3

    .line 67
    .local v3, "capabilities":Landroid/net/NetworkCapabilities;
    if-eqz v3, :cond_19

    .line 68
    invoke-virtual {v3, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    return v1

    .line 71
    .end local v0    # "network":Landroid/net/Network;
    .end local v3    # "capabilities":Landroid/net/NetworkCapabilities;
    :cond_19
    nop

    .line 75
    return v1

    .line 72
    :cond_1b
    invoke-virtual {p0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 73
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_28

    move v1, v2

    :cond_28
    return v1
.end method

.method private static mobileNetworkType(Landroid/content/Context;Landroid/telephony/TelephonyManager;Landroid/net/ConnectivityManager;)Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "telephonyManager"    # Landroid/telephony/TelephonyManager;
    .param p2, "connectivityManager"    # Landroid/net/ConnectivityManager;

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "networkType":I
    const/16 v1, 0x1e

    if-eqz p1, :cond_2c

    .line 160
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v1, :cond_1c

    .line 161
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v2}, Lcom/tds/common/utils/NetworkUtil;->checkHasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->hasCarrierPrivileges()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 162
    :cond_17
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v0

    goto :goto_2c

    .line 165
    :cond_1c
    :try_start_1c
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_20} :catch_22

    move v0, v2

    .line 168
    goto :goto_2c

    .line 166
    :catch_22
    move-exception v2

    .line 167
    .local v2, "ex":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 172
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_2c
    :goto_2c
    if-nez v0, :cond_41

    .line 173
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v1, :cond_35

    .line 175
    const-string v1, "3"

    return-object v1

    .line 178
    :cond_35
    if-eqz p2, :cond_41

    .line 179
    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 180
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_41

    .line 181
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    .line 186
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_41
    packed-switch v0, :pswitch_data_54

    .line 214
    :pswitch_44
    const-string v1, "unknow"

    return-object v1

    .line 212
    :pswitch_47
    const-string v1, "5G"

    return-object v1

    .line 209
    :pswitch_4a
    const-string v1, "4G"

    return-object v1

    .line 204
    :pswitch_4d
    const-string v1, "3G"

    return-object v1

    .line 193
    :pswitch_50
    const-string v1, "2G"

    return-object v1

    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_50
        :pswitch_50
        :pswitch_4d
        :pswitch_50
        :pswitch_4d
        :pswitch_4d
        :pswitch_50
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_4d
        :pswitch_4d
        :pswitch_44
        :pswitch_44
        :pswitch_4a
        :pswitch_4a
        :pswitch_47
    .end packed-switch
.end method
