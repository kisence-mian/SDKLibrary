.class public Lcom/tapjoy/TJPlacement;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/tapjoy/TJPlacementListener;

.field private b:Lcom/tapjoy/TJCorePlacement;

.field private c:Lcom/tapjoy/TJPlacementListener;

.field private d:Lcom/tapjoy/TJPlacementVideoListener;

.field private e:Ljava/lang/String;

.field public pushId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)V
    .registers 6
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "placementName"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/tapjoy/TJPlacementListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {p2}, Lcom/tapjoy/TJPlacementManager;->a(Ljava/lang/String;)Lcom/tapjoy/TJCorePlacement;

    move-result-object v0

    .line 29
    if-nez v0, :cond_10

    .line 30
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p2, v0, v0, v1, v1}, Lcom/tapjoy/TJPlacementManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/tapjoy/TJCorePlacement;

    move-result-object v0

    .line 32
    :cond_10
    invoke-virtual {v0, p1}, Lcom/tapjoy/TJCorePlacement;->setContext(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0, v0, p3}, Lcom/tapjoy/TJPlacement;->a(Lcom/tapjoy/TJCorePlacement;Lcom/tapjoy/TJPlacementListener;)V

    .line 34
    return-void
.end method

.method constructor <init>(Lcom/tapjoy/TJCorePlacement;Lcom/tapjoy/TJPlacementListener;)V
    .registers 3
    .param p1, "corePlacement"    # Lcom/tapjoy/TJCorePlacement;
    .param p2, "listener"    # Lcom/tapjoy/TJPlacementListener;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/TJPlacement;->a(Lcom/tapjoy/TJCorePlacement;Lcom/tapjoy/TJPlacementListener;)V

    .line 41
    return-void
.end method

.method private a(Lcom/tapjoy/TJCorePlacement;Lcom/tapjoy/TJPlacementListener;)V
    .registers 3

    .line 44
    iput-object p1, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    .line 45
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/TJPlacement;->e:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/tapjoy/TJPlacement;->c:Lcom/tapjoy/TJPlacementListener;

    .line 48
    if-eqz p2, :cond_19

    const-class p1, Lcom/tapjoy/TJPlacementListener;

    invoke-static {p2, p1}, Lcom/tapjoy/internal/fo;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tapjoy/TJPlacementListener;

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    iput-object p1, p0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJPlacementListener;

    .line 50
    invoke-virtual {p0}, Lcom/tapjoy/TJPlacement;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/tapjoy/FiveRocksIntegration;->addPlacementCallback(Ljava/lang/String;Lcom/tapjoy/TJPlacement;)V

    .line 51
    return-void
.end method

.method private a(Lcom/tapjoy/TJError;)V
    .registers 4

    .line 256
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    sget-object v1, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTEGRATION_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    invoke-virtual {v0, p0, v1, p1}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Lcom/tapjoy/TJError;)V

    .line 257
    return-void
.end method

.method public static dismissContent()V
    .registers 2

    .line 235
    const-string v0, "TJC_OPTION_DISMISS_CONTENT_ALL"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    nop

    .line 237
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 238
    const/4 v0, 0x1

    goto :goto_12

    .line 237
    :cond_11
    const/4 v0, 0x0

    .line 240
    :goto_12
    invoke-static {v0}, Lcom/tapjoy/TJPlacementManager;->dismissContentShowing(Z)V

    .line 241
    return-void
.end method


# virtual methods
.method public getGUID()Ljava/lang/String;
    .registers 2

    .line 250
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getListener()Lcom/tapjoy/TJPlacementListener;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->c:Lcom/tapjoy/TJPlacementListener;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    invoke-virtual {v0}, Lcom/tapjoy/TJCorePlacement;->getPlacementData()Lcom/tapjoy/TJPlacementData;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    invoke-virtual {v0}, Lcom/tapjoy/TJCorePlacement;->getPlacementData()Lcom/tapjoy/TJPlacementData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_13
    const-string v0, ""

    return-object v0
.end method

.method public getVideoListener()Lcom/tapjoy/TJPlacementVideoListener;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->d:Lcom/tapjoy/TJPlacementVideoListener;

    return-object v0
.end method

