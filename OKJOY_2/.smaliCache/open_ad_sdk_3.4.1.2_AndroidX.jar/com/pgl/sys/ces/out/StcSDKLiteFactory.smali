.class public Lcom/pgl/sys/ces/out/StcSDKLiteFactory;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/pgl/sys/ces/out/ISdkLite;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/pgl/sys/ces/out/StcSDKLiteFactory;->a:Lcom/pgl/sys/ces/out/ISdkLite;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/pgl/sys/ces/out/ISdkLite;
    .registers 1

    sget-object v0, Lcom/pgl/sys/ces/out/StcSDKLiteFactory;->a:Lcom/pgl/sys/ces/out/ISdkLite;

    return-object v0
.end method

.method public static getSDK(Landroid/content/Context;Ljava/lang/String;)Lcom/pgl/sys/ces/out/ISdkLite;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/pgl/sys/ces/out/StcSDKLiteFactory;->a:Lcom/pgl/sys/ces/out/ISdkLite;

    if-nez v0, :cond_19

    const-class v0, Lcom/pgl/sys/ces/out/StcSDKLiteFactory;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/pgl/sys/ces/out/StcSDKLiteFactory;->a:Lcom/pgl/sys/ces/out/ISdkLite;

    if-nez v1, :cond_14

    const/16 v1, 0xff

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2}, Lcom/pgl/sys/ces/b;->a(Landroid/content/Context;Ljava/lang/String;ILcom/pgl/sys/ces/out/ISdkInfo;)Lcom/pgl/sys/ces/b;

    move-result-object p0

    sput-object p0, Lcom/pgl/sys/ces/out/StcSDKLiteFactory;->a:Lcom/pgl/sys/ces/out/ISdkLite;

    :cond_14
    monitor-exit v0

    goto :goto_19

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw p0

    :cond_19
    :goto_19
    sget-object p0, Lcom/pgl/sys/ces/out/StcSDKLiteFactory;->a:Lcom/pgl/sys/ces/out/ISdkLite;

    return-object p0
.end method

.method public static getSDK(Landroid/content/Context;Ljava/lang/String;I)Lcom/pgl/sys/ces/out/ISdkLite;
    .registers 5

    sget-object v0, Lcom/pgl/sys/ces/out/StcSDKLiteFactory;->a:Lcom/pgl/sys/ces/out/ISdkLite;

    if-nez v0, :cond_17

    const-class v0, Lcom/pgl/sys/ces/out/StcSDKLiteFactory;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/pgl/sys/ces/out/StcSDKLiteFactory;->a:Lcom/pgl/sys/ces/out/ISdkLite;

    if-nez v1, :cond_12

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1}, Lcom/pgl/sys/ces/b;->a(Landroid/content/Context;Ljava/lang/String;ILcom/pgl/sys/ces/out/ISdkInfo;)Lcom/pgl/sys/ces/b;

    move-result-object p0

    sput-object p0, Lcom/pgl/sys/ces/out/StcSDKLiteFactory;->a:Lcom/pgl/sys/ces/out/ISdkLite;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    sget-object p0, Lcom/pgl/sys/ces/out/StcSDKLiteFactory;->a:Lcom/pgl/sys/ces/out/ISdkLite;

    return-object p0
.end method

.method public static getSDK(Landroid/content/Context;Ljava/lang/String;ILcom/pgl/sys/ces/out/ISdkInfo;)Lcom/pgl/sys/ces/out/ISdkLite;
    .registers 6

    sget-object v0, Lcom/pgl/sys/ces/out/StcSDKLiteFactory;->a:Lcom/pgl/sys/ces/out/ISdkLite;

    if-nez v0, :cond_16

    const-class v0, Lcom/pgl/sys/ces/out/StcSDKLiteFactory;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/pgl/sys/ces/out/StcSDKLiteFactory;->a:Lcom/pgl/sys/ces/out/ISdkLite;

    if-nez v1, :cond_11

    invoke-static {p0, p1, p2, p3}, Lcom/pgl/sys/ces/b;->a(Landroid/content/Context;Ljava/lang/String;ILcom/pgl/sys/ces/out/ISdkInfo;)Lcom/pgl/sys/ces/b;

    move-result-object p0

    sput-object p0, Lcom/pgl/sys/ces/out/StcSDKLiteFactory;->a:Lcom/pgl/sys/ces/out/ISdkLite;

    :cond_11
    monitor-exit v0

    goto :goto_16

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw p0

    :cond_16
    :goto_16
    sget-object p0, Lcom/pgl/sys/ces/out/StcSDKLiteFactory;->a:Lcom/pgl/sys/ces/out/ISdkLite;

    return-object p0
.end method
