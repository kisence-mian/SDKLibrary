.class public final Lcom/anythink/china/b/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 115
    const-string v0, ""

    .line 117
    :try_start_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_d

    .line 118
    invoke-static {p0}, Lcom/anythink/china/b/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 132
    :goto_c
    return-object v0

    .line 119
    :cond_d
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_1c

    .line 120
    invoke-static {p0}, Lcom/anythink/china/b/b;->c(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    .line 121
    invoke-static {v1}, Lcom/anythink/china/b/b;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 123
    :cond_1c
    invoke-static {p0}, Lcom/anythink/china/b/b;->d(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    .line 125
    invoke-static {v1}, Lcom/anythink/china/b/b;->a(Ljava/util/Map;)Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_23} :catch_25

    move-result-object v0

    goto :goto_c

    :catch_25
    move-exception v1

    goto :goto_c
.end method

.method private static a(Ljava/util/Map;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 137
    const-string v0, ""

    .line 138
    if-eqz p0, :cond_c

    .line 139
    const-string v0, "imei1"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 142
    :cond_c
    return-object v0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 30
    if-eqz v0, :cond_10

    .line 31
    :try_start_a
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_d} :catch_f

    move-result-object v0

    .line 36
    :goto_e
    return-object v0

    :catch_f
    move-exception v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private static c(Landroid/content/Context;)Ljava/util/Map;
    .registers 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 47
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 48
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 53
    :try_start_e
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 54
    const-string v2, "get"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 55
    const/4 v1, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ril.gsm.imei"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, ""

    aput-object v6, v4, v5

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 56
    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "ril.cdma.meid"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, ""

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 57
    const-string v4, "meid"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9d

    .line 60
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 61
    if-eqz v1, :cond_86

    array-length v2, v1

    if-lez v2, :cond_86

    .line 62
    const-string v2, "imei1"

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    array-length v2, v1

    if-le v2, v8, :cond_79

    .line 65
    const-string v0, "imei2"

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :goto_78
    return-object v3

    .line 67
    :cond_79
    const-string v1, "imei2"

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_78

    .line 85
    :catch_84
    move-exception v0

    goto :goto_78

    .line 70
    :cond_86
    const-string v1, "imei1"

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v1, "imei2"

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_78

    .line 85
    :catch_9b
    move-exception v0

    goto :goto_78

    .line 74
    :cond_9d
    const-string v1, "imei1"

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v1, "imei2"

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_b1} :catch_84
    .catch Ljava/lang/NoSuchMethodException; {:try_start_e .. :try_end_b1} :catch_9b
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_b1} :catch_b2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_e .. :try_end_b1} :catch_b6
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_b1} :catch_b4

    goto :goto_78

    .line 85
    :catch_b2
    move-exception v0

    goto :goto_78

    :catch_b4
    move-exception v0

    goto :goto_78

    :catch_b6
    move-exception v0

    goto :goto_78
.end method

.method private static d(Landroid/content/Context;)Ljava/util/Map;
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 91
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 93
    :try_start_5
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 94
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v2

    .line 95
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v3

    .line 96
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 98
    const-string v2, "imei1"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMeid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :goto_2c
    return-object v1

    .line 100
    :cond_2d
    const-string v0, "imei1"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v0, "imei2"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_37} :catch_38

    goto :goto_2c

    :catch_38
    move-exception v0

    goto :goto_2c
.end method
