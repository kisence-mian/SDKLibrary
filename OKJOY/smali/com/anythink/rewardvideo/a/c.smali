.class public final Lcom/anythink/rewardvideo/a/c;
.super Lcom/anythink/core/b/f;


# instance fields
.field a:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

.field private y:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/anythink/core/b/f;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Lcom/anythink/rewardvideo/a/c$1;

    invoke-direct {v0, p0}, Lcom/anythink/rewardvideo/a/c$1;-><init>(Lcom/anythink/rewardvideo/a/c;)V

    iput-object v0, p0, Lcom/anythink/rewardvideo/a/c;->y:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    .line 53
    return-void
.end method

.method private a(Lcom/anythink/rewardvideo/api/ATRewardVideoListener;)V
    .registers 2

    .prologue
    .line 75
    iput-object p1, p0, Lcom/anythink/rewardvideo/a/c;->a:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    .line 76
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/anythink/rewardvideo/a/c;->p:Z

    if-eqz v0, :cond_5

    .line 103
    :goto_4
    return-void

    .line 98
    :cond_5
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/c;->a:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    if-eqz v0, :cond_e

    .line 99
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/c;->a:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    invoke-interface {v0}, Lcom/anythink/rewardvideo/api/ATRewardVideoListener;->onRewardedVideoAdLoaded()V

    .line 102
    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/rewardvideo/a/c;->a:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    goto :goto_4
.end method

.method public final a(Lcom/anythink/core/api/AdError;)V
    .registers 3

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/anythink/rewardvideo/a/c;->p:Z

    if-eqz v0, :cond_5

    .line 115
    :goto_4
    return-void

    .line 110
    :cond_5
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/c;->a:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    if-eqz v0, :cond_e

    .line 111
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/c;->a:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    invoke-interface {v0, p1}, Lcom/anythink/rewardvideo/api/ATRewardVideoListener;->onRewardedVideoAdFailed(Lcom/anythink/core/api/AdError;)V

    .line 114
    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/rewardvideo/a/c;->a:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    goto :goto_4
.end method

.method public final a(Lcom/anythink/core/b/a/b;Lcom/anythink/core/c/c$b;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/b/a/b;",
            "Lcom/anythink/core/c/c$b;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    instance-of v0, p1, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/anythink/rewardvideo/a/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_41

    .line 63
    const/4 v0, 0x0

    .line 64
    iget-object v1, p0, Lcom/anythink/rewardvideo/a/c;->x:Ljava/util/Map;

    if-eqz v1, :cond_42

    .line 65
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/c;->x:Ljava/util/Map;

    iget v1, p2, Lcom/anythink/core/c/c$b;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/api/ATMediationSetting;

    move-object v1, v0

    :goto_22
    move-object v0, p1

    .line 67
    check-cast v0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    iget-object v2, p0, Lcom/anythink/rewardvideo/a/c;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->setUserId(Ljava/lang/String;)V

    move-object v0, p1

    .line 68
    check-cast v0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    iget-object v2, p0, Lcom/anythink/rewardvideo/a/c;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->setUserData(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    check-cast p1, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    iget-object v2, p0, Lcom/anythink/rewardvideo/a/c;->y:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    invoke-static {v0, p1, p3, v1, v2}, Lcom/anythink/rewardvideo/a/a/a;->a(Landroid/app/Activity;Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;Ljava/util/Map;Lcom/anythink/core/api/ATMediationSetting;Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;)V

    .line 71
    :cond_41
    return-void

    :cond_42
    move-object v1, v0

    goto :goto_22
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 80
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/rewardvideo/a/c;->n:Ljava/lang/String;

    .line 86
    :goto_a
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/rewardvideo/a/c;->o:Ljava/lang/String;

    .line 91
    :goto_14
    return-void

    .line 83
    :cond_15
    iput-object p1, p0, Lcom/anythink/rewardvideo/a/c;->n:Ljava/lang/String;

    goto :goto_a

    .line 89
    :cond_18
    iput-object p2, p0, Lcom/anythink/rewardvideo/a/c;->o:Ljava/lang/String;

    goto :goto_14
.end method

.method protected final b(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/anythink/core/c/c;",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/core/c/c$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-super {p0, p1, p2, p3, p4}, Lcom/anythink/core/b/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/util/List;)V

    .line 58
    return-void
.end method
