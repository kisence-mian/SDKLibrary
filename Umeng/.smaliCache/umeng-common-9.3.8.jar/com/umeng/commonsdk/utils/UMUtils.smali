.class public Lcom/umeng/commonsdk/utils/UMUtils;
.super Ljava/lang/Object;
.source "UMUtils.java"


# static fields
.field public static final DEFAULT_TIMEZONE:I = 0x8

.field private static final KEY_APP_KEY:Ljava/lang/String; = "appkey"

.field private static final KEY_CHANNEL:Ljava/lang/String; = "channel"

.field private static final KEY_LAST_APP_KEY:Ljava/lang/String; = "last_appkey"

.field private static final KEY_MIUI_VERSION_NAME:Ljava/lang/String; = "ro.miui.ui.version.name"

.field private static final KEY_SESSION_ID:Ljava/lang/String; = "session_id"

.field private static final KEY_SHARED_PREFERENCES_NAME:Ljava/lang/String; = "umeng_common_config"

.field public static final MOBILE_NETWORK:Ljava/lang/String; = "2G/3G"

.field private static final SD_PERMISSION:Ljava/lang/String; = "android.permission.WRITE_EXTERNAL_STORAGE"

.field private static final SP_FILE_NAME:Ljava/lang/String; = "um_session_id"

.field private static final TAG:Ljava/lang/String; = "UMUtils"

.field public static final UNKNOW:Ljava/lang/String; = ""

.field public static VALUE_ABTEST_VERSION:Ljava/lang/String; = null

.field public static VALUE_ANALYTICS_VERSION:Ljava/lang/String; = null

.field public static VALUE_APM_VERSION:Ljava/lang/String; = null

.field public static VALUE_ASMS_VERSION:Ljava/lang/String; = null

.field public static VALUE_GAME_VERSION:Ljava/lang/String; = null

.field public static VALUE_LINK_VERSION:Ljava/lang/String; = null

.field public static VALUE_PUSH_VERSION:Ljava/lang/String; = null

.field public static VALUE_REC_VERSION_NAME:Ljava/lang/String; = null

.field public static VALUE_SHARE_VERSION:Ljava/lang/String; = null

.field public static VALUE_SMS_VERSION:Ljava/lang/String; = null

.field public static VALUE_VERIFY_VERSION:Ljava/lang/String; = null

.field public static VALUE_VISUAL_VERSION:Ljava/lang/String; = null

.field public static final WIFI:Ljava/lang/String; = "Wi-Fi"

.field private static final pattern:Ljava/util/regex/Pattern;

.field private static spLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 109
    const-string v0, "UTDID\">([^<]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/utils/UMUtils;->pattern:Ljava/util/regex/Pattern;

    .line 117
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/utils/UMUtils;->spLock:Ljava/lang/Object;

    .line 119
    const-string v0, ""

    sput-object v0, Lcom/umeng/commonsdk/utils/UMUtils;->VALUE_ANALYTICS_VERSION:Ljava/lang/String;

    .line 120
    sput-object v0, Lcom/umeng/commonsdk/utils/UMUtils;->VALUE_GAME_VERSION:Ljava/lang/String;

    .line 122
    sput-object v0, Lcom/umeng/commonsdk/utils/UMUtils;->VALUE_PUSH_VERSION:Ljava/lang/String;

    .line 123
    sput-object v0, Lcom/umeng/commonsdk/utils/UMUtils;->VALUE_SHARE_VERSION:Ljava/lang/String;

    .line 124
    sput-object v0, Lcom/umeng/commonsdk/utils/UMUtils;->VALUE_APM_VERSION:Ljava/lang/String;

    .line 125
    sput-object v0, Lcom/umeng/commonsdk/utils/UMUtils;->VALUE_VERIFY_VERSION:Ljava/lang/String;

    .line 126
    sput-object v0, Lcom/umeng/commonsdk/utils/UMUtils;->VALUE_SMS_VERSION:Ljava/lang/String;

    .line 127
    sput-object v0, Lcom/umeng/commonsdk/utils/UMUtils;->VALUE_REC_VERSION_NAME:Ljava/lang/String;

    .line 128
    sput-object v0, Lcom/umeng/commonsdk/utils/UMUtils;->VALUE_VISUAL_VERSION:Ljava/lang/String;

    .line 131
    sput-object v0, Lcom/umeng/commonsdk/utils/UMUtils;->VALUE_ASMS_VERSION:Ljava/lang/String;

    .line 133
    sput-object v0, Lcom/umeng/commonsdk/utils/UMUtils;->VALUE_LINK_VERSION:Ljava/lang/String;

    .line 134
    sput-object v0, Lcom/umeng/commonsdk/utils/UMUtils;->VALUE_ABTEST_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MD5(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .line 1382
    const-string v0, "MD5 e is "

    const-string v1, "UMUtils"

    const/4 v2, 0x0

    if-nez p0, :cond_8

    .line 1383
    return-object v2

    .line 1385
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 1386
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 1387
    invoke-virtual {v4}, Ljava/security/MessageDigest;->reset()V

    .line 1388
    invoke-virtual {v4, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 1389
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 1390
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1391
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_23
    array-length v7, v3

    if-ge v6, v7, :cond_3d

    .line 1392
    const-string v7, "%02X"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aget-byte v9, v3, v6

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1391
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    .line 1395
    :cond_3d
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_41} :catch_44
    .catchall {:try_start_8 .. :try_end_41} :catchall_42

    return-object p0

    .line 1405
    :catchall_42
    move-exception p0

    goto :goto_4e

    .line 1397
    :catch_44
    move-exception v3

    .line 1398
    :try_start_45
    const-string v3, "[^[a-z][A-Z][0-9][.][_]]"

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4d} :catch_67
    .catchall {:try_start_45 .. :try_end_4d} :catchall_42

    return-object p0

    .line 1406
    :goto_4e
    sget-boolean v3, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v3, :cond_66

    .line 1407
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    :cond_66
    return-object v2

    .line 1400
    :catch_67
    move-exception p0

    .line 1401
    sget-boolean v3, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v3, :cond_80

    .line 1402
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    :cond_80
    return-object v2
.end method

