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
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/pgl/sys/ces/out/StcSDKLiteFactory;->a:Lcom/pgl/sys/ces/out/ISdkLite;

    if-nez v0, :cond_14

    const-class v1, Lcom/pgl/sys/ces/out/StcSDKLiteFactory;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/pgl/sys/ces/out/StcSDKLiteFactory;->a:Lcom/pgl/sys/ces/out/ISdkLite;

    if-nez v0, :cond_13

    const/16 v0, 0xff

    invoke-static {p0, p1, v0}, Lcom/pgl/sys/ces/b;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/pgl/sys/ces/b;

    move-result-object v0

    sput-object v0, Lcom/pgl/sys/ces/out/StcSDKLiteFactory;->a:Lcom/pgl/sys/ces/out/ISdkLite;

    :cond_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_17

    :cond_14
    sget-object v0, Lcom/pgl/sys/ces/out/StcSDKLiteFactory;->a:Lcom/pgl/sys/ces/out/ISdkLite;

    return-object v0

    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public static getSDK(Landroid/content/Context;Ljava/lang/String;I)Lcom/pgl/sys/ces/out/ISdkLite;
    .registers 5

    sget-object v0, Lcom/pgl/sys/ces/out/StcSDKLiteFactory;->a:Lcom/pgl/sys/ces/out/ISdkLite;

    if-nez v0, :cond_12

    const-class v1, Lcom/pgl/sys/ces/out/StcSDKLiteFactory;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/pgl/sys/ces/out/StcSDKLiteFactory;->a:Lcom/pgl/sys/ces/out/ISdkLite;

    if-nez v0, :cond_11

    invoke-static {p0, p1, p2}, Lcom/pgl/sys/ces/b;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/pgl/sys/ces/b;

    move-result-object v0

    sput-object v0, Lcom/pgl/sys/ces/out/StcSDKLiteFactory;->a:Lcom/pgl/sys/ces/out/ISdkLite;

    :cond_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_15

    :cond_12
    sget-object v0, Lcom/pgl/sys/ces/out/StcSDKLiteFactory;->a:Lcom/pgl/sys/ces/out/ISdkLite;

    return-object v0

    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method