.method public isContentAvailable()Z
    .registers 3

    .line 106
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    iget-object v0, v0, Lcom/tapjoy/TJCorePlacement;->f:Lcom/tapjoy/internal/fx;

    .line 2057
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fx;->a(I)V

    .line 107
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    invoke-virtual {v0}, Lcom/tapjoy/TJCorePlacement;->isContentAvailable()Z

    move-result v0

    return v0
.end method

.method public isContentReady()Z
    .registers 4

    .line 90
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    invoke-virtual {v0}, Lcom/tapjoy/TJCorePlacement;->isContentReady()Z

    move-result v0

    .line 93
    iget-object v1, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    iget-object v1, v1, Lcom/tapjoy/TJCorePlacement;->f:Lcom/tapjoy/internal/fx;

    .line 1061
    if-eqz v0, :cond_11

    .line 1062
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/fx;->a(I)V

    goto :goto_15

    .line 1064
    :cond_11
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/fx;->a(I)V

    .line 95
    :goto_15
    return v0
.end method

.method public isLimited()Z
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    invoke-virtual {v0}, Lcom/tapjoy/TJCorePlacement;->isLimited()Z

    move-result v0

    return v0
.end method

.method public requestContent()V
    .registers 9

    .line 121
    invoke-virtual {p0}, Lcom/tapjoy/TJPlacement;->getName()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "requestContent() called for placement "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TJPlacement"

    invoke-static {v2, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v1, "TJPlacement.requestContent"

    invoke-static {v1}, Lcom/tapjoy/internal/gh;->a(Ljava/lang/String;)Lcom/tapjoy/internal/gh$a;

    move-result-object v3

    .line 124
    const-string v4, "placement"

    invoke-virtual {v3, v4, v0}, Lcom/tapjoy/internal/gh$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/gh$a;

    move-result-object v3

    iget-object v4, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    .line 3661
    iget-object v4, v4, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v4}, Lcom/tapjoy/TJPlacementData;->getPlacementType()Ljava/lang/String;

    move-result-object v4

    .line 125
    const-string v5, "placement_type"

    invoke-virtual {v3, v5, v4}, Lcom/tapjoy/internal/gh$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/gh$a;

    .line 127
    invoke-static {}, Lcom/tapjoy/internal/gg;->a()Lcom/tapjoy/internal/gg;

    move-result-object v3

    if-eqz v3, :cond_43

    .line 128
    invoke-static {}, Lcom/tapjoy/internal/gg;->a()Lcom/tapjoy/internal/gg;

    move-result-object v3

    .line 4177
    iget-object v3, v3, Lcom/tapjoy/internal/gg;->a:Ljava/lang/String;

    .line 128
    invoke-static {v3}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 129
    const-string v3, "[INFO] Your application calls requestContent without having previously called setUserConsent. You can review Tapjoy supported consent API here - https://dev.tapjoy.com/sdk-integration/#sdk11122_gdpr_release."

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_43
    nop

    .line 4261
    invoke-virtual {p0}, Lcom/tapjoy/TJPlacement;->isLimited()Z

    move-result v2

    if-nez v2, :cond_4f

    .line 4262
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isConnected()Z

    move-result v2

    goto :goto_53

    .line 4264
    :cond_4f
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isLimitedConnected()Z

    move-result v2

    .line 134
    :goto_53
    const/4 v3, 0x0

    if-nez v2, :cond_6e

    .line 135
    invoke-static {v1}, Lcom/tapjoy/internal/gh;->b(Ljava/lang/String;)Lcom/tapjoy/internal/gh$a;

    move-result-object v0

    .line 136
    const-string v1, "not connected"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gh$a;->b(Ljava/lang/String;)Lcom/tapjoy/internal/gh$a;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lcom/tapjoy/internal/gh$a;->c()V

    .line 138
    new-instance v0, Lcom/tapjoy/TJError;

    const-string v1, "SDK not connected -- connect must be called first with a successful callback"

    invoke-direct {v0, v3, v1}, Lcom/tapjoy/TJError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/tapjoy/TJPlacement;->a(Lcom/tapjoy/TJError;)V

    .line 139
    return-void

    .line 143
    :cond_6e
    iget-object v2, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    invoke-virtual {v2}, Lcom/tapjoy/TJCorePlacement;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_8e

    .line 144
    invoke-static {v1}, Lcom/tapjoy/internal/gh;->b(Ljava/lang/String;)Lcom/tapjoy/internal/gh$a;

    move-result-object v0

    .line 145
    const-string v1, "no context"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gh$a;->b(Ljava/lang/String;)Lcom/tapjoy/internal/gh$a;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Lcom/tapjoy/internal/gh$a;->c()V

    .line 147
    new-instance v0, Lcom/tapjoy/TJError;

    const-string v1, "Context is null -- TJPlacement requires a valid Context."

    invoke-direct {v0, v3, v1}, Lcom/tapjoy/TJError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/tapjoy/TJPlacement;->a(Lcom/tapjoy/TJError;)V

    .line 148
    return-void

    .line 152
    :cond_8e
    invoke-static {v0}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 153
    invoke-static {v1}, Lcom/tapjoy/internal/gh;->b(Ljava/lang/String;)Lcom/tapjoy/internal/gh$a;

    move-result-object v0

    .line 154
    const-string v1, "invalid name"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gh$a;->b(Ljava/lang/String;)Lcom/tapjoy/internal/gh$a;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lcom/tapjoy/internal/gh$a;->c()V

    .line 156
    new-instance v0, Lcom/tapjoy/TJError;

    const-string v1, "Invalid placement name -- TJPlacement requires a valid placement name."

    invoke-direct {v0, v3, v1}, Lcom/tapjoy/TJError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/tapjoy/TJPlacement;->a(Lcom/tapjoy/TJError;)V

    .line 157
    return-void

    .line 161
    :cond_ac
    :try_start_ac
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    .line 5171
    const-string v2, "REQUEST"

    invoke-virtual {v0, v2, p0}, Lcom/tapjoy/TJCorePlacement;->a(Ljava/lang/String;Lcom/tapjoy/TJPlacement;)V

    .line 5173
    iget-wide v4, v0, Lcom/tapjoy/TJCorePlacement;->e:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_117

    .line 5175
    sget-object v2, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Content has not expired yet for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5828
    iget-object v5, v0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v5}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v5

    .line 5175
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5177
    iget-boolean v2, v0, Lcom/tapjoy/TJCorePlacement;->l:Z
    :try_end_dc
    .catchall {:try_start_ac .. :try_end_dc} :catchall_1a8

    const-string v4, "cache"

    const-string v5, "from"

    const-string v6, "content_type"

    if-eqz v2, :cond_101

    .line 5178
    :try_start_e4
    invoke-static {v1}, Lcom/tapjoy/internal/gh;->b(Ljava/lang/String;)Lcom/tapjoy/internal/gh$a;

    move-result-object v2

    .line 5179
    invoke-virtual {v0}, Lcom/tapjoy/TJCorePlacement;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/tapjoy/internal/gh$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/gh$a;

    move-result-object v2

    .line 5180
    invoke-virtual {v2, v5, v4}, Lcom/tapjoy/internal/gh$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/gh$a;

    move-result-object v2

    .line 5181
    invoke-virtual {v2}, Lcom/tapjoy/internal/gh$a;->c()V

    .line 5182
    iput-boolean v3, v0, Lcom/tapjoy/TJCorePlacement;->k:Z

    .line 5183
    invoke-virtual {v0, p0}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJPlacement;)V

    .line 5184
    invoke-virtual {v0}, Lcom/tapjoy/TJCorePlacement;->c()V

    goto/16 :goto_1a4

    .line 5186
    :cond_101
    invoke-static {v1}, Lcom/tapjoy/internal/gh;->b(Ljava/lang/String;)Lcom/tapjoy/internal/gh$a;

    move-result-object v2

    const-string v3, "none"

    .line 5187
    invoke-virtual {v2, v6, v3}, Lcom/tapjoy/internal/gh$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/gh$a;

    move-result-object v2

    .line 5188
    invoke-virtual {v2, v5, v4}, Lcom/tapjoy/internal/gh$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/gh$a;

    move-result-object v2

    .line 5189
    invoke-virtual {v2}, Lcom/tapjoy/internal/gh$a;->c()V

    .line 5190
    invoke-virtual {v0, p0}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJPlacement;)V

    .line 5192
    goto/16 :goto_1a4

    .line 5194
    :cond_117
    iget-boolean v2, v0, Lcom/tapjoy/TJCorePlacement;->l:Z

    if-eqz v2, :cond_126

    .line 5195
    invoke-static {v1}, Lcom/tapjoy/internal/gh;->c(Ljava/lang/String;)Lcom/tapjoy/internal/gh$a;

    move-result-object v2

    const-string v4, "was_available"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 5196
    invoke-virtual {v2, v4, v5}, Lcom/tapjoy/internal/gh$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/gh$a;

    .line 5198
    :cond_126
    iget-boolean v2, v0, Lcom/tapjoy/TJCorePlacement;->m:Z

    if-eqz v2, :cond_135

    .line 5199
    invoke-static {v1}, Lcom/tapjoy/internal/gh;->c(Ljava/lang/String;)Lcom/tapjoy/internal/gh$a;

    move-result-object v2

    const-string v4, "was_ready"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 5200
    invoke-virtual {v2, v4, v5}, Lcom/tapjoy/internal/gh$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/gh$a;

    .line 5203
    :cond_135
    nop

    .line 6225
    iget-object v2, v0, Lcom/tapjoy/TJCorePlacement;->p:Ljava/lang/String;

    invoke-static {v2}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result v2

    .line 5203
    const/4 v4, 0x1

    xor-int/2addr v2, v4

    if-eqz v2, :cond_1a1

    .line 5204
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 5205
    const-string v5, "mediation_agent"

    iget-object v6, v0, Lcom/tapjoy/TJCorePlacement;->p:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5206
    const-string v5, "mediation_id"

    iget-object v6, v0, Lcom/tapjoy/TJCorePlacement;->q:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5208
    nop

    .line 6229
    iget-object v5, v0, Lcom/tapjoy/TJCorePlacement;->r:Ljava/util/HashMap;

    if-eqz v5, :cond_161

    iget-object v5, v0, Lcom/tapjoy/TJCorePlacement;->r:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_161

    const/4 v3, 0x1

    .line 5208
    :cond_161
    if-eqz v3, :cond_197

    .line 5210
    iget-object v3, v0, Lcom/tapjoy/TJCorePlacement;->r:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_16d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5212
    const-string v5, "auction_"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/tapjoy/TJCorePlacement;->r:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5213
    goto :goto_16d

    .line 5214
    :cond_18d
    iget-object v3, v0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v3}, Lcom/tapjoy/TJPlacementData;->getAuctionMediationURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/tapjoy/TJCorePlacement;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1a4

    .line 5216
    :cond_197
    iget-object v3, v0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v3}, Lcom/tapjoy/TJPlacementData;->getMediationURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/tapjoy/TJCorePlacement;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 5218
    goto :goto_1a4

    .line 5219
    :cond_1a1
    invoke-virtual {v0}, Lcom/tapjoy/TJCorePlacement;->a()V
    :try_end_1a4
    .catchall {:try_start_e4 .. :try_end_1a4} :catchall_1a8

    .line 163
    :goto_1a4
    invoke-static {v1}, Lcom/tapjoy/internal/gh;->d(Ljava/lang/String;)Lcom/tapjoy/internal/gh$a;

    .line 164
    return-void

    .line 163
    :catchall_1a8
    move-exception v0

    invoke-static {v1}, Lcom/tapjoy/internal/gh;->d(Ljava/lang/String;)Lcom/tapjoy/internal/gh$a;

    .line 164
    goto :goto_1ae

    :goto_1ad
    throw v0

    :goto_1ae
    goto :goto_1ad