.method private static byte2HexFormatted([B)Ljava/lang/String;
    .registers 9

    .line 1309
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1310
    const/4 v1, 0x0

    :goto_a
    array-length v3, p0

    if-ge v1, v3, :cond_48

    .line 1311
    aget-byte v3, p0, v1

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 1312
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 1313
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2d

    .line 1314
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1315
    :cond_2d
    if-le v4, v2, :cond_35

    .line 1316
    add-int/lit8 v6, v4, -0x2

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1317
    :cond_35
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1319
    array-length v3, p0

    sub-int/2addr v3, v5

    if-ge v1, v3, :cond_45

    .line 1320
    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1310
    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1322
    :cond_48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static bytes2Hex([B)Ljava/lang/String;
    .registers 6

    .line 1489
    nop

    .line 1490
    nop

    .line 1491
    const-string v0, ""

    const/4 v1, 0x0

    :goto_5
    array-length v2, p0

    if-ge v1, v2, :cond_3e

    .line 1492
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 1493
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2a

    .line 1494
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1496
    :cond_2a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1491
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1498
    :cond_3e
    return-object v0
.end method

.method public static checkAndroidManifest(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .line 1660
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1661
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1662
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_19} :catch_1b

    .line 1663
    const/4 p0, 0x1

    return p0

    .line 1664
    :catch_1b
    move-exception p0

    .line 1666
    return v0
.end method

.method public static checkIntentFilterData(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    .line 1678
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1679
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1680
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1681
    const-string v2, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1683
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tencent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1684
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1685
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1686
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v2, 0x40

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 1688
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_73

    .line 1689
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1690
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_71

    .line 1691
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_6d
    .catchall {:try_start_1 .. :try_end_6d} :catchall_74

    if-eqz v1, :cond_71

    .line 1692
    const/4 p0, 0x1

    return p0

    .line 1695
    :cond_71
    goto :goto_4d

    .line 1696
    :cond_72
    return v0

    .line 1698
    :cond_73
    return v0

    .line 1700
    :catchall_74
    move-exception p0

    .line 1703
    return v0
.end method

.method public static checkMetaData(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .line 1738
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1739
    nop

    .line 1741
    const/4 v1, 0x0

    :try_start_a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x80

    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 1743
    if-eqz p0, :cond_25

    .line 1744
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_20
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_20} :catch_26

    .line 1745
    if-eqz p0, :cond_24

    .line 1746
    const/4 p0, 0x1

    return p0

    .line 1749
    :cond_24
    return v1

    .line 1754
    :cond_25
    goto :goto_27

    .line 1752
    :catch_26
    move-exception p0

    .line 1755
    :goto_27
    return v1
.end method

.method public static checkPath(Ljava/lang/String;)Z
    .registers 2

    .line 1638
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_5} :catch_a

    .line 1639
    if-nez p0, :cond_8

    .line 1640
    return v0

    .line 1642
    :cond_8
    const/4 p0, 0x1

    return p0

    .line 1645
    :catch_a
    move-exception p0

    .line 1646
    return v0
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8

    .line 1280
    nop

    .line 1281
    const/4 v0, 0x0

    if-nez p0, :cond_5

    .line 1282
    return v0

    .line 1284
    :cond_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x1

    if-lt v1, v2, :cond_37

    .line 1286
    :try_start_c
    const-string v1, "android.content.Context"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1287
    const-string v2, "checkSelfPermission"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1288
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2c} :catch_31

    .line 1289
    if-nez p0, :cond_30

    .line 1290
    const/4 v0, 0x1

    goto :goto_36

    .line 1292
    :cond_30
    goto :goto_36

    .line 1294
    :catch_31
    move-exception p1

    .line 1295
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 1296
    nop

    .line 1297
    :goto_36
    goto :goto_46

    .line 1299
    :cond_37
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1300
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_46

    .line 1301
    const/4 v0, 0x1

    .line 1304
    :cond_46
    :goto_46
    return v0
.end method

.method public static checkResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 1715
    nop

    .line 1717
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1718
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 1717
    invoke-virtual {v1, p1, p2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_1c

    .line 1719
    if-gtz p0, :cond_19

    .line 1720
    goto :goto_1b

    .line 1722
    :cond_19
    const/4 p0, 0x1

    const/4 v0, 0x1

    .line 1726
    :goto_1b
    goto :goto_1d

    .line 1724
    :catchall_1c
    move-exception p0

    .line 1727
    :goto_1d
    return v0
.end method

.method public static encryptBySHA1(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1463
    const-string v0, "encrypt by SHA1 e is "

    const-string v1, "UMUtils"

    .line 1464
    nop

    .line 1465
    const/4 v2, 0x0

    :try_start_6
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_a} :catch_39
    .catchall {:try_start_6 .. :try_end_a} :catchall_1f

    .line 1467
    :try_start_a
    const-string v3, "SHA1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 1468
    invoke-virtual {v3, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 1469
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->bytes2Hex([B)Ljava/lang/String;

    move-result-object p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1b} :catch_1d
    .catchall {:try_start_a .. :try_end_1b} :catchall_1f

    .line 1472
    nop

    .line 1473
    return-object p0

    .line 1470
    :catch_1d
    move-exception p0

    .line 1471
    return-object v2

    .line 1479
    :catchall_1f
    move-exception p0

    .line 1480
    sget-boolean v3, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v3, :cond_38

    .line 1481
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    :cond_38
    return-object v2

    .line 1474
    :catch_39
    move-exception p0

    .line 1475
    sget-boolean v3, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v3, :cond_52

    .line 1476
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    :cond_52
    return-object v2
.end method

.method public static genId()Ljava/lang/String;
    .registers 1

    .line 1899
    const-string v0, "1234567890"

    return-object v0
.end method

.method public static getApmFlag()Ljava/lang/String;
    .registers 5

    .line 2187
    const-string v0, ""

    .line 2189
    :try_start_2
    const-string v1, "com.umeng.umcrash.UMCrash"

    invoke-static {v1}, Lcom/umeng/commonsdk/utils/UMUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 2190
    if-eqz v1, :cond_24

    .line 2192
    const-string v2, "getUMAPMFlag"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2193
    if-eqz v2, :cond_24

    .line 2194
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2195
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_23

    move-object v0, v1

    goto :goto_24

    .line 2200
    :catchall_23
    move-exception v1

    :cond_24
    :goto_24
    nop

    .line 2202
    return-object v0
.end method

.method public static getAppHashKey(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 1784
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getAppHashKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAppMD5Signature(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1765
    const-string v0, ""

    .line 1767
    :try_start_2
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getAppMD5Signature(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_1a

    .line 1768
    :try_start_6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 1769
    const-string v1, ":"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_17

    .line 1770
    :try_start_12
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_1a

    .line 1772
    :cond_16
    return-object p0

    .line 1773
    :catchall_17
    move-exception v0

    move-object v0, p0

    goto :goto_1b

    :catchall_1a
    move-exception p0

    .line 1776
    :goto_1b
    return-object v0
.end method

.method public static getAppName(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    .line 1349
    const-string v0, "get app name e is "

    const-string v1, "UMUtils"

    .line 1350
    const/4 v2, 0x0

    if-nez p0, :cond_8

    .line 1351
    return-object v2

    .line 1354
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 1355
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_23} :catch_41
    .catchall {:try_start_8 .. :try_end_23} :catchall_24

    .line 1366
    :goto_23
    goto :goto_5e

    .line 1361
    :catchall_24
    move-exception v3

    .line 1362
    sget-boolean v4, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v4, :cond_3d

    .line 1363
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    :cond_3d
    invoke-static {p0, v3}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_5e

    .line 1356
    :catch_41
    move-exception v3

    .line 1357
    sget-boolean v4, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v4, :cond_5a

    .line 1358
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    :cond_5a
    invoke-static {p0, v3}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_23

    .line 1367
    :goto_5e
    return-object v2
.end method

.method public static getAppSHA1Key(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 1780
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getAppSHA1Key(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAppVersinoCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1193
    const-string v0, "get app version code e is "

    const-string v1, "UMUtils"

    const-string v2, ""

    if-eqz p0, :cond_4f

    if-nez p1, :cond_b

    goto :goto_4f

    .line 1197
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 1198
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 1199
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1a} :catch_35
    .catchall {:try_start_b .. :try_end_1a} :catchall_1b

    return-object p0

    .line 1206
    :catchall_1b
    move-exception p0

    .line 1207
    sget-boolean p1, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz p1, :cond_34

    .line 1208
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    :cond_34
    return-object v2

    .line 1200
    :catch_35
    move-exception p0

    .line 1201
    sget-boolean p1, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz p1, :cond_4e

    .line 1202
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    :cond_4e
    return-object v2

    .line 1194
    :cond_4f
    :goto_4f
    return-object v2
.end method

.method public static getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 1163
    const-string v0, "get app version code e is "

    const-string v1, "UMUtils"

    const-string v2, ""

    if-nez p0, :cond_9

    .line 1164
    return-object v2

    .line 1167
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 1168
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 1169
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1c} :catch_37
    .catchall {:try_start_9 .. :try_end_1c} :catchall_1d

    return-object p0

    .line 1176
    :catchall_1d
    move-exception p0

    .line 1177
    sget-boolean v3, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v3, :cond_36

    .line 1178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    :cond_36
    return-object v2

    .line 1170
    :catch_37
    move-exception p0

    .line 1171
    sget-boolean v3, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v3, :cond_50

    .line 1172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    :cond_50
    return-object v2
.end method

.method public static getAppVersionName(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 1222
    const-string v0, "get app version name e is "

    const-string v1, "UMUtils"

    const-string v2, ""

    if-nez p0, :cond_9

    .line 1223
    return-object v2

    .line 1226
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 1227
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_18} :catch_33
    .catchall {:try_start_9 .. :try_end_18} :catchall_19

    return-object p0

    .line 1234
    :catchall_19
    move-exception p0

    .line 1235
    sget-boolean v3, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v3, :cond_32

    .line 1236
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    :cond_32
    return-object v2

    .line 1228
    :catch_33
    move-exception p0

    .line 1229
    sget-boolean v3, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v3, :cond_4c

    .line 1230
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    :cond_4c
    return-object v2
.end method

.method public static getAppVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 1251
    const-string v0, "get app version name e is "

    const-string v1, "UMUtils"

    const-string v2, ""

    if-eqz p0, :cond_51

    if-nez p1, :cond_b

    goto :goto_51

    .line 1255
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 1256
    iget-object p0, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_16} :catch_34
    .catchall {:try_start_b .. :try_end_16} :catchall_17

    return-object p0

    .line 1263
    :catchall_17
    move-exception p1

    .line 1264
    sget-boolean v3, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v3, :cond_30

    .line 1265
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    :cond_30
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 1268
    return-object v2

    .line 1257
    :catch_34
    move-exception p1

    .line 1258
    sget-boolean v3, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v3, :cond_4d

    .line 1259
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    :cond_4d
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 1262
    return-object v2

    .line 1252
    :cond_51
    :goto_51
    return-object v2
.end method

.method public static getAppkey(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 310
    const-string v0, "get app key e is "

    const-string v1, "UMUtils"

    const/4 v2, 0x0

    if-nez p0, :cond_8

    .line 311
    return-object v2

    .line 313
    :cond_8
    :try_start_8
    sget-object v3, Lcom/umeng/commonsdk/UMConfigure;->sAppkey:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 314
    sget-object p0, Lcom/umeng/commonsdk/UMConfigure;->sAppkey:Ljava/lang/String;

    return-object p0

    .line 322
    :cond_13
    const-string v3, "appkey"

    invoke-static {p0, v3}, Lcom/umeng/commonsdk/utils/UMUtils;->getMultiProcessSP(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_19} :catch_37
    .catchall {:try_start_8 .. :try_end_19} :catchall_1a

    return-object p0

    .line 329
    :catchall_1a
    move-exception v3

    .line 330
    sget-boolean v4, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v4, :cond_33

    .line 331
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_33
    invoke-static {p0, v3}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 334
    return-object v2

    .line 323
    :catch_37
    move-exception v3

    .line 324
    sget-boolean v4, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v4, :cond_50

    .line 325
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_50
    invoke-static {p0, v3}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 328
    return-object v2
.end method

.method public static getAppkeyByXML(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 1572
    nop

    .line 1574
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1575
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 1577
    if-eqz p0, :cond_32

    .line 1578
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "UMENG_APPKEY"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1579
    if-eqz p0, :cond_21

    .line 1580
    nop

    .line 1581
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1583
    :cond_21
    sget-boolean p0, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz p0, :cond_32

    .line 1584
    const-string p0, "MobclickAgent"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Could not read UMENG_APPKEY meta-data from AndroidManifest.xml."

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_33

    .line 1591
    :cond_32
    goto :goto_34

    .line 1588
    :catchall_33
    move-exception p0

    .line 1592
    :goto_34
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBuildProp()Ljava/util/Properties;
    .registers 6

    .line 1081
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 1082
    nop

    .line 1084
    const/4 v1, 0x0

    :try_start_7
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "build.prop"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_17} :catch_2e
    .catchall {:try_start_7 .. :try_end_17} :catchall_25

    .line 1085
    :try_start_17
    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_22
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1f

    .line 1089
    nop

    .line 1091
    :try_start_1b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_35

    goto :goto_34

    .line 1089
    :catchall_1f
    move-exception v0

    move-object v1, v2

    goto :goto_26

    .line 1086
    :catch_22
    move-exception v1

    move-object v1, v2

    goto :goto_2f

    .line 1089
    :catchall_25
    move-exception v0

    :goto_26
    if-eqz v1, :cond_2d

    .line 1091
    :try_start_28
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2c

    .line 1094
    goto :goto_2d

    .line 1092
    :catch_2c
    move-exception v1

    .line 1094
    :cond_2d
    :goto_2d
    throw v0

    .line 1086
    :catch_2e
    move-exception v2

    .line 1089
    :goto_2f
    if-eqz v1, :cond_37

    .line 1091
    :try_start_31
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_35

    .line 1094
    :goto_34
    goto :goto_37

    .line 1092
    :catch_35
    move-exception v1

    goto :goto_34

    .line 1097
    :cond_37
    :goto_37
    return-object v0
.end method

.method public static getCPU()Ljava/lang/String;
    .registers 8

    .line 584
    const-string v0, "Could not read from file /proc/cpuinfo, e is "

    const-string v1, "get cpu e is "

    const-string v2, ""

    const-string v3, "UMUtils"

    .line 585
    nop

    .line 586
    nop

    .line 588
    const/4 v4, 0x0

    :try_start_b
    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/proc/cpuinfo"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_12} :catch_43
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_12} :catch_41
    .catchall {:try_start_b .. :try_end_12} :catchall_3f

    .line 589
    nop

    .line 591
    :try_start_13
    new-instance v6, Ljava/io/BufferedReader;

    const/16 v7, 0x400

    invoke-direct {v6, v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 592
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 593
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 594
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_24} :catch_25
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_24} :catch_43
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_24} :catch_41
    .catchall {:try_start_13 .. :try_end_24} :catchall_3f

    .line 599
    goto :goto_3e

    .line 595
    :catch_25
    move-exception v5

    .line 596
    :try_start_26
    sget-boolean v6, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v6, :cond_3e

    .line 597
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_3e} :catch_43
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_3e} :catch_41
    .catchall {:try_start_26 .. :try_end_3e} :catchall_3f

    .line 605
    :cond_3e
    :goto_3e
    goto :goto_5c

    .line 617
    :catchall_3f
    move-exception v0

    goto :goto_70

    .line 612
    :catch_41
    move-exception v0

    goto :goto_89

    .line 601
    :catch_43
    move-exception v5

    .line 602
    :try_start_44
    sget-boolean v6, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v6, :cond_5c

    .line 603
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_5c
    :goto_5c
    if-eqz v4, :cond_6f

    .line 607
    const/16 v0, 0x3a

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 608
    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 609
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_6e} :catch_41
    .catchall {:try_start_44 .. :try_end_6e} :catchall_3f

    return-object v0

    .line 611
    :cond_6f
    return-object v2

    .line 618
    :goto_70
    sget-boolean v4, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v4, :cond_88

    .line 619
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_88
    return-object v2

    .line 613
    :goto_89
    sget-boolean v4, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v4, :cond_a1

    .line 614
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_a1
    return-object v2
