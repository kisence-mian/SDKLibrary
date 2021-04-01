.class public Lcom/mintegral/msdk/playercommon/PlayerView;
.super Landroid/widget/LinearLayout;
.source "PlayerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/playercommon/PlayerView$a;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PlayerView"


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/LinearLayout;

.field private c:Lcom/mintegral/msdk/playercommon/b;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 35
    iput-boolean v1, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->e:Z

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->f:Z

    .line 38
    iput-boolean v1, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->g:Z

    .line 39
    iput-boolean v1, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->h:Z

    .line 40
    iput-boolean v1, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->i:Z

    .line 46
    invoke-direct {p0}, Lcom/mintegral/msdk/playercommon/PlayerView;->a()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput-boolean v1, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->e:Z

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->f:Z

    .line 38
    iput-boolean v1, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->g:Z

    .line 39
    iput-boolean v1, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->h:Z

    .line 40
    iput-boolean v1, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->i:Z

    .line 51
    invoke-direct {p0}, Lcom/mintegral/msdk/playercommon/PlayerView;->a()V

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/playercommon/PlayerView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .registers 2

    .prologue
    .line 24
    iput-object p1, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->j:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic a(Lcom/mintegral/msdk/playercommon/PlayerView;)Lcom/mintegral/msdk/playercommon/b;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->c:Lcom/mintegral/msdk/playercommon/b;

    return-object v0
.end method

.method private a()V
    .registers 5

    .prologue
    .line 58
    .line 1103
    :try_start_0
    invoke-virtual {p0}, Lcom/mintegral/msdk/playercommon/PlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mintegral_playercommon_player_view"

    const-string v2, "layout"

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1104
    invoke-virtual {p0}, Lcom/mintegral/msdk/playercommon/PlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1105
    if-eqz v1, :cond_4b

    .line 1106
    invoke-virtual {p0}, Lcom/mintegral/msdk/playercommon/PlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mintegral_playercommon_ll_sur_container"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->a:Landroid/widget/LinearLayout;

    .line 1107
    invoke-virtual {p0}, Lcom/mintegral/msdk/playercommon/PlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mintegral_playercommon_ll_loading"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->b:Landroid/widget/LinearLayout;

    .line 1109
    invoke-virtual {p0}, Lcom/mintegral/msdk/playercommon/PlayerView;->addSurfaceView()V

    .line 1110
    const/4 v0, -0x1

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/mintegral/msdk/playercommon/PlayerView;->addView(Landroid/view/View;II)V

    .line 2067
    :cond_4b
    new-instance v0, Lcom/mintegral/msdk/playercommon/b;

    invoke-direct {v0}, Lcom/mintegral/msdk/playercommon/b;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->c:Lcom/mintegral/msdk/playercommon/b;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_52} :catch_53

    .line 64
    :goto_52
    return-void

    .line 62
    :catch_53
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_52
.end method

.method static synthetic a(Lcom/mintegral/msdk/playercommon/PlayerView;Z)Z
    .registers 2

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/mintegral/msdk/playercommon/PlayerView;)Z
    .registers 2

    .prologue
    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->f:Z

    return v0
.end method

.method static synthetic c(Lcom/mintegral/msdk/playercommon/PlayerView;)Z
    .registers 2

    .prologue
    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->i:Z

    return v0
.end method

.method static synthetic d(Lcom/mintegral/msdk/playercommon/PlayerView;)Z
    .registers 2

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->g:Z

    return v0
.end method

.method static synthetic e(Lcom/mintegral/msdk/playercommon/PlayerView;)Z
    .registers 2

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->h:Z

    return v0
.end method

.method public static isCompletePlay()V
    .registers 0

    .prologue
    .line 468
    return-void
.end method


