.class public Lcom/tapjoy/TJInstallReferrer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Object;

.field private c:Landroid/content/Context;

.field private d:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "Tapjoy"

    iput-object v0, p0, Lcom/tapjoy/TJInstallReferrer;->a:Ljava/lang/String;

    return-void
.end method

.method private a()Ljava/lang/Object;
    .registers 9

    .line 111
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/tapjoy/TJInstallReferrer;->c:Landroid/content/Context;

    if-nez v1, :cond_6

    .line 112
    return-object v0

    .line 115
    :cond_6
    const-string v2, "com.android.installreferrer.api.InstallReferrerClient"

    const-string v3, "newBuilder"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v7

    .line 3261
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 3262
    invoke-static {v1, v3, v0, v5, v4}, Lcom/tapjoy/TJInstallReferrer;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 115
    nop

    .line 117
    if-nez v1, :cond_22

    .line 118
    return-object v0

    .line 121
    :cond_22
    const-string v2, "build"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/tapjoy/TJInstallReferrer;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2a
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_2a} :catch_36
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_2b

    return-object v0

    .line 124
    :catch_2b
    move-exception v1

    .line 125
    iget-object v2, p0, Lcom/tapjoy/TJInstallReferrer;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 122
    :catch_36
    move-exception v1

    .line 123
    iget-object v2, p0, Lcom/tapjoy/TJInstallReferrer;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    nop

    .line 127
    :goto_41
    return-object v0
.end method

