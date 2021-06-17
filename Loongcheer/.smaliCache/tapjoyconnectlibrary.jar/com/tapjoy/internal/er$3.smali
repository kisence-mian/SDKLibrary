.class public final Lcom/tapjoy/internal/er$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/er;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/tapjoy/internal/er;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/er;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 140
    iput-object p1, p0, Lcom/tapjoy/internal/er$3;->c:Lcom/tapjoy/internal/er;

    iput-object p2, p0, Lcom/tapjoy/internal/er$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tapjoy/internal/er$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 16

    .line 144
    const-string v0, "complete"

    const-string v1, "skipped"

    const-string v2, "thirdQuartile"

    const-string v3, "midpoint"

    const-string v4, "firstQuartile"

    const-string v5, "start"

    const-string v6, "bufferStart"

    const-string v7, "TJOMViewabilityAgent"

    const/4 v8, 0x0

    const/4 v9, 0x1

    :try_start_12
    iget-object v10, p0, Lcom/tapjoy/internal/er$3;->a:Ljava/lang/String;

    const-string v11, "rendered"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1a} :catch_2df

    const-string v11, "triggerEvent: event name \'"

    if-eqz v10, :cond_b8

    .line 145
    :try_start_1e
    iget-object v0, p0, Lcom/tapjoy/internal/er$3;->c:Lcom/tapjoy/internal/er;

    invoke-static {v0}, Lcom/tapjoy/internal/er;->d(Lcom/tapjoy/internal/er;)Lcom/tapjoy/internal/cm;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/internal/cz;->d:Lcom/tapjoy/internal/cz;

    .line 2000
    const-string v2, "Position is null"

    invoke-static {v1, v2}, Lcom/tapjoy/internal/dp;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/tapjoy/internal/da;

    invoke-direct {v2, v1}, Lcom/tapjoy/internal/da;-><init>(Lcom/tapjoy/internal/cz;)V

    .line 145
    nop

    .line 3000
    const-string v1, "VastProperties is null"

    invoke-static {v2, v1}, Lcom/tapjoy/internal/dp;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/tapjoy/internal/cm;->a:Lcom/tapjoy/internal/cx;

    invoke-static {v1}, Lcom/tapjoy/internal/dp;->b(Lcom/tapjoy/internal/cx;)V

    iget-object v1, v0, Lcom/tapjoy/internal/cm;->a:Lcom/tapjoy/internal/cx;

    invoke-static {v1}, Lcom/tapjoy/internal/dp;->c(Lcom/tapjoy/internal/cx;)V

    iget-object v0, v0, Lcom/tapjoy/internal/cm;->a:Lcom/tapjoy/internal/cx;

    invoke-virtual {v2}, Lcom/tapjoy/internal/da;->a()Lorg/json/JSONObject;

    move-result-object v1

    .line 4000
    nop

    .line 5000
    iget-boolean v2, v0, Lcom/tapjoy/internal/cx;->h:Z

    if-nez v2, :cond_b0

    .line 4000
    nop

    .line 6000
    iget-object v2, v0, Lcom/tapjoy/internal/cx;->c:Lcom/tapjoy/internal/dt;

    .line 4000
    nop

    .line 7000
    invoke-static {}, Lcom/tapjoy/internal/dg;->a()Lcom/tapjoy/internal/dg;

    move-result-object v3

    invoke-virtual {v2}, Lcom/tapjoy/internal/dt;->c()Landroid/webkit/WebView;

    move-result-object v2

    .line 8000
    const-string v4, "publishLoadedEvent"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v1, v5, v8

    invoke-virtual {v3, v2, v4, v5}, Lcom/tapjoy/internal/dg;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4000
    iput-boolean v9, v0, Lcom/tapjoy/internal/cx;->h:Z

    .line 146
    iget-object v0, p0, Lcom/tapjoy/internal/er$3;->c:Lcom/tapjoy/internal/er;

    invoke-static {v0}, Lcom/tapjoy/internal/er;->d(Lcom/tapjoy/internal/er;)Lcom/tapjoy/internal/cm;

    move-result-object v0

    .line 9000
    iget-object v1, v0, Lcom/tapjoy/internal/cm;->a:Lcom/tapjoy/internal/cx;

    invoke-static {v1}, Lcom/tapjoy/internal/dp;->a(Lcom/tapjoy/internal/cx;)V

    iget-object v1, v0, Lcom/tapjoy/internal/cm;->a:Lcom/tapjoy/internal/cx;

    invoke-static {v1}, Lcom/tapjoy/internal/dp;->c(Lcom/tapjoy/internal/cx;)V

    iget-object v1, v0, Lcom/tapjoy/internal/cm;->a:Lcom/tapjoy/internal/cx;

    invoke-virtual {v1}, Lcom/tapjoy/internal/cx;->d()Z

    move-result v1
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_78} :catch_2df

    if-nez v1, :cond_81

    :try_start_7a
    iget-object v1, v0, Lcom/tapjoy/internal/cm;->a:Lcom/tapjoy/internal/cx;

    invoke-virtual {v1}, Lcom/tapjoy/internal/cx;->a()V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7f} :catch_80

    goto :goto_81

    :catch_80
    move-exception v1

    :cond_81
    :goto_81
    :try_start_81
    iget-object v1, v0, Lcom/tapjoy/internal/cm;->a:Lcom/tapjoy/internal/cx;

    invoke-virtual {v1}, Lcom/tapjoy/internal/cx;->d()Z

    move-result v1

    if-eqz v1, :cond_ae

    iget-object v0, v0, Lcom/tapjoy/internal/cm;->a:Lcom/tapjoy/internal/cx;

    .line 10000
    nop

    .line 11000
    iget-boolean v1, v0, Lcom/tapjoy/internal/cx;->g:Z

    if-nez v1, :cond_a6

    .line 10000
    nop

    .line 12000
    iget-object v1, v0, Lcom/tapjoy/internal/cx;->c:Lcom/tapjoy/internal/dt;

    .line 10000
    nop

    .line 13000
    invoke-static {}, Lcom/tapjoy/internal/dg;->a()Lcom/tapjoy/internal/dg;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tapjoy/internal/dt;->c()Landroid/webkit/WebView;

    move-result-object v1

    .line 14000
    const-string v3, "publishImpressionEvent"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3, v4}, Lcom/tapjoy/internal/dg;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10000
    iput-boolean v9, v0, Lcom/tapjoy/internal/cx;->g:Z

    goto :goto_ae

    .line 11000
    :cond_a6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Impression event can only be sent once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_ae
    :goto_ae
    goto/16 :goto_28b

    .line 5000
    :cond_b0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Loaded event can only be sent once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_b8
    iget-object v10, p0, Lcom/tapjoy/internal/er$3;->a:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d4

    .line 148
    iget-object v0, p0, Lcom/tapjoy/internal/er$3;->c:Lcom/tapjoy/internal/er;

    invoke-static {v0}, Lcom/tapjoy/internal/er;->e(Lcom/tapjoy/internal/er;)Lcom/tapjoy/internal/cy;

    move-result-object v0

    .line 15000
    iget-object v1, v0, Lcom/tapjoy/internal/cy;->a:Lcom/tapjoy/internal/cx;

    invoke-static {v1}, Lcom/tapjoy/internal/dp;->b(Lcom/tapjoy/internal/cx;)V

    iget-object v0, v0, Lcom/tapjoy/internal/cy;->a:Lcom/tapjoy/internal/cx;

    .line 16000
    iget-object v0, v0, Lcom/tapjoy/internal/cx;->c:Lcom/tapjoy/internal/dt;

    .line 15000
    invoke-virtual {v0, v6}, Lcom/tapjoy/internal/dt;->a(Ljava/lang/String;)V

    .line 148
    goto/16 :goto_28b

    .line 149
    :cond_d4
    iget-object v6, p0, Lcom/tapjoy/internal/er$3;->a:Ljava/lang/String;

    const-string v10, "bufferEnd"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f4

    .line 150
    iget-object v0, p0, Lcom/tapjoy/internal/er$3;->c:Lcom/tapjoy/internal/er;

    invoke-static {v0}, Lcom/tapjoy/internal/er;->e(Lcom/tapjoy/internal/er;)Lcom/tapjoy/internal/cy;

    move-result-object v0

    .line 17000
    iget-object v1, v0, Lcom/tapjoy/internal/cy;->a:Lcom/tapjoy/internal/cx;

    invoke-static {v1}, Lcom/tapjoy/internal/dp;->b(Lcom/tapjoy/internal/cx;)V

    iget-object v0, v0, Lcom/tapjoy/internal/cy;->a:Lcom/tapjoy/internal/cx;

    .line 18000
    iget-object v0, v0, Lcom/tapjoy/internal/cx;->c:Lcom/tapjoy/internal/dt;

    .line 17000
    const-string v1, "bufferFinish"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/dt;->a(Ljava/lang/String;)V

    .line 150
    goto/16 :goto_28b

    .line 151
    :cond_f4
    iget-object v6, p0, Lcom/tapjoy/internal/er$3;->a:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_fa} :catch_2df

    const-string v10, "deviceVolume"

    const-string v12, "mediaPlayerVolume"

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    if-eqz v6, :cond_169

    .line 152
    :try_start_103
    iget-object v0, p0, Lcom/tapjoy/internal/er$3;->c:Lcom/tapjoy/internal/er;

    invoke-static {v0}, Lcom/tapjoy/internal/er;->a(Lcom/tapjoy/internal/er;)Lcom/tapjoy/TJAdUnitJSBridge;

    move-result-object v0

    .line 18521
    iget-object v0, v0, Lcom/tapjoy/TJAdUnitJSBridge;->a:Lcom/tapjoy/TJAdUnit;

    .line 152
    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->isMuted()Z

    move-result v0

    if-eqz v0, :cond_112

    const/4 v13, 0x0

    .line 153
    :cond_112
    iget-object v0, p0, Lcom/tapjoy/internal/er$3;->c:Lcom/tapjoy/internal/er;

    invoke-static {v0}, Lcom/tapjoy/internal/er;->e(Lcom/tapjoy/internal/er;)Lcom/tapjoy/internal/cy;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/er$3;->c:Lcom/tapjoy/internal/er;

    invoke-static {v1}, Lcom/tapjoy/internal/er;->a(Lcom/tapjoy/internal/er;)Lcom/tapjoy/TJAdUnitJSBridge;

    move-result-object v1

    .line 19521
    iget-object v1, v1, Lcom/tapjoy/TJAdUnitJSBridge;->a:Lcom/tapjoy/TJAdUnit;

    .line 153
    invoke-virtual {v1}, Lcom/tapjoy/TJAdUnit;->getVideoView()Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->getDuration()I

    move-result v1

    int-to-float v1, v1

    .line 20000
    nop

    .line 21000
    cmpg-float v2, v1, v14

    if-lez v2, :cond_161

    .line 20000
    invoke-static {v13}, Lcom/tapjoy/internal/cy;->a(F)V

    iget-object v2, v0, Lcom/tapjoy/internal/cy;->a:Lcom/tapjoy/internal/cx;

    invoke-static {v2}, Lcom/tapjoy/internal/dp;->b(Lcom/tapjoy/internal/cx;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "duration"

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/tapjoy/internal/dn;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v2, v12, v1}, Lcom/tapjoy/internal/dn;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/tapjoy/internal/dh;->a()Lcom/tapjoy/internal/dh;

    move-result-object v1

    .line 22000
    iget v1, v1, Lcom/tapjoy/internal/dh;->a:F

    .line 20000
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v2, v10, v1}, Lcom/tapjoy/internal/dn;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/tapjoy/internal/cy;->a:Lcom/tapjoy/internal/cx;

    .line 23000
    iget-object v0, v0, Lcom/tapjoy/internal/cx;->c:Lcom/tapjoy/internal/dt;

    .line 20000
    invoke-virtual {v0, v5, v2}, Lcom/tapjoy/internal/dt;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 154
    goto/16 :goto_28b

    .line 21000
    :cond_161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Media duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_169
    iget-object v5, p0, Lcom/tapjoy/internal/er$3;->a:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_185

    .line 155
    iget-object v0, p0, Lcom/tapjoy/internal/er$3;->c:Lcom/tapjoy/internal/er;

    invoke-static {v0}, Lcom/tapjoy/internal/er;->e(Lcom/tapjoy/internal/er;)Lcom/tapjoy/internal/cy;

    move-result-object v0

    .line 24000
    iget-object v1, v0, Lcom/tapjoy/internal/cy;->a:Lcom/tapjoy/internal/cx;

    invoke-static {v1}, Lcom/tapjoy/internal/dp;->b(Lcom/tapjoy/internal/cx;)V

    iget-object v0, v0, Lcom/tapjoy/internal/cy;->a:Lcom/tapjoy/internal/cx;

    .line 25000
    iget-object v0, v0, Lcom/tapjoy/internal/cx;->c:Lcom/tapjoy/internal/dt;

    .line 24000
    invoke-virtual {v0, v4}, Lcom/tapjoy/internal/dt;->a(Ljava/lang/String;)V

    .line 155
    goto/16 :goto_28b

    .line 156
    :cond_185
    iget-object v4, p0, Lcom/tapjoy/internal/er$3;->a:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a1

    .line 157
    iget-object v0, p0, Lcom/tapjoy/internal/er$3;->c:Lcom/tapjoy/internal/er;

    invoke-static {v0}, Lcom/tapjoy/internal/er;->e(Lcom/tapjoy/internal/er;)Lcom/tapjoy/internal/cy;

    move-result-object v0

    .line 26000
    iget-object v1, v0, Lcom/tapjoy/internal/cy;->a:Lcom/tapjoy/internal/cx;

    invoke-static {v1}, Lcom/tapjoy/internal/dp;->b(Lcom/tapjoy/internal/cx;)V

    iget-object v0, v0, Lcom/tapjoy/internal/cy;->a:Lcom/tapjoy/internal/cx;

    .line 27000
    iget-object v0, v0, Lcom/tapjoy/internal/cx;->c:Lcom/tapjoy/internal/dt;

    .line 26000
    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/dt;->a(Ljava/lang/String;)V

    .line 157
    goto/16 :goto_28b

    .line 158
    :cond_1a1
    iget-object v3, p0, Lcom/tapjoy/internal/er$3;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1bd

    .line 159
    iget-object v0, p0, Lcom/tapjoy/internal/er$3;->c:Lcom/tapjoy/internal/er;

    invoke-static {v0}, Lcom/tapjoy/internal/er;->e(Lcom/tapjoy/internal/er;)Lcom/tapjoy/internal/cy;

    move-result-object v0

    .line 28000
    iget-object v1, v0, Lcom/tapjoy/internal/cy;->a:Lcom/tapjoy/internal/cx;

    invoke-static {v1}, Lcom/tapjoy/internal/dp;->b(Lcom/tapjoy/internal/cx;)V

    iget-object v0, v0, Lcom/tapjoy/internal/cy;->a:Lcom/tapjoy/internal/cx;

    .line 29000
    iget-object v0, v0, Lcom/tapjoy/internal/cx;->c:Lcom/tapjoy/internal/dt;

    .line 28000
    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/dt;->a(Ljava/lang/String;)V

    .line 159
    goto/16 :goto_28b

    .line 160
    :cond_1bd
    iget-object v2, p0, Lcom/tapjoy/internal/er$3;->a:Ljava/lang/String;

    const-string v3, "paused"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1dd

    .line 161
    iget-object v0, p0, Lcom/tapjoy/internal/er$3;->c:Lcom/tapjoy/internal/er;

    invoke-static {v0}, Lcom/tapjoy/internal/er;->e(Lcom/tapjoy/internal/er;)Lcom/tapjoy/internal/cy;

    move-result-object v0

    .line 30000
    iget-object v1, v0, Lcom/tapjoy/internal/cy;->a:Lcom/tapjoy/internal/cx;

    invoke-static {v1}, Lcom/tapjoy/internal/dp;->b(Lcom/tapjoy/internal/cx;)V

    iget-object v0, v0, Lcom/tapjoy/internal/cy;->a:Lcom/tapjoy/internal/cx;

    .line 31000
    iget-object v0, v0, Lcom/tapjoy/internal/cx;->c:Lcom/tapjoy/internal/dt;

    .line 30000
    const-string v1, "pause"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/dt;->a(Ljava/lang/String;)V

    .line 161
    goto/16 :goto_28b

    .line 162
    :cond_1dd
    iget-object v2, p0, Lcom/tapjoy/internal/er$3;->a:Ljava/lang/String;

    const-string v3, "playing"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1fd

    .line 163
    iget-object v0, p0, Lcom/tapjoy/internal/er$3;->c:Lcom/tapjoy/internal/er;

    invoke-static {v0}, Lcom/tapjoy/internal/er;->e(Lcom/tapjoy/internal/er;)Lcom/tapjoy/internal/cy;

    move-result-object v0

    .line 32000
    iget-object v1, v0, Lcom/tapjoy/internal/cy;->a:Lcom/tapjoy/internal/cx;

    invoke-static {v1}, Lcom/tapjoy/internal/dp;->b(Lcom/tapjoy/internal/cx;)V

    iget-object v0, v0, Lcom/tapjoy/internal/cy;->a:Lcom/tapjoy/internal/cx;

    .line 33000
    iget-object v0, v0, Lcom/tapjoy/internal/cx;->c:Lcom/tapjoy/internal/dt;

    .line 32000
    const-string v1, "resume"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/dt;->a(Ljava/lang/String;)V

    .line 163
    goto/16 :goto_28b

    .line 164
    :cond_1fd
    iget-object v2, p0, Lcom/tapjoy/internal/er$3;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_218

    .line 165
    iget-object v0, p0, Lcom/tapjoy/internal/er$3;->c:Lcom/tapjoy/internal/er;

    invoke-static {v0}, Lcom/tapjoy/internal/er;->e(Lcom/tapjoy/internal/er;)Lcom/tapjoy/internal/cy;

    move-result-object v0

    .line 34000
    iget-object v2, v0, Lcom/tapjoy/internal/cy;->a:Lcom/tapjoy/internal/cx;

    invoke-static {v2}, Lcom/tapjoy/internal/dp;->b(Lcom/tapjoy/internal/cx;)V

    iget-object v0, v0, Lcom/tapjoy/internal/cy;->a:Lcom/tapjoy/internal/cx;

    .line 35000
    iget-object v0, v0, Lcom/tapjoy/internal/cx;->c:Lcom/tapjoy/internal/dt;

    .line 34000
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/dt;->a(Ljava/lang/String;)V

    .line 165
    goto :goto_28b

    .line 166
    :cond_218
    iget-object v1, p0, Lcom/tapjoy/internal/er$3;->a:Ljava/lang/String;

    const-string v2, "volumeChanged"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_262

    .line 167
    iget-object v0, p0, Lcom/tapjoy/internal/er$3;->c:Lcom/tapjoy/internal/er;

    invoke-static {v0}, Lcom/tapjoy/internal/er;->a(Lcom/tapjoy/internal/er;)Lcom/tapjoy/TJAdUnitJSBridge;

    move-result-object v0

    .line 35521
    iget-object v0, v0, Lcom/tapjoy/TJAdUnitJSBridge;->a:Lcom/tapjoy/TJAdUnit;

    .line 167
    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->isMuted()Z

    move-result v0

    if-eqz v0, :cond_231

    const/4 v13, 0x0

    .line 168
    :cond_231
    iget-object v0, p0, Lcom/tapjoy/internal/er$3;->c:Lcom/tapjoy/internal/er;

    invoke-static {v0}, Lcom/tapjoy/internal/er;->e(Lcom/tapjoy/internal/er;)Lcom/tapjoy/internal/cy;

    move-result-object v0

    .line 36000
    invoke-static {v13}, Lcom/tapjoy/internal/cy;->a(F)V

    iget-object v1, v0, Lcom/tapjoy/internal/cy;->a:Lcom/tapjoy/internal/cx;

    invoke-static {v1}, Lcom/tapjoy/internal/dp;->b(Lcom/tapjoy/internal/cx;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v12, v2}, Lcom/tapjoy/internal/dn;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/tapjoy/internal/dh;->a()Lcom/tapjoy/internal/dh;

    move-result-object v2

    .line 37000
    iget v2, v2, Lcom/tapjoy/internal/dh;->a:F

    .line 36000
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v10, v2}, Lcom/tapjoy/internal/dn;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/tapjoy/internal/cy;->a:Lcom/tapjoy/internal/cx;

    .line 38000
    iget-object v0, v0, Lcom/tapjoy/internal/cx;->c:Lcom/tapjoy/internal/dt;

    .line 36000
    const-string v2, "volumeChange"

    invoke-virtual {v0, v2, v1}, Lcom/tapjoy/internal/dt;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 169
    goto :goto_28b

    :cond_262
    iget-object v1, p0, Lcom/tapjoy/internal/er$3;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b5

    .line 170
    iget-object v1, p0, Lcom/tapjoy/internal/er$3;->c:Lcom/tapjoy/internal/er;

    invoke-static {v1}, Lcom/tapjoy/internal/er;->e(Lcom/tapjoy/internal/er;)Lcom/tapjoy/internal/cy;

    move-result-object v1

    .line 39000
    iget-object v2, v1, Lcom/tapjoy/internal/cy;->a:Lcom/tapjoy/internal/cx;

    invoke-static {v2}, Lcom/tapjoy/internal/dp;->b(Lcom/tapjoy/internal/cx;)V

    iget-object v1, v1, Lcom/tapjoy/internal/cy;->a:Lcom/tapjoy/internal/cx;

    .line 40000
    iget-object v1, v1, Lcom/tapjoy/internal/cx;->c:Lcom/tapjoy/internal/dt;

    .line 39000
    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/dt;->a(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/tapjoy/internal/er$3;->c:Lcom/tapjoy/internal/er;

    invoke-static {v0}, Lcom/tapjoy/internal/er;->c(Lcom/tapjoy/internal/er;)Lcom/tapjoy/internal/cn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/cn;->b()V

    .line 172
    iget-object v0, p0, Lcom/tapjoy/internal/er$3;->c:Lcom/tapjoy/internal/er;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tapjoy/internal/er;->a(Lcom/tapjoy/internal/er;Lcom/tapjoy/internal/cn;)Lcom/tapjoy/internal/cn;
    :try_end_28b
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_28b} :catch_2df

    .line 184
    :goto_28b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/internal/er$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/tapjoy/internal/er$3;->c:Lcom/tapjoy/internal/er;

    invoke-static {v0}, Lcom/tapjoy/internal/er;->a(Lcom/tapjoy/internal/er;)Lcom/tapjoy/TJAdUnitJSBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/er$3;->b:Ljava/lang/String;

    new-array v2, v9, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    return-void

    .line 174
    :cond_2b5
    :try_start_2b5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/internal/er$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' not found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/tapjoy/internal/er$3;->c:Lcom/tapjoy/internal/er;

    invoke-static {v0}, Lcom/tapjoy/internal/er;->a(Lcom/tapjoy/internal/er;)Lcom/tapjoy/TJAdUnitJSBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/er$3;->b:Ljava/lang/String;

    new-array v2, v9, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2de
    .catch Ljava/lang/Exception; {:try_start_2b5 .. :try_end_2de} :catch_2df

    .line 176
    return-void

    .line 178
    :catch_2df
    move-exception v0

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "triggerEvent exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/tapjoy/internal/er$3;->c:Lcom/tapjoy/internal/er;

    invoke-static {v0}, Lcom/tapjoy/internal/er;->a(Lcom/tapjoy/internal/er;)Lcom/tapjoy/TJAdUnitJSBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/er$3;->b:Ljava/lang/String;

    new-array v2, v9, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    return-void
.end method