# virtual methods
.method public addSurfaceView()V
    .registers 5

    .prologue
    .line 76
    :try_start_0
    const-string v0, "PlayerView"

    const-string v1, "addSurfaceView"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v0, Landroid/view/SurfaceView;

    invoke-virtual {p0}, Lcom/mintegral/msdk/playercommon/PlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 78
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->j:Landroid/view/SurfaceHolder;

    .line 79
    iget-object v1, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->j:Landroid/view/SurfaceHolder;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 80
    iget-object v1, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->j:Landroid/view/SurfaceHolder;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 81
    iget-object v1, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->j:Landroid/view/SurfaceHolder;

    new-instance v2, Lcom/mintegral/msdk/playercommon/PlayerView$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/mintegral/msdk/playercommon/PlayerView$a;-><init>(Lcom/mintegral/msdk/playercommon/PlayerView;B)V

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 82
    iget-object v1, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->a:Landroid/widget/LinearLayout;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35

    .line 86
    :goto_34
    return-void

    .line 84
    :catch_35
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_34
.end method

.method public closeSound()V
    .registers 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->c:Lcom/mintegral/msdk/playercommon/b;

    if-eqz v0, :cond_9

    .line 273
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->c:Lcom/mintegral/msdk/playercommon/b;

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/b;->g()V

    .line 275
    :cond_9
    return-void
.end method

.method public coverUnlockResume()V
    .registers 3

    .prologue
    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->c:Lcom/mintegral/msdk/playercommon/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/playercommon/b;->a(Z)V

    .line 301
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->c:Lcom/mintegral/msdk/playercommon/b;

    if-eqz v0, :cond_21

    .line 302
    const-string v0, "PlayerView"

    const-string v1, "coverUnlockResume========"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->c:Lcom/mintegral/msdk/playercommon/b;

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/b;->k()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->i:Z

    if-eqz v0, :cond_22

    .line 304
    :cond_1d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/playercommon/PlayerView;->playVideo(I)V

    .line 315
    :cond_21
    :goto_21
    return-void

    .line 306
    :cond_22
    invoke-virtual {p0}, Lcom/mintegral/msdk/playercommon/PlayerView;->start()V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_25} :catch_26

    goto :goto_21

    .line 309
    :catch_26
    move-exception v0

    .line 310
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_21

    .line 311
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_21
.end method

.method public getCurPosition()I
    .registers 3

    .prologue
    .line 346
    const/4 v0, 0x0

    .line 348
    :try_start_1
    iget-object v1, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->c:Lcom/mintegral/msdk/playercommon/b;

    if-eqz v1, :cond_b

    .line 349
    iget-object v1, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->c:Lcom/mintegral/msdk/playercommon/b;

    invoke-virtual {v1}, Lcom/mintegral/msdk/playercommon/b;->i()I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_c

    move-result v0

    .line 354
    :cond_b
    :goto_b
    return v0

    .line 352
    :catch_c
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public getDuration()I
    .registers 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->c:Lcom/mintegral/msdk/playercommon/b;

    if-eqz v0, :cond_b

    .line 359
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->c:Lcom/mintegral/msdk/playercommon/b;

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/b;->n()I

    move-result v0

    .line 361
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public initBufferIngParam(I)V
    .registers 3

    .prologue
    .line 433
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->c:Lcom/mintegral/msdk/playercommon/b;

    if-eqz v0, :cond_9

    .line 434
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->c:Lcom/mintegral/msdk/playercommon/b;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/playercommon/b;->a(I)V

    .line 436
    :cond_9
    return-void
.end method

.method public initVFPData(Ljava/lang/String;Ljava/lang/String;Lcom/mintegral/msdk/playercommon/c;)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 123
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 124
    const-string v0, "PlayerView"

    const-string v1, "playUrl==null"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const/4 v0, 0x0

    .line 133
    :goto_f
    return v0

    .line 128
    :cond_10
    iput-object p1, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->d:Ljava/lang/String;

    .line 130
    iget-object v1, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->c:Lcom/mintegral/msdk/playercommon/b;

    iget-object v2, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p2, v2, p3}, Lcom/mintegral/msdk/playercommon/b;->a(Ljava/lang/String;Landroid/view/View;Lcom/mintegral/msdk/playercommon/c;)Z

    .line 132
    iput-boolean v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->e:Z

    goto :goto_f
