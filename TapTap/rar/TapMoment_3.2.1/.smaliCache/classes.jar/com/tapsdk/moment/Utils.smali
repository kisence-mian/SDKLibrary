.class public Lcom/tapsdk/moment/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .registers 2
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 22
    if-eqz p0, :cond_8

    .line 23
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_8

    .line 25
    :catch_6
    move-exception v0

    goto :goto_9

    .line 27
    :cond_8
    :goto_8
    nop

    .line 28
    :goto_9
    return-void
.end method

.method public static decodeFromBase64(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x8

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 73
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static encodeToBase64(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "str"    # Ljava/lang/String;

    .line 82
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_9

    .line 83
    return-object v1

    .line 85
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "result":Ljava/lang/String;
    const-string v2, "+"

    const-string v3, "-"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 87
    const-string v2, "/"

    const-string v3, "_"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 88
    const-string v2, "="

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 89
    const-string v2, "\n"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 90
    return-object v0
.end method

.method public static getColor(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "color"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getDrawable(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getLayoutId(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "layout"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getNetworkState(Landroid/content/Context;)I
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .line 109
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 110
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 111
    return v1

    .line 113
    :cond_c
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 114
    .local v2, "activeNetInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_54

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_19

    goto :goto_54

    .line 117
    :cond_19
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 118
    .local v3, "wifiInfo":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_30

    .line 119
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    .line 120
    .local v4, "state":Landroid/net/NetworkInfo$State;
    if-eqz v4, :cond_30

    .line 121
    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v4, v5, :cond_2e

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_30

    .line 122
    :cond_2e
    const/4 v1, 0x2

    return v1

    .line 126
    .end local v4    # "state":Landroid/net/NetworkInfo$State;
    :cond_30
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 128
    .local v4, "telephonyManager":Landroid/telephony/TelephonyManager;
    const/4 v5, 0x0

    .line 130
    .local v5, "networkType":I
    :try_start_39
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v6
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3d} :catch_3f

    move v5, v6

    .line 133
    goto :goto_40

    .line 131
    :catch_3f
    move-exception v6

    .line 134
    :goto_40
    packed-switch v5, :pswitch_data_56

    .line 158
    return v1

    .line 156
    :pswitch_44
    const/16 v1, 0xa

    return v1

    .line 154
    :pswitch_47
    const/4 v1, 0x6

    return v1

    .line 151
    :pswitch_49
    const/16 v1, 0x9

    return v1

    .line 140
    :pswitch_4c
    const/4 v1, 0x4

    return v1

    .line 146
    :pswitch_4e
    const/4 v1, 0x7

    return v1

    .line 142
    :pswitch_50
    const/4 v1, 0x5

    return v1

    .line 136
    :pswitch_52
    const/4 v1, 0x3

    return v1

    .line 115
    .end local v3    # "wifiInfo":Landroid/net/NetworkInfo;
    .end local v4    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v5    # "networkType":I
    :cond_54
    :goto_54
    return v1

    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_52
        :pswitch_50
        :pswitch_4e
        :pswitch_4c
        :pswitch_4e
        :pswitch_4e
        :pswitch_4c
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_4c
        :pswitch_47
        :pswitch_44
        :pswitch_47
        :pswitch_49
    .end packed-switch
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 64
    nop

    .line 65
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 66
    .local v0, "wm":Landroid/view/WindowManager;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 67
    .local v1, "outMetrics":Landroid/util/DisplayMetrics;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 68
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    return v2
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 56
    nop

    .line 57
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 58
    .local v0, "wm":Landroid/view/WindowManager;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 59
    .local v1, "outMetrics":Landroid/util/DisplayMetrics;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 60
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    return v2
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "string"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getStyle(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "style"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getTranslatedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "text"    # Ljava/lang/String;

    .line 177
    const-string v0, "TdsMoment"

    invoke-static {v0}, Lcom/tds/common/localize/LocalizeManager;->getLocalizeStore(Ljava/lang/String;)Lcom/tds/common/localize/LocalizeStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tds/common/localize/LocalizeStore;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getViewId(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static networkConnected(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 98
    nop

    .line 99
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 100
    .local v0, "manager":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 101
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 102
    .local v2, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_19

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1

    .line 104
    .end local v2    # "activeNetworkInfo":Landroid/net/NetworkInfo;
    :cond_1a
    return v1
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pxValue"    # F

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 78
    .local v0, "scale":F
    div-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static randomStr(I)Ljava/lang/String;
    .registers 8
    .param p0, "length"    # I

    .line 164
    const/16 v0, 0x61

    .line 165
    .local v0, "leftLimit":I
    const/16 v1, 0x7a

    .line 166
    .local v1, "rightLimit":I
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 167
    .local v2, "random":Ljava/util/Random;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 168
    .local v3, "buffer":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_f
    if-ge v4, p0, :cond_25

    .line 169
    nop

    .line 170
    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v5

    sub-int v6, v1, v0

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v5, v0

    .line 171
    .local v5, "randomLimitedInt":I
    int-to-char v6, v5

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    .end local v5    # "randomLimitedInt":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 173
    .end local v4    # "i":I
    :cond_25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
