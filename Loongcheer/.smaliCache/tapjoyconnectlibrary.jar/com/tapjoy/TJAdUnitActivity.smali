.class public Lcom/tapjoy/TJAdUnitActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static c:Lcom/tapjoy/TJAdUnitActivity;


# instance fields
.field a:Lcom/tapjoy/TJAdUnit;

.field private final b:Landroid/os/Handler;

.field private d:Lcom/tapjoy/TJPlacementData;

.field private e:Lcom/tapjoy/TJAdUnitSaveStateData;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Lcom/tapjoy/TJCloseButton;

.field private h:Landroid/widget/ProgressBar;

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->b:Landroid/os/Handler;

    .line 45
    new-instance v0, Lcom/tapjoy/TJAdUnitSaveStateData;

    invoke-direct {v0}, Lcom/tapjoy/TJAdUnitSaveStateData;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->e:Lcom/tapjoy/TJAdUnitSaveStateData;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->f:Landroid/widget/RelativeLayout;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnitActivity;->i:Z

    .line 52
    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnitActivity;->j:Z

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/TJAdUnitActivity;)Lcom/tapjoy/TJAdUnit;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/tapjoy/TJAdUnitActivity;->a:Lcom/tapjoy/TJAdUnit;

    return-object p0
.end method

.method static a()V
    .registers 2

    .line 387
    sget-object v0, Lcom/tapjoy/TJAdUnitActivity;->c:Lcom/tapjoy/TJAdUnitActivity;

    .line 388
    if-eqz v0, :cond_8

    .line 389
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJAdUnitActivity;->handleClose(Z)V

    .line 391
    :cond_8
    return-void
.end method

.method private b()V
    .registers 2

    .line 421
    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/TJAdUnitActivity;->c:Lcom/tapjoy/TJAdUnitActivity;

    .line 422
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnitActivity;->j:Z

    .line 424
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->a:Lcom/tapjoy/TJAdUnit;

    if-eqz v0, :cond_d

    .line 425
    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->destroy()V

    .line 427
    :cond_d
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->d:Lcom/tapjoy/TJPlacementData;

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->isBaseActivity()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 429
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->d:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getContentViewId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 430
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->d:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getContentViewId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->viewDidClose(Ljava/lang/String;)V

    .line 434
    :cond_28
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->d:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TJPlacementManager;->a(Ljava/lang/String;)Lcom/tapjoy/TJCorePlacement;

    move-result-object v0

    .line 435
    if-eqz v0, :cond_37

    .line 436
    invoke-virtual {v0}, Lcom/tapjoy/TJCorePlacement;->d()V

    .line 439
    :cond_37
    return-void
.end method


# virtual methods
.method public handleClose()V
    .registers 2

    .line 239
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJAdUnitActivity;->handleClose(Z)V

    .line 240
    return-void
.end method