.end method

.method public isComplete()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 421
    :try_start_1
    iget-object v1, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->c:Lcom/mintegral/msdk/playercommon/b;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->c:Lcom/mintegral/msdk/playercommon/b;

    invoke-virtual {v1}, Lcom/mintegral/msdk/playercommon/b;->l()Z
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_a} :catch_f

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    .line 425
    :cond_e
    :goto_e
    return v0

    .line 422
    :catch_f
    move-exception v1

    .line 423
    const-string v2, "PlayerView"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e
.end method

.method public isPlayIng()Z
    .registers 3

    .prologue
    .line 440
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->c:Lcom/mintegral/msdk/playercommon/b;

    if-eqz v0, :cond_13

    .line 441
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->c:Lcom/mintegral/msdk/playercommon/b;

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/b;->j()Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_b

    move-result v0

    .line 448
    :goto_a
    return v0

    .line 443
    :catch_b
    move-exception v0

    .line 444
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_13

    .line 445
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 448
    :cond_13
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isSilent()Z
    .registers 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->c:Lcom/mintegral/msdk/playercommon/b;

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/b;->m()Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 163
    :try_start_0
    invoke-virtual {p0}, Lcom/mintegral/msdk/playercommon/PlayerView;->pause()V

    .line 164
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->c:Lcom/mintegral/msdk/playercommon/b;

    if-eqz v0, :cond_d

    .line 165
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->c:Lcom/mintegral/msdk/playercommon/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/playercommon/b;->a(Z)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 170
    :cond_d
    :goto_d
    return-void

    .line 168
    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->c:Lcom/mintegral/msdk/playercommon/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/playercommon/b;->a(Z)V

    .line 284
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->c:Lcom/mintegral/msdk/playercommon/b;

    if-eqz v0, :cond_2a

    iget-boolean v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->f:Z

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->g:Z

    if-nez v0, :cond_2a

    invoke-virtual {p0}, Lcom/mintegral/msdk/playercommon/PlayerView;->isComplete()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 285
    const-string v0, "PlayerView"

    const-string v1, "onresume========"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->c:Lcom/mintegral/msdk/playercommon/b;

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/b;->k()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 287
    invoke-virtual {p0}, Lcom/mintegral/msdk/playercommon/PlayerView;->resumeStar()V

    .line 295
    :cond_2a
    :goto_2a
    return-void

    .line 289
    :cond_2b
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/playercommon/PlayerView;->playVideo(I)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_30

    goto :goto_2a

    .line 293
    :catch_30
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2a
.end method

.method public openSound()V
    .registers 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->c:Lcom/mintegral/msdk/playercommon/b;

    if-eqz v0, :cond_9

    .line 264
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->c:Lcom/mintegral/msdk/playercommon/b;

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/b;->h()V

    .line 266
    :cond_9
    return-void
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->c:Lcom/mintegral/msdk/playercommon/b;

    if-eqz v0, :cond_9

    .line 178
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->c:Lcom/mintegral/msdk/playercommon/b;

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/b;->b()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 183
    :cond_9
    :goto_9
    return-void

    .line 181
    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method public playVideo()V
    .registers 2

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/playercommon/PlayerView;->playVideo(I)V

    .line 159
    return-void
.end method

