.class public Lcom/mintegral/msdk/video/module/MintegralVideoView;
.super Lcom/mintegral/msdk/video/module/MintegralBaseView;
.source "MintegralVideoView.java"

# interfaces
.implements Lcom/mintegral/msdk/video/js/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/video/module/MintegralVideoView$a;,
        Lcom/mintegral/msdk/video/module/MintegralVideoView$b;
    }
.end annotation


# static fields
.field private static M:Z

.field private static i:I

.field private static j:I

.field private static k:I

.field private static l:I

.field private static m:I


# instance fields
.field private A:D

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:I

.field private L:Z

.field private N:I

.field private O:Lcom/iab/omid/library/mintegral/adsession/AdSession;

.field private P:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

.field private Q:Ljava/lang/String;

.field private R:Lcom/mintegral/msdk/video/module/MintegralVideoView$b;

.field private S:Z

.field private n:Lcom/mintegral/msdk/playercommon/PlayerView;

.field private o:Lcom/mintegral/msdk/video/widget/SoundImageView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/view/View;

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:I

.field private u:I

.field private v:I

.field private w:Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;

.field private x:Lcom/mintegral/msdk/videocommon/dialog/a;

.field private y:Ljava/lang/String;

.field private z:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 56
    sput v0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->i:I

    .line 57
    sput v0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->j:I

    .line 58
    sput v0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->k:I

    .line 59
    sput v0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->l:I

    .line 60
    sput v0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->m:I

    .line 144
    sput-boolean v0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->M:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 156
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/video/module/MintegralBaseView;-><init>(Landroid/content/Context;)V

    .line 76
    iput-boolean v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->r:Z

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->y:Ljava/lang/String;

    .line 104
    iput-boolean v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->B:Z

    .line 107
    iput-boolean v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->C:Z

    .line 110
    iput-boolean v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->D:Z

    .line 117
    iput-boolean v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->E:Z

    .line 120
    iput-boolean v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->F:Z

    .line 122
    iput-boolean v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->G:Z

    .line 124
    iput-boolean v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->H:Z

    .line 127
    iput-boolean v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->I:Z

    .line 137
    iput-boolean v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->J:Z

    .line 142
    iput-boolean v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->L:Z

    .line 146
    const/4 v0, 0x2

    iput v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->N:I

    .line 153
    new-instance v0, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;-><init>(Lcom/mintegral/msdk/video/module/MintegralVideoView;)V

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->R:Lcom/mintegral/msdk/video/module/MintegralVideoView$b;

    .line 776
    iput-boolean v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->S:Z

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 160
    invoke-direct {p0, p1, p2}, Lcom/mintegral/msdk/video/module/MintegralBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    iput-boolean v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->r:Z

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->y:Ljava/lang/String;

    .line 104
    iput-boolean v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->B:Z

    .line 107
    iput-boolean v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->C:Z

    .line 110
    iput-boolean v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->D:Z

    .line 117
    iput-boolean v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->E:Z

    .line 120
    iput-boolean v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->F:Z

    .line 122
    iput-boolean v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->G:Z

    .line 124
    iput-boolean v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->H:Z

    .line 127
    iput-boolean v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->I:Z

    .line 137
    iput-boolean v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->J:Z

    .line 142
    iput-boolean v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->L:Z

    .line 146
    const/4 v0, 0x2

    iput v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->N:I

    .line 153
    new-instance v0, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;-><init>(Lcom/mintegral/msdk/video/module/MintegralVideoView;)V

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->R:Lcom/mintegral/msdk/video/module/MintegralVideoView$b;

    .line 776
    iput-boolean v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->S:Z

    .line 161
    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/video/module/MintegralVideoView;)Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->P:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    return-object v0
.end method

.method private static a(II)Ljava/lang/String;
    .registers 5

    .prologue
    .line 607
    if-eqz p1, :cond_20

    .line 608
    int-to-float v0, p0

    int-to-float v1, p1

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 610
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/k;->a(Ljava/lang/Double;)D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_1a} :catch_1c

    move-result-object v0

    .line 615
    :goto_1b
    return-object v0

    .line 612
    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 615
    :cond_20
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b
.end method

.method static synthetic a(Z)Z
    .registers 1

    .prologue
    .line 42
    sput-boolean p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->M:Z

    return p0
.end method

.method static synthetic b(Lcom/mintegral/msdk/video/module/MintegralVideoView;)Lcom/mintegral/msdk/playercommon/PlayerView;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->n:Lcom/mintegral/msdk/playercommon/PlayerView;

    return-object v0
.end method

.method static synthetic c(Lcom/mintegral/msdk/video/module/MintegralVideoView;)V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->d()V

    return-void
.end method

