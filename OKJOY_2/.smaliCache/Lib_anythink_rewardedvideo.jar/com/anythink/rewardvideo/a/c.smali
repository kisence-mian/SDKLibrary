.class public final Lcom/anythink/rewardvideo/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;


# instance fields
.field a:J

.field b:J

.field c:Z

.field private d:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

.field private e:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;Lcom/anythink/rewardvideo/api/ATRewardVideoListener;)V
    .registers 5

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/anythink/rewardvideo/a/c;->a:J

    .line 37
    iput-object p2, p0, Lcom/anythink/rewardvideo/a/c;->d:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    .line 38
    iput-object p1, p0, Lcom/anythink/rewardvideo/a/c;->e:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/anythink/rewardvideo/a/c;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/anythink/rewardvideo/a/c;->e:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    return-object p0
.end method


# virtual methods
.method public final onDeeplinkCallback(Z)V
    .registers 4

    .line 176
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/c;->d:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/anythink/rewardvideo/api/ATRewardVideoExListener;

    if-eqz v1, :cond_13

    .line 177
    check-cast v0, Lcom/anythink/rewardvideo/api/ATRewardVideoExListener;

    iget-object v1, p0, Lcom/anythink/rewardvideo/a/c;->e:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    invoke-static {v1}, Lcom/anythink/core/api/ATAdInfo;->fromAdapter(Lcom/anythink/core/common/b/b;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/anythink/rewardvideo/api/ATRewardVideoExListener;->onDeeplinkCallback(Lcom/anythink/core/api/ATAdInfo;Z)V

    .line 179
    :cond_13
    return-void
.end method

.method public final onReward()V
    .registers 3

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/rewardvideo/a/c;->c:Z

    .line 169
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/c;->d:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    if-eqz v0, :cond_10

    .line 170
    iget-object v1, p0, Lcom/anythink/rewardvideo/a/c;->e:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    invoke-static {v1}, Lcom/anythink/core/api/ATAdInfo;->fromAdapter(Lcom/anythink/core/common/b/b;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/api/ATRewardVideoListener;->onReward(Lcom/anythink/core/api/ATAdInfo;)V

    .line 172
    :cond_10
    return-void
.end method

.method public final onRewardedVideoAdClosed()V
    .registers 12

    .line 107
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/c;->e:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    if-eqz v0, :cond_5b

    .line 108
    invoke-virtual {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v0

    .line 111
    sget-object v1, Lcom/anythink/core/common/b/e$e;->e:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/e$e;->f:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/g/g;->a(Lcom/anythink/core/common/d/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-wide v3, p0, Lcom/anythink/rewardvideo/a/c;->a:J

    const-wide/16 v1, 0x0

    cmp-long v1, v3, v1

    if-eqz v1, :cond_2a

    .line 114
    iget-boolean v2, p0, Lcom/anythink/rewardvideo/a/c;->c:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/anythink/rewardvideo/a/c;->b:J

    sub-long/2addr v7, v9

    move-object v1, v0

    invoke-static/range {v1 .. v8}, Lcom/anythink/core/common/f/c;->a(Lcom/anythink/core/common/d/d;ZJJJ)V

    .line 117
    :cond_2a
    iget-boolean v1, p0, Lcom/anythink/rewardvideo/a/c;->c:Z

    invoke-static {v0, v1}, Lcom/anythink/core/common/f/c;->a(Lcom/anythink/core/common/d/d;Z)V

    .line 119
    iget-boolean v0, p0, Lcom/anythink/rewardvideo/a/c;->c:Z

    if-eqz v0, :cond_40

    .line 121
    :try_start_33
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/c;->e:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    invoke-virtual {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->clearImpressionListener()V

    .line 122
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/c;->e:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    invoke-virtual {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->destory()V
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_3e

    goto :goto_3f

    .line 123
    :catchall_3e
    move-exception v0

    .line 125
    :goto_3f
    goto :goto_4e

    .line 128
    :cond_40
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v1, Lcom/anythink/rewardvideo/a/c$2;

    invoke-direct {v1, p0}, Lcom/anythink/rewardvideo/a/c$2;-><init>(Lcom/anythink/rewardvideo/a/c;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;J)V

    .line 141
    :goto_4e
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/c;->d:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    if-eqz v0, :cond_5b

    .line 142
    iget-object v1, p0, Lcom/anythink/rewardvideo/a/c;->e:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    invoke-static {v1}, Lcom/anythink/core/api/ATAdInfo;->fromAdapter(Lcom/anythink/core/common/b/b;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/api/ATRewardVideoListener;->onRewardedVideoAdClosed(Lcom/anythink/core/api/ATAdInfo;)V

    .line 146
    :cond_5b
    return-void
.end method

.method public final onRewardedVideoAdPlayClicked()V
    .registers 5

    .line 151
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/c;->e:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    if-eqz v0, :cond_21

    .line 152
    invoke-virtual {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v0

    .line 154
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/f/a;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/common/f/a;->a(ILcom/anythink/core/common/d/aa;)V

    .line 156
    sget-object v1, Lcom/anythink/core/common/b/e$e;->d:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/e$e;->f:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/g/g;->a(Lcom/anythink/core/common/d/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_21
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/c;->d:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    if-eqz v0, :cond_2e

    .line 161
    iget-object v1, p0, Lcom/anythink/rewardvideo/a/c;->e:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    invoke-static {v1}, Lcom/anythink/core/api/ATAdInfo;->fromAdapter(Lcom/anythink/core/common/b/b;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/api/ATRewardVideoListener;->onRewardedVideoAdPlayClicked(Lcom/anythink/core/api/ATAdInfo;)V

    .line 164
    :cond_2e
    return-void
.end method

.method public final onRewardedVideoAdPlayEnd()V
    .registers 4

    .line 67
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/c;->e:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    if-eqz v0, :cond_19

    .line 68
    invoke-virtual {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v0

    .line 70
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/f/a;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/common/f/a;->a(ILcom/anythink/core/common/d/aa;)V

    .line 73
    :cond_19
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/c;->d:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    if-eqz v0, :cond_26

    .line 74
    iget-object v1, p0, Lcom/anythink/rewardvideo/a/c;->e:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    invoke-static {v1}, Lcom/anythink/core/api/ATAdInfo;->fromAdapter(Lcom/anythink/core/common/b/b;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/api/ATRewardVideoListener;->onRewardedVideoAdPlayEnd(Lcom/anythink/core/api/ATAdInfo;)V

    .line 78
    :cond_26
    return-void
.end method

.method public final onRewardedVideoAdPlayFailed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 82
    const-string v0, "4006"

    invoke-static {v0, p1, p2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p1

    .line 83
    iget-object p2, p0, Lcom/anythink/rewardvideo/a/c;->e:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    if-eqz p2, :cond_1c

    .line 84
    invoke-virtual {p2}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object p2

    .line 87
    sget-object v0, Lcom/anythink/core/common/b/e$e;->c:Ljava/lang/String;

    sget-object v1, Lcom/anythink/core/common/b/e$e;->g:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v0, v1, v2}, Lcom/anythink/core/common/g/g;->a(Lcom/anythink/core/common/d/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {p2, p1}, Lcom/anythink/core/common/f/c;->b(Lcom/anythink/core/common/d/d;Lcom/anythink/core/api/AdError;)V

    .line 91
    :cond_1c
    iget-object p2, p0, Lcom/anythink/rewardvideo/a/c;->d:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    if-eqz p2, :cond_29

    .line 92
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/c;->e:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    invoke-static {v0}, Lcom/anythink/core/api/ATAdInfo;->fromAdapter(Lcom/anythink/core/common/b/b;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/anythink/rewardvideo/api/ATRewardVideoListener;->onRewardedVideoAdPlayFailed(Lcom/anythink/core/api/AdError;Lcom/anythink/core/api/ATAdInfo;)V

    .line 95
    :cond_29
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object p1

    new-instance p2, Lcom/anythink/rewardvideo/a/c$1;

    invoke-direct {p2, p0}, Lcom/anythink/rewardvideo/a/c$1;-><init>(Lcom/anythink/rewardvideo/a/c;)V

    invoke-virtual {p1, p2}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 103
    return-void
.end method

.method public final onRewardedVideoAdPlayStart()V
    .registers 5

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/rewardvideo/a/c;->a:J

    .line 45
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/rewardvideo/a/c;->b:J

    .line 46
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/c;->e:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    if-eqz v0, :cond_3e

    .line 47
    invoke-virtual {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v0

    .line 49
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/f/a;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/common/f/a;->a(ILcom/anythink/core/common/d/aa;)V

    .line 51
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/f/a;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/common/f/a;->a(ILcom/anythink/core/common/d/aa;)V

    .line 53
    sget-object v1, Lcom/anythink/core/common/b/e$e;->c:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/e$e;->f:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/g/g;->a(Lcom/anythink/core/common/d/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_3e
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/c;->d:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    if-eqz v0, :cond_4b

    .line 58
    iget-object v1, p0, Lcom/anythink/rewardvideo/a/c;->e:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    invoke-static {v1}, Lcom/anythink/core/api/ATAdInfo;->fromAdapter(Lcom/anythink/core/common/b/b;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/api/ATRewardVideoListener;->onRewardedVideoAdPlayStart(Lcom/anythink/core/api/ATAdInfo;)V

    .line 62
    :cond_4b
    return-void
.end method
