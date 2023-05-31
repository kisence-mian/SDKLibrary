.class public final Lcom/mintegral/msdk/click/CommonJumpLoader;
.super Lcom/mintegral/msdk/click/c;
.source "CommonJumpLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;
    }
.end annotation


# instance fields
.field a:Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Lcom/mintegral/msdk/click/d;

.field private e:Z

.field private f:Lcom/mintegral/msdk/base/common/f/b;

.field private g:Lcom/mintegral/msdk/click/g;

.field private h:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcom/mintegral/msdk/click/c;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/mintegral/msdk/click/CommonJumpLoader;->b:I

    .line 33
    iput-object v1, p0, Lcom/mintegral/msdk/click/CommonJumpLoader;->c:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/mintegral/msdk/click/CommonJumpLoader;->a:Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    .line 35
    iput-object v1, p0, Lcom/mintegral/msdk/click/CommonJumpLoader;->d:Lcom/mintegral/msdk/click/d;

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/click/CommonJumpLoader;->e:Z

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mintegral/msdk/click/CommonJumpLoader;->h:Landroid/os/Handler;

    .line 50
    if-eqz p2, :cond_2d

    .line 51
    new-instance v0, Lcom/mintegral/msdk/base/common/f/b;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/mintegral/msdk/base/common/f/b;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/mintegral/msdk/click/CommonJumpLoader;->f:Lcom/mintegral/msdk/base/common/f/b;

    .line 57
    :goto_25
    new-instance v0, Lcom/mintegral/msdk/click/g;

    invoke-direct {v0, p1, p2}, Lcom/mintegral/msdk/click/g;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/mintegral/msdk/click/CommonJumpLoader;->g:Lcom/mintegral/msdk/click/g;

    .line 59
    return-void

    .line 53
    :cond_2d
    new-instance v0, Lcom/mintegral/msdk/base/common/f/b;

    invoke-direct {v0, p1}, Lcom/mintegral/msdk/base/common/f/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mintegral/msdk/click/CommonJumpLoader;->f:Lcom/mintegral/msdk/base/common/f/b;

    goto :goto_25
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/click/d;Lcom/mintegral/msdk/rover/d;)V
    .registers 17

    .prologue
    .line 89
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mintegral/msdk/click/CommonJumpLoader;->c:Ljava/lang/String;

    .line 90
    iput-object p4, p0, Lcom/mintegral/msdk/click/CommonJumpLoader;->d:Lcom/mintegral/msdk/click/d;

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/click/CommonJumpLoader;->a:Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    .line 94
    const-string v0, "5"

    invoke-virtual {p3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClick_mode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "6"

    invoke-virtual {p3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClick_mode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    :cond_28
    const/4 v3, 0x1

    .line 95
    :goto_29
    iget-object v0, p0, Lcom/mintegral/msdk/click/CommonJumpLoader;->g:Lcom/mintegral/msdk/click/g;

    invoke-virtual {p3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v2, p4

    move-object v4, p1

    move-object v6, p2

    move-object/from16 v7, p5

    move-object v8, p3

    invoke-virtual/range {v0 .. v10}, Lcom/mintegral/msdk/click/g;->a(Ljava/lang/String;Lcom/mintegral/msdk/click/d;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mintegral/msdk/rover/d;Lcom/mintegral/msdk/base/entity/CampaignEx;ZZ)V

    .line 96
    return-void

    .line 94
    :cond_3f
    const/4 v3, 0x0

    goto :goto_29
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/click/d;Ljava/lang/String;ZZ)V
    .registers 20

    .prologue
    .line 73
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/mintegral/msdk/click/CommonJumpLoader;->c:Ljava/lang/String;

    .line 74
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/mintegral/msdk/click/CommonJumpLoader;->d:Lcom/mintegral/msdk/click/d;

    .line 75
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mintegral/msdk/click/CommonJumpLoader;->a:Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    .line 78
    const/4 v4, 0x0

    .line 79
    const-string v6, ""

    .line 80
    if-eqz p3, :cond_2e

    .line 81
    const-string v1, "5"

    invoke-virtual {p3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClick_mode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "6"

    invoke-virtual {p3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClick_mode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    :cond_28
    const/4 v1, 0x1

    .line 82
    :goto_29
    invoke-virtual {p3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v6

    move v4, v1

    .line 84
    :cond_2e
    iget-object v1, p0, Lcom/mintegral/msdk/click/CommonJumpLoader;->g:Lcom/mintegral/msdk/click/g;

    const/4 v8, 0x0

    move-object/from16 v2, p5

    move-object/from16 v3, p4

    move-object v5, p1

    move-object v7, p2

    move-object v9, p3

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-virtual/range {v1 .. v11}, Lcom/mintegral/msdk/click/g;->a(Ljava/lang/String;Lcom/mintegral/msdk/click/d;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mintegral/msdk/rover/d;Lcom/mintegral/msdk/base/entity/CampaignEx;ZZ)V

    .line 85
    return-void

    .line 81
    :cond_40
    const/4 v1, 0x0

    goto :goto_29
.end method

.method public final a()Z
    .registers 2

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/mintegral/msdk/click/CommonJumpLoader;->e:Z

    return v0
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/click/CommonJumpLoader;->e:Z

    .line 134
    return-void
.end method
