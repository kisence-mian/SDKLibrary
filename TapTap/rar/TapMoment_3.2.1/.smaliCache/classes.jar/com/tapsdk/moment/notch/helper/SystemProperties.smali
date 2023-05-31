.class public Lcom/tapsdk/moment/notch/helper/SystemProperties;
.super Ljava/lang/Object;
.source "SystemProperties.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static getStringProperty:Ljava/lang/reflect/Method;

.field private static sSystemProperties:Lcom/tapsdk/moment/notch/helper/SystemProperties;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    const-class v0, Lcom/tapsdk/moment/notch/helper/SystemProperties;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapsdk/moment/notch/helper/SystemProperties;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "android.os.SystemProperties"

    invoke-direct {p0, v0}, Lcom/tapsdk/moment/notch/helper/SystemProperties;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tapsdk/moment/notch/helper/SystemProperties;->getMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/tapsdk/moment/notch/helper/SystemProperties;->getStringProperty:Ljava/lang/reflect/Method;

    .line 31
    return-void
.end method

.method private getClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .line 35
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 36
    :catch_5
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    sget-object v1, Lcom/tapsdk/moment/notch/helper/SystemProperties;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :try_start_f
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_17
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f .. :try_end_17} :catch_18

    return-object v1

    .line 40
    :catch_18
    move-exception v1

    .line 41
    .local v1, "e1":Ljava/lang/ClassNotFoundException;
    sget-object v2, Lcom/tapsdk/moment/notch/helper/SystemProperties;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .end local v1    # "e1":Ljava/lang/ClassNotFoundException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance()Lcom/tapsdk/moment/notch/helper/SystemProperties;
    .registers 2

    .line 19
    sget-object v0, Lcom/tapsdk/moment/notch/helper/SystemProperties;->sSystemProperties:Lcom/tapsdk/moment/notch/helper/SystemProperties;

    if-nez v0, :cond_17

    .line 20
    const-class v0, Lcom/tapsdk/moment/notch/helper/SystemProperties;

    monitor-enter v0

    .line 21
    :try_start_7
    sget-object v1, Lcom/tapsdk/moment/notch/helper/SystemProperties;->sSystemProperties:Lcom/tapsdk/moment/notch/helper/SystemProperties;

    if-nez v1, :cond_12

    .line 22
    new-instance v1, Lcom/tapsdk/moment/notch/helper/SystemProperties;

    invoke-direct {v1}, Lcom/tapsdk/moment/notch/helper/SystemProperties;-><init>()V

    sput-object v1, Lcom/tapsdk/moment/notch/helper/SystemProperties;->sSystemProperties:Lcom/tapsdk/moment/notch/helper/SystemProperties;

    .line 24
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 26
    :cond_17
    :goto_17
    sget-object v0, Lcom/tapsdk/moment/notch/helper/SystemProperties;->sSystemProperties:Lcom/tapsdk/moment/notch/helper/SystemProperties;

    return-object v0
.end method

.method private getMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6
    .param p1, "clz"    # Ljava/lang/Class;

    .line 50
    if-eqz p1, :cond_1d

    :try_start_2
    const-string v0, "get"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_11

    goto :goto_1e

    .line 51
    :catch_11
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/tapsdk/moment/notch/helper/SystemProperties;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const/4 v1, 0x0

    .local v1, "method":Ljava/lang/reflect/Method;
    goto :goto_20

    .line 50
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    move-object v1, v0

    .line 54
    .restart local v1    # "method":Ljava/lang/reflect/Method;
    nop

    .line 55
    :goto_20
    return-object v1
.end method


# virtual methods
.method public final get(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;

    .line 60
    const-string v0, ""

    if-nez p1, :cond_5

    .line 61
    return-object v0

    .line 65
    :cond_5
    :try_start_5
    sget-object v1, Lcom/tapsdk/moment/notch/helper/SystemProperties;->getStringProperty:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_14
    check-cast v2, Ljava/lang/String;

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    .line 66
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_20

    .line 67
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1f} :catch_21

    return-object v0

    .line 69
    :cond_20
    return-object v0

    .line 71
    .end local v1    # "value":Ljava/lang/String;
    :catch_21
    move-exception v1

    .line 72
    .local v1, "var4":Ljava/lang/Exception;
    return-object v0
.end method