.method public handleClose(Z)V
    .registers 6
    .param p1, "shouldForceClose"    # Z

    .line 246
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->a:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->getCloseRequested()Z

    move-result v0

    if-nez v0, :cond_20

    .line 247
    const-string v0, "TJAdUnitActivity"

    const-string v1, "closeRequested"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->a:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TJAdUnit;->closeRequested(Z)V

    .line 254
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->b:Landroid/os/Handler;

    new-instance v1, Lcom/tapjoy/TJAdUnitActivity$1;

    invoke-direct {v1, p0}, Lcom/tapjoy/TJAdUnitActivity$1;-><init>(Lcom/tapjoy/TJAdUnitActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 264
    :cond_20
    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .line 235
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitActivity;->handleClose()V

    .line 236
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .line 383
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitActivity;->handleClose()V

    .line 384
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 398
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 400
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->a:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->notifyOrientationChanged()V

    .line 401
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 56
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TJAdUnitActivity onCreate: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TJAdUnitActivity"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    sput-object p0, Lcom/tapjoy/TJAdUnitActivity;->c:Lcom/tapjoy/TJAdUnitActivity;

    .line 61
    if-eqz p1, :cond_2f

    .line 62
    const-string v0, "ad_unit_bundle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJAdUnitSaveStateData;

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->e:Lcom/tapjoy/TJAdUnitSaveStateData;

    .line 63
    if-eqz v0, :cond_2f

    iget-boolean v0, v0, Lcom/tapjoy/TJAdUnitSaveStateData;->isVideoComplete:Z

    if-eqz v0, :cond_2f

    .line 64
    const-string v0, "finishing TJAdUnitActivity"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitActivity;->finish()V

    .line 71
    return-void

    .line 76
    :cond_2f
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_203

    const-string v2, "placement_data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    if-eqz v3, :cond_203

    .line 78
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJPlacementData;

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->d:Lcom/tapjoy/TJPlacementData;

    .line 87
    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getContentViewId()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_59

    .line 88
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->d:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getContentViewId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyConnectCore;->viewWillOpen(Ljava/lang/String;I)V

    .line 92
    :cond_59
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->d:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TJPlacementManager;->a(Ljava/lang/String;)Lcom/tapjoy/TJCorePlacement;

    move-result-object v0

    if-eqz v0, :cond_76

    .line 93
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->d:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TJPlacementManager;->a(Ljava/lang/String;)Lcom/tapjoy/TJCorePlacement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TJCorePlacement;->getAdUnit()Lcom/tapjoy/TJAdUnit;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->a:Lcom/tapjoy/TJAdUnit;

    goto :goto_93

    .line 96
    :cond_76
    new-instance v0, Lcom/tapjoy/TJAdUnit;

    invoke-direct {v0}, Lcom/tapjoy/TJAdUnit;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->a:Lcom/tapjoy/TJAdUnit;

    .line 97
    new-instance v0, Lcom/tapjoy/internal/fn;

    iget-object v3, p0, Lcom/tapjoy/TJAdUnitActivity;->d:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v3}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tapjoy/TJAdUnitActivity;->d:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v4}, Lcom/tapjoy/TJPlacementData;->getPlacementType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/tapjoy/internal/fn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v3, p0, Lcom/tapjoy/TJAdUnitActivity;->a:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v3, v0}, Lcom/tapjoy/TJAdUnit;->setAdContentTracker(Lcom/tapjoy/internal/fn;)V

    .line 102
    :goto_93
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->a:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->hasCalledLoad()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_a8

    .line 103
    const-string v0, "No content loaded for ad unit -- loading now"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->a:Lcom/tapjoy/TJAdUnit;

    iget-object v4, p0, Lcom/tapjoy/TJAdUnitActivity;->d:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0, v4, v3, p0}, Lcom/tapjoy/TJAdUnit;->load(Lcom/tapjoy/TJPlacementData;ZLandroid/content/Context;)V

    .line 108
    :cond_a8
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->a:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0, p0}, Lcom/tapjoy/TJAdUnit;->setAdUnitActivity(Lcom/tapjoy/TJAdUnitActivity;)V

    .line 111
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-ge v0, v4, :cond_ba

    .line 112
    const v0, 0x1030005

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJAdUnitActivity;->setTheme(I)V

    goto :goto_cf

    .line 114
    :cond_ba
    invoke-virtual {p0, v2}, Lcom/tapjoy/TJAdUnitActivity;->requestWindowFeature(I)Z

    .line 115
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v4, 0x400

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 116
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v4, 0x1000000

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 120
    :goto_cf
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 124
    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/tapjoy/TJAdUnitActivity;->f:Landroid/widget/RelativeLayout;

    .line 125
    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    iget-object v5, p0, Lcom/tapjoy/TJAdUnitActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 130
    :try_start_f0
    iget-object v5, p0, Lcom/tapjoy/TJAdUnitActivity;->a:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v5}, Lcom/tapjoy/TJAdUnit;->getBackgroundWebView()Lcom/tapjoy/TJWebView;

    move-result-object v5

    .line 131
    invoke-virtual {v5, v0}, Lcom/tapjoy/TJWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    invoke-virtual {v5}, Lcom/tapjoy/TJWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_108

    .line 135
    invoke-virtual {v5}, Lcom/tapjoy/TJWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 139
    :cond_108
    iget-object v6, p0, Lcom/tapjoy/TJAdUnitActivity;->a:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v6}, Lcom/tapjoy/TJAdUnit;->getWebView()Lcom/tapjoy/TJWebView;

    move-result-object v6

    .line 140
    invoke-virtual {v6, v0}, Lcom/tapjoy/TJWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    invoke-virtual {v6}, Lcom/tapjoy/TJWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_120

    .line 144
    invoke-virtual {v6}, Lcom/tapjoy/TJWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 148
    :cond_120
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 150
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->a:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->getVideoView()Landroid/widget/VideoView;

    move-result-object v0

    .line 151
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 154
    invoke-virtual {v0}, Landroid/widget/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_13f

    .line 155
    invoke-virtual {v0}, Landroid/widget/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 159
    :cond_13f
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 160
    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 161
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 167
    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    const v5, 0x101007a

    invoke-direct {v0, p0, v4, v5}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->h:Landroid/widget/ProgressBar;

    .line 170
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->d:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->hasProgressSpinner()Z

    move-result v0

    if-eqz v0, :cond_172

    .line 171
    invoke-virtual {p0, v2}, Lcom/tapjoy/TJAdUnitActivity;->setProgressSpinnerVisibility(Z)V

    goto :goto_175

    .line 173
    :cond_172
    invoke-virtual {p0, v3}, Lcom/tapjoy/TJAdUnitActivity;->setProgressSpinnerVisibility(Z)V

    .line 177
    :goto_175
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 178
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 179
    iget-object v3, p0, Lcom/tapjoy/TJAdUnitActivity;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->f:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/tapjoy/TJAdUnitActivity;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 182
    new-instance v0, Lcom/tapjoy/TJCloseButton;

    invoke-direct {v0, p0}, Lcom/tapjoy/TJCloseButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->g:Lcom/tapjoy/TJCloseButton;

    .line 183
    invoke-virtual {v0, p0}, Lcom/tapjoy/TJCloseButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->f:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/tapjoy/TJAdUnitActivity;->g:Lcom/tapjoy/TJCloseButton;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 186
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJAdUnitActivity;->setContentView(Landroid/view/View;)V

    .line 188
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->a:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0, v2}, Lcom/tapjoy/TJAdUnit;->setVisible(Z)V
    :try_end_1a7
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_1a7} :catch_1a8

    .line 192
    goto :goto_1b0

    .line 190
    :catch_1a8
    move-exception v0

    .line 191
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :goto_1b0
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->d:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TJPlacementManager;->a(Ljava/lang/String;)Lcom/tapjoy/TJCorePlacement;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_202

    .line 197
    nop

    .line 1909
    sget-object v1, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Content shown for placement "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2828
    iget-object v3, v0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v3}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v3

    .line 1909
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1910
    iget-object v1, v0, Lcom/tapjoy/TJCorePlacement;->f:Lcom/tapjoy/internal/fx;

    invoke-virtual {v1}, Lcom/tapjoy/internal/fx;->b()V

    .line 1912
    const-string v1, "SHOW"

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCorePlacement;->a(Ljava/lang/String;)Lcom/tapjoy/TJPlacement;

    move-result-object v0

    .line 1913
    if-eqz v0, :cond_1f1

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->getListener()Lcom/tapjoy/TJPlacementListener;

    move-result-object v1

    if-eqz v1, :cond_1f1

    .line 1914
    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->getListener()Lcom/tapjoy/TJPlacementListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tapjoy/TJPlacementListener;->onContentShow(Lcom/tapjoy/TJPlacement;)V

    .line 198
    :cond_1f1
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->a:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->getSdkBeacon()Lcom/tapjoy/internal/fz;

    move-result-object v0

    if-eqz v0, :cond_202

    .line 199
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->a:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->getSdkBeacon()Lcom/tapjoy/internal/fz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/fz;->a()V

    .line 202
    :cond_202
    return-void

    .line 81
    :cond_203
    new-instance v0, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v2, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v3, "Failed to launch AdUnit Activity"

    invoke-direct {v0, v2, v3}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 82
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitActivity;->finish()V

    .line 83
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 268
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 271
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->d:Lcom/tapjoy/TJPlacementData;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->shouldHandleDismissOnPause()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_d
    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnitActivity;->j:Z

    if-nez v0, :cond_14

    .line 272
    :cond_11
    invoke-direct {p0}, Lcom/tapjoy/TJAdUnitActivity;->b()V

    .line 274
    :cond_14
    return-void
