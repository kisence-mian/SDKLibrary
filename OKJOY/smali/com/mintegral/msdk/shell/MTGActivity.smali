.class public Lcom/mintegral/msdk/shell/MTGActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "MTGActivity.java"


# static fields
.field public static extra:Ljava/lang/Object;


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/mintegral/msdk/base/fragment/BaseFragment;

.field c:Lcom/mintegral/msdk/appwall/g/a;

.field private d:Lcom/mintegral/msdk/system/a;

.field private e:Z

.field private f:Landroid/content/Intent;

.field private g:Landroid/widget/FrameLayout;

.field private h:Ljava/lang/String;

.field public mIsReport:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/mintegral/msdk/shell/MTGActivity;->extra:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 42
    iput-boolean v0, p0, Lcom/mintegral/msdk/shell/MTGActivity;->mIsReport:Z

    .line 46
    iput-boolean v0, p0, Lcom/mintegral/msdk/shell/MTGActivity;->e:Z

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 462
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_78

    .line 463
    iget-object v0, p0, Lcom/mintegral/msdk/shell/MTGActivity;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 464
    iget-object v0, p0, Lcom/mintegral/msdk/shell/MTGActivity;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 466
    if-nez p1, :cond_18

    .line 467
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 471
    :cond_18
    if-eqz p1, :cond_78

    .line 473
    :try_start_1a
    const-string v0, "com.mintegral.msdk.appwall.g.a"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1a .. :try_end_1f} :catch_79

    .line 478
    new-instance v0, Lcom/mintegral/msdk/appwall/g/a;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/appwall/g/a;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/mintegral/msdk/shell/MTGActivity;->c:Lcom/mintegral/msdk/appwall/g/a;

    .line 479
    const-string v0, "wall_status_color"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 480
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "wall_status_color"

    .line 481
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 482
    iget-object v1, p0, Lcom/mintegral/msdk/shell/MTGActivity;->c:Lcom/mintegral/msdk/appwall/g/a;

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/appwall/g/a;->a(I)V

    .line 483
    iget-object v0, p0, Lcom/mintegral/msdk/shell/MTGActivity;->c:Lcom/mintegral/msdk/appwall/g/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/appwall/g/a;->a()V

    .line 485
    :cond_46
    const-string v0, "wall_navigation_color"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 486
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "wall_navigation_color"

    .line 487
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 488
    iget-object v1, p0, Lcom/mintegral/msdk/shell/MTGActivity;->c:Lcom/mintegral/msdk/appwall/g/a;

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/appwall/g/a;->b(I)V

    .line 489
    iget-object v0, p0, Lcom/mintegral/msdk/shell/MTGActivity;->c:Lcom/mintegral/msdk/appwall/g/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/appwall/g/a;->b()V

    .line 491
    :cond_66
    const-string v0, "wall_configchanges"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 492
    const-string v0, "wall_configchanges"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 493
    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/shell/MTGActivity;->setRequestedOrientation(I)V

    .line 499
    :cond_78
    :goto_78
    return-void

    .line 475
    :catch_79
    move-exception v0

    const-string v0, ""

    const-string v1, "SystemBarTintManager  can\'t find"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_78
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .prologue
    .line 504
    :try_start_0
    invoke-static {}, Lcom/mintegral/msdk/base/fragment/BaseFragment;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 505
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 506
    const/4 v0, 0x1

    .line 512
    :goto_f
    return v0

    .line 508
    :cond_10
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_15

    move-result v0

    goto :goto_f

    .line 510
    :catch_15
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 512
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public initWall(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/i;->a(Landroid/content/Context;)V

    .line 70
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "unit_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 72
    const-string v0, "wall"

    .line 73
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "type"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 74
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    :cond_29
    const/4 v1, 0x0

    .line 77
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "msg"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 78
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "msg"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    :cond_40
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/mintegral/msdk/shell/MTGActivity;->a:Ljava/util/Map;

    .line 82
    iget-object v3, p0, Lcom/mintegral/msdk/shell/MTGActivity;->a:Ljava/util/Map;

    const-string v4, "type"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/mintegral/msdk/shell/MTGActivity;->a:Ljava/util/Map;

    const-string v3, "msg"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/mintegral/msdk/shell/MTGActivity;->a:Ljava/util/Map;

    const-string v1, "unit_id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :try_start_5c
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mintegral/msdk/shell/MTGActivity;->g:Landroid/widget/FrameLayout;

    .line 94
    iget-object v0, p0, Lcom/mintegral/msdk/shell/MTGActivity;->g:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    iget-object v0, p0, Lcom/mintegral/msdk/shell/MTGActivity;->g:Landroid/widget/FrameLayout;

    const v1, 0x102000c

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 98
    iget-object v0, p0, Lcom/mintegral/msdk/shell/MTGActivity;->g:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/shell/MTGActivity;->setContentView(Landroid/view/View;)V

    .line 99
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/shell/MTGActivity;->a(Landroid/content/Intent;)V

    .line 100
    invoke-static {}, Lcom/mintegral/msdk/out/MIntegralSDKFactory;->getMIntegralSDK()Lcom/mintegral/msdk/system/a;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/shell/MTGActivity;->d:Lcom/mintegral/msdk/system/a;

    .line 101
    iget-object v0, p0, Lcom/mintegral/msdk/shell/MTGActivity;->d:Lcom/mintegral/msdk/system/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/system/a;->getStatus()Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;

    move-result-object v0

    sget-object v1, Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;->COMPLETED:Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;

    if-eq v0, v1, :cond_a1

    .line 102
    invoke-static {}, Lcom/mintegral/msdk/out/MIntegralSDKFactory;->getMIntegralSDK()Lcom/mintegral/msdk/system/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/system/a;->a(Landroid/app/Application;)V

    .line 103
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->finish()V

    .line 105
    :cond_a1
    iget-object v0, p0, Lcom/mintegral/msdk/shell/MTGActivity;->a:Ljava/util/Map;

    invoke-static {v0}, Lcom/mintegral/msdk/appwall/service/WallService;->getFragment(Ljava/util/Map;)Lcom/mintegral/msdk/base/fragment/BaseFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/shell/MTGActivity;->b:Lcom/mintegral/msdk/base/fragment/BaseFragment;

    .line 107
    iget-object v0, p0, Lcom/mintegral/msdk/shell/MTGActivity;->b:Lcom/mintegral/msdk/base/fragment/BaseFragment;

    if-nez v0, :cond_b0

    .line 108
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->finish()V

    .line 110
    :cond_b0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 111
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "wall_title_background"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 112
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "wall_title_background"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 113
    const-string v2, "wall_title_background"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 115
    :cond_d2
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "wall_title_logo"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ef

    .line 116
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "wall_title_logo"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 117
    const-string v2, "wall_title_logo"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 119
    :cond_ef
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "wall_title_logo_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 120
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "wall_title_logo_id"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 121
    if-lez v0, :cond_10d

    .line 122
    const-string v2, "wall_title_logo_id"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 125
    :cond_10d
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "wall_title_background_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12b

    .line 126
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "wall_title_background_id"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 127
    if-lez v0, :cond_12b

    .line 128
    const-string v2, "wall_title_background_id"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 131
    :cond_12b
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "wall_main_background_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_149

    .line 132
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "wall_main_background_id"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 133
    if-lez v0, :cond_149

    .line 134
    const-string v2, "wall_main_background_id"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 137
    :cond_149
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "wall_tab_background_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_167

    .line 138
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "wall_tab_background_id"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 139
    if-lez v0, :cond_167

    .line 140
    const-string v2, "wall_tab_background_id"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 143
    :cond_167
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "wall_tab_line_background_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_185

    .line 144
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "wall_tab_line_background_id"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 145
    if-lez v0, :cond_185

    .line 146
    const-string v2, "wall_tab_line_background_id"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 149
    :cond_185
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "wall_button_background_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a3

    .line 150
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "wall_button_background_id"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 151
    if-lez v0, :cond_1a3

    .line 152
    const-string v2, "wall_button_background_id"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 155
    :cond_1a3
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "wall_load_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c1

    .line 156
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "wall_load_id"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 157
    if-lez v0, :cond_1c1

    .line 158
    const-string v2, "wall_load_id"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 161
    :cond_1c1
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "wall_title_background_color"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1df

    .line 162
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "wall_title_background_color"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 163
    if-lez v0, :cond_1df

    .line 164
    const-string v2, "wall_title_background_color"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 167
    :cond_1df
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "wall_facebook_placement_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_200

    .line 168
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "wall_facebook_placement_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_200

    .line 170
    const-string v2, "wall_facebook_placement_id"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_200
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "wall_tab_selected_text_color"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_221

    .line 175
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "wall_tab_selected_text_color"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_221

    .line 177
    const-string v2, "wall_tab_selected_text_color"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_221
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "wall_tab_unselected_text_color"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_242

    .line 181
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "wall_tab_unselected_text_color"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_242

    .line 183
    const-string v2, "wall_tab_unselected_text_color"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_242
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "wall_title_logo_text"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_263

    .line 188
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "wall_title_logo_text"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_263

    .line 190
    const-string v2, "wall_title_logo_text"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 194
    :cond_263
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "wall_title_logo_text_color"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_281

    .line 195
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "wall_title_logo_text_color"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 196
    if-lez v0, :cond_281

    .line 197
    const-string v2, "wall_title_logo_text_color"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 201
    :cond_281
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "wall_title_logo_text_size"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29f

    .line 202
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "wall_title_logo_text_size"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 203
    if-lez v0, :cond_29f

    .line 204
    const-string v2, "wall_title_logo_text_size"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 209
    :cond_29f
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "wall_title_logo_text_typeface"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2bd

    .line 210
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "wall_title_logo_text_typeface"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 211
    if-lez v0, :cond_2bd

    .line 212
    const-string v2, "wall_title_logo_text_typeface"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 216
    :cond_2bd
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "cancel_admob_audo_download_image"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d9

    .line 217
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "cancel_admob_audo_download_image"

    const/4 v3, 0x0

    .line 218
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 219
    const-string v2, "cancel_admob_audo_download_image"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 223
    :cond_2d9
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "wall_current_tab_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f7

    .line 224
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "wall_current_tab_id"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 225
    if-lez v0, :cond_2f7

    .line 226
    const-string v2, "wall_current_tab_id"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 230
    :cond_2f7
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "wall_tab_shape_color"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_315

    .line 231
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "wall_tab_shape_color"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 232
    if-ltz v0, :cond_315

    .line 233
    const-string v2, "wall_tab_shape_color"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 237
    :cond_315
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "wall_tab_shape_height"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_333

    .line 238
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "wall_tab_shape_height"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 239
    if-ltz v0, :cond_333

    .line 240
    const-string v2, "wall_tab_shape_height"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 245
    :cond_333
    iget-object v0, p0, Lcom/mintegral/msdk/shell/MTGActivity;->b:Lcom/mintegral/msdk/base/fragment/BaseFragment;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/fragment/BaseFragment;->setArguments(Landroid/os/Bundle;)V

    .line 247
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 249
    const v1, 0x102000c

    iget-object v2, p0, Lcom/mintegral/msdk/shell/MTGActivity;->b:Lcom/mintegral/msdk/base/fragment/BaseFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 250
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_34b
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_34b} :catch_34c

    .line 255
    :goto_34b
    return-void

    .line 251
    :catch_34c
    move-exception v0

    .line 252
    const-string v1, "MTGActivity"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_34b
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    sget-boolean v0, Lcom/mintegral/msdk/MIntegralConstans;->APPWALL_IS_SHOW_WHEN_SCREEN_LOCK:Z

    if-eqz v0, :cond_10

    .line 54
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x480000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 57
    :cond_10
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/shell/MTGActivity;->requestWindowFeature(I)Z

    .line 59
    :try_start_14
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "unit_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/shell/MTGActivity;->h:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/mintegral/msdk/shell/MTGActivity;->h:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/mintegral/msdk/shell/MTGActivity;->initWall(Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_25
    .catch Landroid/support/v4/app/Fragment$InstantiationException; {:try_start_14 .. :try_end_25} :catch_26

    .line 64
    :goto_25
    return-void

    .line 62
    :catch_26
    move-exception v0

    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->finish()V

    goto :goto_25
