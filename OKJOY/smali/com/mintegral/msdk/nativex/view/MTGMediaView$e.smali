.class final Lcom/mintegral/msdk/nativex/view/MTGMediaView$e;
.super Ljava/lang/Object;
.source "MTGMediaView.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/nativex/view/MTGMediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;


# direct methods
.method private constructor <init>(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V
    .registers 2

    .prologue
    .line 2801
    iput-object p1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$e;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mintegral/msdk/nativex/view/MTGMediaView;B)V
    .registers 3

    .prologue
    .line 2801
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/nativex/view/MTGMediaView$e;-><init>(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    .prologue
    .line 2806
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 10

    .prologue
    const/16 v7, 0x87

    const/16 v6, 0x2d

    const/4 v1, -0x1

    .line 2810
    :try_start_5
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 2812
    const/4 v2, 0x0

    aget v2, v0, v2

    neg-float v2, v2

    .line 2813
    const/4 v3, 0x1

    aget v3, v0, v3

    neg-float v3, v3

    .line 2814
    const/4 v4, 0x2

    aget v0, v0, v4

    neg-float v0, v0

    .line 2815
    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    .line 2817
    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v4, v5

    mul-float/2addr v0, v0

    cmpl-float v0, v4, v0

    if-ltz v0, :cond_3e

    .line 2819
    neg-float v0, v3

    float-to-double v4, v0

    float-to-double v2, v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v0, v2

    const v2, 0x42652ee1

    mul-float/2addr v0, v2

    .line 2820
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x5a

    .line 2822
    :goto_32
    const/16 v2, 0x168

    if-lt v0, v2, :cond_39

    .line 2823
    add-int/lit16 v0, v0, -0x168

    goto :goto_32

    .line 2825
    :cond_39
    :goto_39
    if-gez v0, :cond_3f

    .line 2826
    add-int/lit16 v0, v0, 0x168

    goto :goto_39

    :cond_3e
    move v0, v1

    .line 2830
    :cond_3f
    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$e;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v2}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->D(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)F

    move-result v2

    .line 2831
    iget-object v3, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$e;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-virtual {v3}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mintegral/msdk/base/utils/k;->k(Landroid/content/Context;)I

    move-result v3

    .line 2833
    if-le v0, v6, :cond_53

    if-lt v0, v7, :cond_5b

    :cond_53
    const/16 v4, 0xe1

    if-le v0, v4, :cond_8c

    const/16 v4, 0x13b

    if-ge v0, v4, :cond_8c

    .line 2835
    :cond_5b
    int-to-float v0, v3

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_8b

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$e;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->E(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Z

    move-result v0

    if-nez v0, :cond_8b

    .line 2836
    const-string v0, "MTGMediaView"

    const-string v1, "onSensorChanged: to LandScape: --------------"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2837
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$e;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->a(Lcom/mintegral/msdk/nativex/view/MTGMediaView;Z)Z

    .line 2838
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$e;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->b(Lcom/mintegral/msdk/nativex/view/MTGMediaView;Z)Z

    .line 2840
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$e;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->J(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mintegral/msdk/nativex/view/MTGMediaView$e$1;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView$e$1;-><init>(Lcom/mintegral/msdk/nativex/view/MTGMediaView$e;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2899
    :cond_8b
    :goto_8b
    return-void

    .line 2863
    :cond_8c
    if-le v0, v7, :cond_92

    const/16 v4, 0xe1

    if-lt v0, v4, :cond_a0

    :cond_92
    const/16 v4, 0x13b

    if-le v0, v4, :cond_9a

    const/16 v4, 0x168

    if-lt v0, v4, :cond_a0

    :cond_9a
    if-ltz v0, :cond_9e

    if-le v0, v6, :cond_a0

    :cond_9e
    if-ne v0, v1, :cond_8b

    .line 2867
    :cond_a0
    int-to-float v0, v3

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_8b

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$e;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->E(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 2868
    const-string v0, "MTGMediaView"

    const-string v1, "onSensorChanged: to protrait: |||||||||||||||||"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2869
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$e;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->a(Lcom/mintegral/msdk/nativex/view/MTGMediaView;Z)Z

    .line 2870
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$e;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->b(Lcom/mintegral/msdk/nativex/view/MTGMediaView;Z)Z

    .line 2872
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$e;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->J(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mintegral/msdk/nativex/view/MTGMediaView$e$2;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView$e$2;-><init>(Lcom/mintegral/msdk/nativex/view/MTGMediaView$e;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_d0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_d0} :catch_d1

    goto :goto_8b

    .line 2897
    :catch_d1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8b
.end method
