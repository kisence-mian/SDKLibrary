.class public Lcom/bytedance/sdk/openadsdk/core/nativeexpress/FullRewardExpressBackupView;
.super Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;
.source "FullRewardExpressBackupView.java"


# instance fields
.field private k:Landroid/view/View;

.field private l:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

.field private m:Landroid/widget/FrameLayout;

.field private n:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 37
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/FullRewardExpressBackupView;->a:Landroid/content/Context;

    .line 39
    return-void
.end method

.method private b()V
    .registers 4

    .line 71
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/FullRewardExpressBackupView;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/FullRewardExpressBackupView;->l:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/FullRewardExpressBackupView;->f:I

    .line 72
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/FullRewardExpressBackupView;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/FullRewardExpressBackupView;->l:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/FullRewardExpressBackupView;->g:I

    .line 74
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/FullRewardExpressBackupView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 75
    if-nez v0, :cond_2d

    .line 76
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/FullRewardExpressBackupView;->f:I

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/FullRewardExpressBackupView;->g:I

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 78
    :cond_2d
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/FullRewardExpressBackupView;->f:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 79
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/FullRewardExpressBackupView;->g:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 80
    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_40

    .line 81
    move-object v1, v0

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 83
    :cond_40
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/FullRewardExpressBackupView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/FullRewardExpressBackupView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->n()I

    .line 85
    nop

    .line 87
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/FullRewardExpressBackupView;->c()V

    .line 90
    return-void
.end method

.method private c()V
    .registers 4

    .line 94
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/FullRewardExpressBackupView;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/FullRewardExpressBackupView;->a:Landroid/content/Context;

    const-string v2, "tt_backup_full_reward"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/FullRewardExpressBackupView;->k:Landroid/view/View;

    .line 95
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/FullRewardExpressBackupView;->a:Landroid/content/Context;

    const-string v2, "tt_bu_video_container"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/FullRewardExpressBackupView;->m:Landroid/widget/FrameLayout;

    .line 96
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 97
    return-void
.end method


# virtual methods
.method protected a(ILcom/bytedance/sdk/openadsdk/core/d/j;)V
    .registers 4

    .line 105
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/FullRewardExpressBackupView;->l:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v0, :cond_7

    .line 106
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->a(ILcom/bytedance/sdk/openadsdk/core/d/j;)V

    .line 108
    :cond_7
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V
    .registers 6

    .line 52
    const-string v0, "FullRewardExpressBackupView"

    const-string v1, "show backup view"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/FullRewardExpressBackupView;->setBackgroundColor(I)V

    .line 54
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/FullRewardExpressBackupView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 55
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/FullRewardExpressBackupView;->l:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    .line 56
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/FullRewardExpressBackupView;->n:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 58
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/FullRewardExpressBackupView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->c(Ljava/lang/String;)I

    move-result p1

    .line 59
    const/4 p2, 0x7

    if-ne p1, p2, :cond_23

    .line 60
    const-string p1, "rewarded_video"

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/FullRewardExpressBackupView;->e:Ljava/lang/String;

    goto :goto_27

    .line 62
    :cond_23
    const-string p1, "fullscreen_interstitial_ad"

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/FullRewardExpressBackupView;->e:Ljava/lang/String;

    .line 64
    :goto_27
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/FullRewardExpressBackupView;->b()V

    .line 65
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/FullRewardExpressBackupView;->l:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p2, p3, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    return-void
.end method

.method public getVideoContainer()Landroid/widget/FrameLayout;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/FullRewardExpressBackupView;->m:Landroid/widget/FrameLayout;

    return-object v0
.end method
