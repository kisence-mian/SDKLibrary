.class public final Lcom/anythink/china/b/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 124
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    const-string v1, "imei"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_f

    .line 125
    return-object v1

    .line 128
    :cond_f
    nop

    .line 130
    :try_start_10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_1b

    .line 131
    invoke-static {p0}, Lcom/anythink/china/b/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_34

    .line 132
    :cond_1b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_2a

    .line 133
    invoke-static {p0}, Lcom/anythink/china/b/b;->c(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    .line 134
    invoke-static {p0}, Lcom/anythink/china/b/b;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 135
    goto :goto_34

    .line 136
    :cond_2a
    invoke-static {p0}, Lcom/anythink/china/b/b;->d(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    .line 138
    invoke-static {p0}, Lcom/anythink/china/b/b;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1
    :try_end_32
    .catchall {:try_start_10 .. :try_end_32} :catchall_33

    .line 142
    goto :goto_34

    .line 140
    :catchall_33
    move-exception p0

    .line 145
    :goto_34
    return-object v1
.end method

.method private static a(Ljava/util/Map;)Ljava/lang/String;
    .registers 2

    .line 150
    nop

    .line 151
    if-eqz p0, :cond_c

    .line 152
    const-string v0, "imei1"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 153
    goto :goto_e

    .line 151
    :cond_c
    const-string p0, ""

    .line 155
    :goto_e
    return-object p0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 38
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 40
    if-eqz p0, :cond_11

    .line 41
    :try_start_a
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p0
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_f

    return-object p0

    .line 43
    :catchall_f
    move-exception p0

    goto :goto_12

    .line 45
    :cond_11
    nop

    .line 46
    :goto_12
    const/4 p0, 0x0

    return-object p0
.end method

.method private static c(Landroid/content/Context;)Ljava/util/Map;
    .registers 10

    .line 57
    const-string v0, ""

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 58
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 63
    :try_start_f
    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 64
    const-string v3, "get"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 65
    new-array v3, v4, [Ljava/lang/Object;

    const-string v5, "ril.gsm.imei"

    aput-object v5, v3, v7

    aput-object v0, v3, v8

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 66
    new-array v4, v4, [Ljava/lang/Object;

    const-string v6, "ril.cdma.meid"

    aput-object v6, v4, v7

    aput-object v0, v4, v8

    invoke-virtual {v2, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    const-string v2, "meid"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_4e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f .. :try_end_4e} :catch_9b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_f .. :try_end_4e} :catch_99
    .catch Ljava/lang/IllegalAccessException; {:try_start_f .. :try_end_4e} :catch_97
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_f .. :try_end_4e} :catch_95
    .catchall {:try_start_f .. :try_end_4e} :catchall_93

    const-string v2, "imei1"

    const-string v4, "imei2"

    if-nez v0, :cond_84

    .line 70
    :try_start_54
    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_75

    array-length v3, v0

    if-lez v3, :cond_75

    .line 72
    aget-object v3, v0, v7

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    array-length v2, v0

    if-le v2, v8, :cond_6d

    .line 75
    aget-object p0, v0, v8

    invoke-interface {v1, v4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9d

    .line 77
    :cond_6d
    invoke-virtual {p0, v8}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, v4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9d

    .line 80
    :cond_75
    invoke-virtual {p0, v7}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-virtual {p0, v8}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, v4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    goto :goto_9d

    .line 84
    :cond_84
    invoke-virtual {p0, v7}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-virtual {p0, v8}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, v4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_92
    .catch Ljava/lang/ClassNotFoundException; {:try_start_54 .. :try_end_92} :catch_9b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_54 .. :try_end_92} :catch_99
    .catch Ljava/lang/IllegalAccessException; {:try_start_54 .. :try_end_92} :catch_97
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_54 .. :try_end_92} :catch_95
    .catchall {:try_start_54 .. :try_end_92} :catchall_93

    goto :goto_9c

    .line 93
    :catchall_93
    move-exception p0

    goto :goto_9d

    .line 92
    :catch_95
    move-exception p0

    goto :goto_9c

    .line 91
    :catch_97
    move-exception p0

    goto :goto_9c

    .line 90
    :catch_99
    move-exception p0

    goto :goto_9c

    .line 89
    :catch_9b
    move-exception p0

    .line 95
    :goto_9c
    nop

    .line 96
    :goto_9d
    return-object v1
.end method

.method private static d(Landroid/content/Context;)Ljava/util/Map;
    .registers 6

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 103
    :try_start_5
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 104
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v1

    .line 105
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_36

    const-string v4, "imei1"

    if-eqz v3, :cond_2d

    :try_start_1f
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 108
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getMeid()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_37

    .line 110
    :cond_2d
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string p0, "imei2"

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catchall {:try_start_1f .. :try_end_35} :catchall_36

    .line 116
    goto :goto_37

    .line 114
    :catchall_36
    move-exception p0

    .line 119
    :goto_37
    return-object v0
.end method
