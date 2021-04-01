.class public final Lcom/anythink/interstitial/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;


# instance fields
.field a:Lcom/anythink/interstitial/api/ATInterstitialListener;

.field b:J


# direct methods
.method public constructor <init>(Lcom/anythink/interstitial/api/ATInterstitialListener;)V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/anythink/interstitial/a/c;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    .line 24
    return-void
.end method


# virtual methods
.method public final onInterstitialAdClicked(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V
    .registers 5

    .prologue
    .line 94
    if-eqz p1, :cond_1f

    .line 95
    sget-object v0, Lcom/anythink/core/b/a/d$e;->d:Ljava/lang/String;

    sget-object v1, Lcom/anythink/core/b/a/d$e;->f:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {p1, v0, v1, v2}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v0

    .line 98
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/b/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/b/f/a;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/b/f/a;->a(ILcom/anythink/core/b/c/n;)V

    .line 101
    :cond_1f
    iget-object v0, p0, Lcom/anythink/interstitial/a/c;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    if-eqz v0, :cond_2c

    .line 102
    iget-object v0, p0, Lcom/anythink/interstitial/a/c;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    invoke-static {p1}, Lcom/anythink/core/api/ATAdInfo;->fromAdapter(Lcom/anythink/core/b/a/b;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/api/ATInterstitialListener;->onInterstitialAdClicked(Lcom/anythink/core/api/ATAdInfo;)V

    .line 104
    :cond_2c
    return-void
.end method

.method public final onInterstitialAdClose(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 71
    if-eqz p1, :cond_34

    .line 72
    invoke-virtual {p1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v0

    .line 74
    sget-object v2, Lcom/anythink/core/b/a/d$e;->e:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/b/a/d$e;->f:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {p1, v2, v3, v4}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-wide v2, p0, Lcom/anythink/interstitial/a/c;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_21

    .line 77
    iget-wide v2, p0, Lcom/anythink/interstitial/a/c;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/anythink/core/b/f/c;->a(Lcom/anythink/core/b/c/b;ZJJ)V

    .line 80
    :cond_21
    invoke-static {v0, v1}, Lcom/anythink/core/b/f/c;->a(Lcom/anythink/core/b/c/b;Z)V

    .line 82
    iget-object v0, p0, Lcom/anythink/interstitial/a/c;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    if-eqz v0, :cond_31

    .line 83
    iget-object v0, p0, Lcom/anythink/interstitial/a/c;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    invoke-static {p1}, Lcom/anythink/core/api/ATAdInfo;->fromAdapter(Lcom/anythink/core/b/a/b;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/api/ATInterstitialListener;->onInterstitialAdClose(Lcom/anythink/core/api/ATAdInfo;)V

    .line 86
    :cond_31
    invoke-virtual {p1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->clearImpressionListener()V

    .line 90
    :cond_34
    return-void
.end method

.method public final onInterstitialAdShow(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V
    .registers 7

    .prologue
    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/interstitial/a/c;->b:J

    .line 110
    if-eqz p1, :cond_38

    .line 112
    sget-object v0, Lcom/anythink/core/b/a/d$e;->c:Ljava/lang/String;

    sget-object v1, Lcom/anythink/core/b/a/d$e;->f:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {p1, v0, v1, v2}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v0

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 117
    invoke-virtual {v0}, Lcom/anythink/core/b/c/b;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/anythink/core/b/c/b;->n()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v2, v3}, Lcom/anythink/core/b/g/f;->a(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/c/b;->b(Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/b/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/b/f/a;

    move-result-object v1

    const/4 v4, 0x4

    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/anythink/core/b/f/a;->a(ILcom/anythink/core/b/c/n;J)V

    .line 122
    :cond_38
    iget-object v0, p0, Lcom/anythink/interstitial/a/c;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    if-eqz v0, :cond_45

    .line 123
    iget-object v0, p0, Lcom/anythink/interstitial/a/c;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    invoke-static {p1}, Lcom/anythink/core/api/ATAdInfo;->fromAdapter(Lcom/anythink/core/b/a/b;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/api/ATInterstitialListener;->onInterstitialAdShow(Lcom/anythink/core/api/ATAdInfo;)V

    .line 125
    :cond_45
    return-void
.end method

.method public final onInterstitialAdVideoEnd(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V
    .registers 5

    .prologue
    .line 43
    if-eqz p1, :cond_24

    .line 44
    invoke-virtual {p1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v0

    .line 46
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/b/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/b/f/a;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/b/f/a;->a(ILcom/anythink/core/b/c/n;)V

    .line 47
    iget-object v0, p0, Lcom/anythink/interstitial/a/c;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    if-eqz v0, :cond_24

    .line 48
    iget-object v0, p0, Lcom/anythink/interstitial/a/c;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    invoke-static {p1}, Lcom/anythink/core/api/ATAdInfo;->fromAdapter(Lcom/anythink/core/b/a/b;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/api/ATInterstitialListener;->onInterstitialAdVideoEnd(Lcom/anythink/core/api/ATAdInfo;)V

    .line 51
    :cond_24
    return-void
.end method

.method public final onInterstitialAdVideoError(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;Lcom/anythink/core/api/AdError;)V
    .registers 4

    .prologue
    .line 55
    if-eqz p1, :cond_9

    .line 56
    invoke-virtual {p1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v0

    .line 59
    invoke-static {v0, p2}, Lcom/anythink/core/b/f/c;->a(Lcom/anythink/core/b/c/b;Lcom/anythink/core/api/AdError;)V

    .line 62
    :cond_9
    iget-object v0, p0, Lcom/anythink/interstitial/a/c;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    if-eqz v0, :cond_12

    .line 63
    iget-object v0, p0, Lcom/anythink/interstitial/a/c;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    invoke-interface {v0, p2}, Lcom/anythink/interstitial/api/ATInterstitialListener;->onInterstitialAdVideoError(Lcom/anythink/core/api/AdError;)V

    .line 67
    :cond_12
    return-void
.end method

.method public final onInterstitialAdVideoStart(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V
    .registers 5

    .prologue
    .line 28
    if-eqz p1, :cond_24

    .line 29
    invoke-virtual {p1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v0

    .line 31
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/b/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/b/f/a;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/b/f/a;->a(ILcom/anythink/core/b/c/n;)V

    .line 32
    iget-object v0, p0, Lcom/anythink/interstitial/a/c;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    if-eqz v0, :cond_24

    .line 33
    iget-object v0, p0, Lcom/anythink/interstitial/a/c;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    invoke-static {p1}, Lcom/anythink/core/api/ATAdInfo;->fromAdapter(Lcom/anythink/core/b/a/b;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/api/ATInterstitialListener;->onInterstitialAdVideoStart(Lcom/anythink/core/api/ATAdInfo;)V

    .line 39
    :cond_24
    return-void
.end method
