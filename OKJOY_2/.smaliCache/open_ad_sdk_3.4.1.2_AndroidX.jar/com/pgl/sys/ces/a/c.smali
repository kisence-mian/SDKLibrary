.class public Lcom/pgl/sys/ces/a/c;
.super Ljava/lang/Object;


# static fields
.field private static a:D


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    sput-wide v0, Lcom/pgl/sys/ces/a/c;->a:D

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 2

    :try_start_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    goto :goto_c

    :catchall_a
    move-exception v0

    const/4 v0, 0x0

    :goto_c
    if-nez v0, :cond_11

    const-string v0, ""

    goto :goto_15

    :cond_11
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_15
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/pgl/sys/ces/b;->e()Lcom/pgl/sys/ces/out/ISdkInfo;

    move-result-object p0

    const-string v0, ""

    if-eqz p0, :cond_e

    :try_start_8
    invoke-interface {p0}, Lcom/pgl/sys/ces/out/ISdkInfo;->getDeviceId()Ljava/lang/String;

    move-result-object p0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_d

    goto :goto_f

    :catchall_d
    move-exception p0

    :cond_e
    move-object p0, v0

    :goto_f
    if-nez p0, :cond_12

    goto :goto_16

    :cond_12
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_16
    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .registers 3

    const-string v0, ""

    :try_start_2
    invoke-static {}, Lcom/pgl/sys/ces/b;->e()Lcom/pgl/sys/ces/out/ISdkInfo;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-interface {v1}, Lcom/pgl/sys/ces/out/ISdkInfo;->getHardwareAddress()Ljava/lang/String;

    move-result-object v1
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_d

    goto :goto_f

    :catchall_d
    move-exception v1

    :cond_e
    move-object v1, v0

    :goto_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/pgl/sys/ces/b;->e()Lcom/pgl/sys/ces/out/ISdkInfo;

    move-result-object p0

    if-eqz p0, :cond_c

    :try_start_6
    invoke-interface {p0}, Lcom/pgl/sys/ces/out/ISdkInfo;->getSubscriberId()Ljava/lang/String;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_b

    goto :goto_d

    :catchall_b
    move-exception p0

    :cond_c
    const/4 p0, 0x0

    :goto_d
    if-nez p0, :cond_12

    const-string p0, ""

    goto :goto_16

    :cond_12
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_16
    return-object p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_2a

    goto :goto_2c

    :catchall_2a
    move-exception p0

    const/4 p0, 0x0

    :goto_2c
    if-nez p0, :cond_31

    const-string p0, ""

    goto :goto_35

    :cond_31
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_35
    return-object p0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    goto :goto_d

    :catchall_b
    move-exception p0

    const/4 p0, 0x0

    :goto_d
    if-nez p0, :cond_12

    const-string p0, ""

    goto :goto_16

    :cond_12
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_16
    return-object p0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    sget-wide v0, Lcom/pgl/sys/ces/a/c;->a:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_e

    double-to-int p0, v0

    :goto_9
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    :try_start_e
    const-string v0, "com.android.internal.os.PowerProfile"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p0, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v4, "getAveragePower"

    new-array v5, v1, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "battery.capacity"

    aput-object v4, v1, v6

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2
    :try_end_47
    .catchall {:try_start_e .. :try_end_47} :catchall_48

    goto :goto_49

    :catchall_48
    move-exception p0

    :goto_49
    sput-wide v2, Lcom/pgl/sys/ces/a/c;->a:D

    double-to-int p0, v2

    goto :goto_9
.end method