.end method

.method protected onDestroy()V
    .registers 5

    .prologue
    .line 519
    :try_start_0
    invoke-static {p0}, Lcom/mintegral/msdk/base/common/c/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/common/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/common/c/b;->c()V

    .line 520
    iget-object v0, p0, Lcom/mintegral/msdk/shell/MTGActivity;->h:Ljava/lang/String;

    .line 1532
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1533
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_close"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1534
    invoke-virtual {p0, v1}, Lcom/mintegral/msdk/shell/MTGActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3d

    .line 525
    :goto_39
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 526
    return-void

    .line 522
    :catch_3d
    move-exception v0

    const-string v0, "M_SDK"

    const-string v1, "AppWall imageCache clear fail"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 4

    .prologue
    .line 443
    if-nez p1, :cond_3

    .line 453
    :cond_2
    :goto_2
    return-void

    .line 446
    :cond_3
    const-string v0, "unit_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 447
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mintegral/msdk/shell/MTGActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 448
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mintegral/msdk/shell/MTGActivity;->e:Z

    .line 449
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mintegral/msdk/shell/MTGActivity;->mIsReport:Z

    .line 450
    iput-object p1, p0, Lcom/mintegral/msdk/shell/MTGActivity;->f:Landroid/content/Intent;

    .line 451
    iput-object v0, p0, Lcom/mintegral/msdk/shell/MTGActivity;->h:Ljava/lang/String;

    goto :goto_2
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 259
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 261
    return-void
