.class public final Lcom/anythink/interstitial/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;


# instance fields
.field a:Lcom/anythink/interstitial/api/ATInterstitialListener;

.field b:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

.field c:J

.field d:J


# direct methods
.method public constructor <init>(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;Lcom/anythink/interstitial/api/ATInterstitialListener;)V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Lcom/anythink/interstitial/a/b;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    .line 36
    iput-object p1, p0, Lcom/anythink/interstitial/a/b;->b:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    .line 37
    return-void
.end method


# virtual methods
.method public final onDeeplinkCallback(Z)V
    .registers 4

    .line 135
    iget-object v0, p0, Lcom/anythink/interstitial/a/b;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/anythink/interstitial/api/ATInterstitialExListener;

    if-eqz v1, :cond_13

    .line 136
    check-cast v0, Lcom/anythink/interstitial/api/ATInterstitialExListener;

    iget-object v1, p0, Lcom/anythink/interstitial/a/b;->b:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    invoke-static {v1}, Lcom/anythink/core/api/ATAdInfo;->fromAdapter(Lcom/anythink/core/common/b/b;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/anythink/interstitial/api/ATInterstitialExListener;->onDeeplinkCallback(Lcom/anythink/core/api/ATAdInfo;Z)V

    .line 138
    :cond_13
    return-void
.end method

.method public final onInterstitialAdClicked()V
    .registers 5

    .line 105
    iget-object v0, p0, Lcom/anythink/interstitial/a/b;->b:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    if-eqz v0, :cond_21

    .line 106
    invoke-virtual {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v0

    .line 107
    sget-object v1, Lcom/anythink/core/common/b/e$e;->d:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/e$e;->f:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/g/g;->a(Lcom/anythink/core/common/d/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/f/a;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/common/f/a;->a(ILcom/anythink/core/common/d/aa;)V

    .line 111
    :cond_21
    iget-object v0, p0, Lcom/anythink/interstitial/a/b;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    if-eqz v0, :cond_2e

    .line 112
    iget-object v1, p0, Lcom/anythink/interstitial/a/b;->b:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    invoke-static {v1}, Lcom/anythink/core/api/ATAdInfo;->fromAdapter(Lcom/anythink/core/common/b/b;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/api/ATInterstitialListener;->onInterstitialAdClicked(Lcom/anythink/core/api/ATAdInfo;)V

    .line 114
    :cond_2e
    return-void
.end method

.method public final onInterstitialAdClose()V
    .registers 12

    .line 76
    iget-object v0, p0, Lcom/anythink/interstitial/a/b;->b:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    if-eqz v0, :cond_46

    .line 77
    invoke-virtual {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v0

    .line 79
    sget-object v1, Lcom/anythink/core/common/b/e$e;->e:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/e$e;->f:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/g/g;->a(Lcom/anythink/core/common/d/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-wide v3, p0, Lcom/anythink/interstitial/a/b;->c:J

    const-wide/16 v1, 0x0

    cmp-long v1, v3, v1

    if-eqz v1, :cond_29

    .line 82
    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/anythink/interstitial/a/b;->d:J

    sub-long/2addr v7, v9

    move-object v1, v0

    invoke-static/range {v1 .. v8}, Lcom/anythink/core/common/f/c;->a(Lcom/anythink/core/common/d/d;ZJJJ)V

    .line 85
    :cond_29
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/anythink/core/common/f/c;->a(Lcom/anythink/core/common/d/d;Z)V

    .line 88
    :try_start_2d
    iget-object v0, p0, Lcom/anythink/interstitial/a/b;->b:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    invoke-virtual {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->clearImpressionListener()V

    .line 89
    iget-object v0, p0, Lcom/anythink/interstitial/a/b;->b:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    invoke-virtual {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->destory()V
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_38

    .line 92
    goto :goto_39

    .line 90
    :catchall_38
    move-exception v0

    .line 94
    :goto_39
    iget-object v0, p0, Lcom/anythink/interstitial/a/b;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    if-eqz v0, :cond_46

    .line 95
    iget-object v1, p0, Lcom/anythink/interstitial/a/b;->b:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    invoke-static {v1}, Lcom/anythink/core/api/ATAdInfo;->fromAdapter(Lcom/anythink/core/common/b/b;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/api/ATInterstitialListener;->onInterstitialAdClose(Lcom/anythink/core/api/ATAdInfo;)V

    .line 101
    :cond_46
    return-void
.end method

.method public final onInterstitialAdShow()V
    .registers 5

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/interstitial/a/b;->c:J

    .line 120
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/interstitial/a/b;->d:J

    .line 121
    iget-object v0, p0, Lcom/anythink/interstitial/a/b;->b:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    if-eqz v0, :cond_2d

    .line 122
    invoke-virtual {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v0

    .line 123
    sget-object v1, Lcom/anythink/core/common/b/e$e;->c:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/e$e;->f:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/g/g;->a(Lcom/anythink/core/common/d/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/f/a;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/common/f/a;->a(ILcom/anythink/core/common/d/aa;)V

    .line 128
    :cond_2d
    iget-object v0, p0, Lcom/anythink/interstitial/a/b;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    if-eqz v0, :cond_3a

    .line 129
    iget-object v1, p0, Lcom/anythink/interstitial/a/b;->b:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    invoke-static {v1}, Lcom/anythink/core/api/ATAdInfo;->fromAdapter(Lcom/anythink/core/common/b/b;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/api/ATInterstitialListener;->onInterstitialAdShow(Lcom/anythink/core/api/ATAdInfo;)V

    .line 131
    :cond_3a
    return-void
.end method

.method public final onInterstitialAdVideoEnd()V
    .registers 4

    .line 52
    iget-object v0, p0, Lcom/anythink/interstitial/a/b;->b:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    if-eqz v0, :cond_26

    .line 53
    invoke-virtual {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v0

    .line 54
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/f/a;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/common/f/a;->a(ILcom/anythink/core/common/d/aa;)V

    .line 55
    iget-object v0, p0, Lcom/anythink/interstitial/a/b;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    if-eqz v0, :cond_26

    .line 56
    iget-object v1, p0, Lcom/anythink/interstitial/a/b;->b:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    invoke-static {v1}, Lcom/anythink/core/api/ATAdInfo;->fromAdapter(Lcom/anythink/core/common/b/b;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/api/ATInterstitialListener;->onInterstitialAdVideoEnd(Lcom/anythink/core/api/ATAdInfo;)V

    .line 59
    :cond_26
    return-void
.end method

.method public final onInterstitialAdVideoError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 63
    const-string v0, "4006"

    invoke-static {v0, p1, p2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p1

    .line 64
    iget-object p2, p0, Lcom/anythink/interstitial/a/b;->b:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    if-eqz p2, :cond_11

    .line 65
    invoke-virtual {p2}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object p2

    .line 66
    invoke-static {p2, p1}, Lcom/anythink/core/common/f/c;->b(Lcom/anythink/core/common/d/d;Lcom/anythink/core/api/AdError;)V

    .line 69
    :cond_11
    iget-object p2, p0, Lcom/anythink/interstitial/a/b;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    if-eqz p2, :cond_18

    .line 70
    invoke-interface {p2, p1}, Lcom/anythink/interstitial/api/ATInterstitialListener;->onInterstitialAdVideoError(Lcom/anythink/core/api/AdError;)V

    .line 72
    :cond_18
    return-void
.end method

.method public final onInterstitialAdVideoStart()V
    .registers 4

    .line 41
    iget-object v0, p0, Lcom/anythink/interstitial/a/b;->b:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    if-eqz v0, :cond_26

    .line 42
    invoke-virtual {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v0

    .line 43
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/f/a;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/common/f/a;->a(ILcom/anythink/core/common/d/aa;)V

    .line 44
    iget-object v0, p0, Lcom/anythink/interstitial/a/b;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    if-eqz v0, :cond_26

    .line 45
    iget-object v1, p0, Lcom/anythink/interstitial/a/b;->b:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    invoke-static {v1}, Lcom/anythink/core/api/ATAdInfo;->fromAdapter(Lcom/anythink/core/common/b/b;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/api/ATInterstitialListener;->onInterstitialAdVideoStart(Lcom/anythink/core/api/ATAdInfo;)V

    .line 48
    :cond_26
    return-void
.end method