.method private a(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5

    .line 161
    nop

    .line 164
    nop

    .line 165
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 164
    invoke-static {v0, v1, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_11

    .line 171
    goto :goto_1c

    .line 169
    :catch_11
    move-exception p1

    .line 170
    iget-object v0, p0, Lcom/tapjoy/TJInstallReferrer;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 172
    :goto_1c
    return-object p1
.end method

.method private static varargs a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 278
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 279
    if-nez p0, :cond_8

    .line 280
    return-object v0

    .line 283
    :cond_8
    invoke-virtual {p0, p2, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_d

    return-object p0

    .line 285
    :catch_d
    move-exception p0

    .line 286
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Tapjoy"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return-object v0
.end method

.method private static varargs a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 267
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 268
    invoke-static {v0, p1, p0, p2, p3}, Lcom/tapjoy/TJInstallReferrer;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    .line 269
    :catch_9
    move-exception p0

    .line 270
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Tapjoy"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    .line 249
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "getInstallReferrer"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v1, v0, v2}, Lcom/tapjoy/TJInstallReferrer;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 250
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_f

    return-object p1

    .line 251
    :catch_f
    move-exception p1

    .line 252
    iget-object v1, p0, Lcom/tapjoy/TJInstallReferrer;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-object v0
.end method

.method private b()Ljava/lang/Class;
    .registers 3

    .line 147
    :try_start_0
    const-string v0, "com.android.installreferrer.api.InstallReferrerStateListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_6} :catch_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 152
    :catch_7
    move-exception v0

    .line 153
    iget-object v1, p0, Lcom/tapjoy/TJInstallReferrer;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 149
    :catch_12
    move-exception v0

    .line 150
    iget-object v1, p0, Lcom/tapjoy/TJInstallReferrer;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    nop

    .line 156
    :goto_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method private c()Ljava/lang/Object;
    .registers 5

    .line 236
    iget-object v0, p0, Lcom/tapjoy/TJInstallReferrer;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 238
    :try_start_5
    const-string v2, "getInstallReferrer"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TJInstallReferrer;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_f

    return-object v0

    .line 239
    :catch_f
    move-exception v0

    .line 240
    iget-object v2, p0, Lcom/tapjoy/TJInstallReferrer;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_19
    return-object v1
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    const-string v0, "startConnection"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/TJInstallReferrer;->c:Landroid/content/Context;

    .line 33
    invoke-direct {p0}, Lcom/tapjoy/TJInstallReferrer;->a()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/TJInstallReferrer;->b:Ljava/lang/Object;

    .line 35
    if-nez v1, :cond_18

    .line 36
    iget-object v0, p0, Lcom/tapjoy/TJInstallReferrer;->a:Ljava/lang/String;

    const-string v1, "Failed to activate InstallReferrerClient. No available InstallReferrrerClient."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void

    .line 39
    :cond_18
    invoke-direct {p0}, Lcom/tapjoy/TJInstallReferrer;->b()Ljava/lang/Class;

    move-result-object v1

    .line 40
    if-nez v1, :cond_26

    .line 41
    iget-object v0, p0, Lcom/tapjoy/TJInstallReferrer;->a:Ljava/lang/String;

    const-string v1, "InstallReferrerClient setup failed. No available InstallReferrrerStateListener."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void

    .line 45
    :cond_26
    invoke-direct {p0, v1}, Lcom/tapjoy/TJInstallReferrer;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 46
    if-nez v2, :cond_34

    .line 47
    iget-object v0, p0, Lcom/tapjoy/TJInstallReferrer;->a:Ljava/lang/String;

    const-string v1, "InstallReferrerClient setup failed. No available InstallReferrrerStateListener object."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void

    .line 55
    :cond_34
    const-string v3, "com.tapjoy.referrer"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/tapjoy/TJInstallReferrer;->d:Landroid/content/SharedPreferences;

    .line 56
    const-string v5, "TJInstallReferrerDidSetUp"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_7f

    .line 58
    nop

    .line 1131
    :try_start_46
    iget-object v3, p0, Lcom/tapjoy/TJInstallReferrer;->b:Ljava/lang/Object;

    if-eqz v3, :cond_74

    .line 1132
    iget-object v3, p0, Lcom/tapjoy/TJInstallReferrer;->a:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4f} :catch_75

    .line 1134
    :try_start_4f
    iget-object v3, p0, Lcom/tapjoy/TJInstallReferrer;->b:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    aput-object v1, v6, v4

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v2, v1, v4

    invoke-static {v3, v0, v6, v1}, Lcom/tapjoy/TJInstallReferrer;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5d
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_4f .. :try_end_5d} :catch_69
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_5d} :catch_5e

    .line 1141
    return-void

    .line 1139
    :catch_5e
    move-exception v0

    .line 1140
    :try_start_5f
    iget-object v1, p0, Lcom/tapjoy/TJInstallReferrer;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74

    .line 1136
    :catch_69
    move-exception v0

    .line 1137
    iget-object v1, p0, Lcom/tapjoy/TJInstallReferrer;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_73} :catch_75

    .line 1141
    return-void

    .line 61
    :cond_74
    :goto_74
    return-void

    .line 59
    :catch_75
    move-exception v0

    .line 60
    iget-object v1, p0, Lcom/tapjoy/TJInstallReferrer;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_7f
    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 67
    const-string v0, "TJInstallReferrerDidSetUp"

    const/4 v1, 0x0

    if-nez p2, :cond_d

    .line 68
    iget-object v0, p0, Lcom/tapjoy/TJInstallReferrer;->a:Ljava/lang/String;

    const-string v2, "Failed to invoke null method"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-object v1

    .line 72
    :cond_d
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 73
    if-nez v2, :cond_1b

    .line 74
    iget-object v0, p0, Lcom/tapjoy/TJInstallReferrer;->a:Ljava/lang/String;

    const-string v2, "Failed to invoke null method name"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-object v1

    .line 78
    :cond_1b
    const/4 v3, 0x0

    if-nez p3, :cond_27

    .line 79
    iget-object v4, p0, Lcom/tapjoy/TJInstallReferrer;->a:Ljava/lang/String;

    const-string v5, "Invoking method with null args"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-array p3, v3, [Ljava/lang/Object;

    .line 83
    :cond_27
    const-string v4, "onInstallReferrerSetupFinished"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bf

    .line 84
    array-length v2, p3

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3b

    .line 85
    iget-object v0, p0, Lcom/tapjoy/TJInstallReferrer;->a:Ljava/lang/String;

    const-string v2, "Invalid args"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-object v1

    .line 89
    :cond_3b
    aget-object v2, p3, v3

    .line 90
    instance-of v5, v2, Ljava/lang/Integer;

    if-nez v5, :cond_49

    .line 91
    iget-object v0, p0, Lcom/tapjoy/TJInstallReferrer;->a:Ljava/lang/String;

    const-string v2, "Invalid args type."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-object v1

    .line 95
    :cond_49
    check-cast v2, Ljava/lang/Integer;

    .line 96
    if-nez v2, :cond_55

    .line 97
    iget-object v0, p0, Lcom/tapjoy/TJInstallReferrer;->a:Ljava/lang/String;

    const-string v2, "onInstallReferrerSetupFinished response code can\'t be null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-object v1

    .line 100
    :cond_55
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1176
    const-string v5, "Install referrer service isn\'t available"

    packed-switch v2, :pswitch_data_d0

    .line 1195
    iget-object v0, p0, Lcom/tapjoy/TJInstallReferrer;->a:Ljava/lang/String;

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    goto :goto_cf

    .line 1187
    :pswitch_64
    iget-object v0, p0, Lcom/tapjoy/TJInstallReferrer;->a:Ljava/lang/String;

    const-string v2, "Install referrer isn\'t supported on the current Play Store app."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    goto :goto_cf

    .line 1191
    :pswitch_6c
    iget-object v0, p0, Lcom/tapjoy/TJInstallReferrer;->a:Ljava/lang/String;

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    goto :goto_cf

    .line 1179
    :pswitch_72
    nop

    .line 1219
    :try_start_73
    iget-object v2, p0, Lcom/tapjoy/TJInstallReferrer;->d:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1220
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1221
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1223
    invoke-direct {p0}, Lcom/tapjoy/TJInstallReferrer;->c()Ljava/lang/Object;

    move-result-object v4

    .line 1224
    if-nez v4, :cond_90

    .line 1225
    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1226
    iget-object v0, p0, Lcom/tapjoy/TJInstallReferrer;->a:Ljava/lang/String;

    const-string v2, "Failed to get ReferrerDetails instance."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    goto :goto_9c

    .line 1230
    :cond_90
    invoke-direct {p0, v4}, Lcom/tapjoy/TJInstallReferrer;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1231
    invoke-static {}, Lcom/tapjoy/internal/hb;->a()Lcom/tapjoy/internal/hb;

    iget-object v2, p0, Lcom/tapjoy/TJInstallReferrer;->c:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/tapjoy/internal/hb;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1180
    :goto_9c
    nop

    .line 2209
    iget-object v0, p0, Lcom/tapjoy/TJInstallReferrer;->b:Ljava/lang/Object;
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_9f} :catch_b4

    if-eqz v0, :cond_b3

    .line 2211
    :try_start_a1
    const-string v2, "endConnection"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TJInstallReferrer;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_a8} :catch_a9

    .line 2214
    goto :goto_cf

    .line 2212
    :catch_a9
    move-exception v0

    .line 2213
    :try_start_aa
    iget-object v2, p0, Lcom/tapjoy/TJInstallReferrer;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_b3} :catch_b4

    .line 1183
    :cond_b3
    goto :goto_cf

    .line 1181
    :catch_b4
    move-exception v0

    .line 1182
    iget-object v2, p0, Lcom/tapjoy/TJInstallReferrer;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    goto :goto_cf

    .line 102
    :cond_bf
    const-string v0, "onInstallReferrerServiceDisconnected"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 103
    nop

    .line 3203
    iget-object v0, p0, Lcom/tapjoy/TJInstallReferrer;->c:Landroid/content/Context;

    if-eqz v0, :cond_cf

    .line 3204
    invoke-virtual {p0, v0}, Lcom/tapjoy/TJInstallReferrer;->init(Landroid/content/Context;)V

    .line 106
    :cond_cf
    :goto_cf
    return-object v1

    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_72
        :pswitch_6c
        :pswitch_64
    .end packed-switch
.end method
