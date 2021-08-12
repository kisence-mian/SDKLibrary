.class Lcom/bytedance/sdk/openadsdk/playable/c$1;
.super Ljava/lang/Object;
.source "PlayableJsBridge.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/playable/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/playable/c;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/playable/c;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/playable/c$1;->a:Lcom/bytedance/sdk/openadsdk/playable/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    .line 54
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 7

    .line 32
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_47

    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/playable/c$1;->a:Lcom/bytedance/sdk/openadsdk/playable/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/playable/c;->a(Lcom/bytedance/sdk/openadsdk/playable/c;)Lcom/bytedance/sdk/openadsdk/playable/e;

    move-result-object v0

    .line 34
    if-nez v0, :cond_12

    .line 35
    return-void

    .line 37
    :cond_12
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 38
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v3, v1

    .line 39
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget p1, p1, v3

    .line 41
    :try_start_20
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 42
    const-string v4, "x"

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 43
    const-string v2, "y"

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 44
    const-string v1, "z"

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {v3, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 45
    const-string p1, "accelerometer_callback"

    invoke-virtual {v0, p1, v3}, Lcom/bytedance/sdk/openadsdk/playable/e;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_45
    .catchall {:try_start_20 .. :try_end_45} :catchall_46

    .line 47
    goto :goto_47

    .line 46
    :catchall_46
    move-exception p1

    .line 49
    :cond_47
    :goto_47
    return-void
.end method