.end method

.method protected onResumeFragments()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 265
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResumeFragments()V

    .line 266
    iget-boolean v0, p0, Lcom/mintegral/msdk/shell/MTGActivity;->e:Z

    if-eqz v0, :cond_95

    .line 267
    iget-object v2, p0, Lcom/mintegral/msdk/shell/MTGActivity;->f:Landroid/content/Intent;

    .line 1276
    const-string v0, "wall"

    .line 1277
    if-eqz v2, :cond_93

    .line 1280
    const-string v1, "type"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1281
    const-string v0, "type"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1283
    :cond_1c
    const/4 v1, 0x0

    .line 1284
    const-string v3, "msg"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 1285
    const-string v1, "msg"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1288
    :cond_2b
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/mintegral/msdk/shell/MTGActivity;->a:Ljava/util/Map;

    .line 1289
    iget-object v3, p0, Lcom/mintegral/msdk/shell/MTGActivity;->a:Ljava/util/Map;

    const-string v4, "type"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    iget-object v0, p0, Lcom/mintegral/msdk/shell/MTGActivity;->a:Ljava/util/Map;

    const-string v3, "msg"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1291
    iget-object v0, p0, Lcom/mintegral/msdk/shell/MTGActivity;->a:Ljava/util/Map;

    const-string v1, "unit_id"

    iget-object v3, p0, Lcom/mintegral/msdk/shell/MTGActivity;->h:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1300
    :try_start_49
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mintegral/msdk/shell/MTGActivity;->g:Landroid/widget/FrameLayout;

    .line 1301
    iget-object v0, p0, Lcom/mintegral/msdk/shell/MTGActivity;->g:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1303
    iget-object v0, p0, Lcom/mintegral/msdk/shell/MTGActivity;->g:Landroid/widget/FrameLayout;

    const v1, 0x102000c

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 1305
    iget-object v0, p0, Lcom/mintegral/msdk/shell/MTGActivity;->f:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/shell/MTGActivity;->a(Landroid/content/Intent;)V

    .line 1306
    invoke-static {}, Lcom/mintegral/msdk/out/MIntegralSDKFactory;->getMIntegralSDK()Lcom/mintegral/msdk/system/a;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/shell/MTGActivity;->d:Lcom/mintegral/msdk/system/a;

    .line 1307
    iget-object v0, p0, Lcom/mintegral/msdk/shell/MTGActivity;->d:Lcom/mintegral/msdk/system/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/system/a;->getStatus()Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;

    move-result-object v0

    sget-object v1, Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;->COMPLETED:Lcom/mintegral/msdk/MIntegralSDK$PLUGIN_LOAD_STATUS;

    if-eq v0, v1, :cond_87

    .line 1308
    invoke-static {}, Lcom/mintegral/msdk/out/MIntegralSDKFactory;->getMIntegralSDK()Lcom/mintegral/msdk/system/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/system/a;->a(Landroid/app/Application;)V

    .line 1309
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->finish()V

    .line 1312
    :cond_87
    iget-object v0, p0, Lcom/mintegral/msdk/shell/MTGActivity;->a:Ljava/util/Map;

    invoke-static {v0}, Lcom/mintegral/msdk/appwall/service/WallService;->getFragment(Ljava/util/Map;)Lcom/mintegral/msdk/base/fragment/BaseFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/shell/MTGActivity;->b:Lcom/mintegral/msdk/base/fragment/BaseFragment;

    .line 1314
    iget-object v0, p0, Lcom/mintegral/msdk/shell/MTGActivity;->b:Lcom/mintegral/msdk/base/fragment/BaseFragment;
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_91} :catch_235

    if-nez v0, :cond_96

    .line 268
    :cond_93
    :goto_93
    iput-boolean v5, p0, Lcom/mintegral/msdk/shell/MTGActivity;->e:Z

    .line 270
    :cond_95
    return-void

    .line 1317
    :cond_96
    :try_start_96
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1318
    const-string v0, "wall_title_background"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 1319
    const-string v0, "wall_title_background"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 1320
    const-string v3, "wall_title_background"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1322
    :cond_b0
    const-string v0, "wall_title_logo"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 1323
    const-string v0, "wall_title_logo"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 1324
    const-string v3, "wall_title_logo"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1326
    :cond_c5
    const-string v0, "wall_title_logo_id"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_db

    .line 1327
    const-string v0, "wall_title_logo_id"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1328
    if-lez v0, :cond_db

    .line 1329
    const-string v3, "wall_title_logo_id"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1332
    :cond_db
    const-string v0, "wall_title_background_id"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 1333
    const-string v0, "wall_title_background_id"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1334
    if-lez v0, :cond_f1

    .line 1335
    const-string v3, "wall_title_background_id"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1338
    :cond_f1
    const-string v0, "wall_main_background_id"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_107

    .line 1339
    const-string v0, "wall_main_background_id"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1340
    if-lez v0, :cond_107

    .line 1341
    const-string v3, "wall_main_background_id"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1344
    :cond_107
    const-string v0, "wall_tab_background_id"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11d

    .line 1345
    const-string v0, "wall_tab_background_id"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1346
    if-lez v0, :cond_11d

    .line 1347
    const-string v3, "wall_tab_background_id"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1350
    :cond_11d
    const-string v0, "wall_tab_line_background_id"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_133

    .line 1351
    const-string v0, "wall_tab_line_background_id"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1352
    if-lez v0, :cond_133

    .line 1353
    const-string v3, "wall_tab_line_background_id"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1356
    :cond_133
    const-string v0, "wall_button_background_id"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_149

    .line 1357
    const-string v0, "wall_button_background_id"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1358
    if-lez v0, :cond_149

    .line 1359
    const-string v3, "wall_button_background_id"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1362
    :cond_149
    const-string v0, "wall_load_id"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15f

    .line 1363
    const-string v0, "wall_load_id"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1364
    if-lez v0, :cond_15f

    .line 1365
    const-string v3, "wall_load_id"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1368
    :cond_15f
    const-string v0, "wall_title_background_color"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_175

    .line 1369
    const-string v0, "wall_title_background_color"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1370
    if-lez v0, :cond_175

    .line 1371
    const-string v3, "wall_title_background_color"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1376
    :cond_175
    const-string v0, "wall_title_logo_text"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18e

    .line 1377
    const-string v0, "wall_title_logo_text"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1378
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_18e

    .line 1379
    const-string v3, "wall_title_logo_text"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1383
    :cond_18e
    const-string v0, "wall_title_logo_text_color"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a4

    .line 1384
    const-string v0, "wall_title_logo_text_color"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1385
    if-lez v0, :cond_1a4

    .line 1386
    const-string v3, "wall_title_logo_text_color"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1390
    :cond_1a4
    const-string v0, "wall_title_logo_text_size"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ba

    .line 1391
    const-string v0, "wall_title_logo_text_size"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1392
    if-lez v0, :cond_1ba

    .line 1393
    const-string v3, "wall_title_logo_text_size"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1398
    :cond_1ba
    const-string v0, "wall_title_logo_text_typeface"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d0

    .line 1399
    const-string v0, "wall_title_logo_text_typeface"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1400
    if-lez v0, :cond_1d0

    .line 1401
    const-string v3, "wall_title_logo_text_typeface"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1406
    :cond_1d0
    const-string v0, "wall_current_tab_id"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e6

    .line 1407
    const-string v0, "wall_current_tab_id"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1408
    if-lez v0, :cond_1e6

    .line 1409
    const-string v3, "wall_current_tab_id"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1413
    :cond_1e6
    const-string v0, "wall_tab_shape_color"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1fc

    .line 1414
    const-string v0, "wall_tab_shape_color"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1415
    if-ltz v0, :cond_1fc

    .line 1416
    const-string v2, "wall_tab_shape_color"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1420
    :cond_1fc
    iget-object v0, p0, Lcom/mintegral/msdk/shell/MTGActivity;->a:Ljava/util/Map;

    const-string v2, "wall_tab_shape_height"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21b

    .line 1421
    iget-object v0, p0, Lcom/mintegral/msdk/shell/MTGActivity;->a:Ljava/util/Map;

    const-string v2, "wall_tab_shape_height"

    .line 1422
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1421
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1423
    if-ltz v0, :cond_21b

    .line 1424
    const-string v2, "wall_tab_shape_height"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1430
    :cond_21b
    iget-object v0, p0, Lcom/mintegral/msdk/shell/MTGActivity;->b:Lcom/mintegral/msdk/base/fragment/BaseFragment;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/fragment/BaseFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1432
    invoke-virtual {p0}, Lcom/mintegral/msdk/shell/MTGActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 1433
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 1434
    const v1, 0x102000c

    iget-object v2, p0, Lcom/mintegral/msdk/shell/MTGActivity;->b:Lcom/mintegral/msdk/base/fragment/BaseFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1435
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_233
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_233} :catch_235

    goto/16 :goto_93

    .line 1437
    :catch_235
    move-exception v0

    .line 1438
    const-string v1, "MTGActivity"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_93
.end method