.method public playVideo(I)V
    .registers 5

    .prologue
    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->c:Lcom/mintegral/msdk/playercommon/b;

    if-nez v0, :cond_c

    .line 142
    const-string v0, "PlayerView"

    const-string v1, "player init error \u64ad\u653e\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :goto_b
    return-void

    .line 145
    :cond_c
    iget-boolean v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->e:Z

    if-nez v0, :cond_23

    .line 146
    const-string v0, "PlayerView"

    const-string v1, "vfp init failed \u64ad\u653e\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_b

    .line 152
    :catch_18
    move-exception v0

    .line 153
    const-string v1, "PlayerView"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    .line 150
    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->c:Lcom/mintegral/msdk/playercommon/b;

    iget-object v1, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/mintegral/msdk/playercommon/b;->a(Ljava/lang/String;I)V

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->i:Z
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_2d} :catch_18

    goto :goto_b
.end method

.method public release()V
    .registers 3

    .prologue
    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->c:Lcom/mintegral/msdk/playercommon/b;

    if-eqz v0, :cond_9

    .line 323
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->c:Lcom/mintegral/msdk/playercommon/b;

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/b;->f()V

    .line 327
    :cond_9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_23

    .line 328
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->j:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_23

    .line 329
    const-string v0, "PlayerView"

    const-string v1, "mSurfaceHolder release"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->j:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_23} :catch_24

    .line 337
    :cond_23
    :goto_23
    return-void

    .line 335
    :catch_24
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_23
.end method

.method public removeSurface()V
    .registers 3

    .prologue
    .line 93
    :try_start_0
    const-string v0, "PlayerView"

    const-string v1, "removeSurface"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 99
    :goto_c
    return-void

    .line 96
    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method

.method public resumeStar()V
    .registers 3

    .prologue
    .line 187
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_a

    .line 189
    invoke-virtual {p0}, Lcom/mintegral/msdk/playercommon/PlayerView;->setDataSource()V

    .line 197
    :goto_9
    return-void

    .line 191
    :cond_a
    invoke-virtual {p0}, Lcom/mintegral/msdk/playercommon/PlayerView;->start()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_9

    .line 195
    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method public seekTo(I)V
    .registers 3

    .prologue
    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->c:Lcom/mintegral/msdk/playercommon/b;

    if-eqz v0, :cond_9

    .line 242
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->c:Lcom/mintegral/msdk/playercommon/b;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/playercommon/b;->c(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 247
    :cond_9
    :goto_9
    return-void

    .line 245
    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method public setDataSource()V
    .registers 2

    .prologue
    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->c:Lcom/mintegral/msdk/playercommon/b;

    if-eqz v0, :cond_11

    .line 202
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->c:Lcom/mintegral/msdk/playercommon/b;

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/b;->a()V

    .line 203
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->c:Lcom/mintegral/msdk/playercommon/b;

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/b;->e()V

    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->i:Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 209
    :cond_11
    :goto_11
    return-void

    .line 207
    :catch_12
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method public setIsCovered(Z)V
    .registers 5

    .prologue
    .line 453
    :try_start_0
    iput-boolean p1, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->h:Z

    .line 454
    const-string v0, "PlayerView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mIsCovered:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 458
    :goto_16
    return-void

    .line 456
    :catch_17
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16
.end method

.method public start()V
    .registers 2

    .prologue
    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->c:Lcom/mintegral/msdk/playercommon/b;

    if-eqz v0, :cond_9

    .line 218
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->c:Lcom/mintegral/msdk/playercommon/b;

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/b;->d()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 223
    :cond_9
    :goto_9
    return-void

    .line 221
    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method public start(I)V
    .registers 3

    .prologue
    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->c:Lcom/mintegral/msdk/playercommon/b;

    if-eqz v0, :cond_9

    .line 232
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->c:Lcom/mintegral/msdk/playercommon/b;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/playercommon/b;->b(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 237
    :cond_9
    :goto_9
    return-void

    .line 235
    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->c:Lcom/mintegral/msdk/playercommon/b;

    if-eqz v0, :cond_9

    .line 252
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView;->c:Lcom/mintegral/msdk/playercommon/b;

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/b;->c()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 257
    :cond_9
    :goto_9
    return-void

    .line 255
    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method