.end method

.method public setAdapterVersion(Ljava/lang/String;)V
    .registers 3
    .param p1, "adapterVersion"    # Ljava/lang/String;

    .line 228
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    .line 12665
    iput-object p1, v0, Lcom/tapjoy/TJCorePlacement;->o:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public setAuctionData(Ljava/util/HashMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 192
    .local p1, "auctionData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_46

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_46

    .line 196
    :cond_9
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    .line 11673
    iput-object p1, v0, Lcom/tapjoy/TJCorePlacement;->r:Ljava/util/HashMap;

    .line 11675
    invoke-virtual {v0}, Lcom/tapjoy/TJCorePlacement;->e()Ljava/lang/String;

    move-result-object v1

    .line 11677
    invoke-static {v1}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 11678
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getPlacementURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "v1/apps/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/bid_content?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11681
    iget-object v0, v0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJPlacementData;->setAuctionMediationURL(Ljava/lang/String;)V

    .line 11682
    return-void

    .line 11683
    :cond_3e
    sget-object v0, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    const-string v1, "Placement auction data can not be set for a null app ID"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-void

    .line 193
    :cond_46
    :goto_46
    const-string v0, "TJPlacement"

    const-string v1, "auctionData can not be null or empty"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public setMediationId(Ljava/lang/String;)V
    .registers 3
    .param p1, "mediationId"    # Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    .line 2669
    iput-object p1, v0, Lcom/tapjoy/TJCorePlacement;->q:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setMediationName(Ljava/lang/String;)V
    .registers 7
    .param p1, "mediationName"    # Ljava/lang/String;

    .line 203
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setMediationName="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TJPlacement"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-static {p1}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_79

    .line 206
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/tapjoy/TJCorePlacement;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 213
    :goto_1f
    invoke-virtual {p0}, Lcom/tapjoy/TJPlacement;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/tapjoy/TJPlacement;->isLimited()Z

    move-result v3

    const-string v4, ""

    invoke-static {v1, p1, v4, v2, v3}, Lcom/tapjoy/TJPlacementManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/tapjoy/TJCorePlacement;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    .line 214
    nop

    .line 12644
    iput-object p1, v1, Lcom/tapjoy/TJCorePlacement;->p:Ljava/lang/String;

    .line 12645
    iput-object p1, v1, Lcom/tapjoy/TJCorePlacement;->n:Ljava/lang/String;

    .line 12646
    iget-object v2, v1, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v2, p1}, Lcom/tapjoy/TJPlacementData;->setPlacementType(Ljava/lang/String;)V

    .line 12648
    invoke-virtual {v1}, Lcom/tapjoy/TJCorePlacement;->e()Ljava/lang/String;

    move-result-object v2

    .line 12650
    invoke-static {v2}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6b

    .line 12651
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getPlacementURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "v1/apps/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/mediation_content?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 12654
    iget-object v1, v1, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v1, v2}, Lcom/tapjoy/TJPlacementData;->setMediationURL(Ljava/lang/String;)V

    .line 12655
    goto :goto_72

    .line 12656
    :cond_6b
    sget-object v1, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    const-string v2, "Placement mediation name can not be set for a null app ID"

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :goto_72
    if-eqz v0, :cond_79

    .line 219
    iget-object v1, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    invoke-virtual {v1, v0}, Lcom/tapjoy/TJCorePlacement;->setContext(Landroid/content/Context;)V

    .line 222
    :cond_79
    return-void