.end method

.method protected onPause()V
    .registers 3

    .line 305
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 306
    const-string v0, "TJAdUnitActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitActivity;->a:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v1}, Lcom/tapjoy/TJAdUnit;->pause()V

    .line 312
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitActivity;->d:Lcom/tapjoy/TJPlacementData;

    if-eqz v1, :cond_27

    invoke-virtual {v1}, Lcom/tapjoy/TJPlacementData;->shouldHandleDismissOnPause()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 313
    const-string v1, "is Finishing"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-direct {p0}, Lcom/tapjoy/TJAdUnitActivity;->b()V

    .line 316
    :cond_27
    return-void
.end method

.method protected onResume()V
    .registers 3

    .line 278
    const-string v0, "TJAdUnitActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 282
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->a:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->isLockedOrientation()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 283
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->a:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->getLockedOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJAdUnitActivity;->setRequestedOrientation(I)V

    .line 286
    :cond_1b
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->a:Lcom/tapjoy/TJAdUnit;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitActivity;->e:Lcom/tapjoy/TJAdUnitSaveStateData;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJAdUnit;->resume(Lcom/tapjoy/TJAdUnitSaveStateData;)V

    .line 287
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 320
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 322
    const-string v0, "TJAdUnitActivity"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->e:Lcom/tapjoy/TJAdUnitSaveStateData;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitActivity;->a:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v1}, Lcom/tapjoy/TJAdUnit;->getVideoSeekTime()I

    move-result v1

    iput v1, v0, Lcom/tapjoy/TJAdUnitSaveStateData;->seekTime:I

    .line 325
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->e:Lcom/tapjoy/TJAdUnitSaveStateData;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitActivity;->a:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v1}, Lcom/tapjoy/TJAdUnit;->isVideoComplete()Z

    move-result v1

    iput-boolean v1, v0, Lcom/tapjoy/TJAdUnitSaveStateData;->isVideoComplete:Z

    .line 326
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->e:Lcom/tapjoy/TJAdUnitSaveStateData;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitActivity;->a:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v1}, Lcom/tapjoy/TJAdUnit;->isMuted()Z

    move-result v1

    iput-boolean v1, v0, Lcom/tapjoy/TJAdUnitSaveStateData;->isVideoMuted:Z

    .line 328
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->e:Lcom/tapjoy/TJAdUnitSaveStateData;

    const-string v1, "ad_unit_bundle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 329
    return-void
