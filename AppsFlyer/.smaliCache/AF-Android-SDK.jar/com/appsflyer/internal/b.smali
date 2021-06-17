.class public Lcom/appsflyer/internal/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final AppsFlyerConversionListener:[B

.field private static AppsFlyerInAppPurchaseValidatorListener:I

.field private static AppsFlyerLib:I

.field private static getSdkVersion:I

.field private static onAppOpenAttribution:I

.field private static onAttributionFailure:J

.field public static onConversionDataFail:[B

.field private static onConversionDataSuccess:Ljava/lang/Object;

.field private static onDeepLinking:Ljava/lang/Object;

.field public static onInstallConversionDataLoadedNative:[B

.field public static final onValidateInApp:I

.field private static onValidateInAppFailure:[B


# direct methods
.method private static $$c(IBB)Ljava/lang/String;
    .registers 12

    sget v0, Lcom/appsflyer/internal/b;->getSdkVersion:I

    add-int/lit8 v1, v0, 0x5

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/b;->AppsFlyerInAppPurchaseValidatorListener:I

    rem-int/lit8 v1, v1, 0x2

    neg-int p2, p2

    xor-int/lit8 p2, p2, -0x1

    rsub-int/lit8 p2, p2, 0x77

    const/4 v1, 0x1

    sub-int/2addr p2, v1

    rsub-int/lit8 p1, p1, 0x24

    neg-int p0, p0

    xor-int/lit16 v2, p0, 0x3d5

    and-int/lit16 p0, p0, 0x3d5

    shl-int/2addr p0, v1

    add-int/2addr v2, p0

    sget-object p0, Lcom/appsflyer/internal/b;->AppsFlyerConversionListener:[B

    new-array v3, p1, [B

    xor-int/lit8 v4, p1, -0x48

    and-int/lit8 p1, p1, -0x48

    shl-int/2addr p1, v1

    add-int/2addr v4, p1

    xor-int/lit8 p1, v4, 0x47

    and-int/lit8 v4, v4, 0x47

    shl-int/2addr v4, v1

    add-int/2addr p1, v4

    if-nez p0, :cond_2f

    const/16 v4, 0xa

    goto :goto_31

    :cond_2f
    const/16 v4, 0x1e

    :goto_31
    const/4 v5, 0x0

    packed-switch v4, :pswitch_data_a2

    const/4 v0, 0x0

    goto :goto_4f

    :pswitch_37
    add-int/lit8 v4, v0, 0x2f

    rem-int/lit16 v6, v4, 0x80

    sput v6, Lcom/appsflyer/internal/b;->AppsFlyerInAppPurchaseValidatorListener:I

    rem-int/lit8 v4, v4, 0x2

    xor-int/lit8 v4, v0, 0xb

    and-int/lit8 v0, v0, 0xb

    shl-int/2addr v0, v1

    add-int/2addr v4, v0

    rem-int/lit16 v0, v4, 0x80

    sput v0, Lcom/appsflyer/internal/b;->AppsFlyerInAppPurchaseValidatorListener:I

    rem-int/lit8 v4, v4, 0x2

    move-object v4, v3

    const/4 v0, 0x0

    move v3, v2

    goto :goto_7b

    :goto_4f
    int-to-byte v4, p2

    aput-byte v4, v3, v0

    if-ne v0, p1, :cond_5a

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3, v5}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_5a
    aget-byte v4, p0, v2

    and-int/lit8 v6, v0, 0x1

    or-int/lit8 v0, v0, 0x1

    add-int/2addr v6, v0

    sget v0, Lcom/appsflyer/internal/b;->getSdkVersion:I

    and-int/lit8 v7, v0, 0x4d

    or-int/lit8 v0, v0, 0x4d

    add-int/2addr v7, v0

    rem-int/lit16 v0, v7, 0x80

    sput v0, Lcom/appsflyer/internal/b;->AppsFlyerInAppPurchaseValidatorListener:I

    rem-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_72

    const/4 v0, 0x0

    goto :goto_73

    :cond_72
    const/4 v0, 0x1

    :goto_73
    packed-switch v0, :pswitch_data_a8

    :pswitch_76
    move v0, v6

    move-object v8, v3

    move v3, v2

    move v2, v4

    move-object v4, v8

    :goto_7b
    neg-int v2, v2

    neg-int v2, v2

    neg-int v2, v2

    xor-int v6, p2, v2

    and-int/2addr p2, v2

    shl-int/2addr p2, v1

    add-int/2addr p2, v6

    or-int/lit8 v2, v3, 0x45

    shl-int/2addr v2, v1

    xor-int/lit8 v3, v3, 0x45

    sub-int/2addr v2, v3

    and-int/lit8 v3, v2, -0x44

    or-int/lit8 v2, v2, -0x44

    add-int/2addr v2, v3

    sget v3, Lcom/appsflyer/internal/b;->getSdkVersion:I

    add-int/lit8 v3, v3, 0x9

    rem-int/lit16 v6, v3, 0x80

    sput v6, Lcom/appsflyer/internal/b;->AppsFlyerInAppPurchaseValidatorListener:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_9c

    const/4 v3, 0x0

    goto :goto_9d

    :cond_9c
    const/4 v3, 0x1

    :goto_9d
    packed-switch v3, :pswitch_data_ae

    :pswitch_a0
    move-object v3, v4

    goto :goto_4f

    :pswitch_data_a2
    .packed-switch 0xa
        :pswitch_37
    .end packed-switch

    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_76
    .end packed-switch

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_a0
    .end packed-switch
.end method

.method static constructor <clinit>()V
    .registers 51

    const-class v1, [B

    const/4 v2, 0x0

    .line 2443
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 0
    sput v2, Lcom/appsflyer/internal/b;->AppsFlyerInAppPurchaseValidatorListener:I

    const/4 v4, 0x1

    sput v4, Lcom/appsflyer/internal/b;->getSdkVersion:I

    invoke-static {}, Lcom/appsflyer/internal/b;->init$0()V

    .line 1000
    const-wide v5, -0x1ab246166f830eb9L    # -9.636672918589771E179

    sput-wide v5, Lcom/appsflyer/internal/b;->onAttributionFailure:J

    sput v2, Lcom/appsflyer/internal/b;->onAppOpenAttribution:I

    const/4 v5, 0x2

    sput v5, Lcom/appsflyer/internal/b;->AppsFlyerLib:I

    .line 77
    const/16 v6, 0x2fe

    int-to-short v6, v6

    :try_start_1e
    sget-object v7, Lcom/appsflyer/internal/b;->AppsFlyerConversionListener:[B

    const/16 v8, 0x58

    aget-byte v8, v7, v8

    int-to-byte v8, v8

    const/16 v9, 0x48

    aget-byte v10, v7, v9

    int-to-byte v10, v10

    invoke-static {v6, v8, v10}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v6

    .line 81
    sget-object v8, Lcom/appsflyer/internal/b;->onConversionDataSuccess:Ljava/lang/Object;

    const/4 v10, 0x0

    if-nez v8, :cond_46

    const/16 v8, 0x28

    aget-byte v8, v7, v8

    neg-int v8, v8

    int-to-short v8, v8

    const/16 v11, 0x15a

    aget-byte v11, v7, v11

    int-to-byte v11, v11

    aget-byte v12, v7, v9

    int-to-byte v12, v12

    invoke-static {v8, v11, v12}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v8
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_45} :catch_1a75

    goto :goto_47

    :cond_46
    move-object v8, v10

    .line 84
    :goto_47
    nop

    .line 1767
    nop

    .line 1771
    const/16 v11, 0x10e

    int-to-short v11, v11

    const/16 v12, 0x58

    const/16 v13, 0x170

    const/16 v14, 0x226

    :try_start_52
    aget-byte v12, v7, v12

    int-to-byte v12, v12

    aget-byte v15, v7, v13

    int-to-byte v15, v15

    invoke-static {v11, v12, v15}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v11

    .line 1772
    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const/16 v12, 0x3a8

    int-to-short v12, v12

    const/16 v15, 0x2d

    aget-byte v15, v7, v15

    neg-int v15, v15

    int-to-byte v15, v15

    aget-byte v7, v7, v9

    int-to-byte v7, v7

    invoke-static {v12, v15, v7}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v7

    new-array v12, v2, [Ljava/lang/Class;

    .line 1773
    invoke-virtual {v11, v7, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    move-object v11, v10

    check-cast v11, [Ljava/lang/Object;

    .line 1774
    invoke-virtual {v7, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_7d} :catch_94

    .line 1776
    if-eqz v7, :cond_81

    .line 3639
    const/4 v11, 0x1

    goto :goto_82

    :cond_81
    const/4 v11, 0x0

    :goto_82
    packed-switch v11, :pswitch_data_1a80

    .line 2452
    sget v11, Lcom/appsflyer/internal/b;->getSdkVersion:I

    add-int/lit8 v11, v11, 0x65

    rem-int/lit16 v12, v11, 0x80

    sput v12, Lcom/appsflyer/internal/b;->AppsFlyerInAppPurchaseValidatorListener:I

    rem-int/2addr v11, v5

    if-eqz v11, :cond_93

    goto :goto_93

    .line 1778
    :pswitch_91
    nop

    .line 272
    goto :goto_96

    .line 1778
    :cond_93
    :goto_93
    goto :goto_ca

    :catch_94
    move-exception v0

    move-object v7, v10

    .line 1785
    :goto_96
    const/16 v11, 0x247

    int-to-short v11, v11

    :try_start_99
    sget-object v12, Lcom/appsflyer/internal/b;->AppsFlyerConversionListener:[B

    aget-byte v15, v12, v2

    int-to-byte v15, v15

    aget-byte v5, v12, v13

    int-to-byte v5, v5

    invoke-static {v11, v15, v5}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v5

    .line 1786
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v11, 0xa3

    int-to-short v11, v11

    const/16 v15, 0xd

    aget-byte v15, v12, v15

    int-to-byte v15, v15

    aget-byte v12, v12, v14

    int-to-byte v12, v12

    invoke-static {v11, v15, v12}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v11

    new-array v12, v2, [Ljava/lang/Class;

    .line 1787
    invoke-virtual {v5, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v11, v10

    check-cast v11, [Ljava/lang/Object;

    .line 1788
    invoke-virtual {v5, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_c5} :catch_c7

    move-object v7, v5

    goto :goto_c8

    :catch_c7
    move-exception v0

    .line 1792
    :goto_c8
    nop

    .line 272
    nop

    .line 86
    :goto_ca
    nop

    .line 87
    nop

    .line 88
    nop

    .line 89
    nop

    .line 95
    if-eqz v7, :cond_d3

    .line 3639
    const/16 v5, 0x12

    goto :goto_d5

    :cond_d3
    const/16 v5, 0x28

    :goto_d5
    const/16 v11, 0x1ad

    packed-switch v5, :pswitch_data_1a86

    .line 97
    nop

    .line 98
    :try_start_db
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    goto :goto_e2

    .line 3639
    :pswitch_e0
    move-object v5, v10

    goto :goto_101

    .line 98
    :goto_e2
    sget v12, Lcom/appsflyer/internal/b;->onValidateInApp:I

    or-int/lit16 v12, v12, 0x204

    int-to-short v12, v12

    sget-object v15, Lcom/appsflyer/internal/b;->AppsFlyerConversionListener:[B

    aget-byte v13, v15, v11

    int-to-byte v13, v13

    aget-byte v15, v15, v14

    int-to-byte v15, v15

    invoke-static {v12, v13, v15}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v12

    move-object v13, v10

    check-cast v13, [Ljava/lang/Class;

    .line 99
    invoke-virtual {v5, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v12, v10

    check-cast v12, [Ljava/lang/Object;

    .line 100
    invoke-virtual {v5, v7, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_101} :catch_102

    :goto_101
    goto :goto_104

    :catch_102
    move-exception v0

    move-object v5, v10

    .line 107
    :goto_104
    const/4 v12, 0x6

    if-eqz v7, :cond_12d

    .line 109
    nop

    .line 110
    :try_start_108
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    const/16 v15, 0x28e

    int-to-short v15, v15

    sget-object v18, Lcom/appsflyer/internal/b;->AppsFlyerConversionListener:[B

    aget-byte v2, v18, v12

    int-to-byte v2, v2

    aget-byte v12, v18, v14

    int-to-byte v12, v12

    invoke-static {v15, v2, v12}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v2

    move-object v12, v10

    check-cast v12, [Ljava/lang/Class;

    .line 111
    invoke-virtual {v13, v2, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v12, v10

    check-cast v12, [Ljava/lang/Object;

    .line 112
    invoke-virtual {v2, v7, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_129} :catch_12a

    goto :goto_12e

    :catch_12a
    move-exception v0

    move-object v2, v10

    goto :goto_12f

    .line 107
    :cond_12d
    move-object v2, v10

    .line 112
    :goto_12e
    nop

    .line 119
    :goto_12f
    if-eqz v7, :cond_157

    .line 121
    nop

    .line 122
    :try_start_132
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    const/16 v13, 0x2d7

    int-to-short v13, v13

    sget-object v15, Lcom/appsflyer/internal/b;->AppsFlyerConversionListener:[B

    aget-byte v4, v15, v11

    int-to-byte v4, v4

    aget-byte v15, v15, v14

    int-to-byte v15, v15

    invoke-static {v13, v4, v15}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v4

    move-object v13, v10

    check-cast v13, [Ljava/lang/Class;

    .line 123
    invoke-virtual {v12, v4, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    move-object v12, v10

    check-cast v12, [Ljava/lang/Object;

    .line 124
    invoke-virtual {v4, v7, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_132 .. :try_end_153} :catch_154

    goto :goto_158

    :catch_154
    move-exception v0

    move-object v4, v10

    goto :goto_159

    .line 119
    :cond_157
    move-object v4, v10

    .line 124
    :goto_158
    nop

    .line 130
    :goto_159
    if-eqz v5, :cond_15e

    .line 3639
    const/16 v7, 0x16

    goto :goto_160

    :cond_15e
    const/16 v7, 0x56

    :goto_160
    const/16 v12, 0x178

    const/16 v13, 0x11

    packed-switch v7, :pswitch_data_1a8c

    .line 130
    :goto_167
    goto :goto_1bc

    :pswitch_168
    if-nez v8, :cond_16c

    .line 272
    move-object v5, v10

    goto :goto_1bc

    .line 130
    :cond_16c
    :try_start_16c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x19d

    int-to-short v7, v7

    sget-object v15, Lcom/appsflyer/internal/b;->AppsFlyerConversionListener:[B

    aget-byte v10, v15, v11

    int-to-byte v10, v10

    int-to-byte v14, v9

    invoke-static {v7, v10, v14}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_18a
    .catch Ljava/lang/Exception; {:try_start_16c .. :try_end_18a} :catch_1a75

    const/4 v7, 0x1

    :try_start_18b
    new-array v8, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v8, v7

    const/16 v5, 0x8f

    int-to-short v5, v5

    aget-byte v7, v15, v12

    int-to-byte v7, v7

    aget-byte v10, v15, v13

    int-to-byte v10, v10

    invoke-static {v5, v7, v10}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v7, 0x1

    new-array v10, v7, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v7, v10, v14

    invoke-virtual {v5, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1b1
    .catchall {:try_start_18b .. :try_end_1b1} :catchall_1b2

    goto :goto_167

    :catchall_1b2
    move-exception v0

    move-object v1, v0

    :try_start_1b4
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1bb

    throw v2

    :cond_1bb
    throw v1

    .line 134
    :goto_1bc
    if-eqz v4, :cond_1c1

    .line 3639
    const/16 v7, 0x31

    goto :goto_1c3

    :cond_1c1
    const/16 v7, 0x55

    :goto_1c3
    packed-switch v7, :pswitch_data_1a92

    .line 134
    :goto_1c6
    goto/16 :goto_259

    :pswitch_1c8
    const/16 v4, 0x133

    int-to-short v4, v4

    sget-object v7, Lcom/appsflyer/internal/b;->AppsFlyerConversionListener:[B

    const/16 v8, 0x170

    aget-byte v10, v7, v8

    int-to-byte v8, v10

    aget-byte v10, v7, v13

    int-to-byte v10, v10

    invoke-static {v4, v8, v10}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v4
    :try_end_1d9
    .catch Ljava/lang/Exception; {:try_start_1b4 .. :try_end_1d9} :catch_1a75

    const/4 v8, 0x1

    :try_start_1da
    new-array v10, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v10, v8

    const/16 v4, 0x3b7

    int-to-short v4, v4

    aget-byte v8, v7, v9

    int-to-byte v8, v8

    aget-byte v14, v7, v13

    int-to-byte v14, v14

    invoke-static {v4, v8, v14}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v8, 0x126

    int-to-short v8, v8

    aget-byte v14, v7, v11

    int-to-byte v14, v14

    const/16 v15, 0x226

    aget-byte v11, v7, v15

    int-to-byte v11, v11

    invoke-static {v8, v14, v11}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x1

    new-array v14, v11, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v11, v14, v15

    invoke-virtual {v4, v8, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_210
    .catchall {:try_start_1da .. :try_end_210} :catchall_250

    .line 2452
    sget v8, Lcom/appsflyer/internal/b;->getSdkVersion:I

    add-int/lit8 v8, v8, 0x6e

    const/4 v10, 0x1

    sub-int/2addr v8, v10

    rem-int/lit16 v10, v8, 0x80

    sput v10, Lcom/appsflyer/internal/b;->AppsFlyerInAppPurchaseValidatorListener:I

    const/4 v10, 0x2

    rem-int/2addr v8, v10

    if-eqz v8, :cond_21e

    .line 134
    :cond_21e
    const/4 v8, 0x1

    :try_start_21f
    new-array v10, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v10, v8

    const/16 v4, 0x8f

    int-to-short v4, v4

    aget-byte v8, v7, v12

    int-to-byte v8, v8

    aget-byte v7, v7, v13

    int-to-byte v7, v7

    invoke-static {v4, v8, v7}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v7, v8, v11

    invoke-virtual {v4, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_245
    .catchall {:try_start_21f .. :try_end_245} :catchall_246

    goto :goto_1c6

    :catchall_246
    move-exception v0

    move-object v1, v0

    :try_start_248
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_24f

    :goto_24e
    throw v2

    :cond_24f
    throw v1

    :catchall_250
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_24f

    goto :goto_24e

    .line 141
    :goto_259
    if-nez v2, :cond_2d1

    if-eqz v5, :cond_260

    .line 3639
    const/16 v7, 0x63

    goto :goto_262

    :cond_260
    const/16 v7, 0x12

    :goto_262
    packed-switch v7, :pswitch_data_1a98

    goto :goto_2d1

    .line 144
    :pswitch_266
    const/16 v2, 0x2b6

    int-to-short v2, v2

    sget-object v7, Lcom/appsflyer/internal/b;->AppsFlyerConversionListener:[B

    const/16 v8, 0x249

    aget-byte v8, v7, v8

    neg-int v8, v8

    int-to-byte v8, v8

    aget-byte v10, v7, v9

    int-to-byte v10, v10

    invoke-static {v2, v8, v10}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v2
    :try_end_278
    .catch Ljava/lang/Exception; {:try_start_248 .. :try_end_278} :catch_1a75

    const/4 v8, 0x2

    :try_start_279
    new-array v10, v8, [Ljava/lang/Object;

    const/4 v8, 0x1

    aput-object v2, v10, v8

    const/4 v2, 0x0

    aput-object v5, v10, v2

    const/16 v2, 0x8f

    int-to-short v2, v2

    aget-byte v8, v7, v12

    int-to-byte v8, v8

    aget-byte v11, v7, v13

    int-to-byte v11, v11

    invoke-static {v2, v8, v11}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/4 v11, 0x2

    new-array v14, v11, [Ljava/lang/Class;

    aget-byte v11, v7, v12

    int-to-byte v11, v11

    aget-byte v7, v7, v13

    int-to-byte v7, v7

    invoke-static {v2, v11, v7}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v7, 0x0

    aput-object v2, v14, v7

    const-class v2, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v2, v14, v7

    invoke-virtual {v8, v14}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2b3
    .catchall {:try_start_279 .. :try_end_2b3} :catchall_2c7

    .line 3641
    sget v7, Lcom/appsflyer/internal/b;->AppsFlyerInAppPurchaseValidatorListener:I

    add-int/lit8 v7, v7, 0x33

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lcom/appsflyer/internal/b;->getSdkVersion:I

    const/4 v8, 0x2

    rem-int/2addr v7, v8

    if-nez v7, :cond_2c1

    .line 3639
    const/4 v7, 0x0

    goto :goto_2c2

    :cond_2c1
    const/4 v7, 0x1

    :goto_2c2
    packed-switch v7, :pswitch_data_1a9e

    .line 3641
    goto :goto_2d1

    .line 272
    :pswitch_2c6
    goto :goto_2d1

    .line 144
    :catchall_2c7
    move-exception v0

    move-object v1, v0

    :try_start_2c9
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_2d0

    :goto_2cf
    throw v2

    :cond_2d0
    throw v1
    :try_end_2d1
    .catch Ljava/lang/Exception; {:try_start_2c9 .. :try_end_2d1} :catch_1a75

    :cond_2d1
    :goto_2d1
    nop

    .line 3639
    sget v7, Lcom/appsflyer/internal/b;->AppsFlyerInAppPurchaseValidatorListener:I

    xor-int/lit8 v8, v7, 0x55

    and-int/lit8 v7, v7, 0x55

    const/4 v10, 0x1

    shl-int/2addr v7, v10

    add-int/2addr v8, v7

    rem-int/lit16 v7, v8, 0x80

    sput v7, Lcom/appsflyer/internal/b;->getSdkVersion:I

    const/4 v7, 0x2

    rem-int/2addr v8, v7

    if-nez v8, :cond_2e3

    .line 144
    :cond_2e3
    const/16 v7, 0x1c7

    int-to-short v7, v7

    :try_start_2e6
    sget-object v8, Lcom/appsflyer/internal/b;->AppsFlyerConversionListener:[B

    const/4 v10, 0x0

    aget-byte v11, v8, v10

    int-to-byte v10, v11

    const/16 v11, 0x170

    aget-byte v14, v8, v11

    int-to-byte v11, v14

    invoke-static {v7, v10, v11}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/16 v10, 0x232

    int-to-short v10, v10

    const/4 v11, 0x4

    aget-byte v14, v8, v11

    int-to-byte v14, v14

    const/16 v15, 0x226

    aget-byte v9, v8, v15

    int-to-byte v9, v9

    invoke-static {v10, v14, v9}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v10, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_312
    .catchall {:try_start_2e6 .. :try_end_312} :catchall_1a6b

    .line 148
    const/16 v9, 0x9

    const/16 v10, 0x8f

    int-to-short v10, v10

    :try_start_317
    aget-byte v14, v8, v12

    int-to-byte v14, v14

    aget-byte v15, v8, v13

    int-to-byte v15, v15

    invoke-static {v10, v14, v15}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    invoke-static {v14, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    const/4 v14, 0x0

    const/4 v15, 0x0

    aput-object v14, v9, v15

    const/4 v14, 0x1

    aput-object v2, v9, v14

    const/4 v14, 0x2

    aput-object v5, v9, v14

    const/4 v14, 0x3

    aput-object v4, v9, v14

    aput-object v7, v9, v11

    const/4 v15, 0x5

    aput-object v2, v9, v15

    const/4 v2, 0x6

    aput-object v5, v9, v2

    const/4 v2, 0x7

    aput-object v4, v9, v2

    const/16 v2, 0x8

    aput-object v7, v9, v2

    .line 190
    const/16 v2, 0x9

    new-array v2, v2, [Z

    const/4 v4, 0x0

    aput-boolean v4, v2, v4

    const/4 v4, 0x1

    aput-boolean v4, v2, v4

    const/4 v5, 0x2

    aput-boolean v4, v2, v5

    aput-boolean v4, v2, v14

    aput-boolean v4, v2, v11

    aput-boolean v4, v2, v15

    const/4 v5, 0x6

    aput-boolean v4, v2, v5

    const/4 v5, 0x7

    aput-boolean v4, v2, v5

    const/16 v5, 0x8

    aput-boolean v4, v2, v5

    .line 194
    const/16 v5, 0x9

    new-array v5, v5, [Z

    const/4 v7, 0x0

    aput-boolean v7, v5, v7

    aput-boolean v7, v5, v4

    const/4 v4, 0x2

    aput-boolean v7, v5, v4

    aput-boolean v7, v5, v14

    aput-boolean v7, v5, v11

    const/4 v4, 0x1

    aput-boolean v4, v5, v15

    const/4 v7, 0x6

    aput-boolean v4, v5, v7

    const/4 v7, 0x7

    aput-boolean v4, v5, v7

    const/16 v7, 0x8

    aput-boolean v4, v5, v7

    .line 198
    const/16 v7, 0x9

    new-array v13, v7, [Z

    const/16 v19, 0x0

    aput-boolean v19, v13, v19

    aput-boolean v19, v13, v4

    const/16 v16, 0x2

    aput-boolean v4, v13, v16

    aput-boolean v4, v13, v14

    aput-boolean v19, v13, v11

    aput-boolean v19, v13, v15

    const/16 v18, 0x6

    aput-boolean v4, v13, v18

    const/16 v18, 0x7

    aput-boolean v4, v13, v18

    const/16 v4, 0x8

    aput-boolean v19, v13, v4
    :try_end_3a1
    .catch Ljava/lang/Exception; {:try_start_317 .. :try_end_3a1} :catch_1a75

    .line 204
    const/16 v4, 0x35b

    int-to-short v4, v4

    const/16 v24, 0x64

    :try_start_3a6
    aget-byte v7, v8, v24

    int-to-byte v7, v7

    const/16 v17, 0x170

    aget-byte v14, v8, v17

    int-to-byte v14, v14

    invoke-static {v4, v7, v14}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 205
    const/16 v7, 0x17a

    int-to-short v7, v7

    const/16 v14, 0x1de

    aget-byte v14, v8, v14

    neg-int v14, v14

    int-to-byte v14, v14

    const/16 v26, 0x9c

    aget-byte v8, v8, v26

    int-to-byte v8, v8

    invoke-static {v7, v14, v8}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    .line 208
    const/16 v7, 0x1a

    if-lt v4, v7, :cond_3d6

    const/4 v7, 0x1

    goto :goto_3d7

    :cond_3d6
    const/4 v7, 0x0

    :goto_3d7
    const/4 v8, 0x0

    aput-boolean v7, v13, v8
    :try_end_3da
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3a6 .. :try_end_3da} :catch_44c
    .catch Ljava/lang/Exception; {:try_start_3a6 .. :try_end_3da} :catch_1a75

    .line 211
    const/16 v7, 0x15

    if-lt v4, v7, :cond_3e0

    .line 3639
    const/4 v7, 0x0

    goto :goto_3e1

    :cond_3e0
    const/4 v7, 0x1

    :goto_3e1
    packed-switch v7, :pswitch_data_1aa4

    .line 211
    const/4 v7, 0x0

    goto :goto_3f8

    .line 3641
    :pswitch_3e6
    sget v7, Lcom/appsflyer/internal/b;->getSdkVersion:I

    xor-int/lit8 v8, v7, 0x6f

    and-int/lit8 v7, v7, 0x6f

    const/4 v14, 0x1

    shl-int/2addr v7, v14

    add-int/2addr v8, v7

    rem-int/lit16 v7, v8, 0x80

    sput v7, Lcom/appsflyer/internal/b;->AppsFlyerInAppPurchaseValidatorListener:I

    const/4 v7, 0x2

    rem-int/2addr v8, v7

    if-eqz v8, :cond_3f7

    .line 211
    :cond_3f7
    const/4 v7, 0x1

    :goto_3f8
    const/4 v8, 0x1

    :try_start_3f9
    aput-boolean v7, v13, v8

    .line 212
    const/16 v7, 0x15

    if-lt v4, v7, :cond_401

    .line 3639
    const/4 v7, 0x0

    goto :goto_402

    :cond_401
    const/4 v7, 0x1

    :goto_402
    packed-switch v7, :pswitch_data_1aaa

    .line 212
    const/4 v7, 0x0

    goto :goto_408

    :pswitch_407
    const/4 v7, 0x1

    :goto_408
    aput-boolean v7, v13, v15
    :try_end_40a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3f9 .. :try_end_40a} :catch_44c
    .catch Ljava/lang/Exception; {:try_start_3f9 .. :try_end_40a} :catch_1a75

    .line 215
    const/16 v7, 0x10

    if-ge v4, v7, :cond_410

    .line 3639
    const/4 v7, 0x1

    goto :goto_411

    :cond_410
    const/4 v7, 0x0

    :goto_411
    packed-switch v7, :pswitch_data_1ab0

    sget v7, Lcom/appsflyer/internal/b;->AppsFlyerInAppPurchaseValidatorListener:I

    and-int/lit8 v8, v7, 0x59

    or-int/lit8 v7, v7, 0x59

    add-int/2addr v8, v7

    rem-int/lit16 v7, v8, 0x80

    sput v7, Lcom/appsflyer/internal/b;->getSdkVersion:I

    const/4 v7, 0x2

    rem-int/2addr v8, v7

    goto :goto_424

    .line 215
    :pswitch_422
    const/4 v7, 0x0

    goto :goto_425

    .line 3639
    :goto_424
    const/4 v7, 0x1

    .line 215
    :goto_425
    :try_start_425
    aput-boolean v7, v13, v11
    :try_end_427
    .catch Ljava/lang/ClassNotFoundException; {:try_start_425 .. :try_end_427} :catch_44c
    .catch Ljava/lang/Exception; {:try_start_425 .. :try_end_427} :catch_1a75

    .line 216
    const/16 v7, 0x8

    const/16 v8, 0x10

    if-ge v4, v8, :cond_42f

    .line 3639
    const/4 v4, 0x1

    goto :goto_430

    :cond_42f
    const/4 v4, 0x0

    :goto_430
    packed-switch v4, :pswitch_data_1ab6

    .line 216
    const/4 v4, 0x0

    goto :goto_449

    .line 3639
    :pswitch_435
    sget v4, Lcom/appsflyer/internal/b;->AppsFlyerInAppPurchaseValidatorListener:I

    or-int/lit8 v8, v4, 0x5d

    const/4 v14, 0x1

    shl-int/2addr v8, v14

    xor-int/lit8 v4, v4, 0x5d

    sub-int/2addr v8, v4

    rem-int/lit16 v4, v8, 0x80

    sput v4, Lcom/appsflyer/internal/b;->getSdkVersion:I

    const/4 v4, 0x2

    rem-int/2addr v8, v4

    if-nez v8, :cond_448

    const/4 v4, 0x0

    goto :goto_449

    .line 216
    :cond_448
    const/4 v4, 0x1

    :goto_449
    :try_start_449
    aput-boolean v4, v13, v7
    :try_end_44b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_449 .. :try_end_44b} :catch_44c
    .catch Ljava/lang/Exception; {:try_start_449 .. :try_end_44b} :catch_1a75

    goto :goto_44d

    .line 218
    :catch_44c
    move-exception v0

    .line 224
    :goto_44d
    nop

    .line 225
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 226
    :goto_450
    if-nez v7, :cond_454

    .line 3639
    const/4 v8, 0x0

    goto :goto_455

    :cond_454
    const/4 v8, 0x1

    :goto_455
    packed-switch v8, :pswitch_data_1abc

    :goto_458
    goto/16 :goto_1a69

    .line 226
    :pswitch_45a
    const/16 v8, 0x9

    if-ge v4, v8, :cond_460

    .line 3639
    const/4 v8, 0x1

    goto :goto_461

    :cond_460
    const/4 v8, 0x0

    :goto_461
    packed-switch v8, :pswitch_data_1ac2

    goto :goto_458

    .line 229
    :pswitch_465
    :try_start_465
    aget-boolean v8, v13, v4
    :try_end_467
    .catch Ljava/lang/Exception; {:try_start_465 .. :try_end_467} :catch_1a75

    if-eqz v8, :cond_1a2b

    .line 233
    :try_start_469
    aget-boolean v14, v2, v4

    aget-object v11, v9, v4

    aget-boolean v27, v5, v4
    :try_end_46f
    .catchall {:try_start_469 .. :try_end_46f} :catchall_1995

    .line 2306
    const/16 v28, 0x326

    if-eqz v14, :cond_587

    if-eqz v11, :cond_478

    .line 3639
    const/16 v29, 0x54

    goto :goto_47a

    :cond_478
    const/16 v29, 0x3d

    :goto_47a
    packed-switch v29, :pswitch_data_1ac8

    move-object/from16 v31, v2

    goto/16 :goto_4fb

    :pswitch_481
    sget v29, Lcom/appsflyer/internal/b;->getSdkVersion:I

    or-int/lit8 v30, v29, 0x1d

    const/16 v18, 0x1

    shl-int/lit8 v30, v30, 0x1

    xor-int/lit8 v29, v29, 0x1d

    sub-int v8, v30, v29

    rem-int/lit16 v15, v8, 0x80

    sput v15, Lcom/appsflyer/internal/b;->AppsFlyerInAppPurchaseValidatorListener:I

    const/16 v16, 0x2

    rem-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_49a

    const/16 v8, 0x3c

    goto :goto_49c

    :cond_49a
    const/16 v8, 0x46

    :goto_49c
    packed-switch v8, :pswitch_data_1ace

    const/4 v8, 0x0

    :try_start_4a0
    array-length v12, v8
    :try_end_4a1
    .catchall {:try_start_4a0 .. :try_end_4a1} :catchall_4f6

    nop

    .line 3641
    :pswitch_4a2
    add-int/lit8 v15, v15, 0x14

    const/4 v8, 0x1

    sub-int/2addr v15, v8

    rem-int/lit16 v8, v15, 0x80

    sput v8, Lcom/appsflyer/internal/b;->getSdkVersion:I

    const/4 v8, 0x2

    rem-int/2addr v15, v8

    if-nez v15, :cond_4ae

    .line 2306
    :cond_4ae
    :try_start_4ae
    sget-object v8, Lcom/appsflyer/internal/b;->AppsFlyerConversionListener:[B

    const/16 v12, 0x178

    aget-byte v15, v8, v12
    :try_end_4b4
    .catchall {:try_start_4ae .. :try_end_4b4} :catchall_4ea

    int-to-byte v12, v15

    move-object/from16 v31, v2

    const/16 v15, 0x11

    :try_start_4b9
    aget-byte v2, v8, v15

    int-to-byte v2, v2

    invoke-static {v10, v12, v2}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v12, 0xd8

    int-to-short v12, v12

    const/16 v15, 0x32e

    aget-byte v15, v8, v15

    int-to-byte v15, v15

    const/16 v22, 0x48

    aget-byte v8, v8, v22

    int-to-byte v8, v8

    invoke-static {v12, v15, v8}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x0

    invoke-virtual {v2, v8, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_4e4
    .catchall {:try_start_4b9 .. :try_end_4e4} :catchall_4e8

    if-eqz v2, :cond_4fb

    goto/16 :goto_589

    :catchall_4e8
    move-exception v0

    goto :goto_4ed

    :catchall_4ea
    move-exception v0

    move-object/from16 v31, v2

    :goto_4ed
    move-object v2, v0

    :try_start_4ee
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    if-eqz v8, :cond_4f5

    throw v8

    :cond_4f5
    throw v2

    .line 240
    :catchall_4f6
    move-exception v0

    move-object/from16 v31, v2

    goto/16 :goto_576

    .line 2310
    :cond_4fb
    :goto_4fb
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x267

    int-to-short v8, v8

    sget-object v12, Lcom/appsflyer/internal/b;->AppsFlyerConversionListener:[B

    aget-byte v14, v12, v28

    int-to-byte v14, v14

    const/16 v15, 0x11b

    aget-byte v15, v12, v15

    int-to-byte v15, v15

    invoke-static {v8, v14, v15}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v8, 0x2ca

    int-to-short v8, v8

    const/16 v11, 0x74

    aget-byte v11, v12, v11

    int-to-byte v11, v11

    const/16 v14, 0x15e

    aget-byte v14, v12, v14

    or-int/lit8 v15, v14, -0x1

    const/16 v18, 0x1

    shl-int/lit8 v15, v15, 0x1

    const/16 v27, -0x1

    xor-int/lit8 v14, v14, -0x1

    sub-int/2addr v15, v14

    int-to-byte v14, v15

    invoke-static {v8, v11, v14}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_53d
    .catchall {:try_start_4ee .. :try_end_53d} :catchall_575

    const/4 v8, 0x1

    :try_start_53e
    new-array v11, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v11, v8

    const/16 v2, 0xd1

    int-to-short v2, v2

    const/16 v8, 0x8b

    aget-byte v14, v12, v8

    int-to-byte v8, v14

    const/16 v14, 0x11

    aget-byte v12, v12, v14

    int-to-byte v12, v12

    invoke-static {v2, v8, v12}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v8, 0x1

    new-array v12, v8, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v8, v12, v14

    invoke-virtual {v2, v12}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_56b
    .catchall {:try_start_53e .. :try_end_56b} :catchall_56b

    :catchall_56b
    move-exception v0

    move-object v2, v0

    :try_start_56d
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    if-eqz v8, :cond_574

    throw v8

    :cond_574
    throw v2
    :try_end_575
    .catchall {:try_start_56d .. :try_end_575} :catchall_575

    .line 240
    :catchall_575
    move-exception v0

    :goto_576
    move-object v2, v0

    move-object/from16 v29, v3

    move/from16 v49, v4

    move-object/from16 v32, v5

    move-object/from16 v33, v6

    move/from16 v35, v7

    move-object/from16 v36, v9

    :goto_583
    move-object/from16 v41, v13

    goto/16 :goto_961

    .line 2306
    :cond_587
    move-object/from16 v31, v2

    .line 2313
    :goto_589
    nop

    .line 2314
    nop

    .line 2316
    nop

    .line 2317
    nop

    .line 2320
    nop

    .line 2323
    if-eqz v14, :cond_96b

    .line 2325
    :try_start_590
    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V
    :try_end_595
    .catchall {:try_start_590 .. :try_end_595} :catchall_951

    .line 2326
    const/16 v12, 0x3b7

    int-to-short v12, v12

    :try_start_598
    sget-object v15, Lcom/appsflyer/internal/b;->AppsFlyerConversionListener:[B

    const/16 v22, 0x48

    aget-byte v2, v15, v22
    :try_end_59e
    .catchall {:try_start_598 .. :try_end_59e} :catchall_93b

    int-to-byte v2, v2

    move-object/from16 v32, v5

    const/16 v23, 0x11

    :try_start_5a3
    aget-byte v5, v15, v23

    int-to-byte v5, v5

    invoke-static {v12, v2, v5}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_5ae
    .catchall {:try_start_5a3 .. :try_end_5ae} :catchall_939

    const/16 v5, 0x76

    int-to-short v5, v5

    move-object/from16 v33, v6

    const/16 v12, 0x1e0

    :try_start_5b5
    aget-byte v6, v15, v12

    int-to-byte v6, v6

    const/16 v12, 0x48

    aget-byte v15, v15, v12

    int-to-byte v12, v15

    invoke-static {v5, v6, v12}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v6, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5
    :try_end_5d0
    .catchall {:try_start_5b5 .. :try_end_5d0} :catchall_937

    const-wide/32 v34, 0x3a9680df

    xor-long v5, v5, v34

    :try_start_5d5
    invoke-virtual {v8, v5, v6}, Ljava/util/Random;->setSeed(J)V
    :try_end_5d8
    .catchall {:try_start_5d5 .. :try_end_5d8} :catchall_935

    .line 272
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    .line 2330
    :goto_5dc
    if-nez v2, :cond_924

    .line 2334
    if-nez v5, :cond_5f7

    .line 3639
    sget v15, Lcom/appsflyer/internal/b;->AppsFlyerInAppPurchaseValidatorListener:I

    and-int/lit8 v34, v15, 0x7b

    or-int/lit8 v15, v15, 0x7b

    add-int v15, v34, v15

    move-object/from16 v34, v2

    rem-int/lit16 v2, v15, 0x80

    sput v2, Lcom/appsflyer/internal/b;->getSdkVersion:I

    const/4 v2, 0x2

    rem-int/2addr v15, v2

    if-nez v15, :cond_5f5

    const/16 v2, 0x65

    goto :goto_602

    .line 2334
    :cond_5f5
    const/4 v2, 0x6

    goto :goto_602

    :cond_5f7
    move-object/from16 v34, v2

    if-nez v6, :cond_5fd

    const/4 v2, 0x5

    goto :goto_602

    :cond_5fd
    if-nez v12, :cond_601

    const/4 v2, 0x4

    goto :goto_602

    :cond_601
    const/4 v2, 0x3

    .line 2344
    :goto_602
    :try_start_602
    new-instance v15, Ljava/lang/StringBuilder;
    :try_end_604
    .catchall {:try_start_602 .. :try_end_604} :catchall_935

    move/from16 v35, v7

    add-int/lit8 v7, v2, 0x1

    :try_start_608
    invoke-direct {v15, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2346
    const/16 v7, 0x2e

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_610
    .catchall {:try_start_608 .. :try_end_610} :catchall_922

    .line 2348
    const/4 v7, 0x0

    :goto_611
    if-ge v7, v2, :cond_66d

    .line 2350
    if-eqz v27, :cond_647

    .line 3639
    sget v36, Lcom/appsflyer/internal/b;->AppsFlyerInAppPurchaseValidatorListener:I

    move/from16 v37, v2

    add-int/lit8 v2, v36, 0x15

    move-object/from16 v36, v9

    rem-int/lit16 v9, v2, 0x80

    sput v9, Lcom/appsflyer/internal/b;->getSdkVersion:I

    const/4 v9, 0x2

    rem-int/2addr v2, v9

    if-nez v2, :cond_625

    .line 2352
    :cond_625
    const/16 v2, 0x1a

    :try_start_627
    invoke-virtual {v8, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 2353
    invoke-virtual {v8}, Ljava/util/Random;->nextBoolean()Z

    move-result v9

    .line 2355
    if-eqz v9, :cond_63a

    neg-int v2, v2

    neg-int v2, v2

    const/4 v9, -0x1

    xor-int/2addr v2, v9

    rsub-int/lit8 v2, v2, 0x41

    const/4 v9, 0x1

    sub-int/2addr v2, v9

    .line 272
    goto :goto_641

    .line 2355
    :cond_63a
    neg-int v2, v2

    neg-int v2, v2

    and-int/lit8 v9, v2, 0x60

    or-int/lit8 v2, v2, 0x60

    add-int/2addr v2, v9

    .line 2358
    :goto_641
    int-to-char v2, v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    goto :goto_65d

    .line 2350
    :cond_647
    move/from16 v37, v2

    move-object/from16 v36, v9

    .line 2362
    const/16 v2, 0xc

    invoke-virtual {v8, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    neg-int v2, v2

    neg-int v2, v2

    const/4 v9, -0x1

    xor-int/2addr v2, v9

    rsub-int v2, v2, 0x2000

    const/4 v9, 0x1

    sub-int/2addr v2, v9

    .line 2363
    int-to-char v2, v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_65d
    .catchall {:try_start_627 .. :try_end_65d} :catchall_665

    .line 2348
    :goto_65d
    add-int/lit8 v7, v7, 0x2

    sub-int/2addr v7, v9

    move-object/from16 v9, v36

    move/from16 v2, v37

    goto :goto_611

    .line 240
    :catchall_665
    move-exception v0

    move-object v2, v0

    move-object/from16 v29, v3

    move/from16 v49, v4

    goto/16 :goto_583

    .line 2348
    :cond_66d
    move-object/from16 v36, v9

    .line 2367
    :try_start_66f
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_673
    .catchall {:try_start_66f .. :try_end_673} :catchall_920

    .line 2369
    if-nez v5, :cond_678

    .line 3639
    const/16 v7, 0x15

    goto :goto_67a

    :cond_678
    const/16 v7, 0x3e

    :goto_67a
    packed-switch v7, :pswitch_data_1ad4

    .line 2371
    move-object/from16 v38, v6

    move-object/from16 v39, v8

    move-object/from16 v40, v12

    move-object/from16 v41, v13

    goto/16 :goto_8b3

    .line 2373
    :pswitch_687
    if-nez v6, :cond_6e2

    .line 2375
    const/4 v6, 0x2

    :try_start_68a
    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x1

    aput-object v2, v7, v6

    const/4 v2, 0x0

    aput-object v11, v7, v2

    sget-object v2, Lcom/appsflyer/internal/b;->AppsFlyerConversionListener:[B

    const/16 v6, 0x178

    aget-byte v9, v2, v6

    int-to-byte v6, v9

    const/16 v9, 0x11

    aget-byte v15, v2, v9

    int-to-byte v9, v15

    invoke-static {v10, v6, v9}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v9, 0x2

    new-array v15, v9, [Ljava/lang/Class;

    move-object/from16 v37, v5

    const/16 v9, 0x178

    aget-byte v5, v2, v9

    int-to-byte v5, v5

    const/16 v9, 0x11

    aget-byte v2, v2, v9

    int-to-byte v2, v2

    invoke-static {v10, v5, v2}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v15, v5

    const-class v2, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v2, v15, v5

    invoke-virtual {v6, v15}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_6cd
    .catchall {:try_start_68a .. :try_end_6cd} :catchall_6d8

    move-object v6, v2

    move-object/from16 v39, v8

    move-object/from16 v41, v13

    move-object/from16 v2, v34

    move-object/from16 v5, v37

    goto/16 :goto_90c

    :catchall_6d8
    move-exception v0

    move-object v2, v0

    :try_start_6da
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_6e1

    throw v5

    :cond_6e1
    throw v2
    :try_end_6e2
    .catchall {:try_start_6da .. :try_end_6e2} :catchall_665

    .line 2373
    :cond_6e2
    move-object/from16 v37, v5

    .line 2377
    if-nez v12, :cond_6e8

    .line 3639
    const/4 v5, 0x0

    goto :goto_6e9

    :cond_6e8
    const/4 v5, 0x1

    :goto_6e9
    packed-switch v5, :pswitch_data_1ada

    .line 2383
    goto :goto_744

    .line 2379
    :pswitch_6ed
    const/4 v5, 0x2

    :try_start_6ee
    new-array v7, v5, [Ljava/lang/Object;

    const/4 v5, 0x1

    aput-object v2, v7, v5

    const/4 v2, 0x0

    aput-object v11, v7, v2

    sget-object v2, Lcom/appsflyer/internal/b;->AppsFlyerConversionListener:[B

    const/16 v5, 0x178

    aget-byte v9, v2, v5

    int-to-byte v5, v9

    const/16 v9, 0x11

    aget-byte v12, v2, v9

    int-to-byte v9, v12

    invoke-static {v10, v5, v9}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v9, 0x2

    new-array v12, v9, [Ljava/lang/Class;

    const/16 v9, 0x178

    aget-byte v15, v2, v9

    int-to-byte v9, v15

    const/16 v15, 0x11

    aget-byte v2, v2, v15

    int-to-byte v2, v2

    invoke-static {v10, v9, v2}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v9, 0x0

    aput-object v2, v12, v9

    const-class v2, Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v2, v12, v9

    invoke-virtual {v5, v12}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_72f
    .catchall {:try_start_6ee .. :try_end_72f} :catchall_73a

    move-object v12, v2

    move-object/from16 v39, v8

    move-object/from16 v41, v13

    move-object/from16 v2, v34

    move-object/from16 v5, v37

    goto/16 :goto_90c

    :catchall_73a
    move-exception v0

    move-object v2, v0

    :try_start_73c
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_743

    throw v5

    :cond_743
    throw v2
    :try_end_744
    .catchall {:try_start_73c .. :try_end_744} :catchall_665

    .line 2383
    :goto_744
    const/4 v5, 0x2

    :try_start_745
    new-array v7, v5, [Ljava/lang/Object;

    const/4 v5, 0x1

    aput-object v2, v7, v5

    const/4 v2, 0x0

    aput-object v11, v7, v2

    sget-object v2, Lcom/appsflyer/internal/b;->AppsFlyerConversionListener:[B

    const/16 v5, 0x178

    aget-byte v9, v2, v5

    int-to-byte v5, v9

    const/16 v9, 0x11

    aget-byte v15, v2, v9

    int-to-byte v9, v15

    invoke-static {v10, v5, v9}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v9, 0x2

    new-array v15, v9, [Ljava/lang/Class;

    move-object/from16 v38, v6

    const/16 v9, 0x178

    aget-byte v6, v2, v9

    int-to-byte v6, v6

    move-object/from16 v39, v8

    const/16 v9, 0x11

    aget-byte v8, v2, v9

    int-to-byte v8, v8

    invoke-static {v10, v6, v8}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v8, 0x0

    aput-object v6, v15, v8

    const-class v6, Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v6, v15, v8

    invoke-virtual {v5, v15}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_78a
    .catchall {:try_start_745 .. :try_end_78a} :catchall_8a7

    .line 2388
    :try_start_78a
    new-array v6, v8, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    sget v7, Lcom/appsflyer/internal/b;->onValidateInApp:I

    xor-int/lit8 v8, v7, 0xe

    and-int/lit8 v9, v7, 0xe

    or-int/2addr v8, v9

    int-to-short v8, v8

    aget-byte v9, v2, v24

    int-to-byte v9, v9

    move-object/from16 v40, v12

    const/16 v15, 0x11

    aget-byte v12, v2, v15

    int-to-byte v12, v12

    invoke-static {v8, v9, v12}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/4 v9, 0x1

    new-array v12, v9, [Ljava/lang/Class;

    const/16 v9, 0x178

    aget-byte v15, v2, v9
    :try_end_7b0
    .catchall {:try_start_78a .. :try_end_7b0} :catchall_81c

    int-to-byte v9, v15

    move-object/from16 v41, v13

    const/16 v15, 0x11

    :try_start_7b5
    aget-byte v13, v2, v15

    int-to-byte v13, v13

    invoke-static {v10, v9, v13}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const/4 v13, 0x0

    aput-object v9, v12, v13

    invoke-virtual {v8, v12}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_7cb
    .catchall {:try_start_7b5 .. :try_end_7cb} :catchall_81a

    .line 3641
    sget v8, Lcom/appsflyer/internal/b;->AppsFlyerInAppPurchaseValidatorListener:I

    or-int/lit8 v9, v8, 0x11

    const/4 v12, 0x1

    shl-int/2addr v9, v12

    const/16 v12, 0x11

    xor-int/2addr v8, v12

    sub-int/2addr v9, v8

    rem-int/lit16 v8, v9, 0x80

    sput v8, Lcom/appsflyer/internal/b;->getSdkVersion:I

    const/4 v8, 0x2

    rem-int/2addr v9, v8

    if-nez v9, :cond_7dd

    .line 2388
    :cond_7dd
    or-int/lit8 v7, v7, 0xe

    int-to-short v7, v7

    :try_start_7e0
    aget-byte v8, v2, v24

    int-to-byte v8, v8

    const/16 v9, 0x11

    aget-byte v12, v2, v9

    int-to-byte v9, v12

    invoke-static {v7, v8, v9}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/16 v8, 0x150

    int-to-short v8, v8

    aget-byte v9, v2, v28

    int-to-byte v9, v9

    const/16 v12, 0x48

    aget-byte v2, v2, v12

    int-to-byte v2, v2

    invoke-static {v8, v9, v2}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    invoke-virtual {v7, v2, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_807
    .catchall {:try_start_7e0 .. :try_end_807} :catchall_810

    move-object v2, v5

    move-object/from16 v5, v37

    move-object/from16 v6, v38

    move-object/from16 v12, v40

    goto/16 :goto_90c

    :catchall_810
    move-exception v0

    move-object v2, v0

    :try_start_812
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_819

    :goto_818
    throw v6

    :cond_819
    throw v2

    :catchall_81a
    move-exception v0

    goto :goto_81f

    :catchall_81c
    move-exception v0

    move-object/from16 v41, v13

    :goto_81f
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6
    :try_end_824
    .catch Ljava/lang/Exception; {:try_start_812 .. :try_end_824} :catch_827
    .catchall {:try_start_812 .. :try_end_824} :catchall_94f

    if-eqz v6, :cond_819

    goto :goto_818

    .line 2390
    :catch_827
    move-exception v0

    move-object v2, v0

    .line 2392
    :try_start_829
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x7a

    int-to-short v7, v7

    sget-object v8, Lcom/appsflyer/internal/b;->AppsFlyerConversionListener:[B

    aget-byte v9, v8, v28

    int-to-byte v9, v9

    const/16 v11, 0x11b

    aget-byte v11, v8, v11

    int-to-byte v11, v11

    invoke-static {v7, v9, v11}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2ca

    int-to-short v6, v6

    const/16 v7, 0x74

    aget-byte v7, v8, v7

    int-to-byte v7, v7

    const/16 v9, 0x15e

    aget-byte v9, v8, v9

    or-int/lit8 v11, v9, -0x1

    const/4 v12, 0x1

    shl-int/2addr v11, v12

    const/4 v12, -0x1

    xor-int/2addr v9, v12

    sub-int/2addr v11, v9

    int-to-byte v9, v11

    invoke-static {v6, v7, v9}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_867
    .catchall {:try_start_829 .. :try_end_867} :catchall_94f

    const/4 v6, 0x2

    :try_start_868
    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x1

    aput-object v2, v7, v6

    const/4 v2, 0x0

    aput-object v5, v7, v2

    const/16 v2, 0xd1

    int-to-short v2, v2

    const/16 v5, 0x8b

    aget-byte v6, v8, v5

    int-to-byte v5, v6

    const/16 v6, 0x11

    aget-byte v8, v8, v6

    int-to-byte v6, v8

    invoke-static {v2, v5, v6}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v5, v6, v8

    const-class v5, Ljava/lang/Throwable;

    const/4 v8, 0x1

    aput-object v5, v6, v8

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_89d
    .catchall {:try_start_868 .. :try_end_89d} :catchall_89d

    :catchall_89d
    move-exception v0

    move-object v2, v0

    :try_start_89f
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_8a6

    throw v5

    :cond_8a6
    throw v2

    .line 2383
    :catchall_8a7
    move-exception v0

    move-object/from16 v41, v13

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_8b2

    throw v5

    :cond_8b2
    throw v2
    :try_end_8b3
    .catchall {:try_start_89f .. :try_end_8b3} :catchall_94f

    .line 3639
    :goto_8b3
    sget v5, Lcom/appsflyer/internal/b;->AppsFlyerInAppPurchaseValidatorListener:I

    xor-int/lit8 v6, v5, 0x59

    and-int/lit8 v5, v5, 0x59

    const/4 v7, 0x1

    shl-int/2addr v5, v7

    add-int/2addr v6, v5

    rem-int/lit16 v5, v6, 0x80

    sput v5, Lcom/appsflyer/internal/b;->getSdkVersion:I

    const/4 v5, 0x2

    rem-int/2addr v6, v5

    if-nez v6, :cond_8c4

    .line 2371
    :cond_8c4
    :try_start_8c4
    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x1

    aput-object v2, v6, v5

    const/4 v2, 0x0

    aput-object v11, v6, v2

    sget-object v2, Lcom/appsflyer/internal/b;->AppsFlyerConversionListener:[B

    const/16 v5, 0x178

    aget-byte v7, v2, v5

    int-to-byte v5, v7

    const/16 v7, 0x11

    aget-byte v8, v2, v7

    int-to-byte v7, v8

    invoke-static {v10, v5, v7}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Class;

    const/16 v7, 0x178

    aget-byte v9, v2, v7

    int-to-byte v7, v9

    const/16 v9, 0x11

    aget-byte v2, v2, v9

    int-to-byte v2, v2

    invoke-static {v10, v7, v2}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v7, 0x0

    aput-object v2, v8, v7

    const-class v2, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v2, v8, v7

    invoke-virtual {v5, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_905
    .catchall {:try_start_8c4 .. :try_end_905} :catchall_916

    move-object v5, v2

    move-object/from16 v2, v34

    move-object/from16 v6, v38

    move-object/from16 v12, v40

    .line 2392
    :goto_90c
    move/from16 v7, v35

    move-object/from16 v9, v36

    move-object/from16 v8, v39

    move-object/from16 v13, v41

    goto/16 :goto_5dc

    .line 2371
    :catchall_916
    move-exception v0

    move-object v2, v0

    :try_start_918
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_91f

    throw v5

    :cond_91f
    throw v2

    .line 240
    :catchall_920
    move-exception v0

    goto :goto_95a

    :catchall_922
    move-exception v0

    goto :goto_958

    .line 2330
    :cond_924
    move-object/from16 v34, v2

    move-object/from16 v37, v5

    move-object/from16 v38, v6

    move/from16 v35, v7

    move-object/from16 v36, v9

    move-object/from16 v40, v12

    move-object/from16 v41, v13

    move-object/from16 v8, v37

    goto :goto_97c

    .line 240
    :catchall_935
    move-exception v0

    goto :goto_956

    .line 2326
    :catchall_937
    move-exception v0

    goto :goto_940

    :catchall_939
    move-exception v0

    goto :goto_93e

    :catchall_93b
    move-exception v0

    move-object/from16 v32, v5

    :goto_93e
    move-object/from16 v33, v6

    :goto_940
    move/from16 v35, v7

    move-object/from16 v36, v9

    move-object/from16 v41, v13

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_94e

    throw v5

    :cond_94e
    throw v2
    :try_end_94f
    .catchall {:try_start_918 .. :try_end_94f} :catchall_94f

    .line 240
    :catchall_94f
    move-exception v0

    goto :goto_95c

    :catchall_951
    move-exception v0

    move-object/from16 v32, v5

    move-object/from16 v33, v6

    :goto_956
    move/from16 v35, v7

    :goto_958
    move-object/from16 v36, v9

    :goto_95a
    move-object/from16 v41, v13

    :goto_95c
    move-object v2, v0

    move-object/from16 v29, v3

    move/from16 v49, v4

    :goto_961
    const/16 v17, 0x170

    const/16 v20, 0x226

    :goto_965
    const/16 v22, 0x48

    :goto_967
    const/16 v25, 0x3

    goto/16 :goto_19af

    .line 2323
    :cond_96b
    move-object/from16 v32, v5

    move-object/from16 v33, v6

    move/from16 v35, v7

    move-object/from16 v36, v9

    move-object/from16 v41, v13

    const/4 v8, 0x0

    const/16 v34, 0x0

    const/16 v38, 0x0

    const/16 v40, 0x0

    .line 2399
    :goto_97c
    nop

    .line 2405
    const/16 v2, 0x1bd8

    :try_start_97f
    new-array v2, v2, [B

    .line 2406
    const-class v5, Lcom/appsflyer/internal/b;

    const/16 v6, 0x14c

    int-to-short v6, v6

    sget-object v7, Lcom/appsflyer/internal/b;->AppsFlyerConversionListener:[B

    const/16 v9, 0x58

    aget-byte v9, v7, v9

    int-to-byte v9, v9

    const/16 v11, 0x48

    int-to-byte v12, v11

    invoke-static {v6, v9, v12}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v6

    .line 2407
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_998
    .catchall {:try_start_97f .. :try_end_998} :catchall_198f

    const/4 v6, 0x1

    :try_start_999
    new-array v9, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v9, v6

    sget v5, Lcom/appsflyer/internal/b;->onValidateInApp:I

    xor-int/lit16 v6, v5, 0x11e

    and-int/lit16 v11, v5, 0x11e

    or-int/2addr v6, v11

    int-to-short v6, v6

    const/16 v11, 0x11

    aget-byte v12, v7, v11

    int-to-byte v11, v12

    int-to-byte v12, v11

    invoke-static {v6, v11, v12}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Class;

    const/16 v11, 0xe

    aget-byte v13, v7, v11

    int-to-short v13, v13

    const/16 v15, 0x8b

    aget-byte v11, v7, v15

    int-to-byte v11, v11

    move-object/from16 v37, v8

    const/16 v15, 0x11

    aget-byte v8, v7, v15

    int-to-byte v8, v8

    invoke-static {v13, v11, v8}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/4 v11, 0x0

    aput-object v8, v12, v11

    invoke-virtual {v6, v12}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_9db
    .catchall {:try_start_999 .. :try_end_9db} :catchall_1977

    .line 2408
    nop

    .line 3639
    sget v8, Lcom/appsflyer/internal/b;->getSdkVersion:I

    xor-int/lit8 v9, v8, 0x23

    and-int/lit8 v8, v8, 0x23

    const/4 v11, 0x1

    shl-int/2addr v8, v11

    add-int/2addr v9, v8

    rem-int/lit16 v8, v9, 0x80

    sput v8, Lcom/appsflyer/internal/b;->AppsFlyerInAppPurchaseValidatorListener:I

    const/4 v8, 0x2

    rem-int/2addr v9, v8

    if-eqz v9, :cond_9ed

    .line 2408
    :cond_9ed
    const/4 v8, 0x1

    :try_start_9ee
    new-array v9, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v9, v8

    xor-int/lit16 v8, v5, 0x11e

    and-int/lit16 v11, v5, 0x11e

    or-int/2addr v8, v11

    int-to-short v8, v8

    const/16 v11, 0x11

    aget-byte v12, v7, v11

    int-to-byte v11, v12

    int-to-byte v12, v11

    invoke-static {v8, v11, v12}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/16 v11, 0x306

    int-to-short v11, v11

    const/16 v12, 0x13

    aget-byte v12, v7, v12

    int-to-byte v12, v12

    const/16 v13, 0x5c

    aget-byte v13, v7, v13

    int-to-byte v13, v13

    invoke-static {v11, v12, v13}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v1, v13, v12

    invoke-virtual {v8, v11, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a25
    .catchall {:try_start_9ee .. :try_end_a25} :catchall_1961

    .line 2409
    xor-int/lit16 v8, v5, 0x11e

    and-int/lit16 v5, v5, 0x11e

    or-int/2addr v5, v8

    int-to-short v5, v5

    const/16 v8, 0x11

    :try_start_a2d
    aget-byte v9, v7, v8

    int-to-byte v8, v9

    int-to-byte v9, v8

    invoke-static {v5, v8, v9}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v8, 0x150

    int-to-short v8, v8

    aget-byte v9, v7, v28

    int-to-byte v9, v9

    const/16 v11, 0x48

    aget-byte v7, v7, v11

    int-to-byte v7, v7

    invoke-static {v8, v9, v7}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a50
    .catchall {:try_start_a2d .. :try_end_a50} :catchall_194b

    .line 2412
    const/16 v5, 0x10

    .line 2413
    nop

    .line 2414
    const/16 v7, 0x1bb4

    move-object/from16 v9, v33

    const/4 v8, 0x0

    .line 2421
    :goto_a58
    add-int/lit16 v11, v5, 0x153

    add-int/lit16 v12, v5, 0x1bc7

    :try_start_a5c
    aget-byte v12, v2, v12

    and-int/lit8 v13, v12, -0x33

    or-int/lit8 v12, v12, -0x33

    add-int/2addr v13, v12

    int-to-byte v12, v13

    aput-byte v12, v2, v11

    .line 2426
    array-length v11, v2
    :try_end_a67
    .catchall {:try_start_a5c .. :try_end_a67} :catchall_198f

    neg-int v12, v5

    const/4 v13, -0x1

    xor-int/2addr v12, v13

    sub-int/2addr v11, v12

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    const/4 v12, 0x3

    :try_start_a6e
    new-array v13, v12, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v13, v12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v13, v12

    const/4 v11, 0x0

    aput-object v2, v13, v11

    const/16 v2, 0x344

    int-to-short v2, v2

    sget-object v11, Lcom/appsflyer/internal/b;->AppsFlyerConversionListener:[B

    const/16 v12, 0x88

    aget-byte v12, v11, v12

    int-to-byte v12, v12

    const/16 v15, 0x11

    aget-byte v6, v11, v15

    int-to-byte v6, v6

    invoke-static {v2, v12, v6}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v6, 0x3

    new-array v12, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v1, v12, v6

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x1

    aput-object v6, v12, v15

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x2

    aput-object v6, v12, v15

    invoke-virtual {v2, v12}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v43, v2

    check-cast v43, Ljava/io/InputStream;
    :try_end_ab4
    .catchall {:try_start_a6e .. :try_end_ab4} :catchall_1935

    .line 2432
    :try_start_ab4
    sget-object v2, Lcom/appsflyer/internal/b;->onConversionDataSuccess:Ljava/lang/Object;
    :try_end_ab6
    .catchall {:try_start_ab4 .. :try_end_ab6} :catchall_198f

    if-nez v2, :cond_b10

    .line 2436
    const v2, -0x4a35a631

    :try_start_abb
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    and-int v12, v6, v2

    or-int/2addr v2, v6

    add-int/2addr v12, v2

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    and-int/lit8 v2, v6, 0x5

    const/4 v13, 0x5

    or-int/2addr v6, v13

    add-int/2addr v2, v6

    int-to-short v2, v2

    .line 3094
    const/4 v6, 0x2

    new-array v15, v6, [I

    move v6, v14

    sget-wide v13, Lcom/appsflyer/internal/b;->onAttributionFailure:J
    :try_end_ad6
    .catchall {:try_start_abb .. :try_end_ad6} :catchall_b08

    const/16 v42, 0x20

    move/from16 v49, v4

    move/from16 v50, v5

    ushr-long v4, v13, v42

    long-to-int v5, v4

    and-int v4, v5, v12

    const/16 v29, -0x1

    xor-int/lit8 v4, v4, -0x1

    or-int/2addr v5, v12

    and-int/2addr v4, v5

    const/4 v5, 0x0

    :try_start_ae8
    aput v4, v15, v5

    long-to-int v4, v13

    xor-int/2addr v4, v12

    const/4 v5, 0x1

    aput v4, v15, v5

    .line 3100
    new-instance v4, Lcom/appsflyer/internal/by;

    sget v45, Lcom/appsflyer/internal/b;->onAppOpenAttribution:I

    sget-object v46, Lcom/appsflyer/internal/b;->onValidateInAppFailure:[B

    sget v48, Lcom/appsflyer/internal/b;->AppsFlyerLib:I

    move-object/from16 v42, v4

    move-object/from16 v44, v15

    move/from16 v47, v2

    invoke-direct/range {v42 .. v48}, Lcom/appsflyer/internal/by;-><init>(Ljava/io/InputStream;[II[BII)V
    :try_end_b00
    .catchall {:try_start_ae8 .. :try_end_b00} :catchall_b06

    .line 2436
    move/from16 v42, v7

    move-object/from16 v43, v8

    goto/16 :goto_c5a

    .line 240
    :catchall_b06
    move-exception v0

    goto :goto_b0b

    :catchall_b08
    move-exception v0

    move/from16 v49, v4

    :goto_b0b
    move-object v2, v0

    move-object/from16 v29, v3

    goto/16 :goto_961

    .line 2432
    :cond_b10
    move/from16 v49, v4

    move/from16 v50, v5

    move v6, v14

    .line 2443
    :try_start_b15
    const-string v5, ""
    :try_end_b17
    .catchall {:try_start_b15 .. :try_end_b17} :catchall_1930

    const/4 v12, 0x1

    :try_start_b18
    new-array v13, v12, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v5, v13, v12

    const/16 v5, 0x37e

    int-to-short v5, v5

    const/16 v12, 0x2d

    aget-byte v12, v11, v12

    neg-int v12, v12

    int-to-byte v12, v12

    const/16 v14, 0x170

    aget-byte v15, v11, v14

    int-to-byte v14, v15

    invoke-static {v5, v12, v14}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v12, 0x174

    int-to-short v12, v12

    const/16 v14, 0x15a

    aget-byte v14, v11, v14

    int-to-byte v14, v14

    const/16 v15, 0x226

    aget-byte v4, v11, v15

    int-to-byte v4, v4

    invoke-static {v12, v14, v4}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x1

    new-array v14, v12, [Ljava/lang/Class;

    const-class v12, Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v12, v14, v15

    invoke-virtual {v5, v4, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_b5b
    .catchall {:try_start_b18 .. :try_end_b5b} :catchall_191d

    neg-int v4, v4

    neg-int v4, v4

    const/4 v5, -0x1

    xor-int/2addr v4, v5

    const v5, -0x53133c47

    sub-int v4, v5, v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    :try_start_b66
    const-string v12, ""
    :try_end_b68
    .catchall {:try_start_b66 .. :try_end_b68} :catchall_1930

    const/16 v13, 0x30

    const/4 v14, 0x3

    :try_start_b6b
    new-array v15, v14, [Ljava/lang/Object;

    const/4 v14, 0x2

    aput-object v3, v15, v14

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v15, v14

    const/4 v13, 0x0

    aput-object v12, v15, v13

    const/16 v12, 0xbf

    int-to-short v12, v12

    aget-byte v14, v11, v13

    int-to-byte v13, v14

    const/16 v14, 0x170

    aget-byte v5, v11, v14

    int-to-byte v5, v5

    invoke-static {v12, v13, v5}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v12, 0x84

    int-to-short v12, v12

    const/16 v13, 0x1ad

    aget-byte v14, v11, v13

    int-to-byte v13, v14

    const/16 v14, 0x23

    aget-byte v14, v11, v14

    int-to-byte v14, v14

    invoke-static {v12, v13, v14}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x3

    new-array v14, v13, [Ljava/lang/Class;

    const-class v13, Ljava/lang/CharSequence;

    const/16 v19, 0x0

    aput-object v13, v14, v19

    sget-object v13, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/16 v18, 0x1

    aput-object v13, v14, v18

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x2

    aput-object v13, v14, v16

    invoke-virtual {v5, v12, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v12, 0x0

    invoke-virtual {v5, v12, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_bc2
    .catchall {:try_start_b6b .. :try_end_bc2} :catchall_190a

    const v12, -0x22f00884

    add-int/2addr v5, v12

    const v12, 0x1000004

    const/4 v13, 0x0

    :try_start_bca
    invoke-static {v13, v13, v13}, Landroid/graphics/Color;->rgb(III)I

    move-result v14
    :try_end_bce
    .catchall {:try_start_bca .. :try_end_bce} :catchall_1930

    neg-int v13, v14

    neg-int v13, v13

    or-int v14, v13, v12

    const/4 v15, 0x1

    shl-int/2addr v14, v15

    xor-int/2addr v12, v13

    sub-int/2addr v14, v12

    int-to-short v12, v14

    const/4 v13, 0x4

    :try_start_bd8
    new-array v14, v13, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v12

    const/4 v13, 0x3

    aput-object v12, v14, v13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v12, 0x2

    aput-object v5, v14, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v14, v5

    const/4 v4, 0x0

    aput-object v43, v14, v4

    const/16 v4, 0xb8

    aget-byte v4, v11, v4

    int-to-short v4, v4

    const/16 v5, 0x58

    aget-byte v5, v11, v5

    int-to-byte v5, v5

    const/16 v12, 0x48

    aget-byte v13, v11, v12

    int-to-byte v12, v13

    invoke-static {v4, v5, v12}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/appsflyer/internal/b;->onDeepLinking:Ljava/lang/Object;

    check-cast v5, Ljava/lang/ClassLoader;

    const/4 v12, 0x1

    invoke-static {v4, v12, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0x18e

    int-to-short v5, v5

    const/16 v12, 0x1e0

    aget-byte v13, v11, v12

    int-to-byte v12, v13

    const/16 v13, 0x5d

    aget-byte v13, v11, v13

    int-to-byte v13, v13

    invoke-static {v5, v12, v13}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x4

    new-array v13, v12, [Ljava/lang/Class;

    const/16 v12, 0xe

    aget-byte v15, v11, v12

    int-to-short v12, v15

    move/from16 v42, v7

    const/16 v15, 0x8b

    aget-byte v7, v11, v15

    int-to-byte v7, v7

    move-object/from16 v43, v8

    const/16 v15, 0x11

    aget-byte v8, v11, v15

    int-to-byte v8, v8

    invoke-static {v12, v7, v8}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v13, v8

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v7, v13, v8

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v7, v13, v8

    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x3

    aput-object v7, v13, v8

    invoke-virtual {v4, v5, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v2, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/io/InputStream;
    :try_end_c5a
    .catchall {:try_start_bd8 .. :try_end_c5a} :catchall_18f6

    .line 2446
    :goto_c5a
    const/16 v2, 0x10

    int-to-long v7, v2

    const/4 v5, 0x1

    :try_start_c5e
    new-array v12, v5, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v12, v7

    const/16 v5, 0xe

    aget-byte v7, v11, v5

    int-to-short v5, v7

    const/16 v7, 0x8b

    aget-byte v8, v11, v7

    int-to-byte v7, v8

    const/16 v8, 0x11

    aget-byte v13, v11, v8

    int-to-byte v8, v13

    invoke-static {v5, v7, v8}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v7, 0x1ad

    int-to-short v8, v7

    const/16 v7, 0x1ef

    aget-byte v7, v11, v7

    int-to-byte v7, v7

    const/16 v13, 0x1c

    aget-byte v13, v11, v13

    int-to-byte v13, v13

    invoke-static {v8, v7, v13}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v13, v8, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x0

    aput-object v8, v13, v14

    invoke-virtual {v5, v7, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v4, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
    :try_end_ca4
    .catchall {:try_start_c5e .. :try_end_ca4} :catchall_18e2

    .line 2450
    if-eqz v6, :cond_1181

    .line 272
    sget v5, Lcom/appsflyer/internal/b;->getSdkVersion:I

    add-int/lit8 v5, v5, 0x6a

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    rem-int/lit16 v7, v5, 0x80

    sput v7, Lcom/appsflyer/internal/b;->AppsFlyerInAppPurchaseValidatorListener:I

    const/4 v7, 0x2

    rem-int/2addr v5, v7

    if-eqz v5, :cond_cb6

    .line 3639
    const/4 v5, 0x0

    goto :goto_cb7

    :cond_cb6
    const/4 v5, 0x1

    :goto_cb7
    packed-switch v5, :pswitch_data_1ae0

    .line 2452
    :try_start_cba
    sget-object v5, Lcom/appsflyer/internal/b;->onConversionDataSuccess:Ljava/lang/Object;

    goto :goto_cc8

    :pswitch_cbd
    sget-object v5, Lcom/appsflyer/internal/b;->onConversionDataSuccess:Ljava/lang/Object;

    if-nez v5, :cond_cc3

    .line 3639
    const/4 v5, 0x0

    goto :goto_cc4

    :cond_cc3
    const/4 v5, 0x1

    :goto_cc4
    packed-switch v5, :pswitch_data_1ae6

    goto :goto_cd2

    .line 2452
    :goto_cc8
    const/4 v7, 0x0

    invoke-super {v7}, Ljava/lang/Object;->hashCode()I

    if-nez v5, :cond_cd2

    :pswitch_cce
    nop

    .line 272
    move-object/from16 v5, v37

    goto :goto_cd4

    .line 2452
    :cond_cd2
    :goto_cd2
    move-object/from16 v5, v38

    :goto_cd4
    sget-object v7, Lcom/appsflyer/internal/b;->onConversionDataSuccess:Ljava/lang/Object;
    :try_end_cd6
    .catchall {:try_start_cba .. :try_end_cd6} :catchall_b06

    if-nez v7, :cond_cdb

    .line 272
    move-object/from16 v7, v40

    goto :goto_cdd

    .line 2452
    :cond_cdb
    move-object/from16 v7, v34

    .line 3588
    :goto_cdd
    nop

    .line 2452
    sget v8, Lcom/appsflyer/internal/b;->AppsFlyerInAppPurchaseValidatorListener:I

    or-int/lit8 v12, v8, 0x29

    const/4 v13, 0x1

    shl-int/2addr v12, v13

    xor-int/lit8 v8, v8, 0x29

    sub-int/2addr v12, v8

    rem-int/lit16 v8, v12, 0x80

    sput v8, Lcom/appsflyer/internal/b;->getSdkVersion:I

    const/4 v8, 0x2

    rem-int/2addr v12, v8

    if-nez v12, :cond_cef

    .line 3588
    :cond_cef
    const/4 v8, 0x1

    :try_start_cf0
    new-array v12, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v12, v8

    sget v8, Lcom/appsflyer/internal/b;->onValidateInApp:I

    xor-int/lit8 v13, v8, 0xe

    const/16 v14, 0xe

    and-int/2addr v8, v14

    or-int/2addr v8, v13

    int-to-short v8, v8

    aget-byte v13, v11, v24

    int-to-byte v13, v13

    const/16 v14, 0x11

    aget-byte v15, v11, v14

    int-to-byte v14, v15

    invoke-static {v8, v13, v14}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Class;

    const/16 v13, 0x178

    aget-byte v15, v11, v13

    int-to-byte v13, v15

    const/16 v15, 0x11

    aget-byte v11, v11, v15

    int-to-byte v11, v11

    invoke-static {v10, v13, v11}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const/4 v13, 0x0

    aput-object v11, v14, v13

    invoke-virtual {v8, v14}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8
    :try_end_d2e
    .catchall {:try_start_cf0 .. :try_end_d2e} :catchall_1068

    .line 3594
    const/16 v11, 0x400

    :try_start_d30
    new-array v12, v11, [B
    :try_end_d32
    .catchall {:try_start_d30 .. :try_end_d32} :catchall_1065

    move/from16 v13, v42

    .line 3596
    :goto_d34
    if-lez v13, :cond_e12

    .line 3597
    :try_start_d36
    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    move-result v14
    :try_end_d3a
    .catchall {:try_start_d36 .. :try_end_d3a} :catchall_e0d

    const/4 v15, 0x3

    :try_start_d3b
    new-array v2, v15, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x2

    aput-object v14, v2, v15

    const/4 v14, 0x1

    aput-object v3, v2, v14

    const/4 v14, 0x0

    aput-object v12, v2, v14

    sget-object v14, Lcom/appsflyer/internal/b;->AppsFlyerConversionListener:[B

    const/16 v15, 0xe

    aget-byte v11, v14, v15

    int-to-short v11, v11

    move-object/from16 v44, v9

    const/16 v15, 0x8b

    aget-byte v9, v14, v15

    int-to-byte v9, v9

    move/from16 v45, v6

    const/16 v15, 0x11

    aget-byte v6, v14, v15

    int-to-byte v6, v6

    invoke-static {v11, v9, v6}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v9, 0x2cd

    int-to-short v9, v9

    const/16 v11, 0x1ef

    aget-byte v11, v14, v11

    int-to-byte v11, v11

    const/16 v15, 0x5c

    aget-byte v15, v14, v15

    int-to-byte v15, v15

    invoke-static {v9, v11, v15}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x3

    new-array v15, v11, [Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v1, v15, v11

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v18, 0x1

    aput-object v11, v15, v18

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x2

    aput-object v11, v15, v16

    invoke-virtual {v6, v9, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_d98
    .catchall {:try_start_d3b .. :try_end_d98} :catchall_e03

    const/4 v6, -0x1

    if-eq v2, v6, :cond_e16

    .line 3600
    const/4 v6, 0x3

    :try_start_d9c
    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v11, 0x2

    aput-object v6, v9, v11

    const/4 v6, 0x1

    aput-object v3, v9, v6

    const/4 v6, 0x0

    aput-object v12, v9, v6

    sget v6, Lcom/appsflyer/internal/b;->onValidateInApp:I

    xor-int/lit8 v11, v6, 0xe

    const/16 v15, 0xe

    and-int/2addr v6, v15

    or-int/2addr v6, v11

    int-to-short v6, v6

    aget-byte v11, v14, v24

    int-to-byte v11, v11

    move-object/from16 v46, v12

    const/16 v15, 0x11

    aget-byte v12, v14, v15

    int-to-byte v12, v12

    invoke-static {v6, v11, v12}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v11, 0x2db

    int-to-short v11, v11

    aget-byte v12, v14, v28

    int-to-byte v12, v12

    const/16 v15, 0xe

    aget-byte v14, v14, v15

    int-to-byte v14, v14

    invoke-static {v11, v12, v14}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x3

    new-array v14, v12, [Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v1, v14, v12

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x1

    aput-object v12, v14, v15

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x2

    aput-object v12, v14, v15

    invoke-virtual {v6, v11, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_dec
    .catchall {:try_start_d9c .. :try_end_dec} :catchall_df9

    .line 3601
    sub-int/2addr v13, v2

    move-object/from16 v9, v44

    move/from16 v6, v45

    move-object/from16 v12, v46

    const/16 v2, 0x10

    const/16 v11, 0x400

    goto/16 :goto_d34

    .line 3600
    :catchall_df9
    move-exception v0

    move-object v2, v0

    :try_start_dfb
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_e02

    throw v4

    :cond_e02
    throw v2

    .line 3597
    :catchall_e03
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_e0c

    throw v4

    :cond_e0c
    throw v2
    :try_end_e0d
    .catchall {:try_start_dfb .. :try_end_e0d} :catchall_e0d

    .line 3633
    :catchall_e0d
    move-exception v0

    move-object v2, v0

    const/4 v12, 0x6

    goto/16 :goto_10f7

    .line 3596
    :cond_e12
    move/from16 v45, v6

    move-object/from16 v44, v9

    .line 3606
    :cond_e16
    :try_start_e16
    sget v2, Lcom/appsflyer/internal/b;->onValidateInApp:I

    or-int/lit8 v4, v2, 0xe

    int-to-short v4, v4

    sget-object v6, Lcom/appsflyer/internal/b;->AppsFlyerConversionListener:[B

    aget-byte v9, v6, v24

    int-to-byte v9, v9

    const/16 v11, 0x11

    aget-byte v12, v6, v11

    int-to-byte v11, v12

    invoke-static {v4, v9, v11}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v9, 0x17e

    int-to-short v9, v9

    aget-byte v11, v6, v28

    int-to-byte v11, v11

    const/16 v12, 0x226

    aget-byte v13, v6, v12

    int-to-byte v12, v13

    invoke-static {v9, v11, v12}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    invoke-virtual {v4, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v8, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_e45
    .catchall {:try_start_e16 .. :try_end_e45} :catchall_105b

    const/16 v9, 0x66

    int-to-short v9, v9

    const/4 v11, 0x0

    :try_start_e49
    aget-byte v12, v6, v11

    int-to-byte v11, v12

    const/16 v12, 0x11

    aget-byte v13, v6, v12

    int-to-byte v12, v13

    invoke-static {v9, v11, v12}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const/16 v11, 0x280

    int-to-short v11, v11

    const/16 v12, 0x1ef

    aget-byte v12, v6, v12

    int-to-byte v12, v12

    const/16 v13, 0x1c

    aget-byte v13, v6, v13

    int-to-byte v13, v13

    invoke-static {v11, v12, v13}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v9, v4, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e72
    .catchall {:try_start_e49 .. :try_end_e72} :catchall_1050

    .line 3607
    nop

    .line 2452
    sget v4, Lcom/appsflyer/internal/b;->AppsFlyerInAppPurchaseValidatorListener:I

    and-int/lit8 v9, v4, 0x27

    or-int/lit8 v4, v4, 0x27

    add-int/2addr v9, v4

    rem-int/lit16 v4, v9, 0x80

    sput v4, Lcom/appsflyer/internal/b;->getSdkVersion:I

    const/4 v4, 0x2

    rem-int/2addr v9, v4

    if-nez v9, :cond_e82

    .line 3607
    :cond_e82
    or-int/lit8 v4, v2, 0xe

    int-to-short v4, v4

    :try_start_e85
    aget-byte v9, v6, v24

    int-to-byte v9, v9

    const/16 v11, 0x11

    aget-byte v12, v6, v11

    int-to-byte v11, v12

    invoke-static {v4, v9, v11}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v9, 0x150

    int-to-short v9, v9

    aget-byte v11, v6, v28

    int-to-byte v11, v11

    const/16 v12, 0x48

    aget-byte v13, v6, v12

    int-to-byte v12, v13

    invoke-static {v9, v11, v12}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    invoke-virtual {v4, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v8, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_eac
    .catchall {:try_start_e85 .. :try_end_eac} :catchall_1045

    .line 3619
    const/16 v4, 0x2ca

    int-to-short v4, v4

    const/16 v8, 0xd

    :try_start_eb1
    aget-byte v8, v6, v8

    int-to-byte v8, v8

    const/16 v9, 0x1e0

    aget-byte v11, v6, v9

    int-to-byte v9, v11

    invoke-static {v4, v8, v9}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 3620
    xor-int/lit16 v8, v2, 0x108

    and-int/lit16 v2, v2, 0x108

    or-int/2addr v2, v8

    int-to-short v2, v2

    const/16 v8, 0x1de

    aget-byte v8, v6, v8

    neg-int v8, v8

    int-to-byte v8, v8

    const/16 v9, 0x23

    aget-byte v9, v6, v9

    int-to-byte v9, v9

    invoke-static {v2, v8, v9}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x3

    new-array v9, v8, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v8, v9, v11

    const-class v8, Ljava/lang/String;

    const/4 v11, 0x1

    aput-object v8, v9, v11

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x2

    aput-object v8, v9, v11

    invoke-virtual {v4, v2, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3624
    const/4 v4, 0x3

    new-array v8, v4, [Ljava/lang/Object;
    :try_end_eef
    .catchall {:try_start_eb1 .. :try_end_eef} :catchall_1065

    const/16 v4, 0x178

    :try_start_ef1
    aget-byte v9, v6, v4

    int-to-byte v4, v9

    const/16 v9, 0x11

    aget-byte v11, v6, v9

    int-to-byte v9, v11

    invoke-static {v10, v4, v9}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v9, 0x11c

    int-to-short v9, v9

    const/4 v11, 0x6

    aget-byte v12, v6, v11

    int-to-byte v11, v12

    const/16 v12, 0x226

    aget-byte v13, v6, v12

    int-to-byte v12, v13

    invoke-static {v9, v11, v12}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v5, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_f1a
    .catchall {:try_start_ef1 .. :try_end_f1a} :catchall_103b

    const/4 v11, 0x0

    :try_start_f1b
    aput-object v4, v8, v11
    :try_end_f1d
    .catchall {:try_start_f1b .. :try_end_f1d} :catchall_1065

    const/16 v4, 0x178

    :try_start_f1f
    aget-byte v11, v6, v4

    int-to-byte v4, v11

    const/16 v11, 0x11

    aget-byte v12, v6, v11

    int-to-byte v11, v12

    invoke-static {v10, v4, v11}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4
    :try_end_f2f
    .catchall {:try_start_f1f .. :try_end_f2f} :catchall_1030

    const/4 v12, 0x6

    :try_start_f30
    aget-byte v11, v6, v12

    int-to-byte v11, v11

    const/16 v13, 0x226

    aget-byte v14, v6, v13

    int-to-byte v13, v14

    invoke-static {v9, v11, v13}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    invoke-virtual {v4, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v7, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_f45
    .catchall {:try_start_f30 .. :try_end_f45} :catchall_102e

    const/4 v9, 0x1

    :try_start_f46
    aput-object v4, v8, v9

    .line 3627
    const/4 v4, 0x2

    aput-object v3, v8, v4

    .line 3624
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_f50
    .catchall {:try_start_f46 .. :try_end_f50} :catchall_1073

    .line 3633
    const/16 v4, 0x178

    :try_start_f52
    aget-byte v8, v6, v4

    int-to-byte v4, v8

    const/16 v8, 0x11

    aget-byte v9, v6, v8

    int-to-byte v8, v9

    invoke-static {v10, v4, v8}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v8, 0x193

    int-to-short v8, v8

    const/16 v9, 0xd2

    aget-byte v9, v6, v9

    int-to-byte v9, v9

    const/16 v11, 0x1e0

    aget-byte v13, v6, v11

    int-to-byte v11, v13

    invoke-static {v8, v9, v11}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    invoke-virtual {v4, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v5, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_f81
    .catchall {:try_start_f52 .. :try_end_f81} :catchall_1024

    .line 3634
    const/16 v4, 0x178

    :try_start_f83
    aget-byte v5, v6, v4

    int-to-byte v4, v5

    const/16 v5, 0x11

    aget-byte v9, v6, v5

    int-to-byte v5, v9

    invoke-static {v10, v4, v5}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0xd2

    aget-byte v5, v6, v5

    int-to-byte v5, v5

    const/16 v9, 0x1e0

    aget-byte v11, v6, v9

    int-to-byte v9, v11

    invoke-static {v8, v5, v9}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_faf
    .catchall {:try_start_f83 .. :try_end_faf} :catchall_101a

    .line 3641
    sget v4, Lcom/appsflyer/internal/b;->AppsFlyerInAppPurchaseValidatorListener:I

    xor-int/lit8 v5, v4, 0x63

    and-int/lit8 v7, v4, 0x63

    const/4 v8, 0x1

    shl-int/2addr v7, v8

    add-int/2addr v5, v7

    rem-int/lit16 v7, v5, 0x80

    sput v7, Lcom/appsflyer/internal/b;->getSdkVersion:I

    const/4 v7, 0x2

    rem-int/2addr v5, v7

    if-nez v5, :cond_fcd

    .line 3639
    :try_start_fc0
    sget-object v5, Lcom/appsflyer/internal/b;->onDeepLinking:Ljava/lang/Object;

    const/4 v7, 0x0

    array-length v8, v7

    if-nez v5, :cond_fc8

    const/4 v5, 0x1

    goto :goto_fc9

    :cond_fc8
    const/4 v5, 0x0

    :goto_fc9
    packed-switch v5, :pswitch_data_1aec

    goto :goto_1012

    :cond_fcd
    sget-object v5, Lcom/appsflyer/internal/b;->onDeepLinking:Ljava/lang/Object;
    :try_end_fcf
    .catchall {:try_start_fc0 .. :try_end_fcf} :catchall_b06

    if-nez v5, :cond_1012

    .line 2452
    :pswitch_fd1
    xor-int/lit8 v5, v4, 0x6d

    and-int/lit8 v4, v4, 0x6d

    const/4 v7, 0x1

    shl-int/2addr v4, v7

    add-int/2addr v5, v4

    rem-int/lit16 v4, v5, 0x80

    sput v4, Lcom/appsflyer/internal/b;->getSdkVersion:I

    const/4 v4, 0x2

    rem-int/2addr v5, v4

    if-nez v5, :cond_fe7

    .line 3641
    :try_start_fe0
    const-class v4, Lcom/appsflyer/internal/b;

    const/16 v5, 0x48

    const/4 v7, 0x0

    div-int/2addr v5, v7

    goto :goto_fe9

    :cond_fe7
    const-class v4, Lcom/appsflyer/internal/b;
    :try_end_fe9
    .catchall {:try_start_fe0 .. :try_end_fe9} :catchall_b06

    :goto_fe9
    :try_start_fe9
    const-class v5, Ljava/lang/Class;

    const/16 v7, 0x1aa

    int-to-short v7, v7

    const/16 v8, 0x170

    aget-byte v9, v6, v8

    int-to-byte v8, v9

    const/16 v9, 0x226

    aget-byte v6, v6, v9

    int-to-byte v6, v6

    invoke-static {v7, v8, v6}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1005
    .catchall {:try_start_fe9 .. :try_end_1005} :catchall_1008

    :try_start_1005
    sput-object v4, Lcom/appsflyer/internal/b;->onDeepLinking:Ljava/lang/Object;

    goto :goto_1012

    :catchall_1008
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_1011

    throw v4

    :cond_1011
    throw v2

    .line 3644
    :cond_1012
    :goto_1012
    nop

    .line 2452
    move-object/from16 v29, v3

    const/16 v7, 0x1ad

    const/4 v13, 0x4

    goto/16 :goto_14df

    .line 3634
    :catchall_101a
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_1023

    :goto_1022
    throw v4

    :cond_1023
    throw v2

    .line 3633
    :catchall_1024
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_102d

    :goto_102c
    throw v4

    :cond_102d
    throw v2
    :try_end_102e
    .catchall {:try_start_1005 .. :try_end_102e} :catchall_b06

    .line 3624
    :catchall_102e
    move-exception v0

    goto :goto_1032

    :catchall_1030
    move-exception v0

    const/4 v12, 0x6

    :goto_1032
    move-object v2, v0

    :try_start_1033
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_103a

    :goto_1039
    throw v4

    :cond_103a
    throw v2

    :catchall_103b
    move-exception v0

    const/4 v12, 0x6

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_103a

    goto :goto_1039

    .line 3607
    :catchall_1045
    move-exception v0

    const/4 v12, 0x6

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_104f

    throw v4

    :cond_104f
    throw v2

    .line 3606
    :catchall_1050
    move-exception v0

    const/4 v12, 0x6

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_105a

    :goto_1059
    throw v4

    :cond_105a
    throw v2

    :catchall_105b
    move-exception v0

    const/4 v12, 0x6

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4
    :try_end_1062
    .catchall {:try_start_1033 .. :try_end_1062} :catchall_1073

    if-eqz v4, :cond_105a

    goto :goto_1059

    .line 3633
    :catchall_1065
    move-exception v0

    const/4 v12, 0x6

    goto :goto_1074

    .line 3588
    :catchall_1068
    move-exception v0

    const/4 v12, 0x6

    move-object v2, v0

    :try_start_106b
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_1072

    throw v4

    :cond_1072
    throw v2
    :try_end_1073
    .catch Ljava/lang/Exception; {:try_start_106b .. :try_end_1073} :catch_1077
    .catchall {:try_start_106b .. :try_end_1073} :catchall_1073

    .line 3633
    :catchall_1073
    move-exception v0

    :goto_1074
    move-object v2, v0

    goto/16 :goto_10f7

    .line 3590
    :catch_1077
    move-exception v0

    move-object v2, v0

    .line 3592
    :try_start_1079
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x263

    int-to-short v6, v6

    sget-object v8, Lcom/appsflyer/internal/b;->AppsFlyerConversionListener:[B

    aget-byte v9, v8, v28

    int-to-byte v9, v9

    const/16 v11, 0x11b

    aget-byte v11, v8, v11

    int-to-byte v11, v11

    invoke-static {v6, v9, v11}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0x2ca

    int-to-short v6, v6

    const/16 v9, 0x74

    aget-byte v9, v8, v9

    int-to-byte v9, v9

    const/16 v11, 0x15e

    aget-byte v11, v8, v11

    xor-int/lit8 v13, v11, -0x1

    const/4 v14, -0x1

    and-int/2addr v11, v14

    const/4 v14, 0x1

    shl-int/2addr v11, v14

    add-int/2addr v13, v11

    int-to-byte v11, v13

    invoke-static {v6, v9, v11}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_10b7
    .catchall {:try_start_1079 .. :try_end_10b7} :catchall_1073

    const/4 v6, 0x2

    :try_start_10b8
    new-array v9, v6, [Ljava/lang/Object;

    const/4 v6, 0x1

    aput-object v2, v9, v6

    const/4 v2, 0x0

    aput-object v4, v9, v2

    const/16 v2, 0xd1

    int-to-short v2, v2

    const/16 v4, 0x8b

    aget-byte v6, v8, v4

    int-to-byte v4, v6

    const/16 v6, 0x11

    aget-byte v8, v8, v6

    int-to-byte v6, v8

    invoke-static {v2, v4, v6}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v4, v6, v8

    const-class v4, Ljava/lang/Throwable;

    const/4 v8, 0x1

    aput-object v4, v6, v8

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_10ed
    .catchall {:try_start_10b8 .. :try_end_10ed} :catchall_10ed

    :catchall_10ed
    move-exception v0

    move-object v2, v0

    :try_start_10ef
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_10f6

    throw v4

    :cond_10f6
    throw v2
    :try_end_10f7
    .catchall {:try_start_10ef .. :try_end_10f7} :catchall_1073

    .line 3633
    :goto_10f7
    :try_start_10f7
    sget-object v4, Lcom/appsflyer/internal/b;->AppsFlyerConversionListener:[B

    const/16 v6, 0x178

    aget-byte v8, v4, v6

    int-to-byte v6, v8

    const/16 v8, 0x11

    aget-byte v9, v4, v8

    int-to-byte v8, v9

    invoke-static {v10, v6, v8}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v8, 0x193

    int-to-short v8, v8

    const/16 v9, 0xd2

    aget-byte v9, v4, v9

    int-to-byte v9, v9

    const/16 v11, 0x1e0

    aget-byte v13, v4, v11

    int-to-byte v11, v13

    invoke-static {v8, v9, v11}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    invoke-virtual {v6, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v5, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_112a
    .catchall {:try_start_10f7 .. :try_end_112a} :catchall_1175

    .line 3634
    nop

    .line 3639
    sget v5, Lcom/appsflyer/internal/b;->getSdkVersion:I

    or-int/lit8 v6, v5, 0x3f

    const/4 v9, 0x1

    shl-int/2addr v6, v9

    xor-int/lit8 v5, v5, 0x3f

    sub-int/2addr v6, v5

    rem-int/lit16 v5, v6, 0x80

    sput v5, Lcom/appsflyer/internal/b;->AppsFlyerInAppPurchaseValidatorListener:I

    const/4 v5, 0x2

    rem-int/2addr v6, v5

    if-eqz v6, :cond_113c

    .line 3634
    :cond_113c
    const/16 v5, 0x178

    :try_start_113e
    aget-byte v6, v4, v5

    int-to-byte v6, v6

    const/16 v9, 0x11

    aget-byte v11, v4, v9

    int-to-byte v9, v11

    invoke-static {v10, v6, v9}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v9, 0xd2

    aget-byte v9, v4, v9

    int-to-byte v9, v9

    const/16 v11, 0x1e0

    aget-byte v4, v4, v11

    int-to-byte v4, v4

    invoke-static {v8, v9, v4}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v6, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_116a
    .catchall {:try_start_113e .. :try_end_116a} :catchall_116b

    .line 3635
    :try_start_116a
    throw v2

    .line 3634
    :catchall_116b
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_1023

    goto/16 :goto_1022

    .line 3633
    :catchall_1175
    move-exception v0

    const/16 v5, 0x178

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4
    :try_end_117d
    .catchall {:try_start_116a .. :try_end_117d} :catchall_b06

    if-eqz v4, :cond_102d

    goto/16 :goto_102c

    .line 2450
    :cond_1181
    move/from16 v45, v6

    move-object/from16 v44, v9

    const/16 v5, 0x178

    const/4 v12, 0x6

    const/4 v14, -0x1

    .line 2461
    nop

    .line 3657
    :try_start_118a
    new-instance v2, Ljava/util/zip/ZipInputStream;

    invoke-direct {v2, v4}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3658
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v4
    :try_end_1193
    .catchall {:try_start_118a .. :try_end_1193} :catchall_1930

    .line 3660
    nop

    .line 3639
    sget v6, Lcom/appsflyer/internal/b;->getSdkVersion:I

    add-int/lit8 v6, v6, 0x1f

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/appsflyer/internal/b;->AppsFlyerInAppPurchaseValidatorListener:I

    const/4 v7, 0x2

    rem-int/2addr v6, v7

    if-eqz v6, :cond_11a0

    .line 3660
    :cond_11a0
    const/4 v6, 0x1

    :try_start_11a1
    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v7, v6

    const/16 v2, 0x3d1

    int-to-short v2, v2

    const/4 v6, 0x4

    aget-byte v8, v11, v6

    int-to-byte v6, v8

    const/16 v8, 0x11

    aget-byte v9, v11, v8

    int-to-byte v8, v9

    invoke-static {v2, v6, v8}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Class;

    const/16 v8, 0xe

    aget-byte v13, v11, v8

    int-to-short v8, v13

    const/16 v13, 0x8b

    aget-byte v15, v11, v13

    int-to-byte v13, v15

    const/16 v15, 0x11

    aget-byte v5, v11, v15

    int-to-byte v5, v5

    invoke-static {v8, v13, v5}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v8, 0x0

    aput-object v5, v9, v8

    invoke-virtual {v6, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_11df
    .catchall {:try_start_11a1 .. :try_end_11df} :catchall_18cf

    :try_start_11df
    sget v6, Lcom/appsflyer/internal/b;->onValidateInApp:I

    xor-int/lit16 v7, v6, 0x102

    and-int/lit16 v6, v6, 0x102

    or-int/2addr v6, v7

    int-to-short v6, v6

    const/4 v7, 0x2

    aget-byte v8, v11, v7

    int-to-byte v7, v8

    const/16 v8, 0x11

    aget-byte v9, v11, v8

    int-to-byte v8, v9

    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_1201
    .catchall {:try_start_11df .. :try_end_1201} :catchall_18bb

    .line 3663
    const/16 v7, 0x400

    :try_start_1203
    new-array v7, v7, [B
    :try_end_1205
    .catchall {:try_start_1203 .. :try_end_1205} :catchall_1930

    .line 3664
    const/4 v8, 0x0

    .line 3666
    :goto_1206
    const/4 v9, 0x1

    :try_start_1207
    new-array v11, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v7, v11, v9

    sget-object v9, Lcom/appsflyer/internal/b;->AppsFlyerConversionListener:[B

    const/4 v13, 0x4

    aget-byte v15, v9, v13

    int-to-byte v13, v15

    const/16 v15, 0x11

    aget-byte v12, v9, v15

    int-to-byte v12, v12

    invoke-static {v2, v13, v12}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    const/16 v13, 0x2cd

    int-to-short v13, v13

    const/16 v15, 0x1ef

    aget-byte v15, v9, v15

    int-to-byte v15, v15

    const/16 v29, 0x5c

    aget-byte v14, v9, v29

    int-to-byte v14, v14

    invoke-static {v13, v15, v14}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Class;

    const/4 v14, 0x0

    aput-object v1, v15, v14

    invoke-virtual {v12, v13, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    invoke-virtual {v12, v5, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11
    :try_end_1244
    .catchall {:try_start_1207 .. :try_end_1244} :catchall_18a7

    if-lez v11, :cond_12c7

    int-to-long v12, v8

    .line 3667
    :try_start_1247
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v14
    :try_end_124b
    .catchall {:try_start_1247 .. :try_end_124b} :catchall_12c1

    cmp-long v29, v12, v14

    if-gez v29, :cond_1251

    .line 3639
    const/4 v12, 0x0

    goto :goto_1252

    :cond_1251
    const/4 v12, 0x1

    :goto_1252
    packed-switch v12, :pswitch_data_1af2

    move-object/from16 v29, v3

    goto/16 :goto_12c9

    .line 3669
    :pswitch_1259
    const/4 v12, 0x3

    :try_start_125a
    new-array v13, v12, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v14, 0x2

    aput-object v12, v13, v14

    const/4 v12, 0x1

    aput-object v3, v13, v12

    const/4 v12, 0x0

    aput-object v7, v13, v12

    sget v12, Lcom/appsflyer/internal/b;->onValidateInApp:I

    xor-int/lit16 v14, v12, 0x102

    and-int/lit16 v12, v12, 0x102

    or-int/2addr v12, v14

    int-to-short v12, v12

    const/4 v14, 0x2

    aget-byte v15, v9, v14
    :try_end_1274
    .catchall {:try_start_125a .. :try_end_1274} :catchall_12b3

    int-to-byte v14, v15

    move-object/from16 v29, v3

    const/16 v15, 0x11

    :try_start_1279
    aget-byte v3, v9, v15

    int-to-byte v3, v3

    invoke-static {v12, v14, v3}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/16 v12, 0x2db

    int-to-short v12, v12

    aget-byte v14, v9, v28

    int-to-byte v14, v14

    const/16 v15, 0xe

    aget-byte v9, v9, v15

    int-to-byte v9, v9

    invoke-static {v12, v14, v9}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x3

    new-array v14, v12, [Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v1, v14, v12

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x1

    aput-object v12, v14, v15

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x2

    aput-object v12, v14, v15

    invoke-virtual {v3, v9, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v6, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12aa
    .catchall {:try_start_1279 .. :try_end_12aa} :catchall_12b1

    .line 3670
    add-int/2addr v8, v11

    move-object/from16 v3, v29

    const/4 v12, 0x6

    const/4 v14, -0x1

    goto/16 :goto_1206

    .line 3669
    :catchall_12b1
    move-exception v0

    goto :goto_12b6

    :catchall_12b3
    move-exception v0

    move-object/from16 v29, v3

    :goto_12b6
    move-object v2, v0

    :try_start_12b7
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_12be

    throw v3

    :cond_12be
    throw v2
    :try_end_12bf
    .catchall {:try_start_12b7 .. :try_end_12bf} :catchall_12bf

    .line 240
    :catchall_12bf
    move-exception v0

    goto :goto_12c4

    :catchall_12c1
    move-exception v0

    move-object/from16 v29, v3

    :goto_12c4
    move-object v2, v0

    goto/16 :goto_961

    .line 3666
    :cond_12c7
    move-object/from16 v29, v3

    .line 3672
    :goto_12c9
    :try_start_12c9
    sget v3, Lcom/appsflyer/internal/b;->onValidateInApp:I

    xor-int/lit16 v4, v3, 0x102

    and-int/lit16 v3, v3, 0x102

    or-int/2addr v3, v4

    int-to-short v3, v3

    const/4 v4, 0x2

    aget-byte v7, v9, v4

    int-to-byte v4, v7

    const/16 v7, 0x11

    aget-byte v8, v9, v7

    int-to-byte v7, v8

    invoke-static {v3, v4, v7}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/16 v4, 0x51

    int-to-short v4, v4

    const/16 v7, 0x1ad

    aget-byte v8, v9, v7

    int-to-byte v8, v8

    const/16 v11, 0x2e

    aget-byte v11, v9, v11

    int-to-byte v11, v11

    invoke-static {v4, v8, v11}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_12fc
    .catchall {:try_start_12c9 .. :try_end_12fc} :catchall_1895

    .line 3676
    const/4 v4, 0x4

    :try_start_12fd
    aget-byte v8, v9, v4

    int-to-byte v4, v8

    const/16 v8, 0x11

    aget-byte v11, v9, v8

    int-to-byte v8, v11

    invoke-static {v2, v4, v8}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v4, 0x150

    int-to-short v4, v4

    aget-byte v8, v9, v28

    int-to-byte v8, v8

    const/16 v11, 0x48

    aget-byte v9, v9, v11

    int-to-byte v9, v9

    invoke-static {v4, v8, v9}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v2, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1324
    .catchall {:try_start_12fd .. :try_end_1324} :catchall_1325

    goto :goto_1330

    :catchall_1325
    move-exception v0

    move-object v2, v0

    :try_start_1327
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_132e

    throw v4

    :cond_132e
    throw v2
    :try_end_132f
    .catch Ljava/io/IOException; {:try_start_1327 .. :try_end_132f} :catch_132f
    .catchall {:try_start_1327 .. :try_end_132f} :catchall_12bf

    :catch_132f
    move-exception v0

    .line 3682
    :goto_1330
    nop

    .line 272
    nop

    .line 3682
    :try_start_1332
    sget v2, Lcom/appsflyer/internal/b;->onValidateInApp:I

    or-int/lit16 v2, v2, 0x102

    int-to-short v2, v2

    sget-object v4, Lcom/appsflyer/internal/b;->AppsFlyerConversionListener:[B

    const/4 v5, 0x2

    aget-byte v8, v4, v5

    int-to-byte v5, v8

    const/16 v8, 0x11

    aget-byte v9, v4, v8

    int-to-byte v8, v9

    invoke-static {v2, v5, v8}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v5, 0x150

    int-to-short v5, v5

    aget-byte v8, v4, v28

    int-to-byte v8, v8

    const/16 v9, 0x48

    aget-byte v4, v4, v9

    int-to-byte v4, v4

    invoke-static {v5, v8, v4}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1361
    .catchall {:try_start_1332 .. :try_end_1361} :catchall_1362

    goto :goto_136d

    :catchall_1362
    move-exception v0

    move-object v2, v0

    :try_start_1364
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_136b

    throw v4

    :cond_136b
    throw v2
    :try_end_136c
    .catch Ljava/io/IOException; {:try_start_1364 .. :try_end_136c} :catch_136c
    .catchall {:try_start_1364 .. :try_end_136c} :catchall_12bf

    :catch_136c
    move-exception v0

    .line 3686
    :goto_136d
    :try_start_136d
    const-class v2, Lcom/appsflyer/internal/b;
    :try_end_136f
    .catchall {:try_start_136d .. :try_end_136f} :catchall_1892

    .line 3639
    sget v4, Lcom/appsflyer/internal/b;->getSdkVersion:I

    and-int/lit8 v5, v4, 0x5d

    or-int/lit8 v4, v4, 0x5d

    add-int/2addr v5, v4

    rem-int/lit16 v4, v5, 0x80

    sput v4, Lcom/appsflyer/internal/b;->AppsFlyerInAppPurchaseValidatorListener:I

    const/4 v4, 0x2

    rem-int/2addr v5, v4

    if-eqz v5, :cond_137e

    .line 3686
    :cond_137e
    :try_start_137e
    const-class v4, Ljava/lang/Class;

    const/16 v5, 0x1aa

    int-to-short v5, v5

    sget-object v6, Lcom/appsflyer/internal/b;->AppsFlyerConversionListener:[B

    const/16 v8, 0x170

    aget-byte v9, v6, v8

    int-to-byte v8, v9

    const/16 v9, 0x226

    aget-byte v11, v6, v9

    int-to-byte v9, v11

    invoke-static {v5, v8, v9}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_139c
    .catchall {:try_start_137e .. :try_end_139c} :catchall_1880

    .line 3691
    const/16 v4, 0x329

    int-to-short v4, v4

    const/16 v5, 0xe

    :try_start_13a1
    aget-byte v8, v6, v5

    int-to-byte v5, v8

    const/16 v8, 0x1e0

    aget-byte v9, v6, v8

    int-to-byte v8, v9

    invoke-static {v4, v5, v8}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 3692
    const/4 v5, 0x2

    new-array v8, v5, [Ljava/lang/Class;

    const/16 v5, 0x36d

    int-to-short v5, v5

    const/16 v9, 0x8b

    aget-byte v11, v6, v9

    int-to-byte v9, v11

    const/16 v11, 0x11

    aget-byte v12, v6, v11

    int-to-byte v11, v12

    invoke-static {v5, v9, v11}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const/4 v11, 0x0

    aput-object v9, v8, v11

    const/16 v9, 0x25b

    int-to-short v9, v9

    const/16 v11, 0xd

    aget-byte v11, v6, v11

    int-to-byte v11, v11

    const/16 v12, 0x11

    aget-byte v13, v6, v12

    int-to-byte v12, v13

    invoke-static {v9, v11, v12}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const/4 v11, 0x1

    aput-object v9, v8, v11

    invoke-virtual {v4, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 3694
    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;
    :try_end_13eb
    .catchall {:try_start_13a1 .. :try_end_13eb} :catchall_1892

    :try_start_13eb
    new-array v8, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v8, v11

    const/16 v3, 0x8b

    aget-byte v11, v6, v3

    int-to-byte v3, v11

    const/16 v11, 0x11

    aget-byte v12, v6, v11

    int-to-byte v11, v12

    invoke-static {v5, v3, v11}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/16 v5, 0x249

    aget-byte v5, v6, v5

    neg-int v5, v5

    int-to-short v5, v5

    const/16 v11, 0x1ef

    aget-byte v11, v6, v11

    int-to-byte v11, v11

    const/16 v12, 0xe

    aget-byte v13, v6, v12

    int-to-byte v12, v13

    invoke-static {v5, v11, v12}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v1, v12, v11

    invoke-virtual {v3, v5, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1425
    .catchall {:try_start_13eb .. :try_end_1425} :catchall_186e

    :try_start_1425
    aput-object v3, v9, v11

    const/4 v3, 0x1

    aput-object v2, v9, v3

    invoke-virtual {v4, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_142e
    .catchall {:try_start_1425 .. :try_end_142e} :catchall_1892

    .line 3707
    const/16 v4, 0x2ad

    int-to-short v4, v4

    const/16 v5, 0x1c

    :try_start_1433
    aget-byte v5, v6, v5

    int-to-byte v5, v5

    const/16 v8, 0x1e0

    aget-byte v9, v6, v8

    int-to-byte v8, v9

    invoke-static {v4, v5, v8}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 3708
    const/16 v5, 0xaa

    int-to-short v5, v5

    const/16 v8, 0x32e

    aget-byte v8, v6, v8

    int-to-byte v8, v8

    const/4 v9, 0x2

    aget-byte v11, v6, v9

    int-to-byte v9, v11

    invoke-static {v5, v8, v9}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 3709
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3711
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 3712
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 3714
    const/16 v9, 0x15a

    aget-byte v9, v6, v9

    int-to-short v9, v9

    aget-byte v11, v6, v24

    int-to-byte v11, v11

    const/4 v12, 0x4

    aget-byte v13, v6, v12

    int-to-byte v12, v13

    invoke-static {v9, v11, v12}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 3715
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3717
    const/16 v11, 0x168

    int-to-short v11, v11

    const/16 v12, 0x23

    aget-byte v12, v6, v12

    int-to-byte v12, v12

    const/4 v13, 0x4

    aget-byte v6, v6, v13

    int-to-byte v6, v6

    invoke-static {v11, v12, v6}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 3718
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3720
    invoke-virtual {v9, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 3721
    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 3723
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 3726
    new-instance v11, Ljava/util/ArrayList;

    check-cast v8, Ljava/util/List;

    invoke-direct {v11, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3728
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 3729
    invoke-virtual {v8}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v8

    .line 3731
    invoke-static {v5}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v12

    .line 3732
    invoke-static {v8, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v8
    :try_end_14b6
    .catch Ljava/lang/Exception; {:try_start_1433 .. :try_end_14b6} :catch_17e9
    .catchall {:try_start_1433 .. :try_end_14b6} :catchall_1892

    .line 3733
    const/4 v14, 0x0

    :goto_14b7
    if-ge v14, v12, :cond_14bb

    .line 3639
    const/4 v15, 0x0

    goto :goto_14bc

    :cond_14bb
    const/4 v15, 0x1

    :goto_14bc
    packed-switch v15, :pswitch_data_1af8

    .line 3735
    move-object/from16 v7, v43

    const/16 v15, 0x1e0

    const/16 v17, 0x170

    const/16 v20, 0x226

    const/16 v21, 0xe

    const/16 v22, 0x48

    :try_start_14cb
    invoke-static {v5, v14}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v13
    :try_end_14cf
    .catch Ljava/lang/Exception; {:try_start_14cb .. :try_end_14cf} :catch_17e7
    .catchall {:try_start_14cb .. :try_end_14cf} :catchall_17e4

    goto/16 :goto_17c8

    .line 3738
    :pswitch_14d1
    :try_start_14d1
    invoke-virtual {v9, v4, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3739
    invoke-virtual {v6, v4, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_14d7
    .catch Ljava/lang/Exception; {:try_start_14d1 .. :try_end_14d7} :catch_17bd
    .catchall {:try_start_14d1 .. :try_end_14d7} :catchall_17b3

    .line 3749
    :try_start_14d7
    sget-object v2, Lcom/appsflyer/internal/b;->onDeepLinking:Ljava/lang/Object;
    :try_end_14d9
    .catchall {:try_start_14d7 .. :try_end_14d9} :catchall_17b3

    if-nez v2, :cond_14dd

    .line 3751
    :try_start_14db
    sput-object v3, Lcom/appsflyer/internal/b;->onDeepLinking:Ljava/lang/Object;
    :try_end_14dd
    .catchall {:try_start_14db .. :try_end_14dd} :catchall_12bf

    .line 3754
    :cond_14dd
    nop

    .line 2461
    move-object v2, v3

    .line 2467
    :goto_14df
    if-eqz v45, :cond_14e3

    .line 3639
    const/4 v3, 0x1

    goto :goto_14e4

    :cond_14e3
    const/4 v3, 0x0

    :goto_14e4
    packed-switch v3, :pswitch_data_1afe

    sget v3, Lcom/appsflyer/internal/b;->AppsFlyerInAppPurchaseValidatorListener:I

    xor-int/lit8 v4, v3, 0x4d

    and-int/lit8 v3, v3, 0x4d

    const/4 v5, 0x1

    shl-int/2addr v3, v5

    add-int/2addr v4, v3

    rem-int/lit16 v3, v4, 0x80

    sput v3, Lcom/appsflyer/internal/b;->getSdkVersion:I

    const/4 v3, 0x2

    rem-int/2addr v4, v3

    if-nez v4, :cond_1559

    goto :goto_1559

    .line 2494
    :pswitch_14f9
    const/16 v3, 0x25b

    int-to-short v3, v3

    :try_start_14fc
    sget-object v4, Lcom/appsflyer/internal/b;->AppsFlyerConversionListener:[B

    const/16 v5, 0xd

    aget-byte v5, v4, v5

    int-to-byte v5, v5

    const/16 v6, 0x11

    aget-byte v8, v4, v6

    int-to-byte v6, v8

    invoke-static {v3, v5, v6}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 2495
    const/16 v5, 0x321

    aget-byte v5, v4, v5

    xor-int/lit8 v6, v5, 0x1

    const/4 v8, 0x1

    and-int/2addr v5, v8

    shl-int/2addr v5, v8

    add-int/2addr v6, v5

    int-to-short v5, v6

    const/16 v6, 0x13

    aget-byte v6, v4, v6

    int-to-byte v6, v6

    const/16 v8, 0x23

    aget-byte v4, v4, v8

    int-to-byte v4, v4

    invoke-static {v5, v6, v4}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v5, v6, v8

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_1535
    .catchall {:try_start_14fc .. :try_end_1535} :catchall_12bf

    .line 2499
    const/4 v4, 0x1

    :try_start_1536
    new-array v5, v4, [Ljava/lang/Object;

    aput-object v44, v5, v8

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_153e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1536 .. :try_end_153e} :catch_1546
    .catchall {:try_start_1536 .. :try_end_153e} :catchall_12bf

    const/16 v15, 0x1e0

    const/16 v17, 0x170

    const/16 v20, 0x226

    goto/16 :goto_15f9

    .line 2502
    :catch_1546
    move-exception v0

    move-object v3, v0

    .line 2506
    :try_start_1548
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljava/lang/Exception;

    throw v3
    :try_end_154f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1548 .. :try_end_154f} :catch_154f
    .catchall {:try_start_1548 .. :try_end_154f} :catchall_12bf

    .line 2508
    :catch_154f
    move-exception v0

    .line 2510
    const/4 v3, 0x0

    const/16 v15, 0x1e0

    const/16 v17, 0x170

    const/16 v20, 0x226

    goto/16 :goto_15f9

    .line 2471
    :cond_1559
    :goto_1559
    const/16 v3, 0x2ca

    int-to-short v3, v3

    :try_start_155c
    sget-object v4, Lcom/appsflyer/internal/b;->AppsFlyerConversionListener:[B

    const/16 v5, 0xd

    aget-byte v5, v4, v5

    int-to-byte v5, v5

    const/16 v15, 0x1e0

    aget-byte v6, v4, v15

    int-to-byte v6, v6

    invoke-static {v3, v5, v6}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 2472
    const/16 v5, 0x321

    aget-byte v5, v4, v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    int-to-short v5, v5

    const/16 v6, 0x13

    aget-byte v6, v4, v6

    int-to-byte v6, v6

    const/16 v8, 0x23

    aget-byte v8, v4, v8

    int-to-byte v8, v8

    invoke-static {v5, v6, v8}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v8, v6, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    const/16 v6, 0x25b

    int-to-short v6, v6

    const/16 v9, 0xd

    aget-byte v9, v4, v9

    int-to-byte v9, v9

    const/16 v11, 0x11

    aget-byte v12, v4, v11

    int-to-byte v11, v12

    invoke-static {v6, v9, v11}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v9, 0x1

    aput-object v6, v8, v9

    invoke-virtual {v3, v5, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 2475
    const/4 v6, 0x2

    new-array v8, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v44, v8, v6

    const-class v6, Lcom/appsflyer/internal/b;
    :try_end_15b1
    .catchall {:try_start_155c .. :try_end_15b1} :catchall_17b3

    :try_start_15b1
    const-class v9, Ljava/lang/Class;
    :try_end_15b3
    .catchall {:try_start_15b1 .. :try_end_15b3} :catchall_17a1

    const/16 v11, 0x1aa

    int-to-short v11, v11

    const/16 v17, 0x170

    :try_start_15b8
    aget-byte v12, v4, v17
    :try_end_15ba
    .catchall {:try_start_15b8 .. :try_end_15ba} :catchall_179f

    int-to-byte v12, v12

    const/16 v20, 0x226

    :try_start_15bd
    aget-byte v14, v4, v20

    int-to-byte v14, v14

    invoke-static {v11, v12, v14}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v9, v6, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_15cd
    .catchall {:try_start_15bd .. :try_end_15cd} :catchall_179d

    const/4 v9, 0x1

    :try_start_15ce
    aput-object v6, v8, v9

    invoke-virtual {v5, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_15d4
    .catchall {:try_start_15ce .. :try_end_15d4} :catchall_179b

    .line 2484
    if-eqz v5, :cond_15d8

    .line 3639
    const/4 v6, 0x1

    goto :goto_15d9

    :cond_15d8
    const/4 v6, 0x0

    :goto_15d9
    packed-switch v6, :pswitch_data_1b04

    goto :goto_15f8

    .line 2486
    :pswitch_15dd
    const/16 v6, 0x150

    int-to-short v6, v6

    :try_start_15e0
    aget-byte v8, v4, v28

    int-to-byte v8, v8

    const/16 v9, 0x48

    aget-byte v4, v4, v9

    int-to-byte v4, v4

    invoke-static {v6, v8, v4}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    new-array v8, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2487
    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15f8
    .catchall {:try_start_15e0 .. :try_end_15f8} :catchall_1644

    :goto_15f8
    move-object v3, v5

    .line 2515
    :goto_15f9
    if-eqz v3, :cond_15fe

    .line 3639
    const/16 v4, 0x59

    goto :goto_1600

    :cond_15fe
    const/16 v4, 0x62

    :goto_1600
    packed-switch v4, :pswitch_data_1b0a

    .line 2517
    :try_start_1603
    move-object v8, v3

    check-cast v8, Ljava/lang/Class;
    :try_end_1606
    .catchall {:try_start_1603 .. :try_end_1606} :catchall_179b

    goto :goto_1648

    .line 2553
    :pswitch_1607
    const/4 v3, 0x2

    :try_start_1608
    new-array v4, v3, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v4, v5

    .line 2554
    move-object/from16 v3, v43

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 2555
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 2556
    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v5, v4

    if-nez v45, :cond_1627

    const/4 v2, 0x1

    goto :goto_1628

    :cond_1627
    const/4 v2, 0x0

    :goto_1628
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/appsflyer/internal/b;->onConversionDataSuccess:Ljava/lang/Object;
    :try_end_1635
    .catchall {:try_start_1608 .. :try_end_1635} :catchall_1644

    .line 238
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x9

    const/16 v6, 0x11

    const/4 v7, 0x0

    const/16 v22, 0x48

    const/16 v25, 0x3

    const/16 v35, 0x1

    goto/16 :goto_1a4a

    .line 240
    :catchall_1644
    move-exception v0

    move-object v2, v0

    goto/16 :goto_965

    .line 2522
    :goto_1648
    const/16 v3, 0x397

    int-to-short v3, v3

    :try_start_164b
    sget-object v4, Lcom/appsflyer/internal/b;->AppsFlyerConversionListener:[B

    const/16 v5, 0x58

    aget-byte v5, v4, v5

    int-to-byte v5, v5

    const/16 v6, 0x48

    aget-byte v9, v4, v6

    int-to-byte v6, v9

    invoke-static {v3, v5, v6}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v9

    .line 2527
    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v3, v5, v6

    .line 2528
    invoke-virtual {v8, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 2529
    invoke-virtual {v3, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 2530
    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v6, v5

    if-nez v45, :cond_1679

    const/4 v2, 0x1

    goto :goto_167a

    :cond_1679
    const/4 v2, 0x0

    :goto_167a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v6, v5

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/appsflyer/internal/b;->onConversionDataSuccess:Ljava/lang/Object;

    .line 2532
    nop

    .line 2533
    nop

    .line 2539
    const/16 v3, 0x2a10

    new-array v3, v3, [B

    .line 2540
    const-class v5, Lcom/appsflyer/internal/b;

    const/16 v6, 0x218

    int-to-short v6, v6

    const/16 v11, 0x58

    aget-byte v11, v4, v11

    int-to-byte v11, v11

    const/16 v12, 0x48

    int-to-byte v14, v12

    invoke-static {v6, v11, v14}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v6

    .line 2541
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_16a2
    .catchall {:try_start_164b .. :try_end_16a2} :catchall_179b

    .line 3641
    sget v6, Lcom/appsflyer/internal/b;->getSdkVersion:I

    or-int/lit8 v11, v6, 0x5b

    const/4 v12, 0x1

    shl-int/2addr v11, v12

    xor-int/lit8 v6, v6, 0x5b

    sub-int/2addr v11, v6

    rem-int/lit16 v6, v11, 0x80

    sput v6, Lcom/appsflyer/internal/b;->AppsFlyerInAppPurchaseValidatorListener:I

    const/4 v6, 0x2

    rem-int/2addr v11, v6

    if-eqz v11, :cond_16b3

    .line 2541
    :cond_16b3
    const/4 v6, 0x1

    :try_start_16b4
    new-array v11, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v11, v6

    sget v5, Lcom/appsflyer/internal/b;->onValidateInApp:I

    xor-int/lit16 v6, v5, 0x11e

    and-int/lit16 v12, v5, 0x11e

    or-int/2addr v6, v12

    int-to-short v6, v6

    const/16 v12, 0x11

    aget-byte v14, v4, v12

    int-to-byte v12, v14

    int-to-byte v14, v12

    invoke-static {v6, v12, v14}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v12, 0x1

    new-array v14, v12, [Ljava/lang/Class;

    const/16 v21, 0xe

    aget-byte v12, v4, v21

    int-to-short v12, v12

    const/16 v26, 0x8b

    aget-byte v2, v4, v26

    int-to-byte v2, v2

    const/16 v23, 0x11

    aget-byte v7, v4, v23

    int-to-byte v7, v7

    invoke-static {v12, v2, v7}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v7, 0x0

    aput-object v2, v14, v7

    invoke-virtual {v6, v14}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_16f4
    .catchall {:try_start_16b4 .. :try_end_16f4} :catchall_178f

    .line 2543
    const/4 v6, 0x1

    :try_start_16f5
    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v7, v6

    xor-int/lit16 v6, v5, 0x11e

    and-int/lit16 v11, v5, 0x11e

    or-int/2addr v6, v11

    int-to-short v6, v6

    const/16 v11, 0x11

    aget-byte v12, v4, v11

    int-to-byte v11, v12

    int-to-byte v12, v11

    invoke-static {v6, v11, v12}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v11, 0x306

    int-to-short v11, v11

    const/16 v12, 0x13

    aget-byte v12, v4, v12

    int-to-byte v12, v12

    const/16 v14, 0x5c

    aget-byte v14, v4, v14

    int-to-byte v14, v14

    invoke-static {v11, v12, v14}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v14, v12, [Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v1, v14, v12

    invoke-virtual {v6, v11, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_172c
    .catchall {:try_start_16f5 .. :try_end_172c} :catchall_1783

    .line 2544
    xor-int/lit16 v6, v5, 0x11e

    and-int/lit16 v5, v5, 0x11e

    or-int/2addr v5, v6

    int-to-short v5, v5

    const/16 v6, 0x11

    :try_start_1734
    aget-byte v7, v4, v6

    int-to-byte v6, v7

    int-to-byte v7, v6

    invoke-static {v5, v6, v7}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v6, 0x150

    int-to-short v6, v6

    aget-byte v7, v4, v28
    :try_end_1745
    .catchall {:try_start_1734 .. :try_end_1745} :catchall_1777

    int-to-byte v7, v7

    const/16 v22, 0x48

    :try_start_1748
    aget-byte v4, v4, v22

    int-to-byte v4, v4

    invoke-static {v6, v7, v4}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1757
    .catchall {:try_start_1748 .. :try_end_1757} :catchall_1775

    .line 2548
    :try_start_1757
    invoke-static/range {v50 .. v50}, Ljava/lang/Math;->abs(I)I

    move-result v5
    :try_end_175b
    .catchall {:try_start_1757 .. :try_end_175b} :catchall_17b1

    .line 2556
    nop

    .line 3639
    sget v2, Lcom/appsflyer/internal/b;->AppsFlyerInAppPurchaseValidatorListener:I

    add-int/lit8 v2, v2, 0x44

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/appsflyer/internal/b;->getSdkVersion:I

    const/4 v4, 0x2

    rem-int/2addr v2, v4

    if-nez v2, :cond_176a

    .line 272
    :cond_176a
    move-object v2, v3

    move-object/from16 v3, v29

    move/from16 v14, v45

    move/from16 v4, v49

    const/16 v7, 0x29ed

    goto/16 :goto_a58

    .line 2544
    :catchall_1775
    move-exception v0

    goto :goto_177a

    :catchall_1777
    move-exception v0

    const/16 v22, 0x48

    :goto_177a
    move-object v2, v0

    :try_start_177b
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_1782

    throw v3

    :cond_1782
    throw v2

    .line 2543
    :catchall_1783
    move-exception v0

    const/16 v22, 0x48

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_178e

    throw v3

    :cond_178e
    throw v2

    .line 2541
    :catchall_178f
    move-exception v0

    const/16 v22, 0x48

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_179a

    throw v3

    :cond_179a
    throw v2

    .line 240
    :catchall_179b
    move-exception v0

    goto :goto_17b8

    .line 2475
    :catchall_179d
    move-exception v0

    goto :goto_17a6

    :catchall_179f
    move-exception v0

    goto :goto_17a4

    :catchall_17a1
    move-exception v0

    const/16 v17, 0x170

    :goto_17a4
    const/16 v20, 0x226

    :goto_17a6
    const/16 v22, 0x48

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_17b0

    throw v3

    :cond_17b0
    throw v2
    :try_end_17b1
    .catchall {:try_start_177b .. :try_end_17b1} :catchall_17b1

    .line 240
    :catchall_17b1
    move-exception v0

    goto :goto_17ba

    :catchall_17b3
    move-exception v0

    const/16 v17, 0x170

    const/16 v20, 0x226

    :goto_17b8
    const/16 v22, 0x48

    :goto_17ba
    move-object v2, v0

    goto/16 :goto_967

    .line 3741
    :catch_17bd
    move-exception v0

    const/16 v17, 0x170

    const/16 v20, 0x226

    const/16 v22, 0x48

    move-object v3, v0

    const/16 v25, 0x3

    goto :goto_17f3

    .line 3735
    :goto_17c8
    :try_start_17c8
    invoke-static {v8, v14, v13}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_17cb
    .catch Ljava/lang/Exception; {:try_start_17c8 .. :try_end_17cb} :catch_17e7
    .catchall {:try_start_17c8 .. :try_end_17cb} :catchall_17e4

    .line 3733
    xor-int/lit8 v13, v14, -0x2

    and-int/lit8 v14, v14, -0x2

    const/16 v18, 0x1

    shl-int/lit8 v14, v14, 0x1

    add-int/2addr v13, v14

    xor-int/lit8 v14, v13, 0x3

    const/16 v25, 0x3

    and-int/lit8 v13, v13, 0x3

    shl-int/lit8 v13, v13, 0x1

    add-int/2addr v14, v13

    move-object/from16 v43, v7

    const/16 v7, 0x1ad

    const/4 v13, 0x4

    goto/16 :goto_14b7

    .line 240
    :catchall_17e4
    move-exception v0

    goto/16 :goto_19ac

    .line 3741
    :catch_17e7
    move-exception v0

    goto :goto_17f0

    :catch_17e9
    move-exception v0

    const/16 v17, 0x170

    const/16 v20, 0x226

    const/16 v22, 0x48

    :goto_17f0
    const/16 v25, 0x3

    move-object v3, v0

    .line 3745
    :goto_17f3
    :try_start_17f3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x25f

    int-to-short v5, v5

    sget-object v6, Lcom/appsflyer/internal/b;->AppsFlyerConversionListener:[B

    aget-byte v7, v6, v28

    int-to-byte v7, v7

    const/16 v8, 0x11b

    aget-byte v8, v6, v8

    int-to-byte v8, v8

    invoke-static {v5, v7, v8}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x2ca

    int-to-short v4, v4

    const/16 v5, 0x74

    aget-byte v5, v6, v5

    int-to-byte v5, v5

    const/16 v7, 0x15e

    aget-byte v7, v6, v7

    const/4 v8, 0x0

    sub-int/2addr v7, v8

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    int-to-byte v7, v7

    invoke-static {v4, v5, v7}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_182e
    .catchall {:try_start_17f3 .. :try_end_182e} :catchall_198d

    const/4 v4, 0x2

    :try_start_182f
    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v3, v5, v4

    const/4 v3, 0x0

    aput-object v2, v5, v3

    const/16 v2, 0xd1

    int-to-short v2, v2

    const/16 v3, 0x8b

    aget-byte v4, v6, v3

    int-to-byte v3, v4

    const/16 v4, 0x11

    aget-byte v6, v6, v4

    int-to-byte v4, v6

    invoke-static {v2, v3, v4}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v4, v6

    const-class v3, Ljava/lang/Throwable;

    const/4 v6, 0x1

    aput-object v3, v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_1864
    .catchall {:try_start_182f .. :try_end_1864} :catchall_1864

    :catchall_1864
    move-exception v0

    move-object v2, v0

    :try_start_1866
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_186d

    throw v3

    :cond_186d
    throw v2

    .line 3694
    :catchall_186e
    move-exception v0

    const/16 v17, 0x170

    const/16 v20, 0x226

    const/16 v22, 0x48

    const/16 v25, 0x3

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_187f

    throw v3

    :cond_187f
    throw v2

    .line 3686
    :catchall_1880
    move-exception v0

    const/16 v17, 0x170

    const/16 v20, 0x226

    const/16 v22, 0x48

    const/16 v25, 0x3

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_1891

    throw v3

    :cond_1891
    throw v2

    .line 240
    :catchall_1892
    move-exception v0

    goto/16 :goto_19a6

    .line 3672
    :catchall_1895
    move-exception v0

    const/16 v17, 0x170

    const/16 v20, 0x226

    const/16 v22, 0x48

    const/16 v25, 0x3

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_18a6

    throw v3

    :cond_18a6
    throw v2

    .line 3666
    :catchall_18a7
    move-exception v0

    move-object/from16 v29, v3

    const/16 v17, 0x170

    const/16 v20, 0x226

    const/16 v22, 0x48

    const/16 v25, 0x3

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_18ba

    throw v3

    :cond_18ba
    throw v2

    .line 3660
    :catchall_18bb
    move-exception v0

    move-object/from16 v29, v3

    const/16 v17, 0x170

    const/16 v20, 0x226

    const/16 v22, 0x48

    const/16 v25, 0x3

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_18ce

    :goto_18cd
    throw v3

    :cond_18ce
    throw v2

    :catchall_18cf
    move-exception v0

    move-object/from16 v29, v3

    const/16 v17, 0x170

    const/16 v20, 0x226

    const/16 v22, 0x48

    const/16 v25, 0x3

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_18ce

    goto :goto_18cd

    .line 2446
    :catchall_18e2
    move-exception v0

    move-object/from16 v29, v3

    const/16 v17, 0x170

    const/16 v20, 0x226

    const/16 v22, 0x48

    const/16 v25, 0x3

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_18f5

    throw v3

    :cond_18f5
    throw v2

    .line 2443
    :catchall_18f6
    move-exception v0

    move-object/from16 v29, v3

    const/16 v17, 0x170

    const/16 v20, 0x226

    const/16 v22, 0x48

    const/16 v25, 0x3

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_1909

    :goto_1908
    throw v3

    :cond_1909
    throw v2

    :catchall_190a
    move-exception v0

    move-object/from16 v29, v3

    const/16 v17, 0x170

    const/16 v20, 0x226

    const/16 v22, 0x48

    const/16 v25, 0x3

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_1909

    goto :goto_1908

    :catchall_191d
    move-exception v0

    move-object/from16 v29, v3

    const/16 v17, 0x170

    const/16 v20, 0x226

    const/16 v22, 0x48

    const/16 v25, 0x3

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_1909

    goto :goto_1908

    .line 240
    :catchall_1930
    move-exception v0

    move-object/from16 v29, v3

    goto/16 :goto_19a6

    .line 2426
    :catchall_1935
    move-exception v0

    move-object/from16 v29, v3

    move/from16 v49, v4

    const/16 v17, 0x170

    const/16 v20, 0x226

    const/16 v22, 0x48

    const/16 v25, 0x3

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_194a

    throw v3

    :cond_194a
    throw v2

    .line 2409
    :catchall_194b
    move-exception v0

    move-object/from16 v29, v3

    move/from16 v49, v4

    const/16 v17, 0x170

    const/16 v20, 0x226

    const/16 v22, 0x48

    const/16 v25, 0x3

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_1960

    throw v3

    :cond_1960
    throw v2

    .line 2408
    :catchall_1961
    move-exception v0

    move-object/from16 v29, v3

    move/from16 v49, v4

    const/16 v17, 0x170

    const/16 v20, 0x226

    const/16 v22, 0x48

    const/16 v25, 0x3

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_1976

    throw v3

    :cond_1976
    throw v2

    .line 2407
    :catchall_1977
    move-exception v0

    move-object/from16 v29, v3

    move/from16 v49, v4

    const/16 v17, 0x170

    const/16 v20, 0x226

    const/16 v22, 0x48

    const/16 v25, 0x3

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_198c

    throw v3

    :cond_198c
    throw v2
    :try_end_198d
    .catchall {:try_start_1866 .. :try_end_198d} :catchall_198d

    .line 240
    :catchall_198d
    move-exception v0

    goto :goto_19ae

    :catchall_198f
    move-exception v0

    move-object/from16 v29, v3

    move/from16 v49, v4

    goto :goto_19a6

    :catchall_1995
    move-exception v0

    move-object/from16 v31, v2

    move-object/from16 v29, v3

    move/from16 v49, v4

    move-object/from16 v32, v5

    move-object/from16 v33, v6

    move/from16 v35, v7

    move-object/from16 v36, v9

    move-object/from16 v41, v13

    :goto_19a6
    const/16 v17, 0x170

    const/16 v20, 0x226

    const/16 v22, 0x48

    :goto_19ac
    const/16 v25, 0x3

    :goto_19ae
    move-object v2, v0

    .line 243
    :goto_19af
    nop

    .line 244
    or-int/lit8 v3, v49, 0x1

    const/4 v4, 0x1

    shl-int/2addr v3, v4

    xor-int/lit8 v4, v49, 0x1

    sub-int/2addr v3, v4

    :goto_19b7
    const/16 v4, 0x9

    if-ge v3, v4, :cond_19c4

    .line 246
    :try_start_19bb
    aget-boolean v5, v41, v3

    if-eqz v5, :cond_19c1

    .line 248
    const/4 v3, 0x1

    goto :goto_19c5

    .line 244
    :cond_19c1
    add-int/lit8 v3, v3, 0x1

    goto :goto_19b7

    :cond_19c4
    const/4 v3, 0x0

    .line 253
    :goto_19c5
    if-nez v3, :cond_19c9

    .line 3639
    const/4 v3, 0x0

    goto :goto_19ca

    :cond_19c9
    const/4 v3, 0x1

    :goto_19ca
    packed-switch v3, :pswitch_data_1b10

    .line 256
    const/16 v1, 0x27d

    int-to-short v1, v1

    sget-object v3, Lcom/appsflyer/internal/b;->AppsFlyerConversionListener:[B

    goto :goto_19dd

    .line 261
    :pswitch_19d3
    const/4 v2, 0x0

    sput-object v2, Lcom/appsflyer/internal/b;->onConversionDataSuccess:Ljava/lang/Object;

    .line 262
    sput-object v2, Lcom/appsflyer/internal/b;->onDeepLinking:Ljava/lang/Object;

    const/4 v3, 0x2

    const/16 v6, 0x11

    const/4 v7, 0x0

    goto :goto_1a4a

    .line 256
    :goto_19dd
    const/16 v4, 0x11

    aget-byte v5, v3, v4

    int-to-byte v4, v5

    const/16 v5, 0x11b

    aget-byte v5, v3, v5

    int-to-byte v5, v5

    invoke-static {v1, v4, v5}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v1
    :try_end_19eb
    .catch Ljava/lang/Exception; {:try_start_19bb .. :try_end_19eb} :catch_1a75

    const/4 v4, 0x2

    :try_start_19ec
    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v2, v5, v4

    const/4 v2, 0x0

    aput-object v1, v5, v2

    const/16 v1, 0xd1

    int-to-short v1, v1

    const/16 v2, 0x8b

    aget-byte v2, v3, v2

    int-to-byte v2, v2

    const/16 v6, 0x11

    aget-byte v3, v3, v6

    int-to-byte v3, v3

    invoke-static {v1, v2, v3}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v2, v7

    const-class v3, Ljava/lang/Throwable;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    throw v1
    :try_end_1a21
    .catchall {:try_start_19ec .. :try_end_1a21} :catchall_1a21

    :catchall_1a21
    move-exception v0

    move-object v1, v0

    :try_start_1a23
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1a2a

    throw v2

    :cond_1a2a
    throw v1

    .line 229
    :cond_1a2b
    move-object/from16 v31, v2

    move-object/from16 v29, v3

    move/from16 v49, v4

    move-object/from16 v32, v5

    move-object/from16 v33, v6

    move/from16 v35, v7

    move-object/from16 v36, v9

    move-object/from16 v41, v13

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x9

    const/16 v6, 0x11

    const/4 v7, 0x0

    const/16 v17, 0x170

    const/16 v20, 0x226

    const/16 v22, 0x48

    const/16 v25, 0x3

    .line 267
    :goto_1a4a
    xor-int/lit8 v5, v49, -0x3d

    and-int/lit8 v8, v49, -0x3d

    const/4 v9, 0x1

    shl-int/2addr v8, v9

    add-int/2addr v5, v8

    add-int/lit8 v5, v5, 0x3f

    sub-int/2addr v5, v9

    move v4, v5

    move-object/from16 v3, v29

    move-object/from16 v2, v31

    move-object/from16 v5, v32

    move-object/from16 v6, v33

    move/from16 v7, v35

    move-object/from16 v9, v36

    move-object/from16 v13, v41

    const/4 v11, 0x4

    const/16 v12, 0x178

    const/4 v15, 0x5

    goto/16 :goto_450

    :goto_1a69
    nop

    .line 272
    return-void

    .line 144
    :catchall_1a6b
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2
    :try_end_1a71
    .catch Ljava/lang/Exception; {:try_start_1a23 .. :try_end_1a71} :catch_1a75

    if-eqz v2, :cond_2d0

    goto/16 :goto_2cf

    .line 270
    :catch_1a75
    move-exception v0

    move-object v1, v0

    .line 272
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_1a7e

    :goto_1a7d
    throw v2

    :goto_1a7e
    goto :goto_1a7d

    nop

    :pswitch_data_1a80
    .packed-switch 0x0
        :pswitch_91
    .end packed-switch

    :pswitch_data_1a86
    .packed-switch 0x28
        :pswitch_e0
    .end packed-switch

    :pswitch_data_1a8c
    .packed-switch 0x56
        :pswitch_168
    .end packed-switch

    :pswitch_data_1a92
    .packed-switch 0x55
        :pswitch_1c8
    .end packed-switch

    :pswitch_data_1a98
    .packed-switch 0x63
        :pswitch_266
    .end packed-switch

    :pswitch_data_1a9e
    .packed-switch 0x1
        :pswitch_2c6
    .end packed-switch

    :pswitch_data_1aa4
    .packed-switch 0x0
        :pswitch_3e6
    .end packed-switch

    :pswitch_data_1aaa
    .packed-switch 0x0
        :pswitch_407
    .end packed-switch

    :pswitch_data_1ab0
    .packed-switch 0x0
        :pswitch_422
    .end packed-switch

    :pswitch_data_1ab6
    .packed-switch 0x1
        :pswitch_435
    .end packed-switch

    :pswitch_data_1abc
    .packed-switch 0x0
        :pswitch_45a
    .end packed-switch

    :pswitch_data_1ac2
    .packed-switch 0x1
        :pswitch_465
    .end packed-switch

    :pswitch_data_1ac8
    .packed-switch 0x54
        :pswitch_481
    .end packed-switch

    :pswitch_data_1ace
    .packed-switch 0x46
        :pswitch_4a2
    .end packed-switch

    :pswitch_data_1ad4
    .packed-switch 0x3e
        :pswitch_687
    .end packed-switch

    :pswitch_data_1ada
    .packed-switch 0x0
        :pswitch_6ed
    .end packed-switch

    :pswitch_data_1ae0
    .packed-switch 0x1
        :pswitch_cbd
    .end packed-switch

    :pswitch_data_1ae6
    .packed-switch 0x0
        :pswitch_cce
    .end packed-switch

    :pswitch_data_1aec
    .packed-switch 0x1
        :pswitch_fd1
    .end packed-switch

    :pswitch_data_1af2
    .packed-switch 0x0
        :pswitch_1259
    .end packed-switch

    :pswitch_data_1af8
    .packed-switch 0x1
        :pswitch_14d1
    .end packed-switch

    :pswitch_data_1afe
    .packed-switch 0x0
        :pswitch_14f9
    .end packed-switch

    :pswitch_data_1b04
    .packed-switch 0x1
        :pswitch_15dd
    .end packed-switch

    :pswitch_data_1b0a
    .packed-switch 0x62
        :pswitch_1607
    .end packed-switch

    :pswitch_data_1b10
    .packed-switch 0x1
        :pswitch_19d3
    .end packed-switch
.end method

.method private constructor <init>()V
    .registers 1

    .line 796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AFKeystoreWrapper(I)I
    .registers 9

    sget v0, Lcom/appsflyer/internal/b;->getSdkVersion:I

    or-int/lit8 v1, v0, 0x73

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    xor-int/lit8 v0, v0, 0x73

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/appsflyer/internal/b;->AppsFlyerInAppPurchaseValidatorListener:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v0, 0x0

    if-eqz v1, :cond_14

    const/4 v1, 0x0

    goto :goto_15

    :cond_14
    const/4 v1, 0x1

    :goto_15
    packed-switch v1, :pswitch_data_9a

    sget-object v1, Lcom/appsflyer/internal/b;->onConversionDataSuccess:Ljava/lang/Object;

    goto :goto_1e

    :pswitch_1b
    sget-object v1, Lcom/appsflyer/internal/b;->onConversionDataSuccess:Ljava/lang/Object;

    goto :goto_22

    :goto_1e
    const/4 v3, 0x0

    :try_start_1f
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_98

    :goto_22
    sget v3, Lcom/appsflyer/internal/b;->getSdkVersion:I

    add-int/lit8 v3, v3, 0x8

    sub-int/2addr v3, v2

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/b;->AppsFlyerInAppPurchaseValidatorListener:I

    rem-int/lit8 v3, v3, 0x2

    :try_start_2d
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v0

    sget-object p0, Lcom/appsflyer/internal/b;->AppsFlyerConversionListener:[B

    const/16 v4, 0xb8

    aget-byte v4, p0, v4

    int-to-short v4, v4

    const/16 v5, 0x58

    aget-byte v5, p0, v5

    int-to-byte v5, v5

    const/16 v6, 0x48

    aget-byte v6, p0, v6

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/appsflyer/internal/b;->onDeepLinking:Ljava/lang/Object;

    check-cast v5, Ljava/lang/ClassLoader;

    invoke-static {v4, v2, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0x18e

    int-to-short v5, v5

    const/16 v6, 0x1e0

    aget-byte v6, p0, v6

    int-to-byte v6, v6

    const/16 v7, 0x5d

    aget-byte p0, p0, v7

    int-to-byte p0, p0

    invoke-static {v5, v6, p0}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object p0

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v0

    invoke-virtual {v4, p0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_77
    .catchall {:try_start_2d .. :try_end_77} :catchall_8f

    sget v1, Lcom/appsflyer/internal/b;->AppsFlyerInAppPurchaseValidatorListener:I

    add-int/lit8 v1, v1, 0x46

    sub-int/2addr v1, v2

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/b;->getSdkVersion:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_85

    const/4 v2, 0x0

    :cond_85
    packed-switch v2, :pswitch_data_a0

    return p0

    :pswitch_89
    const/16 v1, 0x21

    :try_start_8b
    div-int/2addr v1, v0
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8d

    return p0

    :catchall_8d
    move-exception p0

    throw p0

    :catchall_8f
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_97

    throw v0

    :cond_97
    throw p0

    :catchall_98
    move-exception p0

    throw p0

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_1b
    .end packed-switch

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_89
    .end packed-switch
.end method

.method public static AFKeystoreWrapper(Ljava/lang/Object;)I
    .registers 9

    sget v0, Lcom/appsflyer/internal/b;->getSdkVersion:I

    add-int/lit8 v1, v0, 0x37

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/b;->AppsFlyerInAppPurchaseValidatorListener:I

    rem-int/lit8 v1, v1, 0x2

    sget-object v1, Lcom/appsflyer/internal/b;->onConversionDataSuccess:Ljava/lang/Object;

    or-int/lit8 v2, v0, 0x67

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    xor-int/lit8 v0, v0, 0x67

    sub-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lcom/appsflyer/internal/b;->AppsFlyerInAppPurchaseValidatorListener:I

    rem-int/lit8 v2, v2, 0x2

    add-int/lit8 v0, v0, 0x78

    sub-int/2addr v0, v3

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/b;->getSdkVersion:I

    rem-int/lit8 v0, v0, 0x2

    :try_start_22
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v0, v2

    sget-object p0, Lcom/appsflyer/internal/b;->AppsFlyerConversionListener:[B

    const/16 v4, 0xb8

    aget-byte v4, p0, v4

    int-to-short v4, v4

    const/16 v5, 0x58

    aget-byte v5, p0, v5

    int-to-byte v5, v5

    const/16 v6, 0x48

    aget-byte v6, p0, v6

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/appsflyer/internal/b;->onDeepLinking:Ljava/lang/Object;

    check-cast v5, Ljava/lang/ClassLoader;

    invoke-static {v4, v3, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    sget v5, Lcom/appsflyer/internal/b;->onValidateInApp:I

    or-int/lit8 v5, v5, 0x14

    int-to-short v5, v5

    const/16 v6, 0x1de

    aget-byte v6, p0, v6

    neg-int v6, v6

    int-to-byte v6, v6

    const/16 v7, 0xf

    aget-byte p0, p0, v7

    int-to-byte p0, p0

    invoke-static {v5, v6, p0}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object p0

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v2

    invoke-virtual {v4, p0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_6c
    .catchall {:try_start_22 .. :try_end_6c} :catchall_88

    sget v0, Lcom/appsflyer/internal/b;->AppsFlyerInAppPurchaseValidatorListener:I

    and-int/lit8 v1, v0, 0x11

    or-int/lit8 v0, v0, 0x11

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/appsflyer/internal/b;->getSdkVersion:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_7c

    goto :goto_7d

    :cond_7c
    const/4 v3, 0x0

    :goto_7d
    packed-switch v3, :pswitch_data_92

    return p0

    :pswitch_81
    const/4 v0, 0x0

    :try_start_82
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_86

    return p0

    :catchall_86
    move-exception p0

    throw p0

    :catchall_88
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_90

    throw v0

    :cond_90
    throw p0

    nop

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_81
    .end packed-switch
.end method

.method static init$0()V
    .registers 5

    sget v0, Lcom/appsflyer/internal/b;->getSdkVersion:I

    or-int/lit8 v1, v0, 0x57

    shl-int/lit8 v1, v1, 0x1

    xor-int/lit8 v0, v0, 0x57

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/appsflyer/internal/b;->AppsFlyerInAppPurchaseValidatorListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_14

    const/16 v0, 0x3a

    goto :goto_16

    :cond_14
    const/16 v0, 0x30

    :goto_16
    const-string v1, "ISO-8859-1"

    const-string v2, "\u000e\u00e9\u0007\u00d8\t\u00eb\u00153\u00c5\u00faA\u00ec\u00cd\u000f\u0000\u0001\u00f3\r\u0001\u001b\u00db\u00fe\u00fb\u0001!\u00df\u0002\r\u0004\u00f4\t\u00eb\u00153\u00c2\u000b\u00f3\u00079\u00db\u00da\u0006\u00ff\u000f\u00f8\u00ee\u0003\u0000\r\u00f7\u00fa3\u00d1\u0000\u0004\u0003\u0006\u0002\u00ed\u000b\u00fa\u0001\u00f4\u0002>\u00ce\u00f1\u0000\u00fd\r\u00fa\u00f3\u0014\u00f3C\u00c6\u00fb\u00fa\u000f\u00f3\u0004\r\u00f5=\u00cd>\u00ae\u00f3\n\u00f2\u0003\u0006\u00056\u00bf\u00fcE\u00de\u00de\u0003\u000c\u00fe\u00f2\u0000\t\u00eb\u00153\u00c0\u0005\u00faA\u00ec\u00c9\u0005\u000f#\u00cd\u000f\u0000\u0001\u00f3\u00f3\n\u00f2\u0003\u0006\u00056\u00bf\u00fcE\u00ec\u00cd\u000c\u00fd\u0008@\u00ce\u0011\u00f3\u00ff\n\u00fa\u0001\t\u00eb\u00153\u00c5\u00faA\u00ec\u00c9\u0005\u000f$\u00cf\u0000\u0011\u00e80\u00db\u00fe\u00fb\u0001!\u00df\u0002\r\u0004\u00f4\u0003\u00f5\u00f6\r\u00fe=\u00bb\u00fa\u0006\u00ff\u000f\u00f8?\u00e5\u00db!\u00e8\u00f8\u00fe\u00fd\u00f95\u00df\u00ed5\u00d7\u000b\u00ee\u0000\'\u00dd\u000e\u00fd\u00ff\u00f3\r\u0004\u00fd\u001e\u00d1\t\u0000\u00f3\u00f4\u0002>\u00ce\u00f1\u0000\u00fd\r\u00fa\u00f3\u0014\u00f3C\u00c6\u00fb\u00fa\u000f\u00f3\u0004\r\u00f5=\u00cc?\u0000\u0002\u00f1.\u00dd\u00fd\u0007\u00f2/\u00db\u00f7\u0005\t\u00f5\u000f\u0002\u00f11\u00e2\u00fe\u00fb\u0003!\u00db\u00f7\r\u0004\u00fd\u0003\u00f5\u00f6\r\u00fe=\u00bb\u00fa\u0006\u00ff\u000f\u00f8?\u00ea\u00df\u00ed2\u00dd\u00fd\u0007\u00f4\u000b\u00ff\u0006\u00fc\u0002\u00fe\u00fb\u0003\u0003\u00f5\u00f6\r\u00fe=\u00bb\u00fa\u0006\u00ff\u000f\u00f8?\u00ec\u00e1\u00ee\u000e!\u00df\u00ed5\u00d7\u000b\u00ee\u0000\'\u00dd\u000e\u00fd\u00ff\u00f3\u0002\u00f11\u00d4\u000b\u00ff\"\u00e2\u00fe\u00fb\u0003!\u00db\u00f7\u00fa\u000b\u000b\u0015\u00f9\u0017\u00f8\u00ba\u00ffO\u00ba\u0005\u00f5\u0000\n\u0001\u00fe\u00f8\u00f8S\u00b4\u0007\u00ff\u00f2K\u0015\u00fa\u0016\u00f8\u0015\u00fc\u0014\u00f8\u0015\u00f8\u0018\u00f8\t\u00eb\u00153\u00c2\u000b\u00f3\u00079\u00eb\u00d7\u000b\u00ee\u0000\'\u00dd\u000e\u00fd\u00ff\u00f3\u00f3\n\u00f2\u0003\u0006\u00056\u00cd\u00f1\u0000B\u00ed\u00d1\u0000)\u00db\u00fd\r\u0001\u00f5\u00f9\u0002\u00f1/\u00cd\u0004\u000f\u00f3\u0004\r\u00f5\u0019\u00df\u0005\u00fd\u0011\u00fa\u0002!\u00db\u00f7\r\u0002\u00ef\u0005\u00fd\u00f9\u00cc\u00f4\u0002>\u00ce\u00f1\u0000\u00fd\r\u00fa\u00f3\u0014\u00f3C\u00c6\u00fb\u00fa\u000f\u00f3\u0004\r\u00f5=\u00cd5\t\u00eb\u00153\u00c5\u00faA\u00ea\u00e3\u00ed\u0013\u0018\u00db\u00fe\u00fb\u0001!\u00df\u0002\r\u0004\u00f4\u00fd\u000e\u00fd \u00df\u00ed\t\u00eb\u00153\u00c5\u00faA\u00ec\u00c9\u0005\u000f$\u00cf\u0000\u0011\u00e8*\u00da\u0001\u0004\u00fb\u0001!\u00df\u0002\r\u0004\u00f4\u00f3\n\u00f2\u0003\u0006\u00056\u00bf\u00fcE\u00e9\u00d7\u00f8\r\u00f7\u0003\u0001\u0001\u0008\u00f7\u00fa\u0015\u00f5\u00f7\u0010\u00f2\u0008\u0002\u00f9\u0002\u00f11\u00d7\u000b\u00ee\u0000\'\u00dd\u000e\u00fd\u00ff\u00f3\u00cb\u0003\u00ed\u00132\u00cb\u0003\u00ed\u00132\u00ff\u00f9\u0007\u00f1\u000f\u00fb\u00fb\u00e6\u00ec\u0006\u00ff\u0005\u00fd\r\u000e\u00e5\u0011\u00f1\u0000\u000b\u00f3\u0002\u00f1.\u0002\u000f\u00f9\u00ec\u0016\u00fb\u00fa\u0002\u00f1-\u00de\u0005\u001e\u00d7\u00fd$\u00ed\u00f4\u0008\r\u00ed\u000b\u00f3\u0011\u0019\u00e3\u0007\u00f0\u0011\u00ef\u00f9)\u00ef\u00ed\u000c#\u00d9\u0007\u00f8\u0008\u00f7\u00fa\u0001\u00f7\u00fd\u00fc\u000e\u00cc\u00f4\u0002>\u00ce\u00f1\u0000\u00fd\r\u00fa\u00f3\u0014\u00f3C\u00c6\u00fb\u00fa\u000f\u00f3\u0004\r\u00f5=\u00ce4\t\u00eb\u00153\u00c5\u00faA\u00ba\u0007\u00fd\u000c\u00fb\u00f7\u0002\u00f1$\u00de\u0003\u00ff\u000b\u00f3\u00fe\u00fb\u0002\u00f13\u00df\u00ef\u0004\u0003\u00f7\u0001\u000f\u0015\u00ef\u00ed\u000c\u00f3\n\u00f2\u0003\u0006\u00056\u00cd\u00f1\u0000B\u00ed\u00de\u00ef\u000b\u00f3\r\u00f5\u00fb%\u00ec\u00f6\r\u0004\u00fd\u0015\u00f5\u00f7\u0010\u0016\u00e9\t\u00eb\u00153\u00c5\u00faA\u00e8\u00dd\u00fd\u0007\u0016\u00da\u0001\u0004\u00fb\u0001!\u00df\u0002\r\u0004\u00f4\u0002\u00f3\u0017\u00e5\t\u00f5\u000f\t\u00eb\u00153\u00c5\u00faA\u00e5\u00fa\n\u00cd\u0015\u00fe\u00f5\u00fc\u000b\u00fa\u0001\u00f3\n\u00f2\u0003\u0006\u00056\u00ba\u000f\u00ed\u0004F\u00da\u00ef\u00ed\u0004\u001f\u00e1\u000b\u00fd\u00f9\u000f\u00ed\u000c\u001c\u00e3\u00f6\u00ff\u0002\u00f1+\u00db\u0005\u00f5\u000b\u0008\u00f5+\u00d1\u0000\u0004\u0003\u0006\u0002\u00ed\u000b\u00fa\u0001\t\u00eb\u00153\u00c5\u00faA\u00e8\u00dd\u00fd\u0007\u000b\u00ee\u00ff+\u00db\n\u00ff\u00ed)\u00e9\u0015\u00fd\u0013\u00f8\u00ee\u0003\u0000\r\u00f7\u00fa \u00eb\u00fc\u0008\u0018\u00e4\u00fd\u0000\u0003\u00f6\t\u00eb\u00153\u00c5\u00faA\u00e8\u00dd\u00fd\u0007!\u00df\u00f2\u0010\u00f1\t\u00f9\u00fc\u0005\u00fd\u0005-\u00c9\u0005\u000f$\u00cf\u0000\u0011\u00e8\u00fd\u000e\u00fd!\u00d7\u000b\u00ee\u0000\u00f4\u0002?\u00cd\u00f1\u0000\u00fd\r\u00fa\u00f3\u0014\u00f3D\u00c5\u00fb\u00fa\u000f\u00f3\u0004\r\u00f5>\u00cb?\u0000\u00f4\u0002?\u00cd\u00f1\u0000\u00fd\r\u00fa\u00f3\u0014\u00f3\u0005\u0011\u00f1\r\u00ed\u000b\u00f3\u0011\u0019\u00e3\u0007\u00f0\u0011\u00ef\u00f95\u00db\u00f7\r\u0002\u00ef\u0005\u00fd\t\u0004\u00f2\t\u00eb\u00153\u00c5\u00faA\u00e5\u00db\u00fe\u00fb\u0001!\u00df\u0002\r\u0004\u00f4"

    const/4 v3, 0x0

    const/16 v4, 0x3e7

    packed-switch v0, :pswitch_data_4e

    new-array v0, v4, [B

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sput-object v0, Lcom/appsflyer/internal/b;->AppsFlyerConversionListener:[B

    const/16 v0, 0xe1

    :goto_2d
    sput v0, Lcom/appsflyer/internal/b;->onValidateInApp:I

    goto :goto_3e

    :pswitch_30
    new-array v0, v4, [B

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sput-object v0, Lcom/appsflyer/internal/b;->AppsFlyerConversionListener:[B

    const/16 v0, 0x2b56

    goto :goto_2d

    :goto_3e
    sget v0, Lcom/appsflyer/internal/b;->getSdkVersion:I

    or-int/lit8 v1, v0, 0x51

    shl-int/lit8 v1, v1, 0x1

    xor-int/lit8 v0, v0, 0x51

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/appsflyer/internal/b;->AppsFlyerInAppPurchaseValidatorListener:I

    rem-int/lit8 v1, v1, 0x2

    return-void

    :pswitch_data_4e
    .packed-switch 0x3a
        :pswitch_30
    .end packed-switch
.end method

.method public static values(ICI)Ljava/lang/Object;
    .registers 11

    sget v0, Lcom/appsflyer/internal/b;->AppsFlyerInAppPurchaseValidatorListener:I

    and-int/lit8 v1, v0, 0x3f

    or-int/lit8 v0, v0, 0x3f

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/appsflyer/internal/b;->getSdkVersion:I

    const/4 v2, 0x2

    rem-int/2addr v1, v2

    const/4 v3, 0x3

    if-nez v1, :cond_13

    const/16 v1, 0x2c

    goto :goto_14

    :cond_13
    const/4 v1, 0x3

    :goto_14
    packed-switch v1, :pswitch_data_a8

    sget-object v1, Lcom/appsflyer/internal/b;->onConversionDataSuccess:Ljava/lang/Object;

    goto :goto_21

    :pswitch_1a
    sget-object v1, Lcom/appsflyer/internal/b;->onConversionDataSuccess:Ljava/lang/Object;

    const/4 v4, 0x0

    :try_start_1d
    array-length v4, v4
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1f

    goto :goto_21

    :catchall_1f
    move-exception p0

    throw p0

    :goto_21
    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/appsflyer/internal/b;->AppsFlyerInAppPurchaseValidatorListener:I

    rem-int/2addr v0, v2

    :try_start_28
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v2

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v0, p1

    sget-object p0, Lcom/appsflyer/internal/b;->AppsFlyerConversionListener:[B

    const/16 v4, 0xb8

    aget-byte v4, p0, v4

    int-to-short v4, v4

    const/16 v5, 0x58

    aget-byte v5, p0, v5

    int-to-byte v5, v5

    const/16 v6, 0x48

    aget-byte v6, p0, v6

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/appsflyer/internal/b;->onDeepLinking:Ljava/lang/Object;

    check-cast v5, Ljava/lang/ClassLoader;

    invoke-static {v4, p2, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0x1b2

    int-to-short v5, v5

    const/16 v6, 0xd2

    aget-byte v6, p0, v6

    int-to-byte v6, v6

    const/16 v7, 0xf

    aget-byte p0, p0, v7

    int-to-byte p0, p0

    invoke-static {v5, v6, p0}, Lcom/appsflyer/internal/b;->$$c(IBB)Ljava/lang/String;

    move-result-object p0

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, p1

    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, p2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v2

    invoke-virtual {v4, p0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_82
    .catchall {:try_start_28 .. :try_end_82} :catchall_9e

    sget v0, Lcom/appsflyer/internal/b;->AppsFlyerInAppPurchaseValidatorListener:I

    add-int/lit8 v0, v0, 0x3a

    sub-int/2addr v0, p2

    rem-int/lit16 p2, v0, 0x80

    sput p2, Lcom/appsflyer/internal/b;->getSdkVersion:I

    rem-int/2addr v0, v2

    if-nez v0, :cond_91

    const/16 p2, 0x28

    goto :goto_93

    :cond_91
    const/16 p2, 0x1c

    :goto_93
    packed-switch p2, :pswitch_data_ae

    goto :goto_98

    :pswitch_97
    return-object p0

    :goto_98
    const/16 p2, 0x63

    :try_start_9a
    div-int/2addr p2, p1
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_9c

    return-object p0

    :catchall_9c
    move-exception p0

    throw p0

    :catchall_9e
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_a6

    throw p1

    :cond_a6
    throw p0

    nop

    :pswitch_data_a8
    .packed-switch 0x2c
        :pswitch_1a
    .end packed-switch

    :pswitch_data_ae
    .packed-switch 0x1c
        :pswitch_97
    .end packed-switch
.end method
