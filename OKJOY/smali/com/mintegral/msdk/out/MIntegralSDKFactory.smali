.class public Lcom/mintegral/msdk/out/MIntegralSDKFactory;
.super Ljava/lang/Object;
.source "MIntegralSDKFactory.java"


# static fields
.field private static a:Lcom/mintegral/msdk/system/a;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static getMIntegralSDK()Lcom/mintegral/msdk/system/a;
    .registers 2

    .prologue
    .line 13
    sget-object v0, Lcom/mintegral/msdk/out/MIntegralSDKFactory;->a:Lcom/mintegral/msdk/system/a;

    if-nez v0, :cond_13

    .line 14
    const-class v1, Lcom/mintegral/msdk/out/MIntegralSDKFactory;

    monitor-enter v1

    .line 15
    :try_start_7
    sget-object v0, Lcom/mintegral/msdk/out/MIntegralSDKFactory;->a:Lcom/mintegral/msdk/system/a;

    if-nez v0, :cond_12

    .line 16
    new-instance v0, Lcom/mintegral/msdk/system/a;

    invoke-direct {v0}, Lcom/mintegral/msdk/system/a;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/out/MIntegralSDKFactory;->a:Lcom/mintegral/msdk/system/a;

    .line 18
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 20
    :cond_13
    sget-object v0, Lcom/mintegral/msdk/out/MIntegralSDKFactory;->a:Lcom/mintegral/msdk/system/a;

    return-object v0

    .line 18
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method
