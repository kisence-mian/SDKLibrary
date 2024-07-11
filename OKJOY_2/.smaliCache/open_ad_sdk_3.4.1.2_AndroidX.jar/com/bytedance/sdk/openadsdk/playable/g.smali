.class public Lcom/bytedance/sdk/openadsdk/playable/g;
.super Ljava/lang/Object;
.source "SensorHub.java"


# static fields
.field private static a:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)I
    .registers 1

    .line 72
    packed-switch p0, :pswitch_data_6

    .line 79
    const/4 p0, 0x2

    return p0

    .line 77
    :pswitch_5
    return p0

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    .line 63
    if-nez p0, :cond_3

    .line 64
    return-void

    .line 67
    :cond_3
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    .line 68
    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    .line 69
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/hardware/SensorEventListener;)V
    .registers 3

    .line 51
    if-eqz p1, :cond_16

    if-nez p0, :cond_5

    goto :goto_16

    .line 55
    :cond_5
    :try_start_5
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/playable/g;->b(Landroid/content/Context;)Landroid/hardware/SensorManager;

    move-result-object p0

    .line 56
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    .line 59
    goto :goto_15

    .line 57
    :catchall_d
    move-exception p0

    .line 58
    const-string p1, "SensorHub"

    const-string v0, "stopListen error"

    invoke-static {p1, v0, p0}, Lcom/bytedance/sdk/openadsdk/playable/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    :goto_15
    return-void

    .line 52
    :cond_16
    :goto_16
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/hardware/SensorEventListener;I)V
    .registers 4

    .line 27
    if-eqz p1, :cond_1f

    if-nez p0, :cond_5

    goto :goto_1f

    .line 31
    :cond_5
    :try_start_5
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/playable/g;->b(Landroid/content/Context;)Landroid/hardware/SensorManager;

    move-result-object p0

    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/playable/g;->a(I)I

    move-result p2

    invoke-virtual {p0, p1, v0, p2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    .line 35
    goto :goto_1e

    .line 33
    :catchall_16
    move-exception p0

    .line 34
    const-string p1, "SensorHub"

    const-string p2, "startListenAccelerometer error"

    invoke-static {p1, p2, p0}, Lcom/bytedance/sdk/openadsdk/playable/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    :goto_1e
    return-void

    .line 28
    :cond_1f
    :goto_1f
    return-void
.end method

.method private static b(Landroid/content/Context;)Landroid/hardware/SensorManager;
    .registers 3

    .line 16
    sget-object v0, Lcom/bytedance/sdk/openadsdk/playable/g;->a:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1a

    .line 17
    const-class v0, Lcom/bytedance/sdk/openadsdk/playable/g;

    monitor-enter v0

    .line 18
    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/playable/g;->a:Landroid/hardware/SensorManager;

    if-nez v1, :cond_15

    .line 19
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    sput-object p0, Lcom/bytedance/sdk/openadsdk/playable/g;->a:Landroid/hardware/SensorManager;

    .line 21
    :cond_15
    monitor-exit v0

    goto :goto_1a

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw p0

    .line 23
    :cond_1a
    :goto_1a
    sget-object p0, Lcom/bytedance/sdk/openadsdk/playable/g;->a:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method public static b(Landroid/content/Context;Landroid/hardware/SensorEventListener;I)V
    .registers 4

    .line 39
    if-eqz p1, :cond_1f

    if-nez p0, :cond_5

    goto :goto_1f

    .line 43
    :cond_5
    :try_start_5
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/playable/g;->b(Landroid/content/Context;)Landroid/hardware/SensorManager;

    move-result-object p0

    .line 44
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/playable/g;->a(I)I

    move-result p2

    invoke-virtual {p0, p1, v0, p2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    .line 47
    goto :goto_1e

    .line 45
    :catchall_16
    move-exception p0

    .line 46
    const-string p1, "SensorHub"

    const-string p2, "startListenGyroscope error"

    invoke-static {p1, p2, p0}, Lcom/bytedance/sdk/openadsdk/playable/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    :goto_1e
    return-void

    .line 40
    :cond_1f
    :goto_1f
    return-void
.end method