.method private d()V
    .registers 4

    .prologue
    .line 234
    iget v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->t:I

    if-ltz v0, :cond_14

    iget v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->v:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->J:Z

    if-nez v0, :cond_14

    .line 235
    invoke-direct {p0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->f()V

    .line 236
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->showAlertView()V

    .line 242
    :goto_13
    return-void

    .line 240
    :cond_14
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->e:Lcom/mintegral/msdk/video/module/a/a;

    const/4 v1, 0x2

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    goto :goto_13
.end method

.method static synthetic d(Lcom/mintegral/msdk/video/module/MintegralVideoView;)Z
    .registers 2

    .prologue
    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->r:Z

    return v0
.end method

.method private e()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 655
    :try_start_1
    const-string v0, "mintegral_vfpv"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/playercommon/PlayerView;

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->n:Lcom/mintegral/msdk/playercommon/PlayerView;

    .line 656
    const-string v0, "mintegral_sound_switch"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/video/widget/SoundImageView;

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->o:Lcom/mintegral/msdk/video/widget/SoundImageView;

    .line 657
    const-string v0, "mintegral_tv_sound"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->p:Landroid/widget/TextView;

    .line 658
    const-string v0, "mintegral_rl_playing_close"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->q:Landroid/view/View;

    .line 659
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->n:Lcom/mintegral/msdk/playercommon/PlayerView;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->o:Lcom/mintegral/msdk/video/widget/SoundImageView;

    aput-object v3, v0, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->p:Landroid/widget/TextView;

    aput-object v3, v0, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->q:Landroid/view/View;

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->isNotNULL([Landroid/view/View;)Z
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_51} :catch_53

    move-result v0

    .line 663
    :goto_52
    return v0

    .line 660
    :catch_53
    move-exception v0

    .line 661
    const-string v2, "MintegralBaseView"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 663
    goto :goto_52
.end method

.method static synthetic e(Lcom/mintegral/msdk/video/module/MintegralVideoView;)Z
    .registers 2

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->r:Z

    return v0
.end method

.method private f()V
    .registers 4

    .prologue
    .line 709
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->n:Lcom/mintegral/msdk/playercommon/PlayerView;

    if-eqz v0, :cond_19

    .line 710
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->n:Lcom/mintegral/msdk/playercommon/PlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/PlayerView;->onPause()V

    .line 711
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->P:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    if-eqz v0, :cond_19

    .line 712
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->P:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->pause()V

    .line 713
    const-string v0, "omsdk"

    const-string v1, "play:  videoEvents.pause()"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_19} :catch_1a

    .line 719
    :cond_19
    :goto_19
    return-void

    .line 716
    :catch_1a
    move-exception v0

    .line 717
    const-string v1, "MintegralBaseView"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_19
.end method

.method static synthetic f(Lcom/mintegral/msdk/video/module/MintegralVideoView;)V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->g()V

    return-void
.end method

.method private g()V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 723
    :try_start_4
    iget-boolean v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->C:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_6} :catch_6f

    if-nez v1, :cond_7a

    .line 725
    :try_start_8
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->P:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    if-eqz v1, :cond_5b

    .line 727
    iget v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->N:I

    if-eq v1, v3, :cond_9b

    .line 728
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mintegral/msdk/a/b;->b(Landroid/content/Context;)F

    move-result v1

    .line 730
    :goto_16
    cmpl-float v3, v1, v0

    if-lez v3, :cond_1b

    move v1, v0

    .line 733
    :cond_1b
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->n:Lcom/mintegral/msdk/playercommon/PlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/PlayerView;->getDuration()I

    move-result v0

    int-to-float v0, v0

    .line 734
    cmpl-float v2, v0, v2

    if-nez v2, :cond_31

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v2, :cond_31

    .line 735
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoLength()I

    move-result v0

    int-to-float v0, v0

    .line 737
    :cond_31
    const-string v2, "omsdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "play: duration = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " volume = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->P:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    invoke-virtual {v2, v0, v1}, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->start(FF)V

    .line 739
    const-string v0, "omsdk"

    const-string v1, "play: videoEvents.start()"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_5b} :catch_64
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_5b} :catch_6f

    .line 744
    :cond_5b
    :goto_5b
    :try_start_5b
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->n:Lcom/mintegral/msdk/playercommon/PlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/PlayerView;->playVideo()V

    .line 745
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->C:Z

    .line 760
    :cond_63
    :goto_63
    return-void

    .line 741
    :catch_64
    move-exception v0

    .line 742
    const-string v1, "MintegralBaseView"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_6e} :catch_6f

    goto :goto_5b

    .line 757
    :catch_6f
    move-exception v0

    .line 758
    const-string v1, "MintegralBaseView"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_63

    .line 747
    :cond_7a
    :try_start_7a
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->n:Lcom/mintegral/msdk/playercommon/PlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/PlayerView;->onResume()V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7f} :catch_6f

    .line 749
    :try_start_7f
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->P:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    if-eqz v0, :cond_63

    .line 750
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->P:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->resume()V

    .line 751
    const-string v0, "omsdk"

    const-string v1, "play:  videoEvents.resume()"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7f .. :try_end_8f} :catch_90
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_8f} :catch_6f

    goto :goto_63

    .line 753
    :catch_90
    move-exception v0

    .line 754
    :try_start_91
    const-string v1, "MintegralBaseView"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_9a} :catch_6f

    goto :goto_63

    :cond_9b
    move v1, v2

    goto/16 :goto_16
.end method

.method static synthetic g(Lcom/mintegral/msdk/video/module/MintegralVideoView;)Z
    .registers 2

    .prologue
    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->I:Z

    return v0
.end method

