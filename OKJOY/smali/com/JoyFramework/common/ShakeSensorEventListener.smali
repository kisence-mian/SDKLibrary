.class public Lcom/JoyFramework/common/ShakeSensorEventListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field static final UPDATE_INTERVAL:I = 0x64


# instance fields
.field mLastUpdateTime:J

.field mLastX:F

.field mLastY:F

.field mLastZ:F

.field public shakeThreshold:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/16 v0, 0xdac

    iput v0, p0, Lcom/JoyFramework/common/ShakeSensorEventListener;->shakeThreshold:I

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    .prologue
    .line 68
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 10

    .prologue
    .line 36
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_62

    .line 63
    :cond_9
    :goto_9
    return-void

    .line 38
    :pswitch_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 39
    iget-wide v2, p0, Lcom/JoyFramework/common/ShakeSensorEventListener;->mLastUpdateTime:J

    sub-long v2, v0, v2

    .line 40
    const-wide/16 v4, 0x64

    cmp-long v4, v2, v4

    if-ltz v4, :cond_9

    .line 43
    iput-wide v0, p0, Lcom/JoyFramework/common/ShakeSensorEventListener;->mLastUpdateTime:J

    .line 44
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 45
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x1

    aget v1, v1, v4

    .line 46
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    .line 47
    iget v5, p0, Lcom/JoyFramework/common/ShakeSensorEventListener;->mLastX:F

    sub-float v5, v0, v5

    .line 48
    iget v6, p0, Lcom/JoyFramework/common/ShakeSensorEventListener;->mLastY:F

    sub-float v6, v1, v6

    .line 49
    iget v7, p0, Lcom/JoyFramework/common/ShakeSensorEventListener;->mLastZ:F

    sub-float v7, v4, v7

    .line 50
    iput v0, p0, Lcom/JoyFramework/common/ShakeSensorEventListener;->mLastX:F

    .line 51
    iput v1, p0, Lcom/JoyFramework/common/ShakeSensorEventListener;->mLastY:F

    .line 52
    iput v4, p0, Lcom/JoyFramework/common/ShakeSensorEventListener;->mLastZ:F

    .line 53
    mul-float v0, v5, v5

    mul-float v1, v6, v6

    add-float/2addr v0, v1

    mul-float v1, v7, v7

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    long-to-double v2, v2

    div-double/2addr v0, v2

    const-wide v2, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 55
    iget v1, p0, Lcom/JoyFramework/common/ShakeSensorEventListener;->shakeThreshold:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    .line 56
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/JoyFramework/c/e;->a(I)V

    goto :goto_9

    .line 36
    nop

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_a
    .end packed-switch
.end method