.end method

.method protected onStart()V
    .registers 3

    .line 291
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 292
    const-string v0, "TJAdUnitActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-static {}, Lcom/tapjoy/internal/hb;->a()Lcom/tapjoy/internal/hb;

    move-result-object v0

    .line 3016
    iget-boolean v0, v0, Lcom/tapjoy/internal/hb;->m:Z

    .line 294
    if-eqz v0, :cond_1d

    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnitActivity;->i:Z

    .line 296
    nop

    .line 3183
    invoke-static {}, Lcom/tapjoy/internal/hb;->a()Lcom/tapjoy/internal/hb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/hb;->a(Landroid/app/Activity;)V

    .line 298
    :cond_1d
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->d:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->isBaseActivity()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 299
    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/TJAdUnitActivity;->setResult(ILandroid/content/Intent;)V

    .line 301
    :cond_2d
    return-void
.end method

.method protected onStop()V
    .registers 3

    .line 333
    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnitActivity;->i:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 334
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnitActivity;->i:Z

    .line 335
    nop

    .line 3201
    invoke-static {}, Lcom/tapjoy/internal/hb;->a()Lcom/tapjoy/internal/hb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/hb;->b(Landroid/app/Activity;)V

    .line 338
    :cond_10
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 339
    const-string v0, "TJAdUnitActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method public setCloseButtonClickable(Z)V
    .registers 3
    .param p1, "clickable"    # Z

    .line 219
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->g:Lcom/tapjoy/TJCloseButton;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TJCloseButton;->setClickableRequested(Z)V

    .line 220
    return-void
.end method

.method public setCloseButtonVisibility(Z)V
    .registers 4
    .param p1, "visibility"    # Z

    .line 208
    if-eqz p1, :cond_9

    .line 209
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->g:Lcom/tapjoy/TJCloseButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCloseButton;->setVisibility(I)V

    return-void

    .line 211
    :cond_9
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->g:Lcom/tapjoy/TJCloseButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCloseButton;->setVisibility(I)V

    .line 213
    return-void
.end method

.method public setProgressSpinnerVisibility(Z)V
    .registers 4
    .param p1, "visibility"    # Z

    .line 226
    if-eqz p1, :cond_9

    .line 227
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->h:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    .line 229
    :cond_9
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->h:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 231
    return-void
.end method

.method public showErrorDialog()V
    .registers 5

    .line 347
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_46

    .line 351
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const-string v2, "OK"

    const-string v3, "An error occured. Please try again later."

    if-lt v0, v1, :cond_2d

    .line 352
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x103023a

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 353
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/tapjoy/TJAdUnitActivity$2;

    invoke-direct {v1, p0}, Lcom/tapjoy/TJAdUnitActivity$2;-><init>(Lcom/tapjoy/TJAdUnitActivity;)V

    .line 354
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 360
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 361
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 364
    :cond_2d
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 365
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/tapjoy/TJAdUnitActivity$3;

    invoke-direct {v1, p0}, Lcom/tapjoy/TJAdUnitActivity$3;-><init>(Lcom/tapjoy/TJAdUnitActivity;)V

    .line 366
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 372
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 373
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 376
    :cond_46
    return-void
.end method
