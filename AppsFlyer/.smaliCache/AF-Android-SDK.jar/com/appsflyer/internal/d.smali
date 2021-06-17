.class final Lcom/appsflyer/internal/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/d$a;
    }
.end annotation


# static fields
.field private static AFInAppEventParameterName:[I

.field private static AFInAppEventType:J

.field private static AFKeystoreWrapper:I

.field private static values:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    sput v0, Lcom/appsflyer/internal/d;->values:I

    const/4 v0, 0x1

    sput v0, Lcom/appsflyer/internal/d;->AFKeystoreWrapper:I

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_18

    sput-object v0, Lcom/appsflyer/internal/d;->AFInAppEventParameterName:[I

    const-wide v0, 0x10c504e37dbe1ba2L    # 6.931820845264222E-228

    sput-wide v0, Lcom/appsflyer/internal/d;->AFInAppEventType:J

    return-void

    nop

    :array_18
    .array-data 4
        -0x5d0c09e9
        0x1eaa6ab3
        0x377d03e3
        0x11fd16d9
        -0x67432583
        0x7e37c056
        0x2bc4409
        0x1f6a9b62
        -0x1c560ea2
        0x71ca54e7
        0x5985ee88
        0x481962ed
        0x5f77112
        0x66d761fc
        0xf939e1c
        -0x7f5c1fa2
        0x72ceff11    # 8.1999704E30f
        0x32dac6da
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static AFInAppEventParameterName(Ljava/lang/String;)Z
    .registers 4

    .line 169
    sget v0, Lcom/appsflyer/internal/d;->values:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/d;->AFKeystoreWrapper:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_10

    .line 167
    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    packed-switch v0, :pswitch_data_22

    .line 166
    :try_start_14
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    goto :goto_1d

    :pswitch_18
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_14 .. :try_end_1b} :catch_1f

    .line 167
    const/4 v1, 0x0

    goto :goto_1e

    :goto_1d
    nop

    .line 169
    :goto_1e
    return v1

    .line 168
    :catch_1f
    move-exception p0

    .line 169
    return v2

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_18
    .end packed-switch
.end method

.method private static AFInAppEventType(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    .line 275
    sget v0, Lcom/appsflyer/internal/d;->AFKeystoreWrapper:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/d;->values:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    .line 261
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    :goto_11
    const/16 v3, 0x8

    const-string v4, ""

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_f8

    .line 260
    nop

    .line 261
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    new-array v3, v3, [I

    fill-array-data v3, :array_10a

    invoke-static {v4, v1, v1}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v6

    rsub-int/lit8 v6, v6, 0xe

    invoke-static {v3, v6}, Lcom/appsflyer/internal/d;->valueOf([II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    goto :goto_5b

    .line 260
    :pswitch_38
    nop

    .line 261
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    new-array v3, v3, [I

    fill-array-data v3, :array_11e

    const/16 v6, 0x55

    invoke-static {v4, v2, v2}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v7

    ushr-int/2addr v6, v7

    invoke-static {v3, v6}, Lcom/appsflyer/internal/d;->valueOf([II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    :pswitch_57
    goto :goto_62

    :cond_58
    :goto_58
    move-object p0, v5

    goto/16 :goto_de

    :goto_5b
    const/4 v0, 0x0

    goto :goto_5e

    :cond_5d
    const/4 v0, 0x1

    :goto_5e
    packed-switch v0, :pswitch_data_fe

    goto :goto_58

    .line 263
    :goto_62
    :try_start_62
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    .line 264
    const-string v0, "\uade7\ub66a\u400f\u1276\uac5d\u7e49\u08ad"

    invoke-static {v0}, Lcom/appsflyer/internal/d;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 265
    const-string v0, "\u3e63\u25ef\u674e\ua0a4\ue272\u2c3e\u6dda\uaf3f\ue894\u2af3\u7455"

    invoke-static {v0}, Lcom/appsflyer/internal/d;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 266
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 267
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 268
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_94} :catch_a1

    .line 261
    sget v0, Lcom/appsflyer/internal/d;->values:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/d;->AFKeystoreWrapper:I

    rem-int/lit8 v0, v0, 0x2

    goto :goto_a0

    .line 267
    :cond_9f
    move-object p0, v5

    .line 268
    :goto_a0
    goto :goto_de

    .line 270
    :catch_a1
    move-exception p0

    .line 271
    invoke-static {}, Lcom/appsflyer/internal/am;->AFKeystoreWrapper()Lcom/appsflyer/internal/am;

    move-result-object v0

    const/16 v3, 0xa

    new-array v3, v3, [I

    fill-array-data v3, :array_132

    invoke-static {v4, v4, v1, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x11

    invoke-static {v3, v4}, Lcom/appsflyer/internal/d;->valueOf([II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5beb\u400f\uac15\u080a\u7462\ud050\u3c44\u98ef\uc48e\u208e\u8cac\ue8dc\u54c3\ub139\u1d58\u7904\ua573\u015a\u6d4c\uc9b6\u35de\u9195\ufdf1\u59cb\u85c2\ue271\u4e0b\uaa02\u1662\u7255\ude08\u3ab2\u66ba\uc28a\u2ef1\u8af3\uf6da\u533c\ubf2f\u1b01\u4720\ua321"

    invoke-static {v6}, Lcom/appsflyer/internal/d;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4198
    new-array v2, v2, [Ljava/lang/String;

    aput-object p0, v2, v1

    invoke-virtual {v0, v5, v3, v2}, Lcom/appsflyer/internal/am;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 272
    return-object v5

    .line 275
    :goto_de
    sget v0, Lcom/appsflyer/internal/d;->AFKeystoreWrapper:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/d;->values:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_ed

    .line 261
    const/16 v2, 0x56

    goto :goto_ee

    :cond_ed
    nop

    :goto_ee
    packed-switch v2, :pswitch_data_104

    .line 275
    return-object p0

    :pswitch_f2
    :try_start_f2
    array-length v0, v5
    :try_end_f3
    .catchall {:try_start_f2 .. :try_end_f3} :catchall_f4

    return-object p0

    :catchall_f4
    move-exception p0

    goto :goto_f7

    :goto_f6
    throw p0

    :goto_f7
    goto :goto_f6

    :pswitch_data_f8
    .packed-switch 0x0
        :pswitch_38
    .end packed-switch

    :pswitch_data_fe
    .packed-switch 0x0
        :pswitch_57
    .end packed-switch

    :pswitch_data_104
    .packed-switch 0x56
        :pswitch_f2
    .end packed-switch

    :array_10a
    .array-data 4
        0x44029164
        -0x5dc1c1b
        0x1ad758f5
        -0x337c2ad9    # -6.9118264E7f
        -0x48ba328a
        -0x5b0a1aa8
        0x5d487b1e
        -0x34d88061    # -1.0977183E7f
    .end array-data

    :array_11e
    .array-data 4
        0x44029164
        -0x5dc1c1b
        0x1ad758f5
        -0x337c2ad9    # -6.9118264E7f
        -0x48ba328a
        -0x5b0a1aa8
        0x5d487b1e
        -0x34d88061    # -1.0977183E7f
    .end array-data

    :array_132
    .array-data 4
        0x44b07b0d
        -0x9d472ff
        -0x7bfcc723
        0x6b65311b
        -0x3886d08d
        -0x79d4d204
        0x388501e
        0x27e1b32a
        0x5c500741
        0x554287b8
    .end array-data
.end method

.method static AFInAppEventType(Landroid/content/Context;J)Ljava/lang/String;
    .registers 21

    .line 109
    nop

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    const/16 v3, 0x12

    new-array v3, v3, [I

    fill-array-data v3, :array_2dc

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const/16 v6, 0x30

    const-string v7, ""

    const-wide/16 v8, 0x0

    const-string v10, "\uba53\ua1c0"

    const/4 v11, 0x0

    const/4 v12, 0x2

    cmp-long v13, v4, v8

    add-int/lit8 v13, v13, 0x21

    invoke-static {v3, v13}, Lcom/appsflyer/internal/d;->valueOf([II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/internal/d;->AFInAppEventParameterName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 109
    sget v3, Lcom/appsflyer/internal/d;->AFKeystoreWrapper:I

    add-int/lit8 v3, v3, 0x2f

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/d;->values:I

    rem-int/2addr v3, v12

    if-eqz v3, :cond_51

    invoke-static {v10}, Lcom/appsflyer/internal/d;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x4b

    :try_start_4c
    div-int/2addr v4, v11
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4e

    goto :goto_75

    :catchall_4e
    move-exception v0

    move-object v1, v0

    throw v1

    .line 83
    :cond_51
    invoke-static {v10}, Lcom/appsflyer/internal/d;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    goto :goto_75

    :cond_5a
    new-array v3, v12, [I

    fill-array-data v3, :array_304

    invoke-static {v7, v6, v11}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v4

    neg-int v4, v4

    invoke-static {v3, v4}, Lcom/appsflyer/internal/d;->valueOf([II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 109
    sget v4, Lcom/appsflyer/internal/d;->values:I

    add-int/lit8 v4, v4, 0x67

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/d;->AFKeystoreWrapper:I

    rem-int/2addr v4, v12

    .line 83
    :goto_75
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    nop

    .line 1299
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1302
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1303
    invoke-static {v4}, Lcom/appsflyer/internal/d;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1304
    invoke-static {v10}, Lcom/appsflyer/internal/d;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1305
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1308
    invoke-static/range {p0 .. p0}, Lcom/appsflyer/internal/d;->AFInAppEventType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_9d

    .line 109
    const/16 v5, 0x15

    goto :goto_9f

    :cond_9d
    const/16 v5, 0x1a

    :goto_9f
    packed-switch v5, :pswitch_data_2d0

    .line 1313
    invoke-static {v10}, Lcom/appsflyer/internal/d;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1314
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d6

    .line 109
    :pswitch_b1
    sget v5, Lcom/appsflyer/internal/d;->values:I

    add-int/lit8 v5, v5, 0x1f

    rem-int/lit16 v13, v5, 0x80

    sput v13, Lcom/appsflyer/internal/d;->AFKeystoreWrapper:I

    rem-int/2addr v5, v12

    if-nez v5, :cond_bc

    .line 1310
    :cond_bc
    new-array v5, v12, [I

    fill-array-data v5, :array_30c

    invoke-static {v11, v11}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v13

    cmp-long v15, v13, v8

    neg-int v13, v15

    invoke-static {v5, v13}, Lcom/appsflyer/internal/d;->valueOf([II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1311
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1318
    :goto_d6
    invoke-static/range {p0 .. p0}, Lcom/appsflyer/internal/d;->AFKeystoreWrapper(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 1319
    const/16 v13, 0x10

    const/4 v14, 0x1

    if-nez v5, :cond_f9

    .line 1320
    new-array v5, v12, [I

    fill-array-data v5, :array_314

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v15

    shr-int/2addr v15, v13

    add-int/2addr v15, v14

    invoke-static {v5, v15}, Lcom/appsflyer/internal/d;->valueOf([II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1321
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_107

    .line 1323
    :cond_f9
    invoke-static {v10}, Lcom/appsflyer/internal/d;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1324
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1328
    :goto_107
    move-object/from16 v5, p0

    invoke-static {v5, v4}, Lcom/appsflyer/internal/d;->values(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1330
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 86
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const/16 v3, 0x8

    :try_start_119
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 91
    iget-wide v4, v4, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 93
    const/16 v15, 0xa

    new-array v13, v15, [I

    const v16, -0x46d230a4

    aput v16, v13, v11

    const v16, -0x313253db

    aput v16, v13, v14

    const v16, -0xc95f287

    aput v16, v13, v12

    const/16 v16, 0x3

    const v17, 0x2edd350e

    aput v17, v13, v16

    const/16 v16, 0x4

    const v17, 0x33617c5a    # 5.2499992E-8f

    aput v17, v13, v16

    const/16 v16, 0x5

    const v17, 0x33383dbe

    aput v17, v13, v16

    const/16 v16, 0x6

    const v17, 0x62fc568a

    aput v17, v13, v16

    const/16 v16, 0x7

    const v17, 0x523bb7e8

    aput v17, v13, v16

    const v16, 0x154d2b

    aput v16, v13, v3

    const/16 v16, 0x9

    const v17, 0x5f5f34ec

    aput v17, v13, v16

    invoke-static {v8, v9}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v8

    add-int/lit8 v8, v8, 0x13

    invoke-static {v13, v8}, Lcom/appsflyer/internal/d;->valueOf([II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    .line 2020
    new-instance v9, Ljava/text/SimpleDateFormat;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v9, v8, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 93
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 94
    invoke-virtual {v9, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 93
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_18a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_119 .. :try_end_18a} :catch_2b7

    .line 101
    move-wide/from16 v4, p1

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 104
    nop

    .line 2200
    const-string v8, "\u7925\u62e6\ue986\u70a9\uff44\u4674\ucd15\u4bc5\ud2a4\u5980\ua0a3\u2f1b\ub65c\u3d22\ubbd0\u02fd\u8997\u10a5\u9f41\ue650\u6d27\uebc5\u72ed\uf996\u40bf\ucf4d"

    invoke-static {v8}, Lcom/appsflyer/internal/d;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/appsflyer/internal/d;->AFInAppEventParameterName(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1a9

    invoke-static {v10}, Lcom/appsflyer/internal/d;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    .line 109
    goto :goto_1bb

    .line 2200
    :cond_1a9
    new-array v8, v12, [I

    fill-array-data v8, :array_31c

    invoke-static {v7, v11, v11}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v9

    add-int/2addr v9, v14

    invoke-static {v8, v9}, Lcom/appsflyer/internal/d;->valueOf([II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    :goto_1bb
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2202
    const-string v8, "\ud8d7\uc314\uaa62\u9143\u788c\u27fe\u0ec1\uf627\udd34\u8445\u63a5\u4aed\u31d2\u193e\uc001\uaf49\u96b7\u7dcb\u24ef\u0c32\ueb00\ud272\ub9b7\u6081"

    invoke-static {v8}, Lcom/appsflyer/internal/d;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/appsflyer/internal/d;->AFInAppEventParameterName(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1d3

    invoke-static {v10}, Lcom/appsflyer/internal/d;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1e2

    :cond_1d3
    new-array v8, v12, [I

    fill-array-data v8, :array_324

    invoke-static {v6}, Landroid/text/AndroidCharacter;->getEastAsianWidth(C)I

    move-result v6

    add-int/lit8 v6, v6, -0x3

    invoke-static {v8, v6}, Lcom/appsflyer/internal/d;->valueOf([II)Ljava/lang/String;

    move-result-object v6

    :goto_1e2
    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2204
    new-array v6, v15, [I

    fill-array-data v6, :array_32c

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v8

    shr-int/2addr v8, v3

    rsub-int/lit8 v8, v8, 0x14

    invoke-static {v6, v8}, Lcom/appsflyer/internal/d;->valueOf([II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/appsflyer/internal/d;->AFInAppEventParameterName(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_20c

    invoke-static {v10}, Lcom/appsflyer/internal/d;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    .line 109
    goto :goto_221

    .line 2204
    :cond_20c
    new-array v6, v12, [I

    fill-array-data v6, :array_344

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v8

    const/16 v9, 0x10

    shr-int/2addr v8, v9

    add-int/2addr v8, v14

    invoke-static {v6, v8}, Lcom/appsflyer/internal/d;->valueOf([II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    :goto_221
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2206
    new-array v3, v3, [I

    fill-array-data v3, :array_34c

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v6

    shr-int/lit8 v6, v6, 0x18

    add-int/lit8 v6, v6, 0xf

    invoke-static {v3, v6}, Lcom/appsflyer/internal/d;->valueOf([II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/internal/d;->AFInAppEventParameterName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_242

    .line 109
    const/16 v3, 0x5e

    goto :goto_244

    :cond_242
    const/16 v3, 0x4e

    :goto_244
    packed-switch v3, :pswitch_data_2d6

    .line 2206
    new-array v3, v12, [I

    fill-array-data v3, :array_360

    invoke-static {v7}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v6

    add-int/2addr v6, v14

    invoke-static {v3, v6}, Lcom/appsflyer/internal/d;->valueOf([II)Ljava/lang/String;

    move-result-object v3

    :goto_255
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    goto :goto_25f

    :pswitch_25a
    invoke-static {v10}, Lcom/appsflyer/internal/d;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_255

    :goto_25f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2217
    invoke-static {v0}, Lcom/appsflyer/internal/ai;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2219
    invoke-static {v0}, Lcom/appsflyer/internal/ai;->AFInAppEventType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3183
    const/16 v0, 0x11

    .line 3194
    invoke-static {v1, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 3195
    const/16 v6, 0x10

    invoke-static {v1, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    .line 3183
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 3184
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4183
    const/16 v0, 0x1b

    .line 4194
    invoke-static {v1, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 4195
    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    .line 4183
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 4184
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appsflyer/internal/d;->valueOf(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 96
    :catch_2b7
    move-exception v0

    .line 97
    const/16 v1, 0x10

    new-array v0, v1, [I

    fill-array-data v0, :array_368

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v1

    shr-int/2addr v1, v3

    rsub-int/lit8 v1, v1, 0x20

    invoke-static {v0, v1}, Lcom/appsflyer/internal/d;->valueOf([II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_2d0
    .packed-switch 0x15
        :pswitch_b1
    .end packed-switch

    :pswitch_data_2d6
    .packed-switch 0x5e
        :pswitch_25a
    .end packed-switch

    :array_2dc
    .array-data 4
        -0x15d2a4a8
        0x5f05d0b2
        0x739587f
        -0x56b0d867
        0x6998ee67
        -0x54c657fb
        -0x1466d16c
        -0x1142eed5
        0x368b8a9
        0x5f246f51
        -0x615bd2b7
        -0x267c82c6
        0x54a0a6d6
        0x2f80b366
        0x1f910103
        0x1de842d6
        -0x1d57aeb5
        0x4a6f80b4    # 3924013.0f
    .end array-data

    :array_304
    .array-data 4
        0x2fbdeb66
        0x46dc98a3
    .end array-data

    :array_30c
    .array-data 4
        0x2fbdeb66
        0x46dc98a3
    .end array-data

    :array_314
    .array-data 4
        0x2fbdeb66
        0x46dc98a3
    .end array-data

    :array_31c
    .array-data 4
        0x2fbdeb66
        0x46dc98a3
    .end array-data

    :array_324
    .array-data 4
        0x2fbdeb66
        0x46dc98a3
    .end array-data

    :array_32c
    .array-data 4
        -0x15d2a4a8
        0x5f05d0b2
        0x739587f
        -0x56b0d867
        0x3cb8b069
        -0x63f7f37b
        0x41d48c2f
        -0xb2209a3
        0x7b5ce69c
        -0x28fd415c
    .end array-data

    :array_344
    .array-data 4
        0x2fbdeb66
        0x46dc98a3
    .end array-data

    :array_34c
    .array-data 4
        -0x15d2a4a8
        0x5f05d0b2
        0x739587f
        -0x56b0d867
        -0x1a16b6c1
        -0x7c22d211    # -1.2999758E-36f
        0x3aec2eef
        -0x616ea854
    .end array-data

    :array_360
    .array-data 4
        0x2fbdeb66
        0x46dc98a3
    .end array-data

    :array_368
    .array-data 4
        0x6b6d3de2
        -0x38b616f7
        -0x6c75b77b
        -0x1334076
        0x544effd3
        0x78a8275f
        -0x10b66771
        -0x249f6b9f
        0x5327d3e1
        0x1531c1a6
        -0xace2cf8
        0x6760cee9
        -0x41784156
        -0x6df6d4db
        -0x4dad63d8
        -0x5724fc84
    .end array-data
.end method

.method private static AFKeystoreWrapper(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 288
    sget v0, Lcom/appsflyer/internal/d;->AFKeystoreWrapper:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/d;->values:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_c

    .line 282
    :cond_c
    :try_start_c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 283
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 284
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_1b} :catch_26

    .line 288
    sget v0, Lcom/appsflyer/internal/d;->AFKeystoreWrapper:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/d;->values:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0

    .line 285
    :catch_26
    move-exception p0

    .line 286
    const/4 p0, 0x0

    return-object p0
.end method

.method private static AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 9084
    nop

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_7

    .line 9084
    const/4 v2, 0x0

    goto :goto_8

    :cond_7
    const/4 v2, 0x1

    :goto_8
    packed-switch v2, :pswitch_data_56

    :cond_b
    :goto_b
    goto :goto_29

    :pswitch_c
    sget v2, Lcom/appsflyer/internal/d;->AFKeystoreWrapper:I

    add-int/lit8 v2, v2, 0x5d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/d;->values:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_18

    .line 0
    :cond_18
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 9084
    sget v2, Lcom/appsflyer/internal/d;->values:I

    add-int/lit8 v2, v2, 0x7d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/d;->AFKeystoreWrapper:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_b

    goto :goto_b

    .line 0
    :goto_29
    check-cast p0, [C

    .line 9074
    aget-char v0, p0, v0

    .line 9077
    array-length v2, p0

    sub-int/2addr v2, v1

    new-array v2, v2, [C

    .line 9078
    nop

    :goto_32
    array-length v3, p0

    if-ge v1, v3, :cond_38

    .line 9084
    const/16 v3, 0x60

    goto :goto_3a

    :cond_38
    const/16 v3, 0x5c

    :goto_3a
    packed-switch v3, :pswitch_data_5c

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    goto :goto_55

    .line 9080
    :pswitch_43
    add-int/lit8 v3, v1, -0x1

    aget-char v4, p0, v1

    mul-int v5, v1, v0

    xor-int/2addr v4, v5

    int-to-long v4, v4

    sget-wide v6, Lcom/appsflyer/internal/d;->AFInAppEventType:J

    xor-long/2addr v4, v6

    long-to-int v5, v4

    int-to-char v4, v5

    aput-char v4, v2, v3

    .line 9078
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 9084
    :goto_55
    return-object p0

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_c
    .end packed-switch

    :pswitch_data_5c
    .packed-switch 0x60
        :pswitch_43
    .end packed-switch
.end method

.method private static valueOf(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 250
    sget v0, Lcom/appsflyer/internal/d;->AFKeystoreWrapper:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/d;->values:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_c

    .line 231
    :cond_c
    const-string v0, "\u860f\u9d83"

    invoke-static {v0}, Lcom/appsflyer/internal/d;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 243
    const/16 v1, 0x48

    goto :goto_21

    :cond_1f
    const/16 v1, 0x41

    :goto_21
    packed-switch v1, :pswitch_data_94

    .line 235
    const-string v1, "\ud6d9\ucd27\ub63e"

    invoke-static {v1}, Lcom/appsflyer/internal/d;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 236
    array-length v1, p0

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    const/4 v3, 0x1

    sub-int/2addr v1, v3

    aget-object v4, p0, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/appsflyer/internal/d;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    goto :goto_4d

    .line 232
    :pswitch_4c
    return-object p0

    .line 250
    :goto_4d
    const/4 v4, 0x1

    .line 243
    :goto_4e
    const/4 v5, 0x0

    if-ge v4, v1, :cond_8a

    .line 250
    sget v6, Lcom/appsflyer/internal/d;->values:I

    add-int/lit8 v6, v6, 0x47

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/appsflyer/internal/d;->AFKeystoreWrapper:I

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_5e

    .line 243
    goto :goto_5f

    :cond_5e
    const/4 v5, 0x1

    :goto_5f
    packed-switch v5, :pswitch_data_9a

    .line 244
    aget-object v5, p0, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/appsflyer/internal/d;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    add-int/lit8 v4, v4, 0x1

    goto :goto_89

    .line 244
    :pswitch_76
    aget-object v5, p0, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/appsflyer/internal/d;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    add-int/lit8 v4, v4, 0x31

    .line 250
    :goto_89
    goto :goto_4e

    .line 248
    :cond_8a
    aget-object p0, p0, v5

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_94
    .packed-switch 0x48
        :pswitch_4c
    .end packed-switch

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_76
    .end packed-switch
.end method

.method private static valueOf(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/String;
    .registers 12

    .line 157
    sget v0, Lcom/appsflyer/internal/d;->AFKeystoreWrapper:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/d;->values:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_10

    .line 152
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    :goto_11
    const/16 v4, 0x20

    const/16 v5, 0x10

    packed-switch v0, :pswitch_data_106

    .line 121
    if-eqz p0, :cond_27

    goto :goto_24

    :pswitch_1b
    const/4 v0, 0x0

    :try_start_1c
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_22

    if-eqz p0, :cond_f3

    goto :goto_2c

    .line 157
    :catchall_22
    move-exception p0

    throw p0

    .line 152
    :goto_24
    const/16 v0, 0x41

    goto :goto_29

    :cond_27
    const/16 v0, 0xd

    :goto_29
    packed-switch v0, :pswitch_data_10c

    .line 121
    :goto_2c
    if-eqz p1, :cond_31

    .line 152
    const/16 v0, 0x3f

    goto :goto_33

    :cond_31
    const/16 v0, 0x33

    :goto_33
    packed-switch v0, :pswitch_data_112

    goto/16 :goto_f3

    .line 121
    :pswitch_38
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v4, :cond_f3

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 125
    const-wide/16 v6, 0x0

    .line 126
    nop

    .line 129
    const/4 p1, 0x0

    const/4 v4, 0x0

    :goto_4c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge p1, v8, :cond_55

    .line 152
    const/16 v8, 0x18

    goto :goto_57

    :cond_55
    const/16 v8, 0x44

    :goto_57
    packed-switch v8, :pswitch_data_118

    .line 134
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    .line 135
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v4, 0x7

    add-int/2addr p1, v4

    invoke-virtual {v0, v4, p1, p0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const/4 p0, 0x0

    goto :goto_75

    .line 130
    :pswitch_69
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v8

    add-int/2addr v4, v8

    .line 129
    add-int/lit8 p1, p1, 0x1

    goto :goto_4c

    .line 138
    :goto_75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-ge p0, p1, :cond_93

    .line 157
    sget p1, Lcom/appsflyer/internal/d;->values:I

    add-int/lit8 p1, p1, 0x1d

    rem-int/lit16 v4, p1, 0x80

    sput v4, Lcom/appsflyer/internal/d;->AFKeystoreWrapper:I

    rem-int/2addr p1, v1

    if-nez p1, :cond_86

    .line 139
    :cond_86
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->getNumericValue(C)I

    move-result p1

    int-to-long v8, p1

    add-long/2addr v6, v8

    .line 138
    add-int/lit8 p0, p0, 0x1

    goto :goto_75

    .line 143
    :cond_93
    :goto_93
    const-wide/16 p0, 0x64

    cmp-long v4, v6, p0

    if-lez v4, :cond_a6

    .line 144
    rem-long/2addr v6, p0

    .line 157
    sget p0, Lcom/appsflyer/internal/d;->AFKeystoreWrapper:I

    add-int/lit8 p0, p0, 0x47

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/d;->values:I

    rem-int/2addr p0, v1

    if-eqz p0, :cond_93

    goto :goto_93

    .line 148
    :cond_a6
    long-to-int p0, v6

    const/16 p1, 0x17

    invoke-virtual {v0, p1, p0}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    .line 151
    const-wide/16 v8, 0xa

    cmp-long p0, v6, v8

    if-gez p0, :cond_ee

    .line 121
    sget p0, Lcom/appsflyer/internal/d;->values:I

    add-int/lit8 p0, p0, 0x5f

    rem-int/lit16 v4, p0, 0x80

    sput v4, Lcom/appsflyer/internal/d;->AFKeystoreWrapper:I

    rem-int/2addr p0, v1

    if-nez p0, :cond_d8

    .line 152
    const/16 p0, 0x66

    new-array p1, v1, [I

    fill-array-data p1, :array_11e

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v1

    shr-int/lit8 v1, v1, 0x59

    mul-int/lit8 v1, v1, 0x0

    invoke-static {p1, v1}, Lcom/appsflyer/internal/d;->valueOf([II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ee

    :cond_d8
    new-array p0, v1, [I

    fill-array-data p0, :array_126

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v1

    shr-int/2addr v1, v5

    sub-int/2addr v2, v1

    invoke-static {p0, v2}, Lcom/appsflyer/internal/d;->valueOf([II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    :cond_ee
    :goto_ee
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 157
    :cond_f3
    :goto_f3
    :pswitch_f3
    new-array p0, v5, [I

    fill-array-data p0, :array_12e

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    add-int/2addr p1, v4

    invoke-static {p0, p1}, Lcom/appsflyer/internal/d;->valueOf([II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_106
    .packed-switch 0x0
        :pswitch_1b
    .end packed-switch

    :pswitch_data_10c
    .packed-switch 0xd
        :pswitch_f3
    .end packed-switch

    :pswitch_data_112
    .packed-switch 0x3f
        :pswitch_38
    .end packed-switch

    :pswitch_data_118
    .packed-switch 0x18
        :pswitch_69
    .end packed-switch

    :array_11e
    .array-data 4
        0x2fbdeb66
        0x46dc98a3
    .end array-data

    :array_126
    .array-data 4
        0x2fbdeb66
        0x46dc98a3
    .end array-data

    :array_12e
    .array-data 4
        0x6b6d3de2
        -0x38b616f7
        -0x6c75b77b
        -0x1334076
        0x544effd3
        0x78a8275f
        -0x10b66771
        -0x249f6b9f
        0x5327d3e1
        0x1531c1a6
        -0xace2cf8
        0x6760cee9
        -0x41784156
        -0x6df6d4db
        -0x4dad63d8
        -0x5724fc84
    .end array-data
.end method

.method private static valueOf([II)Ljava/lang/String;
    .registers 13

    .line 8140
    nop

    .line 8120
    const/4 v0, 0x4

    new-array v0, v0, [C

    .line 8121
    array-length v1, p0

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    new-array v1, v1, [C

    .line 8122
    sget-object v3, Lcom/appsflyer/internal/d;->AFInAppEventParameterName:[I

    invoke-virtual {v3}, [I->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 8124
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_13
    array-length v6, p0

    if-ge v5, v6, :cond_19

    .line 8140
    const/16 v6, 0x51

    goto :goto_1b

    :cond_19
    const/16 v6, 0x24

    :goto_1b
    const/4 v7, 0x2

    packed-switch v6, :pswitch_data_7e

    .line 8126
    aget v6, p0, v5

    shr-int/lit8 v6, v6, 0x10

    int-to-char v6, v6

    aput-char v6, v0, v4

    .line 8127
    aget v6, p0, v5

    int-to-char v6, v6

    aput-char v6, v0, v2

    .line 8128
    add-int/lit8 v6, v5, 0x1

    aget v8, p0, v6

    shr-int/lit8 v8, v8, 0x10

    int-to-char v8, v8

    aput-char v8, v0, v7

    .line 8129
    aget v6, p0, v6

    int-to-char v6, v6

    const/4 v8, 0x3

    aput-char v6, v0, v8

    .line 8132
    invoke-static {v0, v3, v4}, Lcom/appsflyer/internal/cf;->AFInAppEventParameterName([C[IZ)[I

    .line 8135
    shl-int/lit8 v6, v5, 0x1

    aget-char v9, v0, v4

    aput-char v9, v1, v6

    .line 8136
    add-int/lit8 v9, v6, 0x1

    aget-char v10, v0, v2

    aput-char v10, v1, v9

    .line 8137
    add-int/lit8 v9, v6, 0x2

    aget-char v10, v0, v7

    aput-char v10, v1, v9

    .line 8138
    add-int/2addr v6, v8

    aget-char v8, v0, v8

    aput-char v8, v1, v6

    .line 8124
    add-int/lit8 v5, v5, 0x2

    goto :goto_72

    .line 8140
    :pswitch_57
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v4, p1}, Ljava/lang/String;-><init>([CII)V

    sget p1, Lcom/appsflyer/internal/d;->values:I

    add-int/lit8 p1, p1, 0x75

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/d;->AFKeystoreWrapper:I

    rem-int/2addr p1, v7

    if-nez p1, :cond_68

    const/4 v2, 0x0

    :cond_68
    packed-switch v2, :pswitch_data_84

    goto :goto_6d

    :pswitch_6c
    return-object p0

    :goto_6d
    const/4 p1, 0x0

    :try_start_6e
    array-length p1, p1
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_70

    return-object p0

    :catchall_70
    move-exception p0

    throw p0

    :goto_72
    sget v6, Lcom/appsflyer/internal/d;->AFKeystoreWrapper:I

    add-int/lit8 v6, v6, 0x65

    rem-int/lit16 v8, v6, 0x80

    sput v8, Lcom/appsflyer/internal/d;->values:I

    rem-int/2addr v6, v7

    if-eqz v6, :cond_7d

    :cond_7d
    goto :goto_13

    :pswitch_data_7e
    .packed-switch 0x24
        :pswitch_57
    .end packed-switch

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_6c
    .end packed-switch
.end method

.method private static values(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .line 360
    const-string v0, "\u9749\u8cad\u3551\ude10\u46ea\uefaa\u9070\u397d\ua183\u4a5d\uf30e\u9bee\u0ca5\ub572\u5e7c\uc697\u6f57\u101d\ub8ec\u21ac\uca75\u732b\u1b81\u8c49\u355a\uddee\u46ad\uef65\u9036\u3888\ua148\u4a55\uf2f5\u9ba2\u0c64\ub531\u5dc6\uc64a\u6f0c\u17de\ub8af\u2163\uca2c\u7288\u1b41\u8c19\u3486\udde5"

    .line 342
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 344
    const/16 v1, 0xc

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_b
    const-class v5, Landroid/content/pm/PackageManager;

    const-string v6, "\uf847\ue382\ueb49\uf303\ufaf7\uc2af\uca7b\ud227\ud9fb\ua1b1\ua908\ub0ca\ub892\u8078\u8830\u97fb\u9fbe\u677c\u6f3f\u7686\u7e5a\u4618\u4dd7\u55ad\u5d79"

    invoke-static {v6}, Lcom/appsflyer/internal/d;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 345
    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v5, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 347
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_33
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_83

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 348
    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 360
    const/4 v5, 0x1

    goto :goto_4a

    :cond_49
    const/4 v5, 0x0

    :goto_4a
    packed-switch v5, :pswitch_data_144

    .line 349
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_4f
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_4f} :catch_104
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_4f} :catch_cb
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_4f} :catch_90

    goto :goto_66

    :pswitch_50
    nop

    .line 360
    sget v5, Lcom/appsflyer/internal/d;->values:I

    add-int/lit8 v5, v5, 0x79

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/appsflyer/internal/d;->AFKeystoreWrapper:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_60

    const/16 v5, 0x46

    goto :goto_62

    :cond_60
    const/16 v5, 0x1f

    :goto_62
    packed-switch v5, :pswitch_data_14a

    :pswitch_65
    goto :goto_33

    .line 349
    :goto_66
    :try_start_66
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_6a
    .catch Ljava/lang/IllegalAccessException; {:try_start_66 .. :try_end_6a} :catch_104
    .catch Ljava/lang/NoSuchMethodException; {:try_start_66 .. :try_end_6a} :catch_cb
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_66 .. :try_end_6a} :catch_90

    .line 360
    sget p1, Lcom/appsflyer/internal/d;->AFKeystoreWrapper:I

    add-int/lit8 p1, p1, 0x7b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/d;->values:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_79

    const/16 p1, 0x5e

    goto :goto_7b

    :cond_79
    const/16 p1, 0x27

    :goto_7b
    packed-switch p1, :pswitch_data_150

    return-object p0

    :pswitch_7f
    :try_start_7f
    array-length p1, v2
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_81

    return-object p0

    :catchall_81
    move-exception p0

    throw p0

    .line 349
    :cond_83
    nop

    .line 360
    sget p0, Lcom/appsflyer/internal/d;->values:I

    add-int/lit8 p0, p0, 0x45

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/d;->AFKeystoreWrapper:I

    rem-int/lit8 p0, p0, 0x2

    goto/16 :goto_13c

    .line 356
    :catch_90
    move-exception p0

    .line 357
    invoke-static {}, Lcom/appsflyer/internal/am;->AFKeystoreWrapper()Lcom/appsflyer/internal/am;

    move-result-object p1

    new-array v1, v1, [I

    fill-array-data v1, :array_156

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    add-int/lit8 v5, v5, 0x18

    invoke-static {v1, v5}, Lcom/appsflyer/internal/d;->valueOf([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/appsflyer/internal/d;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 7198
    new-array v0, v3, [Ljava/lang/String;

    aput-object p0, v0, v4

    invoke-virtual {p1, v2, v1, v0}, Lcom/appsflyer/internal/am;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_13c

    .line 354
    :catch_cb
    move-exception p0

    .line 355
    invoke-static {}, Lcom/appsflyer/internal/am;->AFKeystoreWrapper()Lcom/appsflyer/internal/am;

    move-result-object p1

    new-array v1, v1, [I

    fill-array-data v1, :array_172

    invoke-static {v4, v4}, Landroid/view/View;->getDefaultSize(II)I

    move-result v5

    add-int/lit8 v5, v5, 0x18

    invoke-static {v1, v5}, Lcom/appsflyer/internal/d;->valueOf([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/appsflyer/internal/d;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6198
    new-array v0, v3, [Ljava/lang/String;

    aput-object p0, v0, v4

    invoke-virtual {p1, v2, v1, v0}, Lcom/appsflyer/internal/am;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_13c

    .line 352
    :catch_104
    move-exception p0

    .line 353
    invoke-static {}, Lcom/appsflyer/internal/am;->AFKeystoreWrapper()Lcom/appsflyer/internal/am;

    move-result-object p1

    new-array v1, v1, [I

    fill-array-data v1, :array_18e

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x18

    invoke-static {v1, v5}, Lcom/appsflyer/internal/d;->valueOf([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/appsflyer/internal/d;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5198
    new-array v0, v3, [Ljava/lang/String;

    aput-object p0, v0, v4

    invoke-virtual {p1, v2, v1, v0}, Lcom/appsflyer/internal/am;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 360
    :goto_13c
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_144
    .packed-switch 0x0
        :pswitch_50
    .end packed-switch

    :pswitch_data_14a
    .packed-switch 0x1f
        :pswitch_65
    .end packed-switch

    :pswitch_data_150
    .packed-switch 0x5e
        :pswitch_7f
    .end packed-switch

    :array_156
    .array-data 4
        0x44b07b0d
        -0x9d472ff
        -0x7bfcc723
        0x6b65311b
        0xc0e789c
        -0x6a09aaf2
        0x23177f63
        -0x2206f166
        -0x2e0e4e1a
        -0x52703425
        -0x323108f2
        0x10756a2f
    .end array-data

    :array_172
    .array-data 4
        0x44b07b0d
        -0x9d472ff
        -0x7bfcc723
        0x6b65311b
        0xc0e789c
        -0x6a09aaf2
        0x23177f63
        -0x2206f166
        -0x2e0e4e1a
        -0x52703425
        -0x323108f2
        0x10756a2f
    .end array-data

    :array_18e
    .array-data 4
        0x44b07b0d
        -0x9d472ff
        -0x7bfcc723
        0x6b65311b
        0xc0e789c
        -0x6a09aaf2
        0x23177f63
        -0x2206f166
        -0x2e0e4e1a
        -0x52703425
        -0x323108f2
        0x10756a2f
    .end array-data
.end method
