.class public Lcom/umeng/umcrash/UMCrashUtils;
.super Ljava/lang/Object;
.source "UMCrashUtils.java"


# static fields
.field public static final UNKNOW:Ljava/lang/String; = ""


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    .line 92
    .local v0, "result":Z
    if-nez p0, :cond_4

    .line 93
    return v0

    .line 95
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_35

    .line 97
    :try_start_a
    const-string v1, "android.content.Context"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 98
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "checkSelfPermission"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 99
    .local v2, "method":Ljava/lang/reflect/Method;
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_2c
    .catchall {:try_start_a .. :try_end_2c} :catchall_32

    .line 100
    .local v3, "rest":I
    if-nez v3, :cond_30

    .line 101
    const/4 v0, 0x1

    goto :goto_34

    .line 103
    :cond_30
    const/4 v0, 0x0

    goto :goto_34

    .line 105
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "rest":I
    :catchall_32
    move-exception v1

    .line 106
    .local v1, "e":Ljava/lang/Throwable;
    const/4 v0, 0x0

    .line 107
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_34
    goto :goto_44

    .line 109
    :cond_35
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 110
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_44

    .line 111
    const/4 v0, 0x1

    .line 114
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_44
    :goto_44
    return v0
.end method

.method public static getActiveUser(Landroid/content/Context;)[Ljava/lang/String;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;

    .line 19
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 20
    return-object v0

    .line 23
    :cond_4
    const/4 v1, 0x0

    .line 25
    .local v1, "activeUser":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 27
    .local v2, "mClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_6
    const-string v3, "com.umeng.commonsdk.utils.UMUtils"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_c} :catch_e

    move-object v2, v3

    .line 29
    goto :goto_f

    .line 28
    :catch_e
    move-exception v3

    .line 30
    :goto_f
    if-eqz v2, :cond_3a

    .line 31
    const/4 v3, 0x0

    .line 33
    .local v3, "umConfigMethed":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_14
    const-string v6, "getActiveUser"

    new-array v7, v5, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v4

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6
    :try_end_20
    .catch Ljava/lang/NoSuchMethodException; {:try_start_14 .. :try_end_20} :catch_22

    move-object v3, v6

    .line 35
    goto :goto_23

    .line 34
    :catch_22
    move-exception v6

    .line 36
    :goto_23
    if-eqz v3, :cond_3a

    .line 38
    :try_start_25
    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v4

    invoke-virtual {v3, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 39
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_35

    .line 40
    move-object v4, v0

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;
    :try_end_34
    .catch Ljava/lang/IllegalAccessException; {:try_start_25 .. :try_end_34} :catch_38
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_25 .. :try_end_34} :catch_36

    move-object v1, v4

    .line 44
    .end local v0    # "o":Ljava/lang/Object;
    :cond_35
    :goto_35
    goto :goto_3a

    .line 43
    :catch_36
    move-exception v0

    goto :goto_3a

    .line 42
    :catch_38
    move-exception v0

    goto :goto_35

    .line 47
    .end local v3    # "umConfigMethed":Ljava/lang/reflect/Method;
    :cond_3a
    :goto_3a
    return-object v1
.end method

.method public static getNetworkOperatorName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 69
    const-string v0, ""

    if-nez p0, :cond_5

    .line 70
    return-object v0

    .line 73
    :cond_5
    :try_start_5
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 74
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v2}, Lcom/umeng/umcrash/UMCrashUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 75
    if-eqz v1, :cond_1c

    .line 76
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1d

    return-object v0

    .line 79
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1c
    goto :goto_1e

    .line 78
    :catchall_1d
    move-exception v1

    .line 80
    :goto_1e
    return-object v0
.end method

.method public static setPuidAndProvider(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "puid"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;

    .line 56
    invoke-static {}, Lcom/uc/crashsdk/export/CrashApi;->getInstance()Lcom/uc/crashsdk/export/CrashApi;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 57
    invoke-static {}, Lcom/uc/crashsdk/export/CrashApi;->getInstance()Lcom/uc/crashsdk/export/CrashApi;

    move-result-object v0

    const-string v1, "um_app_puid"

    invoke-virtual {v0, v1, p0}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/uc/crashsdk/export/CrashApi;->getInstance()Lcom/uc/crashsdk/export/CrashApi;

    move-result-object v0

    const-string v1, "um_app_provider"

    invoke-virtual {v0, v1, p1}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_18
    return-void
.end method

.method public static splitByByte(Ljava/lang/String;I)Ljava/lang/String;
    .registers 9
    .param p0, "srcStr"    # Ljava/lang/String;
    .param p1, "length"    # I

    .line 118
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 120
    .local v0, "sb":Ljava/lang/StringBuffer;
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 121
    .local v1, "srcLength":I
    const/4 v2, 0x0

    .line 122
    .local v2, "tempLength":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v1, :cond_24

    .line 123
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, "tempStr":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 125
    .local v5, "b":[B
    array-length v6, v5

    add-int/2addr v2, v6

    .line 126
    if-lt p1, v2, :cond_24

    .line 127
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_25

    .line 122
    nop

    .end local v4    # "tempStr":Ljava/lang/String;
    .end local v5    # "b":[B
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 132
    .end local v1    # "srcLength":I
    .end local v2    # "tempLength":I
    .end local v3    # "i":I
    :cond_24
    goto :goto_26

    .line 131
    :catchall_25
    move-exception v1

    .line 133
    :goto_26
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
