.class public Lcom/facebook/appevents/codeless/ViewIndexingTrigger;
.super Ljava/lang/Object;
.source "ViewIndexingTrigger.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/codeless/ViewIndexingTrigger$OnShakeListener;
    }
.end annotation


# static fields
.field private static final SHAKE_THRESHOLD_GRAVITY:D = 2.299999952316284


# instance fields
.field private mListener:Lcom/facebook/appevents/codeless/ViewIndexingTrigger$OnShakeListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 66
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 16
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 45
    iget-object v0, p0, Lcom/facebook/appevents/codeless/ViewIndexingTrigger;->mListener:Lcom/facebook/appevents/codeless/ViewIndexingTrigger$OnShakeListener;

    if-eqz v0, :cond_4b

    .line 46
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 47
    .local v0, "x":F
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 48
    .local v1, "y":F
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    .line 50
    .local v2, "z":F
    const v3, 0x411ce80a

    div-float v4, v0, v3

    float-to-double v4, v4

    .line 51
    .local v4, "gX":D
    div-float v6, v1, v3

    float-to-double v6, v6

    .line 52
    .local v6, "gY":D
    div-float v3, v2, v3

    float-to-double v8, v3

    .line 55
    .local v8, "gZ":D
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v4, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v6, v6

    add-double/2addr v10, v12

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v8, v8

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    .line 57
    .local v10, "gForce":D
    const-wide v12, 0x4002666660000000L    # 2.299999952316284

    cmpl-double v3, v10, v12

    if-lez v3, :cond_4b

    .line 58
    iget-object v3, p0, Lcom/facebook/appevents/codeless/ViewIndexingTrigger;->mListener:Lcom/facebook/appevents/codeless/ViewIndexingTrigger$OnShakeListener;

    invoke-interface {v3}, Lcom/facebook/appevents/codeless/ViewIndexingTrigger$OnShakeListener;->onShake()V

    .line 61
    .end local v0    # "x":F
    .end local v1    # "y":F
    .end local v2    # "z":F
    .end local v4    # "gX":D
    .end local v6    # "gY":D
    .end local v8    # "gZ":D
    .end local v10    # "gForce":D
    :cond_4b
    return-void
.end method

.method public setOnShakeListener(Lcom/facebook/appevents/codeless/ViewIndexingTrigger$OnShakeListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/facebook/appevents/codeless/ViewIndexingTrigger$OnShakeListener;

    .line 36
    iput-object p1, p0, Lcom/facebook/appevents/codeless/ViewIndexingTrigger;->mListener:Lcom/facebook/appevents/codeless/ViewIndexingTrigger$OnShakeListener;

    .line 37
    return-void
.end method
