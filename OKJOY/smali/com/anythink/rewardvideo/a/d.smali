.class public final Lcom/anythink/rewardvideo/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;


# instance fields
.field a:J

.field b:Z

.field private c:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;


# direct methods
.method public constructor <init>(Lcom/anythink/rewardvideo/api/ATRewardVideoListener;)V
    .registers 4

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/anythink/rewardvideo/a/d;->a:J

    .line 24
    iput-object p1, p0, Lcom/anythink/rewardvideo/a/d;->c:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    .line 25
    return-void
.end method


# virtual methods
.method public final onReward(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V
    .registers 4

    .prologue
    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/rewardvideo/a/d;->b:Z

    .line 127
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/d;->c:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    if-eqz v0, :cond_10

    .line 128
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/d;->c:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    invoke-static {p1}, Lcom/anythink/core/api/ATAdInfo;->fromAdapter(Lcom/anythink/core/b/a/b;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/api/ATRewardVideoListener;->onReward(Lcom/anythink/core/api/ATAdInfo;)V

    .line 130
    :cond_10
    return-void
.end method

.method public final onRewardedVideoAdClosed(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V
    .registers 8

    .prologue
    .line 85
    if-eqz p1, :cond_27

    .line 86
    invoke-virtual {p1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v0

    .line 89
    sget-object v1, Lcom/anythink/core/b/a/d$e;->e:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/b/a/d$e;->f:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {p1, v1, v2, v3}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-wide v2, p0, Lcom/anythink/rewardvideo/a/d;->a:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_22

    .line 92
    iget-boolean v1, p0, Lcom/anythink/rewardvideo/a/d;->b:Z

    iget-wide v2, p0, Lcom/anythink/rewardvideo/a/d;->a:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/anythink/core/b/f/c;->a(Lcom/anythink/core/b/c/b;ZJJ)V

    .line 95
    :cond_22
    iget-boolean v1, p0, Lcom/anythink/rewardvideo/a/d;->b:Z

    invoke-static {v0, v1}, Lcom/anythink/core/b/f/c;->a(Lcom/anythink/core/b/c/b;Z)V

    .line 99
    :cond_27
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/d;->c:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    if-eqz v0, :cond_34

    .line 100
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/d;->c:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    invoke-static {p1}, Lcom/anythink/core/api/ATAdInfo;->fromAdapter(Lcom/anythink/core/b/a/b;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/api/ATRewardVideoListener;->onRewardedVideoAdClosed(Lcom/anythink/core/api/ATAdInfo;)V

    .line 104
    :cond_34
    return-void
.end method

.method public final onRewardedVideoAdPlayClicked(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V
    .registers 5

    .prologue
    .line 109
    if-eqz p1, :cond_1f

    .line 110
    invoke-virtual {p1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v0

    .line 112
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/b/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/b/f/a;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/b/f/a;->a(ILcom/anythink/core/b/c/n;)V

    .line 114
    sget-object v0, Lcom/anythink/core/b/a/d$e;->d:Ljava/lang/String;

    sget-object v1, Lcom/anythink/core/b/a/d$e;->f:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {p1, v0, v1, v2}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_1f
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/d;->c:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    if-eqz v0, :cond_2c

    .line 119
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/d;->c:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    invoke-static {p1}, Lcom/anythink/core/api/ATAdInfo;->fromAdapter(Lcom/anythink/core/b/a/b;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/api/ATRewardVideoListener;->onRewardedVideoAdPlayClicked(Lcom/anythink/core/api/ATAdInfo;)V

    .line 122
    :cond_2c
    return-void
.end method

.method public final onRewardedVideoAdPlayEnd(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V
    .registers 5

    .prologue
    .line 54
    if-eqz p1, :cond_17

    .line 55
    invoke-virtual {p1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v0

    .line 57
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/b/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/b/f/a;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/b/f/a;->a(ILcom/anythink/core/b/c/n;)V

    .line 60
    :cond_17
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/d;->c:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    if-eqz v0, :cond_24

    .line 61
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/d;->c:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    invoke-static {p1}, Lcom/anythink/core/api/ATAdInfo;->fromAdapter(Lcom/anythink/core/b/a/b;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/api/ATRewardVideoListener;->onRewardedVideoAdPlayEnd(Lcom/anythink/core/api/ATAdInfo;)V

    .line 65
    :cond_24
    return-void
.end method

.method public final onRewardedVideoAdPlayFailed(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;Lcom/anythink/core/api/AdError;)V
    .registers 7

    .prologue
    .line 69
    if-eqz p1, :cond_14

    .line 70
    invoke-virtual {p1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v0

    .line 73
    sget-object v1, Lcom/anythink/core/b/a/d$e;->c:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/b/a/d$e;->g:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {v0, p2}, Lcom/anythink/core/b/f/c;->a(Lcom/anythink/core/b/c/b;Lcom/anythink/core/api/AdError;)V

    .line 77
    :cond_14
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/d;->c:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    if-eqz v0, :cond_21

    .line 78
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/d;->c:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    invoke-static {p1}, Lcom/anythink/core/api/ATAdInfo;->fromAdapter(Lcom/anythink/core/b/a/b;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/anythink/rewardvideo/api/ATRewardVideoListener;->onRewardedVideoAdPlayFailed(Lcom/anythink/core/api/AdError;Lcom/anythink/core/api/ATAdInfo;)V

    .line 81
    :cond_21
    return-void
.end method

.method public final onRewardedVideoAdPlayStart(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V
    .registers 7

    .prologue
    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/rewardvideo/a/d;->a:J

    .line 31
    if-eqz p1, :cond_49

    .line 32
    invoke-virtual {p1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v0

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 34
    invoke-virtual {v0}, Lcom/anythink/core/b/c/b;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/anythink/core/b/c/b;->n()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v2, v3}, Lcom/anythink/core/b/g/f;->a(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/c/b;->b(Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/b/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/b/f/a;

    move-result-object v1

    const/16 v4, 0x8

    invoke-virtual {v1, v4, v0}, Lcom/anythink/core/b/f/a;->a(ILcom/anythink/core/b/c/n;)V

    .line 38
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/b/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/b/f/a;

    move-result-object v1

    const/4 v4, 0x4

    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/anythink/core/b/f/a;->a(ILcom/anythink/core/b/c/n;J)V

    .line 40
    sget-object v0, Lcom/anythink/core/b/a/d$e;->c:Ljava/lang/String;

    sget-object v1, Lcom/anythink/core/b/a/d$e;->f:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {p1, v0, v1, v2}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_49
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/d;->c:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    if-eqz v0, :cond_56

    .line 45
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/d;->c:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    invoke-static {p1}, Lcom/anythink/core/api/ATAdInfo;->fromAdapter(Lcom/anythink/core/b/a/b;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/api/ATRewardVideoListener;->onRewardedVideoAdPlayStart(Lcom/anythink/core/api/ATAdInfo;)V

    .line 49
    :cond_56
    return-void
.end method