.end method

.method public static getChannel(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 378
    const-string v0, "get channel e is "

    const-string v1, "UMUtils"

    const/4 v2, 0x0

    if-nez p0, :cond_8

    .line 379
    return-object v2

    .line 381
    :cond_8
    :try_start_8
    sget-object v3, Lcom/umeng/commonsdk/UMConfigure;->sChannel:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 382
    sget-object p0, Lcom/umeng/commonsdk/UMConfigure;->sChannel:Ljava/lang/String;

    return-object p0

    .line 390
    :cond_13
    const-string v3, "channel"

    invoke-static {p0, v3}, Lcom/umeng/commonsdk/utils/UMUtils;->getMultiProcessSP(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_19} :catch_37
    .catchall {:try_start_8 .. :try_end_19} :catchall_1a

    return-object p0

    .line 397
    :catchall_1a
    move-exception v3

    .line 398
    sget-boolean v4, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v4, :cond_33

    .line 399
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_33
    invoke-static {p0, v3}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 402
    return-object v2

    .line 391
    :catch_37
    move-exception v3

    .line 392
    sget-boolean v4, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v4, :cond_50

    .line 393
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_50
    invoke-static {p0, v3}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 396
    return-object v2
.end method

.method public static getChannelByXML(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 1602
    nop

    .line 1604
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1605
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 1607
    if-eqz p0, :cond_3c

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_3c

    .line 1608
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "UMENG_CHANNEL"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 1609
    if-eqz p0, :cond_3c

    .line 1610
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1611
    if-eqz p0, :cond_2b

    .line 1612
    nop

    .line 1613
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1615
    :cond_2b
    sget-boolean p0, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz p0, :cond_3c

    .line 1616
    const-string p0, "MobclickAgent"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Could not read UMENG_CHANNEL meta-data from AndroidManifest.xml."

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_3d

    .line 1624
    :cond_3c
    goto :goto_3e

    .line 1622
    :catchall_3d
    move-exception p0

    .line 1625
    :goto_3e
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1915
    nop

    .line 1917
    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_6

    .line 1920
    goto :goto_8

    .line 1918
    :catchall_6
    move-exception p0

    .line 1919
    const/4 p0, 0x0

    .line 1921
    :goto_8
    return-object p0
.end method

.method public static getDeviceToken(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    .line 1538
    nop

    .line 1539
    const/4 v0, 0x0

    if-eqz p0, :cond_45

    .line 1540
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 1542
    :try_start_8
    const-string v1, "com.umeng.message.MessageSharedPrefs"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1543
    if-eqz v1, :cond_43

    .line 1544
    const-string v2, "getInstance"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1545
    if-eqz v2, :cond_43

    .line 1546
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1547
    if-eqz p0, :cond_43

    .line 1548
    const-string v2, "getDeviceToken"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1549
    if-eqz v1, :cond_43

    .line 1550
    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1551
    if-eqz p0, :cond_43

    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_43

    .line 1552
    check-cast p0, Ljava/lang/String;
    :try_end_42
    .catchall {:try_start_8 .. :try_end_42} :catchall_44

    move-object v0, p0

    .line 1560
    :cond_43
    goto :goto_45

    .line 1558
    :catchall_44
    move-exception p0

    .line 1562
    :cond_45
    :goto_45
    return-object v0
.end method

.method public static getDeviceType(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    .line 1124
    const-string v0, "get device type e is "

    const-string v1, "UMUtils"

    const/4 v2, 0x0

    .line 1125
    const-string v3, "Phone"

    if-nez p0, :cond_a

    .line 1126
    return-object v3

    .line 1128
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x3

    if-lt v4, v5, :cond_1b

    const/4 v4, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v4, 0x0

    .line 1130
    :goto_1c
    if-eqz v4, :cond_21

    .line 1131
    const-string v3, "Tablet"
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_20} :catch_40
    .catchall {:try_start_a .. :try_end_20} :catchall_23

    goto :goto_22

    .line 1133
    :cond_21
    nop

    .line 1135
    :goto_22
    return-object v3

    .line 1142
    :catchall_23
    move-exception v3

    .line 1143
    sget-boolean v4, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v4, :cond_3c

    .line 1144
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    :cond_3c
    invoke-static {p0, v3}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 1147
    return-object v2

    .line 1136
    :catch_40
    move-exception v3

    .line 1137
    sget-boolean v4, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v4, :cond_59

    .line 1138
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    :cond_59
    invoke-static {p0, v3}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 1141
    return-object v2
.end method

.method public static getDisplayResolution(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    .line 707
    const-string v0, "get display resolution e is "

    const-string v1, "UMUtils"

    const-string v2, ""

    if-nez p0, :cond_9

    .line 708
    return-object v2

    .line 711
    :cond_9
    :try_start_9
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 712
    const-string v4, "window"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    check-cast v4, Landroid/view/WindowManager;

    .line 713
    if-nez v4, :cond_1b

    .line 714
    return-object v2

    .line 716
    :cond_1b
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 718
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 719
    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 721
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "*"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_45} :catch_63
    .catchall {:try_start_9 .. :try_end_45} :catchall_46

    .line 722
    return-object p0

    .line 729
    :catchall_46
    move-exception v3

    .line 730
    sget-boolean v4, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v4, :cond_5f

    .line 731
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :cond_5f
    invoke-static {p0, v3}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 734
    return-object v2

    .line 723
    :catch_63
    move-exception v3

    .line 724
    sget-boolean v4, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v4, :cond_7c

    .line 725
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_7c
    invoke-static {p0, v3}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 728
    return-object v2
.end method

.method public static getFileMD5(Ljava/io/File;)Ljava/lang/String;
    .registers 10

    .line 1422
    const-string v0, "get file MD5 e is "

    const-string v1, "UMUtils"

    .line 1423
    nop

    .line 1424
    const/16 v2, 0x400

    const/4 v3, 0x0

    :try_start_8
    new-array v4, v2, [B
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_a} :catch_5f
    .catchall {:try_start_8 .. :try_end_a} :catchall_45

    .line 1427
    :try_start_a
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_13

    .line 1428
    const-string p0, ""

    return-object p0

    .line 1430
    :cond_13
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 1431
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1432
    :goto_1e
    const/4 p0, 0x0

    invoke-virtual {v6, v4, p0, v2}, Ljava/io/FileInputStream;->read([BII)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2a

    .line 1433
    invoke-virtual {v5, v4, p0, v7}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_1e

    .line 1435
    :cond_2a
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2d} :catch_43
    .catchall {:try_start_a .. :try_end_2d} :catchall_45

    .line 1439
    nop

    .line 1440
    :try_start_2e
    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v2, v5, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 1441
    const-string v4, "%1$032x"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, p0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_42} :catch_5f
    .catchall {:try_start_2e .. :try_end_42} :catchall_45

    return-object p0

    .line 1436
    :catch_43
    move-exception p0

    .line 1438
    return-object v3

    .line 1447
    :catchall_45
    move-exception p0

    .line 1448
    sget-boolean v2, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v2, :cond_5e

    .line 1449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    :cond_5e
    return-object v3

    .line 1442
    :catch_5f
    move-exception p0

    .line 1443
    sget-boolean v2, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v2, :cond_78

    .line 1444
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    :cond_78
    return-object v3
.end method

.method private static getFlymeVersion(Ljava/util/Properties;)Ljava/lang/String;
    .registers 2

    .line 1066
    :try_start_0
    const-string v0, "ro.build.display.id"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 1067
    const-string v0, "flyme os"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1068
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    aget-object p0, p0, v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_21

    return-object p0

    .line 1071
    :cond_20
    goto :goto_22

    .line 1070
    :catch_21
    move-exception p0

    .line 1072
    :goto_22
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getGPU(Ljavax/microedition/khronos/opengles/GL10;)[Ljava/lang/String;
    .registers 7

    .line 558
    const-string v0, "Could not read gpu infor, e is "

    const-string v1, "UMUtils"

    const/4 v2, 0x2

    const/4 v3, 0x0

    :try_start_6
    new-array v2, v2, [Ljava/lang/String;

    .line 559
    const/16 v4, 0x1f00

    invoke-interface {p0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v4

    .line 560
    const/16 v5, 0x1f01

    invoke-interface {p0, v5}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object p0

    .line 561
    aput-object v4, v2, v3

    .line 562
    const/4 v4, 0x1

    aput-object p0, v2, v4
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_19} :catch_36
    .catchall {:try_start_6 .. :try_end_19} :catchall_1a

    .line 563
    return-object v2

    .line 569
    :catchall_1a
    move-exception p0

    .line 570
    sget-boolean v2, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v2, :cond_33

    .line 571
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_33
    new-array p0, v3, [Ljava/lang/String;

    return-object p0

    .line 564
    :catch_36
    move-exception p0

    .line 565
    sget-boolean v2, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v2, :cond_4f

    .line 566
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_4f
    new-array p0, v3, [Ljava/lang/String;

    return-object p0
.end method

.method public static getLastAppkey(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 244
    const-string v0, "get last app key e is "

    const-string v1, "UMUtils"

    const/4 v2, 0x0

    if-nez p0, :cond_8

    .line 245
    return-object v2

    .line 253
    :cond_8
    :try_start_8
    const-string v3, "last_appkey"

    invoke-static {p0, v3}, Lcom/umeng/commonsdk/utils/UMUtils;->getMultiProcessSP(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_2c
    .catchall {:try_start_8 .. :try_end_e} :catchall_f

    return-object p0

    .line 260
    :catchall_f
    move-exception v3

    .line 261
    sget-boolean v4, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v4, :cond_28

    .line 262
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_28
    invoke-static {p0, v3}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 265
    return-object v2

    .line 254
    :catch_2c
    move-exception v3

    .line 255
    sget-boolean v4, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v4, :cond_45

    .line 256
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_45
    invoke-static {p0, v3}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 259
    return-object v2
.end method

.method public static getLocale(Landroid/content/Context;)Ljava/util/Locale;
    .registers 7

    .line 819
    const-string v0, "get locale e is "

    const-string v1, "UMUtils"

    const/4 v2, 0x0

    if-nez p0, :cond_8

    .line 820
    return-object v2

    .line 823
    :cond_8
    nop

    .line 825
    :try_start_9
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    .line 826
    invoke-virtual {v3}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 827
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/provider/Settings$System;->getConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V

    .line 828
    nop

    .line 829
    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1b} :catch_1e
    .catchall {:try_start_9 .. :try_end_1b} :catchall_1c

    .line 835
    goto :goto_3a

    .line 848
    :catchall_1c
    move-exception v3

    goto :goto_41

    .line 831
    :catch_1e
    move-exception v3

    .line 832
    :try_start_1f
    sget-boolean v4, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v4, :cond_39

    .line 833
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to read user config locale, e is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    :cond_39
    move-object v3, v2

    :goto_3a
    if-nez v3, :cond_40

    .line 838
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_40} :catch_5d
    .catchall {:try_start_1f .. :try_end_40} :catchall_1c

    .line 841
    :cond_40
    return-object v3

    .line 849
    :goto_41
    sget-boolean v4, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v4, :cond_59

    .line 850
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :cond_59
    invoke-static {p0, v3}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 853
    return-object v2

    .line 842
    :catch_5d
    move-exception v3

    .line 843
    sget-boolean v4, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v4, :cond_76

    .line 844
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    :cond_76
    invoke-static {p0, v3}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 847
    return-object v2
.end method

.method public static getMac(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 866
    const-string v0, "get mac e is "

    const-string v1, "UMUtils"

    const/4 v2, 0x0

    if-nez p0, :cond_8

    .line 867
    return-object v2

    .line 870
    :cond_8
    :try_start_8
    const-string v3, "wifi"

    .line 871
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 872
    if-nez v3, :cond_13

    .line 873
    return-object v2

    .line 875
    :cond_13
    const-string v4, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v4}, Lcom/umeng/commonsdk/utils/UMUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 876
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 877
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 879
    :cond_24
    sget-boolean v3, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v3, :cond_2d

    .line 880
    const-string v3, "Could not get mac address.[no permission android.permission.ACCESS_WIFI_STATE"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :cond_2d
    const-string p0, ""
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2f} :catch_4d
    .catchall {:try_start_8 .. :try_end_2f} :catchall_30

    return-object p0

    .line 892
    :catchall_30
    move-exception v3

    .line 893
    sget-boolean v4, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v4, :cond_49

    .line 894
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :cond_49
    invoke-static {p0, v3}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 898
    return-object v2

    .line 885
    :catch_4d
    move-exception v3

    .line 886
    sget-boolean v4, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v4, :cond_66

    .line 887
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :cond_66
    invoke-static {p0, v3}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 891
    return-object v2
.end method

.method public static getMultiProcessSP(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 177
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/umeng/commonsdk/utils/UMUtils;->spLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_56
    .catchall {:try_start_1 .. :try_end_4} :catchall_54

    .line 178
    if-eqz p0, :cond_4f

    :try_start_6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_4f

    .line 182
    :cond_d
    nop

    .line 183
    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_20

    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v2, "umeng_common_config"

    .line 185
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    goto :goto_45

    .line 188
    :cond_20
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getSubProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 189
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "umeng_common_config"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 193
    :goto_45
    if-eqz p0, :cond_4d

    .line 194
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v1

    return-object p0

    .line 196
    :cond_4d
    monitor-exit v1

    return-object v0

    .line 179
    :cond_4f
    :goto_4f
    monitor-exit v1

    return-object v0

    .line 197
    :catchall_51
    move-exception p0

    monitor-exit v1
    :try_end_53
    .catchall {:try_start_6 .. :try_end_53} :catchall_51

    :try_start_53
    throw p0
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_54} :catch_56
    .catchall {:try_start_53 .. :try_end_54} :catchall_54

    .line 200
    :catchall_54
    move-exception p0

    .line 201
    return-object v0

    .line 198
    :catch_56
    move-exception p0

    .line 199
    return-object v0
.end method

.method public static getNetworkAccessMode(Landroid/content/Context;)[Ljava/lang/String;
    .registers 9

    .line 747
    const-string v0, "get network access mode e is "

    const-string v1, "UMUtils"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v2, v3

    const/4 v5, 0x1

    aput-object v4, v2, v5

    .line 748
    if-nez p0, :cond_12

    .line 749
    return-object v2

    .line 752
    :cond_12
    :try_start_12
    const-string v6, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v6}, Lcom/umeng/commonsdk/utils/UMUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1d

    .line 753
    aput-object v4, v2, v3

    .line 754
    return-object v2

    .line 756
    :cond_1d
    const-string v6, "connectivity"

    .line 757
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 758
    if-nez v6, :cond_2a

    .line 759
    aput-object v4, v2, v3

    .line 760
    return-object v2

    .line 762
    :cond_2a
    invoke-virtual {v6, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 763
    if-eqz v4, :cond_3d

    .line 764
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v7, :cond_3d

    .line 765
    const-string v4, "Wi-Fi"

    aput-object v4, v2, v3

    .line 766
    return-object v2

    .line 769
    :cond_3d
    invoke-virtual {v6, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 770
    if-eqz v4, :cond_8f

    .line 771
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v6, v7, :cond_8f

    .line 772
    const-string v6, "2G/3G"

    aput-object v6, v2, v3

    .line 773
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_55} :catch_73
    .catchall {:try_start_12 .. :try_end_55} :catchall_56

    .line 774
    return-object v2

    .line 783
    :catchall_56
    move-exception v3

    .line 784
    sget-boolean v4, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v4, :cond_6f

    .line 785
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    :cond_6f
    invoke-static {p0, v3}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_90

    .line 778
    :catch_73
    move-exception v3

    .line 779
    sget-boolean v4, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v4, :cond_8c

    .line 780
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :cond_8c
    invoke-static {p0, v3}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 788
    :cond_8f
    nop

    .line 789
    :goto_90
    return-object v2
.end method

.method public static getNetworkOperatorName(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 673
    const-string v0, "get network operator e is "

    const-string v1, "UMUtils"

    const-string v2, ""

    if-nez p0, :cond_a

    .line 674
    const/4 p0, 0x0

    return-object p0

    .line 677
    :cond_a
    :try_start_a
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 678
    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v4}, Lcom/umeng/commonsdk/utils/UMUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 679
    return-object v2

    .line 681
    :cond_1b
    if-nez v3, :cond_1e

    .line 682
    return-object v2

    .line 684
    :cond_1e
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object p0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_22} :catch_40
    .catchall {:try_start_a .. :try_end_22} :catchall_23

    return-object p0

    .line 691
    :catchall_23
    move-exception v3

    .line 692
    sget-boolean v4, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v4, :cond_3c

    .line 693
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_3c
    invoke-static {p0, v3}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 696
    return-object v2

    .line 685
    :catch_40
    move-exception v3

    .line 686
    sget-boolean v4, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v4, :cond_59

    .line 687
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    :cond_59
    invoke-static {p0, v3}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 690
    return-object v2
.end method

.method public static getOaidRequiredTime(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 1827
    nop

    .line 1828
    const-string v0, "header_device_oaid"

    invoke-static {v0}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    .line 1829
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-le v0, v2, :cond_24

    .line 1831
    :try_start_10
    const-string v0, "umeng_sp_oaid"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1833
    if-eqz p0, :cond_22

    .line 1834
    const-string v0, "key_umeng_sp_oaid_required_time"

    const-string v2, ""

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_23

    move-object v1, p0

    .line 1837
    :cond_22
    goto :goto_24

    .line 1836
    :catchall_23
    move-exception p0

    .line 1841
    :cond_24
    :goto_24
    return-object v1
.end method

.method public static getOperator(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 910
    const-string v0, "get get operator e is "

    const-string v1, "UMUtils"

    const-string v2, "Unknown"

    if-nez p0, :cond_9

    .line 911
    return-object v2

    .line 916
    :cond_9
    :try_start_9
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 917
    if-nez v3, :cond_14

    .line 918
    return-object v2

    .line 920
    :cond_14
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_18} :catch_36
    .catchall {:try_start_9 .. :try_end_18} :catchall_19

    return-object p0

    .line 926
    :catchall_19
    move-exception v3

    .line 927
    sget-boolean v4, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v4, :cond_32

    .line 928
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    :cond_32
    invoke-static {p0, v3}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_53

    .line 921
    :catch_36
    move-exception v3

    .line 922
    sget-boolean v4, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v4, :cond_4f

    .line 923
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    :cond_4f
    invoke-static {p0, v3}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 931
    nop

    .line 932
    :goto_53
    return-object v2
.end method

.method public static getRegisteredOperator(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 637
    const-string v0, "get registered operator e is "

    const-string v1, "UMUtils"

    const/4 v2, 0x0

    if-nez p0, :cond_8

    .line 638
    return-object v2

    .line 641
    :cond_8
    :try_start_8
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 642
    if-nez v3, :cond_13

    .line 643
    return-object v2

    .line 645
    :cond_13
    nop

    .line 646
    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v4}, Lcom/umeng/commonsdk/utils/UMUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 647
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_20} :catch_3e
    .catchall {:try_start_8 .. :try_end_20} :catchall_21

    .line 649
    :cond_20
    return-object v2

    .line 656
    :catchall_21
    move-exception v3

    .line 657
    sget-boolean v4, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v4, :cond_3a

    .line 658
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_3a
    invoke-static {p0, v3}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 661
    return-object v2

    .line 650
    :catch_3e
    move-exception v3

    .line 651
    sget-boolean v4, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v4, :cond_57

    .line 652
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_57
    invoke-static {p0, v3}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 655
    return-object v2
.end method

.method public static getSubOSName(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    .line 946
    const-string v0, "get sub os name e is "

    const-string v1, "UMUtils"

    const/4 v2, 0x0

    if-nez p0, :cond_8

    .line 947
    return-object v2

    .line 950
    :cond_8
    nop

    .line 951
    :try_start_9
    invoke-static {}, Lcom/umeng/commonsdk/utils/UMUtils;->getBuildProp()Ljava/util/Properties;

    move-result-object v3
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_d} :catch_5a
    .catchall {:try_start_9 .. :try_end_d} :catchall_3d

    .line 953
    :try_start_d
    const-string v4, "ro.miui.ui.version.name"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 954
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 955
    invoke-static {}, Lcom/umeng/commonsdk/utils/UMUtils;->isFlyMe()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 956
    const-string p0, "Flyme"

    move-object v2, p0

    goto :goto_36

    .line 958
    :cond_23
    invoke-static {v3}, Lcom/umeng/commonsdk/utils/UMUtils;->getYunOSVersion(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 959
    const-string p0, "YunOS"

    move-object v2, p0

    goto :goto_36

    .line 958
    :cond_31
    move-object v2, v4

    goto :goto_36

    .line 963
    :cond_33
    const-string p0, "MIUI"
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_35} :catch_37
    .catchall {:try_start_d .. :try_end_35} :catchall_3d

    move-object v2, p0

    .line 969
    :goto_36
    goto :goto_3c

    .line 965
    :catch_37
    move-exception v3

    .line 966
    nop

    .line 968
    :try_start_39
    invoke-static {p0, v3}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_5a
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    .line 970
    :goto_3c
    return-object v2

    .line 977
    :catchall_3d
    move-exception v3

    .line 978
    sget-boolean v4, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v4, :cond_56

    .line 979
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    :cond_56
    invoke-static {p0, v3}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 982
    return-object v2

    .line 971
    :catch_5a
    move-exception v3

    .line 972
    sget-boolean v4, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v4, :cond_73

    .line 973
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    :cond_73
    invoke-static {p0, v3}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 976
    return-object v2
.end method

.method public static getSubOSVersion(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    .line 996
    const-string v0, "get sub os version e is "

    const-string v1, "UMUtils"

    const/4 v2, 0x0

    if-nez p0, :cond_8

    .line 997
    return-object v2

    .line 1000
    :cond_8
    nop

    .line 1001
    :try_start_9
    invoke-static {}, Lcom/umeng/commonsdk/utils/UMUtils;->getBuildProp()Ljava/util/Properties;

    move-result-object v3
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_d} :catch_53
    .catchall {:try_start_9 .. :try_end_d} :catchall_36

    .line 1003
    :try_start_d
    const-string v4, "ro.miui.ui.version.name"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1004
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 1005
    invoke-static {}, Lcom/umeng/commonsdk/utils/UMUtils;->isFlyMe()Z

    move-result v5
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1d} :catch_30
    .catchall {:try_start_d .. :try_end_1d} :catchall_36

    if-eqz v5, :cond_27

    .line 1007
    :try_start_1f
    invoke-static {v3}, Lcom/umeng/commonsdk/utils/UMUtils;->getFlymeVersion(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object p0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_23} :catch_25
    .catchall {:try_start_1f .. :try_end_23} :catchall_36

    .line 1009
    move-object v2, p0

    goto :goto_2f

    .line 1008
    :catch_25
    move-exception p0

    .line 1009
    goto :goto_2e

    .line 1012
    :cond_27
    :try_start_27
    invoke-static {v3}, Lcom/umeng/commonsdk/utils/UMUtils;->getYunOSVersion(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object p0
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2b} :catch_2d
    .catchall {:try_start_27 .. :try_end_2b} :catchall_36

    .line 1014
    move-object v2, p0

    goto :goto_2f

    .line 1013
    :catch_2d
    move-exception p0

    .line 1021
    :cond_2e
    :goto_2e
    move-object v2, v4

    :goto_2f
    goto :goto_35

    .line 1017
    :catch_30
    move-exception v3

    .line 1018
    nop

    .line 1020
    :try_start_32
    invoke-static {p0, v3}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_53
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    .line 1022
    :goto_35
    return-object v2

    .line 1029
    :catchall_36
    move-exception v3

    .line 1030
    sget-boolean v4, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v4, :cond_4f

    .line 1031
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :cond_4f
    invoke-static {p0, v3}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 1034
    return-object v2

    .line 1023
    :catch_53
    move-exception v3

    .line 1024
    sget-boolean v4, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v4, :cond_6c

    .line 1025
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    :cond_6c
    invoke-static {p0, v3}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 1028
    return-object v2
.end method

.method public static getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 1905
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1906
    const-string v1, "get"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1907
    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_27

    .line 1908
    return-object p0

    .line 1909
    :catchall_27
    move-exception p0

    .line 1911
    return-object p1
.end method

.method public static getTargetSdkVersion(Landroid/content/Context;)I
    .registers 1

    .line 1788
    nop

    .line 1790
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_8

    .line 1793
    goto :goto_a

    .line 1791
    :catchall_8
    move-exception p0

    const/4 p0, 0x0

    .line 1794
    :goto_a
    return p0
.end method

.method public static getUMId(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 1508
    nop

    .line 1510
    const/4 v0, 0x0

    if-eqz p0, :cond_15

    .line 1511
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "umid"

    invoke-static {v1, v2, v0}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_10

    move-object v0, p0

    goto :goto_15

    .line 1513
    :catch_10
    move-exception v1

    .line 1514
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_16

    .line 1515
    :cond_15
    :goto_15
    nop

    .line 1516
    :goto_16
    return-object v0
.end method

.method public static getUUIDForZid(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1865
    nop

    .line 1866
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 1867
    const-string v0, "um_session_id"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1868
    const-string v0, ""

    if-eqz p0, :cond_16

    .line 1869
    const-string v1, "session_id"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1871
    :cond_16
    return-object v0
.end method

.method public static getUmengToken(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 1521
    nop

    .line 1523
    const/4 v0, 0x0

    if-eqz p0, :cond_15

    .line 1524
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ztoken"

    invoke-static {v1, v2, v0}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_10

    move-object v0, p0

    goto :goto_15

    .line 1526
    :catch_10
    move-exception v1

    .line 1527
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_16

    .line 1528
    :cond_15
    :goto_15
    nop

    .line 1529
    :goto_16
    return-object v0
.end method

.method private static getYunOSVersion(Ljava/util/Properties;)Ljava/lang/String;
    .registers 2

    .line 1047
    :try_start_0
    const-string v0, "ro.yunos.version"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1048
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_e

    if-nez v0, :cond_d

    .line 1049
    return-object p0

    .line 1053
    :cond_d
    goto :goto_f

    .line 1051
    :catchall_e
    move-exception p0

    .line 1055
    :goto_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getZid(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1850
    nop

    .line 1851
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 1852
    invoke-static {p0}, Lcom/umeng/commonsdk/UMConfigure;->needSendZcfgEnv(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 1854
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/umeng/commonsdk/internal/b;->a()Lcom/umeng/commonsdk/internal/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/umeng/commonsdk/internal/c;->a()Ljava/lang/String;

    move-result-object p0

    goto :goto_19

    .line 1852
    :cond_18
    const/4 p0, 0x0

    .line 1856
    :goto_19
    return-object p0
.end method

.method public static isApplication(Landroid/content/Context;)Z
    .registers 3

    .line 1814
    nop

    .line 1816
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 1817
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string v1, "android.app.Application"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1e} :catch_23

    if-eqz p0, :cond_22

    .line 1818
    const/4 p0, 0x1

    const/4 v0, 0x1

    .line 1822
    :cond_22
    goto :goto_24

    .line 1820
    :catch_23
    move-exception p0

    .line 1823
    :goto_24
    return v0
.end method

.method public static isDebug(Landroid/content/Context;)Z
    .registers 3

    .line 1332
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1333
    return v0

    .line 1336
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget p0, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_10

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0

    .line 1337
    :catch_10
    move-exception v1

    .line 1338
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 1339
    return v0
.end method

.method private static isFlyMe()Z
    .registers 4

    .line 1109
    const/4 v0, 0x0

    :try_start_1
    const-class v1, Landroid/os/Build;

    const-string v2, "hasSmartBar"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_d

    .line 1112
    nop

    .line 1113
    const/4 v0, 0x1

    return v0

    .line 1110
    :catch_d
    move-exception v1

    .line 1111
    return v0
.end method

.method public static isMainProgress(Landroid/content/Context;)Z
    .registers 4

    .line 1798
    nop

    .line 1800
    const/4 v0, 0x0

    :try_start_2
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1801
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 1802
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 1803
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 1804
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1e} :catch_23

    if-eqz p0, :cond_22

    .line 1805
    const/4 p0, 0x1

    const/4 v0, 0x1

    .line 1809
    :cond_22
    goto :goto_24

    .line 1807
    :catch_23
    move-exception p0

    .line 1810
    :goto_24
    return v0
.end method

.method public static isSdCardWrittenable()Z
    .registers 3

    .line 798
    nop

    .line 801
    const/4 v0, 0x0

    :try_start_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_12

    if-eqz v1, :cond_10

    .line 802
    const/4 v0, 0x1

    goto :goto_11

    .line 804
    :cond_10
    nop

    .line 808
    :goto_11
    goto :goto_13

    .line 806
    :catchall_12
    move-exception v1

    .line 809
    :goto_13
    return v0
.end method

.method private static parseId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 480
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 481
    return-object v0

    .line 484
    :cond_4
    :try_start_4
    sget-object v1, Lcom/umeng/commonsdk/utils/UMUtils;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 486
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 487
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_17

    return-object p0

    .line 491
    :cond_16
    goto :goto_18

    .line 489
    :catchall_17
    move-exception p0

    .line 492
    :goto_18
    return-object v0
.end method

.method private static readStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 503
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 505
    const/16 p0, 0x400

    new-array p0, p0, [C

    .line 506
    nop

    .line 508
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 510
    :goto_f
    const/4 v2, -0x1

    invoke-virtual {v0, p0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v3

    if-eq v2, v3, :cond_1b

    .line 511
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v3}, Ljava/io/StringWriter;->write([CII)V

    goto :goto_f

    .line 514
    :cond_1b
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static safeClose(Ljava/io/InputStream;)V
    .registers 1

    .line 471
    if-eqz p0, :cond_7

    .line 473
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 475
    goto :goto_7

    .line 474
    :catch_6
    move-exception p0

    .line 477
    :cond_7
    :goto_7
    return-void
.end method

.method public static saveSDKComponent()V
    .registers 10

    .line 1926
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1927
    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1928
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1c

    .line 1929
    new-array v1, v3, [Ljava/lang/String;

    const-string v5, "\u7edf\u8ba1SDK\u7248\u672c\u53f7: 9.3.8"

    aput-object v5, v1, v4

    invoke-static {v2, v1}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(I[Ljava/lang/String;)V

    .line 1931
    :cond_1c
    const-string v1, "9.3.8"

    sput-object v1, Lcom/umeng/commonsdk/utils/UMUtils;->VALUE_ANALYTICS_VERSION:Ljava/lang/String;

    .line 1933
    invoke-static {}, Lcom/umeng/commonsdk/internal/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 1934
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4c

    .line 1935
    sput-object v1, Lcom/umeng/commonsdk/utils/UMUtils;->VALUE_ASMS_VERSION:Ljava/lang/String;

    .line 1936
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 1937
    new-array v5, v3, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ZID SDK\u7248\u672c\u53f7: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    invoke-static {v2, v5}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(I[Ljava/lang/String;)V

    .line 1941
    :cond_4c
    const-string v1, "com.umeng.analytics.game.GameSdkVersion"

    invoke-static {v1}, Lcom/umeng/commonsdk/utils/UMUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1942
    const-string v5, "SDK_VERSION"

    const-string v6, "g"

    if-eqz v1, :cond_8f

    .line 1943
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1946
    :try_start_5b
    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 1947
    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1948
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8d

    .line 1949
    sput-object v1, Lcom/umeng/commonsdk/utils/UMUtils;->VALUE_GAME_VERSION:Ljava/lang/String;

    .line 1950
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v7

    if-eqz v7, :cond_8d

    .line 1951
    new-array v7, v3, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u6e38\u620f\u7edf\u8ba1SDK\u7248\u672c\u53f7: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v4

    invoke-static {v2, v7}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(I[Ljava/lang/String;)V
    :try_end_8d
    .catchall {:try_start_5b .. :try_end_8d} :catchall_8e

    .line 1955
    :cond_8d
    goto :goto_8f

    .line 1954
    :catchall_8e
    move-exception v1

    .line 1959
    :cond_8f
    :goto_8f
    const-string v1, "com.umeng.vt.V"

    invoke-static {v1}, Lcom/umeng/commonsdk/utils/UMUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1960
    if-eqz v1, :cond_d2

    .line 1961
    const-string v7, "v"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1964
    :try_start_9c
    const-string v7, "VERSION"

    invoke-virtual {v1, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 1965
    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1966
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d0

    .line 1967
    sput-object v1, Lcom/umeng/commonsdk/utils/UMUtils;->VALUE_VISUAL_VERSION:Ljava/lang/String;

    .line 1968
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v7

    if-eqz v7, :cond_d0

    .line 1969
    new-array v7, v3, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u53ef\u89c6\u5316\u57cb\u70b9SDK\u7248\u672c\u53f7: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v4

    invoke-static {v2, v7}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(I[Ljava/lang/String;)V
    :try_end_d0
    .catchall {:try_start_9c .. :try_end_d0} :catchall_d1

    .line 1973
    :cond_d0
    goto :goto_d2

    .line 1972
    :catchall_d1
    move-exception v1

    .line 1977
    :cond_d2
    :goto_d2
    const-string v1, "com.umeng.message.PushAgent"

    invoke-static {v1}, Lcom/umeng/commonsdk/utils/UMUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1978
    if-eqz v1, :cond_11b

    .line 1979
    const-string v1, "p"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1981
    const-string v1, "com.umeng.message.MsgConstant"

    invoke-static {v1}, Lcom/umeng/commonsdk/utils/UMUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1982
    if-eqz v1, :cond_11b

    .line 1984
    :try_start_e7
    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 1985
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1986
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_119

    .line 1987
    sput-object v1, Lcom/umeng/commonsdk/utils/UMUtils;->VALUE_PUSH_VERSION:Ljava/lang/String;

    .line 1988
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v5

    if-eqz v5, :cond_119

    .line 1989
    new-array v5, v3, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u63a8\u9001SDK\u7248\u672c\u53f7: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    invoke-static {v2, v5}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(I[Ljava/lang/String;)V
    :try_end_119
    .catchall {:try_start_e7 .. :try_end_119} :catchall_11a

    .line 1993
    :cond_119
    goto :goto_11b

    .line 1992
    :catchall_11a
    move-exception v1

    .line 1998
    :cond_11b
    :goto_11b
    const-string v1, "com.umeng.socialize.UMShareAPI"

    invoke-static {v1}, Lcom/umeng/commonsdk/utils/UMUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1999
    if-eqz v1, :cond_162

    .line 2000
    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2002
    const-string v1, "com.umeng.a"

    invoke-static {v1}, Lcom/umeng/commonsdk/utils/UMUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 2003
    if-eqz v1, :cond_162

    .line 2005
    :try_start_130
    invoke-virtual {v1, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 2006
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2007
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_160

    .line 2009
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v5

    if-eqz v5, :cond_160

    .line 2010
    new-array v5, v3, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5206\u4eabSDK\u7248\u672c\u53f7: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    invoke-static {v2, v5}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(I[Ljava/lang/String;)V
    :try_end_160
    .catchall {:try_start_130 .. :try_end_160} :catchall_161

    .line 2014
    :cond_160
    goto :goto_162

    .line 2013
    :catchall_161
    move-exception v1

    .line 2019
    :cond_162
    :goto_162
    const-string v1, "com.umeng.error.UMError"

    invoke-static {v1}, Lcom/umeng/commonsdk/utils/UMUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 2020
    if-eqz v1, :cond_16f

    .line 2021
    const-string v1, "e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2024
    :cond_16f
    const-string v1, "com.umeng.umzid.ZIDManager"

    invoke-static {v1}, Lcom/umeng/commonsdk/utils/UMUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 2025
    if-eqz v1, :cond_17c

    .line 2026
    const-string v1, "z"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2034
    :cond_17c
    const-string v1, "i"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2036
    sget v1, Lcom/umeng/commonsdk/statistics/SdkVersion;->SDK_TYPE:I

    if-eq v1, v3, :cond_192

    .line 2037
    const-string v1, "com.umeng.commonsdk.internal.UMOplus"

    invoke-static {v1}, Lcom/umeng/commonsdk/utils/UMUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 2038
    if-eqz v1, :cond_192

    .line 2039
    const-string v1, "o"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2044
    :cond_192
    const-string v1, "com.umeng.airec.RecAgent"

    invoke-static {v1}, Lcom/umeng/commonsdk/utils/UMUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 2045
    if-eqz v1, :cond_1dd

    .line 2046
    const-string v1, "u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2048
    const-string v1, "com.umeng.airec.BuildConfig"

    invoke-static {v1}, Lcom/umeng/commonsdk/utils/UMUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 2049
    if-eqz v1, :cond_1dd

    .line 2051
    :try_start_1a7
    const-string v5, "VERSION_NAME"

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 2052
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2053
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1db

    .line 2054
    sput-object v1, Lcom/umeng/commonsdk/utils/UMUtils;->VALUE_REC_VERSION_NAME:Ljava/lang/String;

    .line 2055
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v5

    if-eqz v5, :cond_1db

    .line 2056
    new-array v5, v3, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u667a\u80fd\u63a8\u8350SDK\u7248\u672c\u53f7: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    invoke-static {v2, v5}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(I[Ljava/lang/String;)V
    :try_end_1db
    .catchall {:try_start_1a7 .. :try_end_1db} :catchall_1dc

    .line 2060
    :cond_1db
    goto :goto_1dd

    .line 2059
    :catchall_1dc
    move-exception v1

    .line 2066
    :cond_1dd
    :goto_1dd
    const-string v1, "com.umeng.umverify.UMVerifyHelper"

    invoke-static {v1}, Lcom/umeng/commonsdk/utils/UMUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 2067
    if-eqz v1, :cond_1ea

    .line 2068
    const-string v1, "n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2097
    :cond_1ea
    const-string v1, "com.umeng.sms.UMSMS"

    invoke-static {v1}, Lcom/umeng/commonsdk/utils/UMUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 2098
    const-string v5, "getVersion"

    if-eqz v1, :cond_233

    .line 2099
    const-string v6, "m"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2102
    :try_start_1f9
    new-array v6, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 2103
    if-eqz v6, :cond_231

    .line 2104
    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v6, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2105
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_231

    .line 2106
    sput-object v1, Lcom/umeng/commonsdk/utils/UMUtils;->VALUE_SMS_VERSION:Ljava/lang/String;

    .line 2107
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v6

    if-eqz v6, :cond_231

    .line 2108
    new-array v6, v3, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u77ed\u4fe1\u9a8c\u8bc1\u7801SDK\u7248\u672c\u53f7: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v4

    invoke-static {v2, v6}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(I[Ljava/lang/String;)V
    :try_end_231
    .catchall {:try_start_1f9 .. :try_end_231} :catchall_232

    .line 2115
    :cond_231
    goto :goto_233

    .line 2113
    :catchall_232
    move-exception v1

    .line 2121
    :cond_233
    :goto_233
    :try_start_233
    const-string v1, "com.umeng.umcrash.UMCrash"

    invoke-static {v1}, Lcom/umeng/commonsdk/utils/UMUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 2122
    if-eqz v1, :cond_27b

    .line 2123
    const-string v6, "c"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_240
    .catchall {:try_start_233 .. :try_end_240} :catchall_27a

    .line 2126
    :try_start_240
    const-string v6, "crashSdkVersion"

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 2127
    invoke-virtual {v6, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2128
    invoke-virtual {v6, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2129
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_277

    .line 2130
    sput-object v1, Lcom/umeng/commonsdk/utils/UMUtils;->VALUE_APM_VERSION:Ljava/lang/String;

    .line 2131
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v6

    if-eqz v6, :cond_277

    .line 2132
    new-array v6, v3, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "APM SDK\u7248\u672c\u53f7: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v4

    invoke-static {v2, v6}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(I[Ljava/lang/String;)V
    :try_end_277
    .catchall {:try_start_240 .. :try_end_277} :catchall_278

    .line 2136
    :cond_277
    goto :goto_27b

    .line 2135
    :catchall_278
    move-exception v1

    goto :goto_27b

    .line 2139
    :catchall_27a
    move-exception v1

    :cond_27b
    :goto_27b
    nop

    .line 2142
    const-string v1, "com.umeng.umlink.MobclickLink"

    invoke-static {v1}, Lcom/umeng/commonsdk/utils/UMUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 2143
    if-eqz v1, :cond_2c3

    .line 2144
    const-string v6, "l"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2147
    :try_start_289
    new-array v6, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 2148
    if-eqz v6, :cond_2c3

    .line 2149
    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v6, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2150
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2c3

    .line 2151
    sput-object v1, Lcom/umeng/commonsdk/utils/UMUtils;->VALUE_LINK_VERSION:Ljava/lang/String;

    .line 2152
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v6

    if-eqz v6, :cond_2c3

    .line 2153
    new-array v6, v3, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ULink SDK\u7248\u672c\u53f7: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v4

    invoke-static {v2, v6}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(I[Ljava/lang/String;)V
    :try_end_2c1
    .catchall {:try_start_289 .. :try_end_2c1} :catchall_2c2

    goto :goto_2c3

    .line 2157
    :catchall_2c2
    move-exception v1

    .line 2161
    :cond_2c3
    :goto_2c3
    const-string v1, "com.umeng.cconfig.UMRemoteConfig"

    invoke-static {v1}, Lcom/umeng/commonsdk/utils/UMUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 2162
    if-eqz v1, :cond_30a

    .line 2164
    :try_start_2cb
    new-array v6, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 2165
    if-eqz v5, :cond_30a

    .line 2166
    const-string v6, "t"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2167
    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v5, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2168
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_30a

    .line 2169
    sput-object v1, Lcom/umeng/commonsdk/utils/UMUtils;->VALUE_ABTEST_VERSION:Ljava/lang/String;

    .line 2170
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v5

    if-eqz v5, :cond_30a

    .line 2171
    new-array v3, v3, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UABTEST SDK\u7248\u672c\u53f7: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(I[Ljava/lang/String;)V
    :try_end_308
    .catchall {:try_start_2cb .. :try_end_308} :catchall_309

    goto :goto_30a

    .line 2175
    :catchall_309
    move-exception v1

    .line 2178
    :cond_30a
    :goto_30a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_330

    .line 2179
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/statistics/b;->a:Ljava/lang/String;

    .line 2180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "module init:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/umeng/commonsdk/statistics/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobclickAgent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    :cond_330
    return-void
.end method

.method public static setAppkey(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 278
    const-string v0, "set app key e is "

    const-string v1, "UMUtils"

    if-eqz p0, :cond_4a

    if-nez p1, :cond_9

    goto :goto_4a

    .line 288
    :cond_9
    :try_start_9
    const-string v2, "appkey"

    invoke-static {p0, v2, p1}, Lcom/umeng/commonsdk/utils/UMUtils;->setMultiProcessSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_2c
    .catchall {:try_start_9 .. :try_end_e} :catchall_f

    .line 299
    :goto_e
    goto :goto_49

    .line 294
    :catchall_f
    move-exception p1

    .line 295
    sget-boolean v2, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v2, :cond_28

    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_28
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_49

    .line 289
    :catch_2c
    move-exception p1

    .line 290
    sget-boolean v2, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v2, :cond_45

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_45
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_e

    .line 300
    :goto_49
    return-void

    .line 279
    :cond_4a
    :goto_4a
    return-void
.end method

.method public static setChannel(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 346
    const-string v0, "set channel e is "

    const-string v1, "UMUtils"

    if-eqz p0, :cond_4a

    if-nez p1, :cond_9

    goto :goto_4a

    .line 356
    :cond_9
    :try_start_9
    const-string v2, "channel"

    invoke-static {p0, v2, p1}, Lcom/umeng/commonsdk/utils/UMUtils;->setMultiProcessSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_2c
    .catchall {:try_start_9 .. :try_end_e} :catchall_f

    .line 367
    :goto_e
    goto :goto_49

    .line 362
    :catchall_f
    move-exception p1

    .line 363
    sget-boolean v2, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v2, :cond_28

    .line 364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_28
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_49

    .line 357
    :catch_2c
    move-exception p1

    .line 358
    sget-boolean v2, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v2, :cond_45

    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_45
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_e

    .line 368
    :goto_49
    return-void

    .line 347
    :cond_4a
    :goto_4a
    return-void
.end method

.method public static setLastAppkey(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 213
    const-string v0, "set last app key e is "

    const-string v1, "UMUtils"

    if-eqz p0, :cond_4a

    if-nez p1, :cond_9

    goto :goto_4a

    .line 222
    :cond_9
    :try_start_9
    const-string v2, "last_appkey"

    invoke-static {p0, v2, p1}, Lcom/umeng/commonsdk/utils/UMUtils;->setMultiProcessSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_2c
    .catchall {:try_start_9 .. :try_end_e} :catchall_f

    .line 233
    :goto_e
    goto :goto_49

    .line 228
    :catchall_f
    move-exception p1

    .line 229
    sget-boolean v2, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v2, :cond_28

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_28
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_49

    .line 223
    :catch_2c
    move-exception p1

    .line 224
    sget-boolean v2, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v2, :cond_45

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_45
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_e

    .line 234
    :goto_49
    return-void

    .line 214
    :cond_4a
    :goto_4a
    return-void
.end method

.method public static setMultiProcessSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 144
    :try_start_0
    sget-object v0, Lcom/umeng/commonsdk/utils/UMUtils;->spLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5c
    .catchall {:try_start_0 .. :try_end_3} :catchall_5a

    .line 145
    if-eqz p0, :cond_55

    :try_start_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_55

    if-nez p2, :cond_e

    goto :goto_55

    .line 148
    :cond_e
    nop

    .line 149
    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_21

    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "umeng_common_config"

    .line 151
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    goto :goto_46

    .line 154
    :cond_21
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getSubProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "umeng_common_config"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 159
    :goto_46
    if-eqz p0, :cond_53

    .line 160
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 162
    :cond_53
    monitor-exit v0

    goto :goto_5d

    .line 146
    :cond_55
    :goto_55
    monitor-exit v0

    return-void

    .line 162
    :catchall_57
    move-exception p0

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_5 .. :try_end_59} :catchall_57

    :try_start_59
    throw p0
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5a} :catch_5c
    .catchall {:try_start_59 .. :try_end_5a} :catchall_5a

    .line 164
    :catchall_5a
    move-exception p0

    goto :goto_5e

    .line 163
    :catch_5c
    move-exception p0

    .line 165
    :goto_5d
    nop

    .line 166
    :goto_5e
    return-void
.end method

.method public static setUUIDForZid(Landroid/content/Context;)V
    .registers 3

    .line 1881
    nop

    .line 1882
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 1883
    const-string v0, "um_session_id"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1884
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 1886
    :try_start_10
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_15

    .line 1889
    goto :goto_18

    .line 1887
    :catchall_15
    move-exception v0

    const-string v0, ""

    .line 1890
    :goto_18
    if-eqz p0, :cond_27

    .line 1891
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "session_id"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1893
    :cond_27
    return-void
.end method
