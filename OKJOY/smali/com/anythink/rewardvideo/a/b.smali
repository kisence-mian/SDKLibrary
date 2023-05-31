.class public final Lcom/anythink/rewardvideo/a/b;
.super Lcom/anythink/core/b/e;


# instance fields
.field e:Lcom/anythink/core/api/ATMediationSetting;


# direct methods
.method public constructor <init>(JJLcom/anythink/core/c/c$b;Lcom/anythink/core/b/c/b;)V
    .registers 8

    .prologue
    .line 22
    invoke-direct/range {p0 .. p6}, Lcom/anythink/core/b/e;-><init>(JJLcom/anythink/core/c/c$b;Lcom/anythink/core/b/c/b;)V

    .line 23
    return-void
.end method

.method private a(Lcom/anythink/core/api/ATMediationSetting;)V
    .registers 2

    .prologue
    .line 26
    iput-object p1, p0, Lcom/anythink/rewardvideo/a/b;->e:Lcom/anythink/core/api/ATMediationSetting;

    .line 27
    return-void
.end method

.method static synthetic a(Lcom/anythink/rewardvideo/a/b;JLcom/anythink/core/b/a/b;Lcom/anythink/core/api/AdError;)V
    .registers 6

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/anythink/rewardvideo/a/b;->a(JLcom/anythink/core/b/a/b;Lcom/anythink/core/api/AdError;)V

    return-void
.end method

.method static synthetic a(Lcom/anythink/rewardvideo/a/b;Landroid/content/Context;JLcom/anythink/core/b/a/b;)V
    .registers 11

    .prologue
    .line 16
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/anythink/rewardvideo/a/b;->a(Landroid/content/Context;JLcom/anythink/core/b/a/b;Ljava/util/List;)V

    return-void
.end method

.method static synthetic b(JLcom/anythink/core/b/a/b;)V
    .registers 3

    .prologue
    .line 16
    invoke-static {p0, p1, p2}, Lcom/anythink/rewardvideo/a/b;->a(JLcom/anythink/core/b/a/b;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;JLcom/anythink/core/b/a/b;)V
    .registers 15

    .prologue
    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 38
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/b;->b:Lcom/anythink/core/b/c/b;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/anythink/rewardvideo/a/b;->b:Lcom/anythink/core/b/c/b;

    invoke-virtual {v0}, Lcom/anythink/core/b/c/b;->D()Ljava/lang/String;

    move-result-object v0

    .line 39
    :goto_e
    check-cast p1, Landroid/app/Activity;

    move-object v6, p4

    check-cast v6, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    invoke-virtual {p4}, Lcom/anythink/core/b/a/b;->getmUnitgroupInfo()Lcom/anythink/core/c/c$b;

    invoke-virtual {p4}, Lcom/anythink/core/b/a/b;->getmUnitgroupInfo()Lcom/anythink/core/c/c$b;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/anythink/core/c/c;->a(Ljava/lang/String;Lcom/anythink/core/c/c$b;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    iget-object v8, p0, Lcom/anythink/rewardvideo/a/b;->e:Lcom/anythink/core/api/ATMediationSetting;

    new-instance v0, Lcom/anythink/rewardvideo/a/b$1;

    move-object v1, p0

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/anythink/rewardvideo/a/b$1;-><init>(Lcom/anythink/rewardvideo/a/b;JLcom/anythink/core/b/a/b;Landroid/content/Context;)V

    invoke-static {p1, v6, v7, v8, v0}, Lcom/anythink/rewardvideo/a/a/a;->a(Landroid/app/Activity;Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;Ljava/util/Map;Lcom/anythink/core/api/ATMediationSetting;Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;)V

    .line 56
    return-void

    .line 38
    :cond_2e
    const-string v0, ""

    goto :goto_e
.end method

.method public final onTick(J)V
    .registers 3

    .prologue
    .line 32
    return-void
.end method