.method static synthetic h(Lcom/mintegral/msdk/video/module/MintegralVideoView;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method private h()V
    .registers 14

    .prologue
    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    const/16 v12, 0xd

    const/4 v11, -0x1

    .line 797
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/k;->i(Landroid/content/Context;)I

    move-result v0

    int-to-float v1, v0

    .line 798
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/k;->h(Landroid/content/Context;)I

    move-result v0

    int-to-float v2, v0

    .line 799
    iget-wide v4, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->z:D

    cmpg-double v0, v4, v6

    if-lez v0, :cond_28

    iget-wide v4, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->A:D

    cmpg-double v0, v4, v6

    if-lez v0, :cond_28

    cmpg-float v0, v1, v3

    if-lez v0, :cond_28

    cmpg-float v0, v2, v3

    if-gtz v0, :cond_5b

    .line 4833
    :cond_28
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, -0x1

    :try_start_2c
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->setLayoutParam(IIII)V

    .line 4835
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_55

    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->f:Z

    if-eqz v0, :cond_55

    .line 4836
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->n:Lcom/mintegral/msdk/playercommon/PlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/PlayerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 4837
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/k;->i(Landroid/content/Context;)I

    move-result v1

    .line 4838
    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 4839
    mul-int/lit8 v1, v1, 0x9

    div-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 4840
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_55} :catch_56

    .line 4844
    :cond_55
    :goto_55
    return-void

    .line 4843
    :catch_56
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_55

    .line 803
    :cond_5b
    iget-wide v4, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->z:D

    iget-wide v6, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->A:D

    div-double/2addr v4, v6

    .line 804
    div-float v0, v1, v2

    float-to-double v6, v0

    .line 806
    const-string v0, "MintegralBaseView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "videoWHDivide:"

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "  screenWHDivide:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/k;->a(Ljava/lang/Double;)D

    move-result-wide v8

    .line 808
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/k;->a(Ljava/lang/Double;)D

    move-result-wide v6

    .line 809
    const-string v0, "MintegralBaseView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v10, "videoWHDivideFinal:"

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "  screenWHDivideFinal:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->n:Lcom/mintegral/msdk/playercommon/PlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/PlayerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 812
    cmpl-double v3, v8, v6

    if-lez v3, :cond_d3

    .line 813
    float-to-double v2, v1

    iget-wide v4, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->A:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->z:D

    div-double/2addr v2, v4

    .line 814
    iput v11, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 815
    double-to-int v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 816
    invoke-virtual {v0, v12, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 826
    :goto_ca
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->n:Lcom/mintegral/msdk/playercommon/PlayerView;

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/playercommon/PlayerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 827
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->setMatchParent()V

    goto :goto_55

    .line 817
    :cond_d3
    cmpg-double v1, v8, v6

    if-gez v1, :cond_e2

    .line 818
    float-to-double v2, v2

    mul-double/2addr v2, v4

    .line 819
    double-to-int v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 820
    iput v11, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 821
    invoke-virtual {v0, v12, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_ca

    .line 823
    :cond_e2
    iput v11, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 824
    iput v11, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_ca
.end method


# virtual methods
.method protected final a()V
    .registers 3

    .prologue
    .line 198
    invoke-super {p0}, Lcom/mintegral/msdk/video/module/MintegralBaseView;->a()V

    .line 199
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->f:Z

    if-eqz v0, :cond_25

    .line 200
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->n:Lcom/mintegral/msdk/playercommon/PlayerView;

    new-instance v1, Lcom/mintegral/msdk/video/module/MintegralVideoView$1;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/video/module/MintegralVideoView$1;-><init>(Lcom/mintegral/msdk/video/module/MintegralVideoView;)V

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/playercommon/PlayerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->o:Lcom/mintegral/msdk/video/widget/SoundImageView;

    new-instance v1, Lcom/mintegral/msdk/video/module/MintegralVideoView$2;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/video/module/MintegralVideoView$2;-><init>(Lcom/mintegral/msdk/video/module/MintegralVideoView;)V

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/video/widget/SoundImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->q:Landroid/view/View;

    new-instance v1, Lcom/mintegral/msdk/video/module/MintegralVideoView$3;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/video/module/MintegralVideoView$3;-><init>(Lcom/mintegral/msdk/video/module/MintegralVideoView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    :cond_25
    return-void
.end method

.method public alertWebViewShowed()V
    .registers 2

    .prologue
    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->r:Z

    .line 267
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->r:Z

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->setShowingAlertViewCover(Z)V

    .line 268
    return-void
.end method

.method public closeVideoOperate(II)V
    .registers 7

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 489
    if-ne p1, v1, :cond_9

    .line 490
    invoke-direct {p0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->d()V

    .line 492
    :cond_9
    if-ne p2, v1, :cond_4b

    .line 3770
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->f:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->q:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_1e

    .line 3771
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->q:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3772
    iput-boolean v2, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->F:Z

    .line 3778
    :cond_1e
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->S:Z

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->I:Z

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->G:Z

    if-eqz v0, :cond_2b

    .line 3784
    :cond_2a
    :goto_2a
    return-void

    .line 3781
    :cond_2b
    iput-boolean v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->S:Z

    .line 3782
    iget v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->t:I

    if-ltz v0, :cond_2a

    .line 3783
    iget v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->t:I

    if-nez v0, :cond_38

    .line 3784
    iput-boolean v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->I:Z

    goto :goto_2a

    .line 3786
    :cond_38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mintegral/msdk/video/module/MintegralVideoView$5;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/video/module/MintegralVideoView$5;-><init>(Lcom/mintegral/msdk/video/module/MintegralVideoView;)V

    iget v2, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->t:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2a

    .line 494
    :cond_4b
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2a

    .line 4763
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->f:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->q:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2a

    .line 4764
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->q:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4765
    iput-boolean v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->F:Z

    goto :goto_2a
.end method

.method public defaultShow()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 333
    invoke-super {p0}, Lcom/mintegral/msdk/video/module/MintegralBaseView;->defaultShow()V

    .line 334
    iput-boolean v10, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->B:Z

    .line 336
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/k;->i(Landroid/content/Context;)I

    move-result v3

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->a:Landroid/content/Context;

    .line 337
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/k;->h(Landroid/content/Context;)I

    move-result v4

    move-object v0, p0

    move v2, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    move v9, v1

    .line 336
    invoke-virtual/range {v0 .. v9}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->showVideoLocation(IIIIIIIII)V

    .line 338
    invoke-virtual {p0, v10}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->videoOperate(I)V

    .line 339
    iget v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->t:I

    if-nez v0, :cond_29

    .line 340
    const/4 v0, -0x1

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->closeVideoOperate(II)V

    .line 342
    :cond_29
    return-void
.end method

.method public getBorderViewHeight()I
    .registers 2

    .prologue
    .line 575
    sget v0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->m:I

    return v0
.end method

.method public getBorderViewLeft()I
    .registers 2

    .prologue
    .line 585
    sget v0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->k:I

    return v0
.end method

.method public getBorderViewRadius()I
    .registers 2

    .prologue
    .line 595
    sget v0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->i:I

    return v0
.end method

.method public getBorderViewTop()I
    .registers 2

    .prologue
    .line 590
    sget v0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->j:I

    return v0
.end method

.method public getBorderViewWidth()I
    .registers 2

    .prologue
    .line 580
    sget v0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->l:I

    return v0
.end method

.method public getCloseAlert()I
    .registers 2

    .prologue
    .line 630
    iget v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->v:I

    return v0
.end method

.method public getCurrentProgress()Ljava/lang/String;
    .registers 6

    .prologue
    .line 524
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->R:Lcom/mintegral/msdk/video/module/MintegralVideoView$b;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->a()I

    move-result v1

    .line 525
    const/4 v0, 0x0

    .line 526
    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v2, :cond_11

    .line 527
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoLength()I

    move-result v0

    .line 529
    :cond_11
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 531
    const-string v3, "progress"

    invoke-static {v1, v0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->a(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 532
    const-string v3, "time"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 533
    const-string v1, "duration"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 534
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_30} :catch_32

    move-result-object v0

    .line 538
    :goto_31
    return-object v0

    .line 535
    :catch_32
    move-exception v0

    .line 536
    const-string v1, "MintegralBaseView"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 538
    const-string v0, "{}"

    goto :goto_31
.end method

.method public getMute()I
    .registers 2

    .prologue
    .line 1051
    iget v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->N:I

    return v0
.end method

.method public getVideoSkipTime()I
    .registers 2

    .prologue
    .line 638
    iget v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->t:I

    return v0
.end method

.method public hideAlertView(I)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 250
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->r:Z

    if-eqz v0, :cond_21

    .line 251
    iput-boolean v2, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->r:Z

    .line 252
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->r:Z

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->setShowingAlertViewCover(Z)V

    .line 253
    invoke-static {}, Lcom/mintegral/msdk/videocommon/e/b;->a()Lcom/mintegral/msdk/videocommon/e/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->y:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/videocommon/e/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/mintegral/msdk/videocommon/e/c;

    .line 256
    if-nez p1, :cond_22

    .line 257
    invoke-direct {p0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->g()V

    .line 263
    :cond_21
    :goto_21
    return-void

    .line 260
    :cond_22
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->e:Lcom/mintegral/msdk/video/module/a/a;

    const/4 v1, 0x2

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    goto :goto_21
.end method

.method public init(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 165
    const-string v0, "mintegral_reward_videoview_item"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->findLayout(Ljava/lang/String;)I

    move-result v0

    .line 166
    if-lez v0, :cond_21

    .line 167
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 168
    invoke-direct {p0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->f:Z

    .line 169
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->f:Z

    if-nez v0, :cond_1e

    .line 170
    const-string v0, "MintegralBaseView"

    const-string v1, "MintegralVideoView init fail"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_1e
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->a()V

    .line 174
    :cond_21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->M:Z

    .line 175
    return-void
.end method

.method public isH5Canvas()Z
    .registers 3

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/k;->h(Landroid/content/Context;)I

    move-result v1

    if-lt v0, v1, :cond_14

    .line 567
    const/4 v0, 0x0

    .line 569
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x1

    goto :goto_13
.end method

.method public isMiniCardShowing()Z
    .registers 2

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->E:Z

    return v0
.end method

.method public isShowingAlertView()Z
    .registers 2

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->r:Z

    return v0
.end method

.method public isShowingTransparent()Z
    .registers 2

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->J:Z

    return v0
.end method

.method public isfront()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 690
    .line 691
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 692
    if-eqz v0, :cond_31

    .line 693
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 694
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 695
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    move v2, v1

    :goto_15
    add-int/lit8 v4, v5, -0x1

    if-gt v3, v4, :cond_2f

    .line 696
    const/4 v4, 0x1

    .line 697
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2a

    iget-boolean v2, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->E:Z

    if-eqz v2, :cond_2a

    move v0, v1

    .line 703
    :goto_29
    return v0

    .line 695
    :cond_2a
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_15

    :cond_2f
    move v0, v2

    goto :goto_29

    :cond_31
    move v0, v1

    goto :goto_29
.end method

.method public notifyCloseBtn(I)V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1027
    if-nez p1, :cond_9

    .line 1028
    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->G:Z

    .line 1029
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->I:Z

    .line 1033
    :cond_8
    :goto_8
    return-void

    .line 1030
    :cond_9
    if-ne p1, v0, :cond_8

    .line 1031
    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->H:Z

    goto :goto_8
.end method

.method public notifyVideoClose()V
    .registers 4

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->e:Lcom/mintegral/msdk/video/module/a/a;

    const/4 v1, 0x2

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 1037
    return-void
.end method

.method public onBackPress()V
    .registers 2

    .prologue
    .line 1008
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->E:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->r:Z

    if-eqz v0, :cond_9

    .line 1023
    :cond_8
    :goto_8
    return-void

    .line 1011
    :cond_9
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->F:Z

    if-eqz v0, :cond_11

    .line 1012
    invoke-direct {p0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->d()V

    goto :goto_8

    .line 1016
    :cond_11
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->G:Z

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->H:Z

    if-eqz v0, :cond_1d

    .line 1017
    invoke-direct {p0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->d()V

    goto :goto_8

    .line 1020
    :cond_1d
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->G:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->I:Z

    if-eqz v0, :cond_8

    .line 1021
    invoke-direct {p0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->d()V

    goto :goto_8
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .prologue
    .line 600
    invoke-super {p0, p1}, Lcom/mintegral/msdk/video/module/MintegralBaseView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 601
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->f:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->B:Z

    if-eqz v0, :cond_e

    .line 602
    invoke-direct {p0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->h()V

    .line 604
    :cond_e
    return-void
.end method

.method public preLoadData()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 312
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->f:Z

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e9

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_e9

    .line 313
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->O:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    if-eqz v0, :cond_3b

    .line 314
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->O:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->n:Lcom/mintegral/msdk/playercommon/PlayerView;

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mintegral/adsession/AdSession;->registerAdView(Landroid/view/View;)V

    .line 315
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->O:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->o:Lcom/mintegral/msdk/video/widget/SoundImageView;

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mintegral/adsession/AdSession;->addFriendlyObstruction(Landroid/view/View;)V

    .line 316
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->O:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mintegral/adsession/AdSession;->addFriendlyObstruction(Landroid/view/View;)V

    .line 317
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->O:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mintegral/adsession/AdSession;->addFriendlyObstruction(Landroid/view/View;)V

    .line 318
    const-string v0, "OMSDK"

    const-string v1, "RV registerView"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1667
    :cond_3b
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_cc

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoResolution()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 1668
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoResolution()Ljava/lang/String;

    move-result-object v0

    .line 1669
    const-string v1, "MintegralBaseView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MintegralBaseView videoResolution:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1670
    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1671
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b5

    .line 1672
    aget-object v1, v0, v6

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/k;->c(Ljava/lang/String;)D

    move-result-wide v2

    cmpl-double v1, v2, v4

    if-lez v1, :cond_81

    .line 1673
    aget-object v1, v0, v6

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/k;->c(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->z:D

    .line 1675
    :cond_81
    aget-object v1, v0, v7

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/k;->c(Ljava/lang/String;)D

    move-result-wide v2

    cmpl-double v1, v2, v4

    if-lez v1, :cond_93

    .line 1676
    aget-object v0, v0, v7

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/k;->c(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->A:D

    .line 1678
    :cond_93
    const-string v0, "MintegralBaseView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MintegralBaseView mVideoW:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->z:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mVideoH:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->A:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1680
    :cond_b5
    iget-wide v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->z:D

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_bf

    .line 1681
    const-wide/high16 v0, 0x4094000000000000L    # 1280.0

    iput-wide v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->z:D

    .line 1683
    :cond_bf
    iget-wide v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->A:D

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_cc

    .line 1684
    const-wide v0, 0x4086800000000000L    # 720.0

    iput-wide v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->A:D

    .line 323
    :cond_cc
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->n:Lcom/mintegral/msdk/playercommon/PlayerView;

    iget v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->u:I

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/playercommon/PlayerView;->initBufferIngParam(I)V

    .line 324
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->n:Lcom/mintegral/msdk/playercommon/PlayerView;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->s:Ljava/lang/String;

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->R:Lcom/mintegral/msdk/video/module/MintegralVideoView$b;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mintegral/msdk/playercommon/PlayerView;->initVFPData(Ljava/lang/String;Ljava/lang/String;Lcom/mintegral/msdk/playercommon/c;)Z

    .line 326
    iget v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->N:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->soundOperate(IILjava/lang/String;)V

    .line 328
    :cond_e9
    sput-boolean v6, Lcom/mintegral/msdk/video/module/MintegralVideoView;->M:Z

    .line 329
    return-void
.end method

.method public progressOperate(II)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 501
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->f:Z

    if-eqz v0, :cond_50

    .line 502
    const-string v0, "MintegralBaseView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "progressOperate progress:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_5a

    .line 505
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoLength()I

    move-result v0

    .line 507
    :goto_23
    if-lez p1, :cond_46

    if-gt p1, v0, :cond_46

    .line 508
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->n:Lcom/mintegral/msdk/playercommon/PlayerView;

    if-eqz v0, :cond_46

    .line 509
    const-string v0, "MintegralBaseView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "progressOperate progress:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->n:Lcom/mintegral/msdk/playercommon/PlayerView;

    mul-int/lit16 v2, p1, 0x3e8

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/playercommon/PlayerView;->seekTo(I)V

    .line 513
    :cond_46
    const/4 v0, 0x1

    if-ne p2, v0, :cond_51

    .line 514
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->p:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 519
    :cond_50
    :goto_50
    return-void

    .line 515
    :cond_51
    const/4 v0, 0x2

    if-ne p2, v0, :cond_50

    .line 516
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_50

    :cond_5a
    move v0, v1

    goto :goto_23
.end method

.method public setAdSession(Lcom/iab/omid/library/mintegral/adsession/AdSession;)V
    .registers 2

    .prologue
    .line 1040
    iput-object p1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->O:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    .line 1041
    return-void
.end method

.method public setBufferTimeout(I)V
    .registers 2

    .prologue
    .line 650
    iput p1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->u:I

    .line 651
    return-void
.end method

.method public setCampaign(Lcom/mintegral/msdk/base/entity/CampaignEx;)V
    .registers 3

    .prologue
    .line 187
    invoke-super {p0, p1}, Lcom/mintegral/msdk/video/module/MintegralBaseView;->setCampaign(Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 188
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->R:Lcom/mintegral/msdk/video/module/MintegralVideoView$b;

    if-eqz v0, :cond_c

    .line 189
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->R:Lcom/mintegral/msdk/video/module/MintegralVideoView$b;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 191
    :cond_c
    return-void
.end method

.method public setCloseAlert(I)V
    .registers 2

    .prologue
    .line 634
    iput p1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->v:I

    .line 635
    return-void
.end method

.method public setCover(Z)V
    .registers 3

    .prologue
    .line 553
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->f:Z

    if-eqz v0, :cond_b

    .line 554
    iput-boolean p1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->E:Z

    .line 555
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->n:Lcom/mintegral/msdk/playercommon/PlayerView;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/playercommon/PlayerView;->setIsCovered(Z)V

    .line 557
    :cond_b
    return-void
.end method

.method public setIsIV(Z)V
    .registers 3

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->L:Z

    .line 179
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->R:Lcom/mintegral/msdk/video/module/MintegralVideoView$b;

    if-eqz v0, :cond_b

    .line 180
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->R:Lcom/mintegral/msdk/video/module/MintegralVideoView$b;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->a(Z)V

    .line 182
    :cond_b
    return-void
.end method

.method public setPlayURL(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 646
    iput-object p1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->s:Ljava/lang/String;

    .line 647
    return-void
.end method

.method public setScaleFitXY(I)V
    .registers 2

    .prologue
    .line 543
    iput p1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->K:I

    .line 544
    return-void
.end method

.method public setShowingAlertViewCover(Z)V
    .registers 3

    .prologue
    .line 560
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->n:Lcom/mintegral/msdk/playercommon/PlayerView;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/playercommon/PlayerView;->setIsCovered(Z)V

    .line 561
    return-void
.end method

.method public setShowingTransparent(Z)V
    .registers 2

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->J:Z

    .line 135
    return-void
.end method

.method public setSoundState(I)V
    .registers 2

    .prologue
    .line 194
    iput p1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->N:I

    .line 195
    return-void
.end method

.method public setUnitId(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 94
    iput-object p1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->y:Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->R:Lcom/mintegral/msdk/video/module/MintegralVideoView$b;

    if-eqz v0, :cond_b

    .line 96
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->R:Lcom/mintegral/msdk/video/module/MintegralVideoView$b;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->a(Ljava/lang/String;)V

    .line 98
    :cond_b
    return-void
.end method

.method public setVideoEvents(Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;)V
    .registers 3

    .prologue
    .line 1044
    iput-object p1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->P:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    .line 1045
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->R:Lcom/mintegral/msdk/video/module/MintegralVideoView$b;

    if-eqz v0, :cond_b

    .line 1046
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->R:Lcom/mintegral/msdk/video/module/MintegralVideoView$b;

    invoke-static {v0, p1}, Lcom/mintegral/msdk/video/module/MintegralVideoView$b;->a(Lcom/mintegral/msdk/video/module/MintegralVideoView$b;Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;)Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    .line 1048
    :cond_b
    return-void
.end method

.method public setVideoSkipTime(I)V
    .registers 2

    .prologue
    .line 642
    iput p1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->t:I

    .line 643
    return-void
.end method

.method public setVisible(I)V
    .registers 2

    .prologue
    .line 548
    invoke-virtual {p0, p1}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->setVisibility(I)V

    .line 549
    return-void
.end method

.method public showAlertView()V
    .registers 4

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->E:Z

    if-eqz v0, :cond_5

    .line 308
    :cond_4
    :goto_4
    return-void

    .line 274
    :cond_5
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->x:Lcom/mintegral/msdk/videocommon/dialog/a;

    if-nez v0, :cond_10

    .line 275
    new-instance v0, Lcom/mintegral/msdk/video/module/MintegralVideoView$4;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/video/module/MintegralVideoView$4;-><init>(Lcom/mintegral/msdk/video/module/MintegralVideoView;)V

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->x:Lcom/mintegral/msdk/videocommon/dialog/a;

    .line 293
    :cond_10
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->w:Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;

    if-nez v0, :cond_34

    .line 294
    new-instance v0, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;

    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->x:Lcom/mintegral/msdk/videocommon/dialog/a;

    invoke-direct {v0, v1, v2}, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;-><init>(Landroid/content/Context;Lcom/mintegral/msdk/videocommon/dialog/a;)V

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->w:Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;

    .line 295
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->O:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    if-eqz v0, :cond_34

    .line 296
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->O:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->w:Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;

    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mintegral/adsession/AdSession;->addFriendlyObstruction(Landroid/view/View;)V

    .line 299
    :cond_34
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->w:Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->makeRVAlertView(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->n:Lcom/mintegral/msdk/playercommon/PlayerView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->n:Lcom/mintegral/msdk/playercommon/PlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/PlayerView;->isComplete()Z

    move-result v0

    if-nez v0, :cond_4

    .line 301
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->w:Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->show()V

    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->r:Z

    .line 303
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->r:Z

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->setShowingAlertViewCover(Z)V

    .line 304
    invoke-static {}, Lcom/mintegral/msdk/videocommon/e/b;->a()Lcom/mintegral/msdk/videocommon/e/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->y:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/videocommon/e/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/mintegral/msdk/videocommon/e/c;

    .line 305
    invoke-static {}, Lcom/mintegral/msdk/videocommon/e/c;->M()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->Q:Ljava/lang/String;

    goto :goto_4
.end method

.method public showVideoLocation(IIIIIIIII)V
    .registers 16

    .prologue
    .line 347
    const-string v0, "MintegralBaseView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showVideoLocation marginTop:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " marginLeft:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " radius:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " borderTop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " borderLeft:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " borderWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " borderHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->f:Z

    if-eqz v0, :cond_10e

    .line 353
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->setVisibility(I)V

    .line 2619
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/k;->i(Landroid/content/Context;)I

    move-result v0

    .line 2620
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/k;->h(Landroid/content/Context;)I

    move-result v1

    .line 2621
    if-lez p3, :cond_10f

    if-lez p4, :cond_10f

    .line 2622
    if-lt v0, p3, :cond_10f

    if-lt v1, p4, :cond_10f

    .line 2623
    const/4 v0, 0x1

    .line 354
    :goto_81
    if-eqz v0, :cond_13d

    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->B:Z

    if-nez v0, :cond_13d

    .line 355
    sput p6, Lcom/mintegral/msdk/video/module/MintegralVideoView;->j:I

    .line 356
    sput p7, Lcom/mintegral/msdk/video/module/MintegralVideoView;->k:I

    .line 358
    add-int/lit8 v0, p8, 0x4

    sput v0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->l:I

    .line 359
    add-int/lit8 v0, p9, 0x4

    sput v0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->m:I

    .line 360
    int-to-float v0, p3

    int-to-float v1, p4

    div-float v2, v0, v1

    .line 361
    const/4 v1, 0x0

    .line 363
    :try_start_98
    iget-wide v4, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->z:D

    iget-wide v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->A:D
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_98 .. :try_end_9c} :catch_112

    div-double v0, v4, v0

    double-to-float v0, v0

    .line 367
    :goto_9f
    if-lez p5, :cond_de

    .line 368
    sput p5, Lcom/mintegral/msdk/video/module/MintegralVideoView;->i:I

    .line 3398
    if-lez p5, :cond_de

    .line 3399
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 3400
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->getContext()Landroid/content/Context;

    move-result-object v3

    int-to-float v4, p5

    invoke-static {v3, v4}, Lcom/mintegral/msdk/base/utils/k;->b(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 3401
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 3402
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 3403
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_11e

    .line 3404
    invoke-virtual {p0, v1}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3405
    iget-object v3, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->n:Lcom/mintegral/msdk/playercommon/PlayerView;

    invoke-virtual {v3, v1}, Lcom/mintegral/msdk/playercommon/PlayerView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3410
    :goto_ce
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_de

    .line 3411
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->setClipToOutline(Z)V

    .line 3412
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->n:Lcom/mintegral/msdk/playercommon/PlayerView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/mintegral/msdk/playercommon/PlayerView;->setClipToOutline(Z)V

    .line 372
    :cond_de
    sub-float v0, v2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v1

    if-lez v0, :cond_f0

    iget v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->K:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_135

    .line 373
    :cond_f0
    const-string v0, "MintegralBaseView"

    const-string v1, "showVideoLocation USE H5 SIZE."

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-direct {p0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->h()V

    .line 375
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->J:Z

    if-eqz v0, :cond_131

    .line 376
    invoke-virtual {p0, p3, p4}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->setLayoutCenter(II)V

    .line 377
    sget-boolean v0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->M:Z

    if-eqz v0, :cond_127

    .line 378
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->e:Lcom/mintegral/msdk/video/module/a/a;

    const/16 v1, 0x72

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 395
    :cond_10e
    :goto_10e
    return-void

    .line 2626
    :cond_10f
    const/4 v0, 0x0

    goto/16 :goto_81

    .line 364
    :catch_112
    move-exception v0

    .line 365
    const-string v3, "MintegralBaseView"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_9f

    .line 3407
    :cond_11e
    invoke-virtual {p0, v1}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3408
    iget-object v3, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->n:Lcom/mintegral/msdk/playercommon/PlayerView;

    invoke-virtual {v3, v1}, Lcom/mintegral/msdk/playercommon/PlayerView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_ce

    .line 380
    :cond_127
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->e:Lcom/mintegral/msdk/video/module/a/a;

    const/16 v1, 0x74

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    goto :goto_10e

    .line 383
    :cond_131
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->setLayoutParam(IIII)V

    goto :goto_10e

    .line 387
    :cond_135
    invoke-direct {p0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->h()V

    .line 388
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->videoOperate(I)V

    goto :goto_10e

    .line 392
    :cond_13d
    invoke-direct {p0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->h()V

    goto :goto_10e
.end method

.method public soundOperate(II)V
    .registers 4

    .prologue
    .line 419
    const-string v0, "2"

    invoke-virtual {p0, p1, p2, v0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->soundOperate(IILjava/lang/String;)V

    .line 420
    return-void
.end method

.method public soundOperate(IILjava/lang/String;)V
    .registers 9

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 424
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->f:Z

    if-eqz v0, :cond_28

    .line 425
    iput p1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->N:I

    .line 426
    if-ne p1, v2, :cond_48

    .line 427
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->o:Lcom/mintegral/msdk/video/widget/SoundImageView;

    invoke-virtual {v0, v3}, Lcom/mintegral/msdk/video/widget/SoundImageView;->setSoundStatus(Z)V

    .line 428
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->n:Lcom/mintegral/msdk/playercommon/PlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/PlayerView;->closeSound()V

    .line 430
    :try_start_15
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->P:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    if-eqz v0, :cond_1f

    .line 431
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->P:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->volumeChange(F)V
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_1f} :catch_3d

    .line 448
    :cond_1f
    :goto_1f
    if-ne p2, v2, :cond_6f

    .line 449
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->o:Lcom/mintegral/msdk/video/widget/SoundImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/video/widget/SoundImageView;->setVisibility(I)V

    .line 455
    :cond_28
    :goto_28
    if-eqz p3, :cond_3c

    const-string v0, "2"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 456
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->e:Lcom/mintegral/msdk/video/module/a/a;

    const/4 v1, 0x7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 458
    :cond_3c
    return-void

    .line 433
    :catch_3d
    move-exception v0

    .line 434
    const-string v1, "OMSDK"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 436
    :cond_48
    if-ne p1, v4, :cond_1f

    .line 437
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->o:Lcom/mintegral/msdk/video/widget/SoundImageView;

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/video/widget/SoundImageView;->setSoundStatus(Z)V

    .line 438
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->n:Lcom/mintegral/msdk/playercommon/PlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/PlayerView;->openSound()V

    .line 440
    :try_start_54
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->P:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    if-eqz v0, :cond_1f

    .line 441
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->P:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mintegral/msdk/a/b;->b(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->volumeChange(F)V
    :try_end_63
    .catch Ljava/lang/IllegalArgumentException; {:try_start_54 .. :try_end_63} :catch_64

    goto :goto_1f

    .line 443
    :catch_64
    move-exception v0

    .line 444
    const-string v1, "OMSDK"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 450
    :cond_6f
    if-ne p2, v4, :cond_28

    .line 451
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->o:Lcom/mintegral/msdk/video/widget/SoundImageView;

    invoke-virtual {v0, v3}, Lcom/mintegral/msdk/video/widget/SoundImageView;->setVisibility(I)V

    goto :goto_28
.end method

.method public videoOperate(I)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 462
    const-string v0, "MintegralBaseView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VideoView videoOperate:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->f:Z

    if-eqz v0, :cond_35

    .line 464
    if-ne p1, v3, :cond_36

    .line 465
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_35

    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->isfront()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 466
    const-string v0, "MintegralBaseView"

    const-string v1, "VideoView videoOperate:play"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->r:Z

    if-nez v0, :cond_35

    .line 468
    invoke-direct {p0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->g()V

    .line 483
    :cond_35
    :goto_35
    return-void

    .line 471
    :cond_36
    const/4 v0, 0x2

    if-ne p1, v0, :cond_50

    .line 472
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_35

    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->isfront()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 473
    const-string v0, "MintegralBaseView"

    const-string v1, "VideoView videoOperate:pause"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-direct {p0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->f()V

    goto :goto_35

    .line 476
    :cond_50
    const/4 v0, 0x3

    if-ne p1, v0, :cond_35

    .line 477
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->D:Z

    if-nez v0, :cond_35

    .line 478
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->n:Lcom/mintegral/msdk/playercommon/PlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/PlayerView;->release()V

    .line 479
    iput-boolean v3, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->D:Z

    goto :goto_35
.end method