.end method

.method public setVideoListener(Lcom/tapjoy/TJPlacementVideoListener;)V
    .registers 2
    .param p1, "videoListener"    # Lcom/tapjoy/TJPlacementVideoListener;

    .line 58
    iput-object p1, p0, Lcom/tapjoy/TJPlacement;->d:Lcom/tapjoy/TJPlacementVideoListener;

    .line 59
    return-void
.end method

.method public showContent()V
    .registers 7

    .line 171
    invoke-virtual {p0}, Lcom/tapjoy/TJPlacement;->getName()Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "showContent() called for placement "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TJPlacement"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    .line 6632
    const-string v2, "TJPlacement.showContent"

    invoke-static {v2}, Lcom/tapjoy/internal/gh;->a(Ljava/lang/String;)Lcom/tapjoy/internal/gh$a;

    move-result-object v3

    .line 6828
    iget-object v4, v0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v4}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v4

    .line 6633
    const-string v5, "placement"

    invoke-virtual {v3, v5, v4}, Lcom/tapjoy/internal/gh$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/gh$a;

    move-result-object v3

    .line 7661
    iget-object v4, v0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v4}, Lcom/tapjoy/TJPlacementData;->getPlacementType()Ljava/lang/String;

    move-result-object v4

    .line 6634
    const-string v5, "placement_type"

    invoke-virtual {v3, v5, v4}, Lcom/tapjoy/internal/gh$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/gh$a;

    move-result-object v3

    .line 6635
    invoke-virtual {v0}, Lcom/tapjoy/TJCorePlacement;->b()Ljava/lang/String;

    move-result-object v4

    const-string v5, "content_type"

    invoke-virtual {v3, v5, v4}, Lcom/tapjoy/internal/gh$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/gh$a;

    .line 6637
    iget-object v0, v0, Lcom/tapjoy/TJCorePlacement;->f:Lcom/tapjoy/internal/fx;

    .line 8069
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/fx;->a(I)V

    .line 8071
    iget-object v0, v0, Lcom/tapjoy/internal/fx;->a:Lcom/tapjoy/internal/fr;

    .line 8072
    if-eqz v0, :cond_4a

    .line 8073
    invoke-virtual {v0}, Lcom/tapjoy/internal/fr;->a()Lcom/tapjoy/internal/gh$a;

    .line 176
    :cond_4a
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    invoke-virtual {v0}, Lcom/tapjoy/TJCorePlacement;->isContentAvailable()Z

    move-result v0

    if-nez v0, :cond_6c

    .line 177
    new-instance v0, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v3, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTEGRATION_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v4, "No placement content available. Can not show content for non-200 placement."

    invoke-direct {v0, v3, v4}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 178
    invoke-static {v2}, Lcom/tapjoy/internal/gh;->b(Ljava/lang/String;)Lcom/tapjoy/internal/gh$a;

    move-result-object v0

    .line 179
    const-string v1, "no content"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gh$a;->b(Ljava/lang/String;)Lcom/tapjoy/internal/gh$a;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Lcom/tapjoy/internal/gh$a;->c()V

    .line 181
    return-void

    .line 185
    :cond_6c
    :try_start_6c
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJCorePlacement;

    .line 8473
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isFullScreenViewOpen()Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 8474
    sget-object v0, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    const-string v1, "Only one view can be presented at a time."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 8475
    invoke-static {v2}, Lcom/tapjoy/internal/gh;->b(Ljava/lang/String;)Lcom/tapjoy/internal/gh$a;

    move-result-object v0

    const-string v1, "another content showing"

    .line 8476
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gh$a;->b(Ljava/lang/String;)Lcom/tapjoy/internal/gh$a;

    move-result-object v0

    .line 8477
    invoke-virtual {v0}, Lcom/tapjoy/internal/gh$a;->c()V

    .line 8478
    goto/16 :goto_128

    .line 8480
    :cond_8a
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isViewOpen()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_9b

    .line 8481
    sget-object v1, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    const-string v4, "Will close N2E content."

    invoke-static {v1, v4}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 8482
    invoke-static {v3}, Lcom/tapjoy/TJPlacementManager;->dismissContentShowing(Z)V

    .line 8485
    :cond_9b
    const-string v1, "SHOW"

    invoke-virtual {v0, v1, p0}, Lcom/tapjoy/TJCorePlacement;->a(Ljava/lang/String;Lcom/tapjoy/TJPlacement;)V

    .line 8487
    invoke-static {v2}, Lcom/tapjoy/internal/gh;->d(Ljava/lang/String;)Lcom/tapjoy/internal/gh$a;

    move-result-object v1

    .line 8488
    iget-object v4, v0, Lcom/tapjoy/TJCorePlacement;->g:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v4}, Lcom/tapjoy/TJAdUnit;->isPrerendered()Z

    move-result v4

    if-eqz v4, :cond_b3

    .line 8489
    const-string v4, "prerendered"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v4, v5}, Lcom/tapjoy/internal/gh$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/gh$a;

    .line 8491
    :cond_b3
    invoke-virtual {v0}, Lcom/tapjoy/TJCorePlacement;->isContentReady()Z

    move-result v4

    if-eqz v4, :cond_c0

    .line 8492
    const-string v4, "content_ready"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v4, v5}, Lcom/tapjoy/internal/gh$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/gh$a;

    .line 8494
    :cond_c0
    iget-object v4, v0, Lcom/tapjoy/TJCorePlacement;->f:Lcom/tapjoy/internal/fx;

    .line 9085
    iput-object v1, v4, Lcom/tapjoy/internal/fx;->d:Lcom/tapjoy/internal/gh$a;

    .line 8499
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8501
    iget-object v4, v0, Lcom/tapjoy/TJCorePlacement;->i:Lcom/tapjoy/internal/hi;

    if-eqz v4, :cond_101

    .line 8503
    iget-object v4, v0, Lcom/tapjoy/TJCorePlacement;->i:Lcom/tapjoy/internal/hi;

    .line 10042
    iput-object v1, v4, Lcom/tapjoy/internal/hi;->f:Ljava/lang/String;

    .line 8504
    nop

    .line 10770
    iget-object v4, v0, Lcom/tapjoy/TJCorePlacement;->i:Lcom/tapjoy/internal/hi;

    if-nez v4, :cond_db

    .line 10771
    const/4 v4, 0x1

    goto :goto_ec

    .line 10773
    :cond_db
    iget-object v4, v0, Lcom/tapjoy/TJCorePlacement;->i:Lcom/tapjoy/internal/hi;

    instance-of v4, v4, Lcom/tapjoy/internal/gx;

    if-eqz v4, :cond_e3

    .line 10774
    const/4 v4, 0x3

    goto :goto_ec

    .line 10775
    :cond_e3
    iget-object v4, v0, Lcom/tapjoy/TJCorePlacement;->i:Lcom/tapjoy/internal/hi;

    instance-of v4, v4, Lcom/tapjoy/internal/hg;

    if-eqz v4, :cond_eb

    .line 10776
    const/4 v4, 0x2

    goto :goto_ec

    .line 10778
    :cond_eb
    const/4 v4, 0x0

    .line 8504
    :goto_ec
    invoke-static {v1, v4}, Lcom/tapjoy/TapjoyConnectCore;->viewWillOpen(Ljava/lang/String;I)V

    .line 8506
    new-instance v4, Lcom/tapjoy/TJCorePlacement$4;

    invoke-direct {v4, v0, v1}, Lcom/tapjoy/TJCorePlacement$4;-><init>(Lcom/tapjoy/TJCorePlacement;Ljava/lang/String;)V

    .line 8527
    iget-object v1, v0, Lcom/tapjoy/TJCorePlacement;->i:Lcom/tapjoy/internal/hi;

    iput-object v4, v1, Lcom/tapjoy/internal/hi;->e:Lcom/tapjoy/internal/gu;

    .line 8529
    new-instance v1, Lcom/tapjoy/TJCorePlacement$5;

    invoke-direct {v1, v0}, Lcom/tapjoy/TJCorePlacement$5;-><init>(Lcom/tapjoy/TJCorePlacement;)V

    invoke-static {v1}, Lcom/tapjoy/internal/hb;->a(Ljava/lang/Runnable;)V

    .line 8535
    goto :goto_120

    .line 8536
    :cond_101
    iget-object v4, v0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v4, v1}, Lcom/tapjoy/TJPlacementData;->setContentViewId(Ljava/lang/String;)V

    .line 8539
    new-instance v1, Landroid/content/Intent;

    iget-object v4, v0, Lcom/tapjoy/TJCorePlacement;->b:Landroid/content/Context;

    const-class v5, Lcom/tapjoy/TJAdUnitActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8540
    const-string v4, "placement_data"

    iget-object v5, v0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 8541
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 8542
    iget-object v4, v0, Lcom/tapjoy/TJCorePlacement;->b:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 8546
    :goto_120
    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/tapjoy/TJCorePlacement;->e:J

    .line 8549
    iput-boolean v3, v0, Lcom/tapjoy/TJCorePlacement;->l:Z

    .line 8550
    iput-boolean v3, v0, Lcom/tapjoy/TJCorePlacement;->m:Z
    :try_end_128
    .catchall {:try_start_6c .. :try_end_128} :catchall_12c

    .line 187
    :goto_128
    invoke-static {v2}, Lcom/tapjoy/internal/gh;->d(Ljava/lang/String;)Lcom/tapjoy/internal/gh$a;

    .line 188
    return-void

    .line 187
    :catchall_12c
    move-exception v0

    invoke-static {v2}, Lcom/tapjoy/internal/gh;->d(Ljava/lang/String;)Lcom/tapjoy/internal/gh$a;

    .line 188
    throw v0
.end method
