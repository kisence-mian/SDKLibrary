.class public Lcom/anythink/basead/ui/PlayerView;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/basead/ui/PlayerView$a;,
        Lcom/anythink/basead/ui/PlayerView$b;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:Lcom/anythink/basead/ui/CountDownView;

.field private J:Landroid/widget/ImageView;

.field private K:Landroid/widget/ImageView;

.field private final L:I

.field private final M:I

.field private final N:I

.field private O:Z

.field private P:J

.field private Q:Ljava/lang/Thread;

.field private a:Landroid/media/MediaPlayer;

.field private b:Landroid/graphics/SurfaceTexture;

.field private c:Landroid/view/TextureView;

.field private d:Landroid/view/Surface;

.field private e:Ljava/io/FileInputStream;

.field private f:Ljava/io/FileDescriptor;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Lcom/anythink/basead/ui/PlayerView$a;

.field private w:Landroid/os/Handler;

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    const-class v0, Lcom/anythink/basead/ui/PlayerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/basead/ui/PlayerView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lcom/anythink/basead/ui/PlayerView$a;)V
    .registers 8

    .line 100
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/anythink/basead/ui/PlayerView;->j:I

    .line 65
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/anythink/basead/ui/PlayerView;->r:Z

    .line 66
    iput-boolean v1, p0, Lcom/anythink/basead/ui/PlayerView;->s:Z

    .line 67
    iput-boolean v1, p0, Lcom/anythink/basead/ui/PlayerView;->t:Z

    .line 68
    iput-boolean v1, p0, Lcom/anythink/basead/ui/PlayerView;->u:Z

    .line 74
    const/16 v2, 0x1d

    iput v2, p0, Lcom/anythink/basead/ui/PlayerView;->x:I

    .line 75
    const/16 v2, 0x13

    iput v2, p0, Lcom/anythink/basead/ui/PlayerView;->y:I

    .line 76
    iput v2, p0, Lcom/anythink/basead/ui/PlayerView;->z:I

    .line 77
    const/16 v2, 0x1e

    iput v2, p0, Lcom/anythink/basead/ui/PlayerView;->A:I

    .line 90
    const/4 v2, 0x1

    iput v2, p0, Lcom/anythink/basead/ui/PlayerView;->L:I

    .line 91
    const/4 v3, 0x2

    iput v3, p0, Lcom/anythink/basead/ui/PlayerView;->M:I

    .line 92
    const/4 v3, 0x3

    iput v3, p0, Lcom/anythink/basead/ui/PlayerView;->N:I

    .line 101
    iput-object p2, p0, Lcom/anythink/basead/ui/PlayerView;->v:Lcom/anythink/basead/ui/PlayerView$a;

    .line 103
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PlayerView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v3, "myoffer_player_view_id"

    const-string v4, "id"

    invoke-static {p2, v3, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/anythink/basead/ui/PlayerView;->setId(I)V

    .line 104
    invoke-virtual {p0, v2}, Lcom/anythink/basead/ui/PlayerView;->setSaveEnabled(Z)V

    .line 105
    nop

    .line 1159
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1160
    invoke-virtual {p1, p0, v1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 107
    new-instance p1, Lcom/anythink/basead/ui/PlayerView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/anythink/basead/ui/PlayerView$1;-><init>(Lcom/anythink/basead/ui/PlayerView;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/anythink/basead/ui/PlayerView;->w:Landroid/os/Handler;

    .line 156
    return-void
.end method

.method static synthetic A(Lcom/anythink/basead/ui/PlayerView;)I
    .registers 1

    .line 40
    iget p0, p0, Lcom/anythink/basead/ui/PlayerView;->k:I

    return p0
.end method

.method static synthetic B(Lcom/anythink/basead/ui/PlayerView;)V
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/anythink/basead/ui/PlayerView;->k()V

    return-void
.end method

.method static synthetic C(Lcom/anythink/basead/ui/PlayerView;)Z
    .registers 2

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView;->t:Z

    return v0
.end method

.method static synthetic a(Lcom/anythink/basead/ui/PlayerView;)I
    .registers 1

    .line 40
    iget p0, p0, Lcom/anythink/basead/ui/PlayerView;->j:I

    return p0
.end method

.method static synthetic a(Lcom/anythink/basead/ui/PlayerView;I)I
    .registers 2

    .line 40
    iput p1, p0, Lcom/anythink/basead/ui/PlayerView;->j:I

    return p1
.end method

.method private a()V
    .registers 9

    .line 281
    sget-object v0, Lcom/anythink/basead/ui/PlayerView;->TAG:Ljava/lang/String;

    const-string v1, "init..."

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-direct {p0}, Lcom/anythink/basead/ui/PlayerView;->l()Z

    move-result v0

    .line 283
    if-eqz v0, :cond_1d

    .line 284
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->v:Lcom/anythink/basead/ui/PlayerView$a;

    if-eqz v0, :cond_1c

    .line 285
    const-string v1, "40002"

    const-string v2, "Video file error!"

    invoke-static {v1, v2}, Lcom/anythink/basead/c/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/f;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/basead/ui/PlayerView$a;->a(Lcom/anythink/basead/c/f;)V

    .line 287
    :cond_1c
    return-void

    .line 290
    :cond_1d
    nop

    .line 1300
    iget v0, p0, Lcom/anythink/basead/ui/PlayerView;->x:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/anythink/basead/ui/PlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/anythink/basead/ui/PlayerView;->B:I

    .line 1301
    iget v0, p0, Lcom/anythink/basead/ui/PlayerView;->y:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/anythink/basead/ui/PlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/anythink/basead/ui/PlayerView;->C:I

    .line 1302
    iget v0, p0, Lcom/anythink/basead/ui/PlayerView;->z:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/anythink/basead/ui/PlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/anythink/basead/ui/PlayerView;->D:I

    .line 1303
    iget v0, p0, Lcom/anythink/basead/ui/PlayerView;->A:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/anythink/basead/ui/PlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/anythink/basead/ui/PlayerView;->E:I

    .line 1305
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_video_mute"

    const-string v3, "drawable"

    invoke-static {v0, v1, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/anythink/basead/ui/PlayerView;->F:I

    .line 1306
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_video_no_mute"

    invoke-static {v0, v1, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/anythink/basead/ui/PlayerView;->G:I

    .line 1307
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_video_close"

    invoke-static {v0, v1, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/anythink/basead/ui/PlayerView;->H:I

    .line 291
    nop

    .line 1311
    iget v0, p0, Lcom/anythink/basead/ui/PlayerView;->h:I

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_a8

    iget v0, p0, Lcom/anythink/basead/ui/PlayerView;->i:I

    if-nez v0, :cond_f2

    .line 1315
    :cond_a8
    :try_start_a8
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1316
    iget-object v3, p0, Lcom/anythink/basead/ui/PlayerView;->f:Ljava/io/FileDescriptor;

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2111
    invoke-static {v3}, Lcom/anythink/basead/a/a/e;->a(Ljava/io/FileDescriptor;)Lcom/anythink/basead/a/a/e$a;

    move-result-object v3

    .line 2112
    if-nez v3, :cond_be

    .line 2113
    const/4 v3, 0x0

    goto :goto_e2

    .line 2116
    :cond_be
    iget v5, v3, Lcom/anythink/basead/a/a/e$a;->a:I

    .line 2117
    iget v6, v3, Lcom/anythink/basead/a/a/e$a;->b:I

    .line 2119
    int-to-float v5, v5

    mul-float/2addr v5, v1

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 2120
    int-to-float v6, v4

    mul-float/2addr v6, v1

    int-to-float v7, v0

    div-float/2addr v6, v7

    .line 2123
    cmpg-float v6, v5, v6

    if-gez v6, :cond_d8

    .line 2124
    iput v0, v3, Lcom/anythink/basead/a/a/e$a;->b:I

    .line 2125
    iget v0, v3, Lcom/anythink/basead/a/a/e$a;->b:I

    int-to-float v0, v0

    mul-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, v3, Lcom/anythink/basead/a/a/e$a;->a:I

    goto :goto_e1

    .line 2128
    :cond_d8
    iput v4, v3, Lcom/anythink/basead/a/a/e$a;->a:I

    .line 2129
    iget v0, v3, Lcom/anythink/basead/a/a/e$a;->a:I

    int-to-float v0, v0

    div-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, v3, Lcom/anythink/basead/a/a/e$a;->b:I

    .line 2132
    :goto_e1
    nop

    .line 1316
    :goto_e2
    nop

    .line 1318
    if-eqz v3, :cond_ed

    .line 1319
    iget v0, v3, Lcom/anythink/basead/a/a/e$a;->a:I

    iput v0, p0, Lcom/anythink/basead/ui/PlayerView;->h:I

    .line 1320
    iget v0, v3, Lcom/anythink/basead/a/a/e$a;->b:I

    iput v0, p0, Lcom/anythink/basead/ui/PlayerView;->i:I
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_ed} :catch_ee

    .line 1324
    :cond_ed
    goto :goto_f2

    .line 1323
    :catch_ee
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 293
    :cond_f2
    :goto_f2
    nop

    .line 2569
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->c:Landroid/view/TextureView;

    if-nez v0, :cond_135

    .line 2570
    new-instance v0, Landroid/view/TextureView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/PlayerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->c:Landroid/view/TextureView;

    .line 2571
    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 2572
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->c:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setKeepScreenOn(Z)V

    .line 2574
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2575
    iget v3, p0, Lcom/anythink/basead/ui/PlayerView;->h:I

    if-eqz v3, :cond_11e

    iget v4, p0, Lcom/anythink/basead/ui/PlayerView;->i:I

    if-eqz v4, :cond_11e

    .line 2576
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2577
    iget v3, p0, Lcom/anythink/basead/ui/PlayerView;->i:I

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2579
    :cond_11e
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2580
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PlayerView;->removeAllViews()V

    .line 2581
    iget-object v3, p0, Lcom/anythink/basead/ui/PlayerView;->c:Landroid/view/TextureView;

    invoke-virtual {p0, v3, v0}, Lcom/anythink/basead/ui/PlayerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2583
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->c:Landroid/view/TextureView;

    new-instance v3, Lcom/anythink/basead/ui/PlayerView$9;

    invoke-direct {v3, p0}, Lcom/anythink/basead/ui/PlayerView$9;-><init>(Lcom/anythink/basead/ui/PlayerView;)V

    invoke-virtual {v0, v3}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    :cond_135
    nop

    .line 3505
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->a:Landroid/media/MediaPlayer;

    if-nez v0, :cond_181

    .line 3506
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->a:Landroid/media/MediaPlayer;

    .line 3507
    iget-boolean v3, p0, Lcom/anythink/basead/ui/PlayerView;->O:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_148

    move v5, v4

    goto :goto_149

    :cond_148
    move v5, v1

    :goto_149
    if-eqz v3, :cond_14c

    move v1, v4

    :cond_14c
    invoke-virtual {v0, v5, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 3508
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->a:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 3509
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->a:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/anythink/basead/ui/PlayerView$5;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/PlayerView$5;-><init>(Lcom/anythink/basead/ui/PlayerView;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 3533
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->a:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/anythink/basead/ui/PlayerView$6;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/PlayerView$6;-><init>(Lcom/anythink/basead/ui/PlayerView;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 3540
    iget-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView;->t:Z

    if-nez v0, :cond_177

    .line 3541
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->a:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/anythink/basead/ui/PlayerView$7;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/PlayerView$7;-><init>(Lcom/anythink/basead/ui/PlayerView;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 3555
    :cond_177
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->a:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/anythink/basead/ui/PlayerView$8;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/PlayerView$8;-><init>(Lcom/anythink/basead/ui/PlayerView;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 295
    :cond_181
    nop

    .line 4329
    invoke-virtual {p0, v2}, Lcom/anythink/basead/ui/PlayerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_18b

    .line 4330
    invoke-virtual {p0, v2}, Lcom/anythink/basead/ui/PlayerView;->removeViewAt(I)V

    .line 4333
    :cond_18b
    new-instance v0, Lcom/anythink/basead/ui/CountDownView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/PlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/anythink/basead/ui/CountDownView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->I:Lcom/anythink/basead/ui/CountDownView;

    .line 4334
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "myoffer_count_down_view_id"

    const-string v4, "id"

    invoke-static {v1, v3, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/CountDownView;->setId(I)V

    .line 4335
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/anythink/basead/ui/PlayerView;->B:I

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 4336
    iget v1, p0, Lcom/anythink/basead/ui/PlayerView;->D:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 4337
    iget v1, p0, Lcom/anythink/basead/ui/PlayerView;->E:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 4338
    iget-object v1, p0, Lcom/anythink/basead/ui/PlayerView;->I:Lcom/anythink/basead/ui/CountDownView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/anythink/basead/ui/CountDownView;->setVisibility(I)V

    .line 4339
    iget-object v1, p0, Lcom/anythink/basead/ui/PlayerView;->I:Lcom/anythink/basead/ui/CountDownView;

    invoke-virtual {p0, v1, v2, v0}, Lcom/anythink/basead/ui/PlayerView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 296
    nop

    .line 4343
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/PlayerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1ca

    .line 4344
    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/PlayerView;->removeViewAt(I)V

    .line 4347
    :cond_1ca
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/PlayerView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/anythink/basead/ui/PlayerView;->J:Landroid/widget/ImageView;

    .line 4348
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PlayerView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "myoffer_btn_mute_id"

    invoke-static {v5, v6, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setId(I)V

    .line 4349
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/anythink/basead/ui/PlayerView;->B:I

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 4350
    iget-object v4, p0, Lcom/anythink/basead/ui/PlayerView;->I:Lcom/anythink/basead/ui/CountDownView;

    invoke-virtual {v4}, Lcom/anythink/basead/ui/CountDownView;->getId()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 4351
    iget v2, p0, Lcom/anythink/basead/ui/PlayerView;->C:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 4352
    const/4 v2, 0x6

    iget-object v4, p0, Lcom/anythink/basead/ui/PlayerView;->I:Lcom/anythink/basead/ui/CountDownView;

    invoke-virtual {v4}, Lcom/anythink/basead/ui/CountDownView;->getId()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 4353
    const/16 v2, 0x8

    iget-object v4, p0, Lcom/anythink/basead/ui/PlayerView;->I:Lcom/anythink/basead/ui/CountDownView;

    invoke-virtual {v4}, Lcom/anythink/basead/ui/CountDownView;->getId()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 4354
    iget-object v2, p0, Lcom/anythink/basead/ui/PlayerView;->J:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4355
    iget-object v2, p0, Lcom/anythink/basead/ui/PlayerView;->J:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v0, v1}, Lcom/anythink/basead/ui/PlayerView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 4357
    iget-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView;->O:Z

    if-eqz v0, :cond_221

    .line 4358
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->J:Landroid/widget/ImageView;

    iget v1, p0, Lcom/anythink/basead/ui/PlayerView;->F:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_228

    .line 4360
    :cond_221
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->J:Landroid/widget/ImageView;

    iget v1, p0, Lcom/anythink/basead/ui/PlayerView;->G:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 4363
    :goto_228
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->J:Landroid/widget/ImageView;

    new-instance v1, Lcom/anythink/basead/ui/PlayerView$2;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/PlayerView$2;-><init>(Lcom/anythink/basead/ui/PlayerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    return-void
.end method

.method private a(Landroid/view/ViewGroup;)V
    .registers 4

    .line 159
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 160
    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 161
    return-void
.end method

.method static synthetic a(Lcom/anythink/basead/ui/PlayerView;Z)Z
    .registers 2

    .line 40
    iput-boolean p1, p0, Lcom/anythink/basead/ui/PlayerView;->O:Z

    return p1
.end method

.method static synthetic b(Lcom/anythink/basead/ui/PlayerView;I)I
    .registers 2

    .line 40
    iput p1, p0, Lcom/anythink/basead/ui/PlayerView;->k:I

    return p1
.end method

.method static synthetic b(Lcom/anythink/basead/ui/PlayerView;)Landroid/widget/ImageView;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/anythink/basead/ui/PlayerView;->K:Landroid/widget/ImageView;

    return-object p0
.end method

.method private b()V
    .registers 4

    .line 300
    iget v0, p0, Lcom/anythink/basead/ui/PlayerView;->x:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/anythink/basead/ui/PlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/anythink/basead/ui/PlayerView;->B:I

    .line 301
    iget v0, p0, Lcom/anythink/basead/ui/PlayerView;->y:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/anythink/basead/ui/PlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/anythink/basead/ui/PlayerView;->C:I

    .line 302
    iget v0, p0, Lcom/anythink/basead/ui/PlayerView;->z:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/anythink/basead/ui/PlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/anythink/basead/ui/PlayerView;->D:I

    .line 303
    iget v0, p0, Lcom/anythink/basead/ui/PlayerView;->A:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/anythink/basead/ui/PlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/anythink/basead/ui/PlayerView;->E:I

    .line 305
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_video_mute"

    const-string v2, "drawable"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/anythink/basead/ui/PlayerView;->F:I

    .line 306
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_video_no_mute"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/anythink/basead/ui/PlayerView;->G:I

    .line 307
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_video_close"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/anythink/basead/ui/PlayerView;->H:I

    .line 308
    return-void
.end method

.method static synthetic c(Lcom/anythink/basead/ui/PlayerView;I)I
    .registers 2

    .line 40
    iput p1, p0, Lcom/anythink/basead/ui/PlayerView;->l:I

    return p1
.end method

.method static synthetic c(Lcom/anythink/basead/ui/PlayerView;)J
    .registers 3

    .line 40
    iget-wide v0, p0, Lcom/anythink/basead/ui/PlayerView;->P:J

    return-wide v0
.end method

.method private c()V
    .registers 7

    .line 311
    iget v0, p0, Lcom/anythink/basead/ui/PlayerView;->h:I

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/anythink/basead/ui/PlayerView;->i:I

    if-eqz v0, :cond_9

    .line 312
    return-void

    .line 315
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 316
    iget-object v1, p0, Lcom/anythink/basead/ui/PlayerView;->f:Ljava/io/FileDescriptor;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 5111
    invoke-static {v1}, Lcom/anythink/basead/a/a/e;->a(Ljava/io/FileDescriptor;)Lcom/anythink/basead/a/a/e$a;

    move-result-object v1

    .line 5112
    if-nez v1, :cond_1f

    .line 5113
    const/4 v1, 0x0

    goto :goto_45

    .line 5116
    :cond_1f
    iget v3, v1, Lcom/anythink/basead/a/a/e$a;->a:I

    .line 5117
    iget v4, v1, Lcom/anythink/basead/a/a/e$a;->b:I

    .line 5119
    int-to-float v3, v3

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v3, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 5120
    int-to-float v4, v2

    mul-float/2addr v4, v5

    int-to-float v5, v0

    div-float/2addr v4, v5

    .line 5123
    cmpg-float v4, v3, v4

    if-gez v4, :cond_3b

    .line 5124
    iput v0, v1, Lcom/anythink/basead/a/a/e$a;->b:I

    .line 5125
    iget v0, v1, Lcom/anythink/basead/a/a/e$a;->b:I

    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v1, Lcom/anythink/basead/a/a/e$a;->a:I

    goto :goto_44

    .line 5128
    :cond_3b
    iput v2, v1, Lcom/anythink/basead/a/a/e$a;->a:I

    .line 5129
    iget v0, v1, Lcom/anythink/basead/a/a/e$a;->a:I

    int-to-float v0, v0

    div-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v1, Lcom/anythink/basead/a/a/e$a;->b:I

    .line 5132
    :goto_44
    nop

    .line 316
    :goto_45
    nop

    .line 318
    if-eqz v1, :cond_50

    .line 319
    iget v0, v1, Lcom/anythink/basead/a/a/e$a;->a:I

    iput v0, p0, Lcom/anythink/basead/ui/PlayerView;->h:I

    .line 320
    iget v0, v1, Lcom/anythink/basead/a/a/e$a;->b:I

    iput v0, p0, Lcom/anythink/basead/ui/PlayerView;->i:I
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_50} :catch_51

    .line 324
    :cond_50
    return-void

    .line 323
    :catch_51
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 325
    return-void
.end method

.method static synthetic d(Lcom/anythink/basead/ui/PlayerView;I)I
    .registers 2

    .line 40
    iput p1, p0, Lcom/anythink/basead/ui/PlayerView;->m:I

    return p1
.end method

.method private d()V
    .registers 6

    .line 329
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/PlayerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 330
    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/PlayerView;->removeViewAt(I)V

    .line 333
    :cond_a
    new-instance v1, Lcom/anythink/basead/ui/CountDownView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/PlayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/anythink/basead/ui/CountDownView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/anythink/basead/ui/PlayerView;->I:Lcom/anythink/basead/ui/CountDownView;

    .line 334
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PlayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "myoffer_count_down_view_id"

    const-string v4, "id"

    invoke-static {v2, v3, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/basead/ui/CountDownView;->setId(I)V

    .line 335
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/anythink/basead/ui/PlayerView;->B:I

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 336
    iget v2, p0, Lcom/anythink/basead/ui/PlayerView;->D:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 337
    iget v2, p0, Lcom/anythink/basead/ui/PlayerView;->E:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 338
    iget-object v2, p0, Lcom/anythink/basead/ui/PlayerView;->I:Lcom/anythink/basead/ui/CountDownView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/anythink/basead/ui/CountDownView;->setVisibility(I)V

    .line 339
    iget-object v2, p0, Lcom/anythink/basead/ui/PlayerView;->I:Lcom/anythink/basead/ui/CountDownView;

    invoke-virtual {p0, v2, v0, v1}, Lcom/anythink/basead/ui/PlayerView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 340
    return-void
.end method

.method static synthetic d(Lcom/anythink/basead/ui/PlayerView;)Z
    .registers 1

    .line 40
    iget-boolean p0, p0, Lcom/anythink/basead/ui/PlayerView;->s:Z

    return p0
.end method

.method static synthetic e(Lcom/anythink/basead/ui/PlayerView;I)I
    .registers 2

    .line 40
    iput p1, p0, Lcom/anythink/basead/ui/PlayerView;->n:I

    return p1
.end method

.method private e()V
    .registers 6

    .line 343
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/PlayerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 344
    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/PlayerView;->removeViewAt(I)V

    .line 347
    :cond_a
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/PlayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/anythink/basead/ui/PlayerView;->J:Landroid/widget/ImageView;

    .line 348
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PlayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "myoffer_btn_mute_id"

    const-string v4, "id"

    invoke-static {v2, v3, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setId(I)V

    .line 349
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/anythink/basead/ui/PlayerView;->B:I

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 350
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/anythink/basead/ui/PlayerView;->I:Lcom/anythink/basead/ui/CountDownView;

    invoke-virtual {v3}, Lcom/anythink/basead/ui/CountDownView;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 351
    iget v2, p0, Lcom/anythink/basead/ui/PlayerView;->C:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 352
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/anythink/basead/ui/PlayerView;->I:Lcom/anythink/basead/ui/CountDownView;

    invoke-virtual {v3}, Lcom/anythink/basead/ui/CountDownView;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 353
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/anythink/basead/ui/PlayerView;->I:Lcom/anythink/basead/ui/CountDownView;

    invoke-virtual {v3}, Lcom/anythink/basead/ui/CountDownView;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 354
    iget-object v2, p0, Lcom/anythink/basead/ui/PlayerView;->J:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 355
    iget-object v2, p0, Lcom/anythink/basead/ui/PlayerView;->J:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v0, v1}, Lcom/anythink/basead/ui/PlayerView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 357
    iget-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView;->O:Z

    if-eqz v0, :cond_65

    .line 358
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->J:Landroid/widget/ImageView;

    iget v1, p0, Lcom/anythink/basead/ui/PlayerView;->F:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_6c

    .line 360
    :cond_65
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->J:Landroid/widget/ImageView;

    iget v1, p0, Lcom/anythink/basead/ui/PlayerView;->G:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 363
    :goto_6c
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->J:Landroid/widget/ImageView;

    new-instance v1, Lcom/anythink/basead/ui/PlayerView$2;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/PlayerView$2;-><init>(Lcom/anythink/basead/ui/PlayerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    return-void
.end method

.method static synthetic e(Lcom/anythink/basead/ui/PlayerView;)Z
    .registers 1

    .line 40
    iget-boolean p0, p0, Lcom/anythink/basead/ui/PlayerView;->t:Z

    return p0
.end method

.method private f()V
    .registers 6

    .line 396
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/PlayerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 397
    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/PlayerView;->removeViewAt(I)V

    .line 400
    :cond_a
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/PlayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/anythink/basead/ui/PlayerView;->K:Landroid/widget/ImageView;

    .line 401
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PlayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "myoffer_btn_close_id"

    const-string v4, "id"

    invoke-static {v2, v3, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setId(I)V

    .line 402
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/anythink/basead/ui/PlayerView;->B:I

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 403
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 404
    iget v2, p0, Lcom/anythink/basead/ui/PlayerView;->C:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 405
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/anythink/basead/ui/PlayerView;->I:Lcom/anythink/basead/ui/CountDownView;

    invoke-virtual {v3}, Lcom/anythink/basead/ui/CountDownView;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 406
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/anythink/basead/ui/PlayerView;->I:Lcom/anythink/basead/ui/CountDownView;

    invoke-virtual {v3}, Lcom/anythink/basead/ui/CountDownView;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 407
    iget-object v2, p0, Lcom/anythink/basead/ui/PlayerView;->K:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v0, v1}, Lcom/anythink/basead/ui/PlayerView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 409
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->K:Landroid/widget/ImageView;

    iget v1, p0, Lcom/anythink/basead/ui/PlayerView;->H:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 411
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->K:Landroid/widget/ImageView;

    iget v1, p0, Lcom/anythink/basead/ui/PlayerView;->B:I

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/anythink/basead/ui/a/a;->a(Landroid/view/View;I)V

    .line 413
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->K:Landroid/widget/ImageView;

    new-instance v1, Lcom/anythink/basead/ui/PlayerView$3;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/PlayerView$3;-><init>(Lcom/anythink/basead/ui/PlayerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    return-void
.end method

.method static synthetic f(Lcom/anythink/basead/ui/PlayerView;)Z
    .registers 2

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView;->s:Z

    return v0
.end method

.method static synthetic g(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/PlayerView$a;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/anythink/basead/ui/PlayerView;->v:Lcom/anythink/basead/ui/PlayerView$a;

    return-object p0
.end method

.method private g()V
    .registers 3

    .line 424
    nop

    .line 5429
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->I:Lcom/anythink/basead/ui/CountDownView;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/anythink/basead/ui/CountDownView;->isShown()Z

    move-result v0

    if-nez v0, :cond_11

    .line 5430
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->I:Lcom/anythink/basead/ui/CountDownView;

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/CountDownView;->setVisibility(I)V

    .line 425
    :cond_11
    nop

    .line 5435
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->J:Landroid/widget/ImageView;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-nez v0, :cond_21

    .line 5436
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->J:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 426
    :cond_21
    return-void
.end method

.method private h()V
    .registers 3

    .line 429
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->I:Lcom/anythink/basead/ui/CountDownView;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/anythink/basead/ui/CountDownView;->isShown()Z

    move-result v0

    if-nez v0, :cond_10

    .line 430
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->I:Lcom/anythink/basead/ui/CountDownView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/CountDownView;->setVisibility(I)V

    .line 432
    :cond_10
    return-void
.end method

.method static synthetic h(Lcom/anythink/basead/ui/PlayerView;)Z
    .registers 1

    .line 40
    iget-boolean p0, p0, Lcom/anythink/basead/ui/PlayerView;->o:Z

    return p0
.end method

.method static synthetic i(Lcom/anythink/basead/ui/PlayerView;)I
    .registers 1

    .line 40
    iget p0, p0, Lcom/anythink/basead/ui/PlayerView;->l:I

    return p0
.end method

.method private i()V
    .registers 3

    .line 435
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->J:Landroid/widget/ImageView;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-nez v0, :cond_10

    .line 436
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->J:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 438
    :cond_10
    return-void
.end method

.method private j()V
    .registers 3

    .line 442
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->Q:Ljava/lang/Thread;

    if-eqz v0, :cond_5

    .line 443
    return-void

    .line 445
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView;->r:Z

    .line 446
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/anythink/basead/ui/PlayerView$4;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/PlayerView$4;-><init>(Lcom/anythink/basead/ui/PlayerView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->Q:Ljava/lang/Thread;

    .line 462
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 463
    return-void
.end method

.method static synthetic j(Lcom/anythink/basead/ui/PlayerView;)Z
    .registers 2

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView;->o:Z

    return v0
.end method

.method private k()V
    .registers 2

    .line 466
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView;->r:Z

    .line 467
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->Q:Ljava/lang/Thread;

    .line 468
    return-void
.end method

.method static synthetic k(Lcom/anythink/basead/ui/PlayerView;)Z
    .registers 1

    .line 40
    iget-boolean p0, p0, Lcom/anythink/basead/ui/PlayerView;->p:Z

    return p0
.end method

.method static synthetic l(Lcom/anythink/basead/ui/PlayerView;)I
    .registers 1

    .line 40
    iget p0, p0, Lcom/anythink/basead/ui/PlayerView;->m:I

    return p0
.end method

.method private l()Z
    .registers 3

    .line 477
    invoke-static {}, Lcom/anythink/basead/a/d;->a()Lcom/anythink/basead/a/d;

    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/anythink/basead/a/d;->a(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->e:Ljava/io/FileInputStream;

    .line 478
    nop

    .line 481
    const/4 v1, 0x1

    if-nez v0, :cond_10

    .line 482
    goto :goto_1d

    .line 484
    :cond_10
    :try_start_10
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->f:Ljava/io/FileDescriptor;
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_18

    .line 490
    const/4 v1, 0x0

    goto :goto_1d

    .line 488
    :catchall_18
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 489
    nop

    .line 491
    :goto_1d
    if-eqz v1, :cond_2b

    .line 492
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->e:Ljava/io/FileInputStream;

    if-eqz v0, :cond_2b

    .line 494
    :try_start_23
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    .line 497
    goto :goto_2b

    .line 496
    :catchall_27
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 500
    :cond_2b
    :goto_2b
    return v1
.end method

.method private m()V
    .registers 6

    .line 505
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->a:Landroid/media/MediaPlayer;

    if-nez v0, :cond_4e

    .line 506
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->a:Landroid/media/MediaPlayer;

    .line 507
    iget-boolean v1, p0, Lcom/anythink/basead/ui/PlayerView;->O:Z

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_14

    move v4, v2

    goto :goto_15

    :cond_14
    move v4, v3

    :goto_15
    if-eqz v1, :cond_18

    goto :goto_19

    :cond_18
    move v2, v3

    :goto_19
    invoke-virtual {v0, v4, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 508
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->a:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 509
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->a:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/anythink/basead/ui/PlayerView$5;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/PlayerView$5;-><init>(Lcom/anythink/basead/ui/PlayerView;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 533
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->a:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/anythink/basead/ui/PlayerView$6;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/PlayerView$6;-><init>(Lcom/anythink/basead/ui/PlayerView;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 540
    iget-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView;->t:Z

    if-nez v0, :cond_44

    .line 541
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->a:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/anythink/basead/ui/PlayerView$7;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/PlayerView$7;-><init>(Lcom/anythink/basead/ui/PlayerView;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 555
    :cond_44
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->a:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/anythink/basead/ui/PlayerView$8;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/PlayerView$8;-><init>(Lcom/anythink/basead/ui/PlayerView;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 566
    :cond_4e
    return-void
.end method

.method static synthetic m(Lcom/anythink/basead/ui/PlayerView;)Z
    .registers 2

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView;->p:Z

    return v0
.end method

.method private n()V
    .registers 4

    .line 569
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->c:Landroid/view/TextureView;

    if-nez v0, :cond_43

    .line 570
    new-instance v0, Landroid/view/TextureView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/PlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->c:Landroid/view/TextureView;

    .line 571
    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 572
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->c:Landroid/view/TextureView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setKeepScreenOn(Z)V

    .line 574
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 575
    iget v1, p0, Lcom/anythink/basead/ui/PlayerView;->h:I

    if-eqz v1, :cond_2c

    iget v2, p0, Lcom/anythink/basead/ui/PlayerView;->i:I

    if-eqz v2, :cond_2c

    .line 576
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 577
    iget v1, p0, Lcom/anythink/basead/ui/PlayerView;->i:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 579
    :cond_2c
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 580
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PlayerView;->removeAllViews()V

    .line 581
    iget-object v1, p0, Lcom/anythink/basead/ui/PlayerView;->c:Landroid/view/TextureView;

    invoke-virtual {p0, v1, v0}, Lcom/anythink/basead/ui/PlayerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 583
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->c:Landroid/view/TextureView;

    new-instance v1, Lcom/anythink/basead/ui/PlayerView$9;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/PlayerView$9;-><init>(Lcom/anythink/basead/ui/PlayerView;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 592
    :cond_43
    return-void
.end method

.method static synthetic n(Lcom/anythink/basead/ui/PlayerView;)Z
    .registers 1

    .line 40
    iget-boolean p0, p0, Lcom/anythink/basead/ui/PlayerView;->q:Z

    return p0
.end method

.method static synthetic o(Lcom/anythink/basead/ui/PlayerView;)I
    .registers 1

    .line 40
    iget p0, p0, Lcom/anythink/basead/ui/PlayerView;->n:I

    return p0
.end method

.method private o()V
    .registers 4

    .line 596
    invoke-direct {p0}, Lcom/anythink/basead/ui/PlayerView;->a()V

    .line 598
    :try_start_3
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 600
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->f:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 603
    sget-object v0, Lcom/anythink/basead/ui/PlayerView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "video resource valid - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/basead/ui/PlayerView;->f:Ljava/io/FileDescriptor;

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/anythink/basead/ui/PlayerView;->f:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_5f

    .line 608
    :try_start_31
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->e:Ljava/io/FileInputStream;

    if-eqz v0, :cond_38

    .line 609
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_39

    .line 613
    :cond_38
    goto :goto_3d

    .line 612
    :catchall_39
    move-exception v0

    :try_start_3a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 614
    :goto_3d
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->d:Landroid/view/Surface;

    if-nez v0, :cond_4a

    .line 615
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/anythink/basead/ui/PlayerView;->b:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->d:Landroid/view/Surface;

    .line 617
    :cond_4a
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/anythink/basead/ui/PlayerView;->d:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 618
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 625
    return-void

    .line 601
    :cond_57
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MyOffer video resource is valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5f
    .catchall {:try_start_3a .. :try_end_5f} :catchall_5f

    .line 620
    :catchall_5f
    move-exception v0

    .line 621
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 622
    iget-object v1, p0, Lcom/anythink/basead/ui/PlayerView;->v:Lcom/anythink/basead/ui/PlayerView$a;

    if-eqz v1, :cond_74

    .line 623
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "40002"

    invoke-static {v2, v0}, Lcom/anythink/basead/c/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/f;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/anythink/basead/ui/PlayerView$a;->a(Lcom/anythink/basead/c/f;)V

    .line 626
    :cond_74
    return-void
.end method

.method static synthetic p(Lcom/anythink/basead/ui/PlayerView;)Z
    .registers 2

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView;->q:Z

    return v0
.end method

.method static synthetic q(Lcom/anythink/basead/ui/PlayerView;)V
    .registers 3

    .line 40
    nop

    .line 7424
    nop

    .line 7429
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->I:Lcom/anythink/basead/ui/CountDownView;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/anythink/basead/ui/CountDownView;->isShown()Z

    move-result v0

    if-nez v0, :cond_12

    .line 7430
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->I:Lcom/anythink/basead/ui/CountDownView;

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/CountDownView;->setVisibility(I)V

    .line 7425
    :cond_12
    nop

    .line 7435
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->J:Landroid/widget/ImageView;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-nez v0, :cond_22

    .line 7436
    iget-object p0, p0, Lcom/anythink/basead/ui/PlayerView;->J:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    :cond_22
    return-void
.end method

.method static synthetic r(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/CountDownView;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/anythink/basead/ui/PlayerView;->I:Lcom/anythink/basead/ui/CountDownView;

    return-object p0
.end method

.method static synthetic s(Lcom/anythink/basead/ui/PlayerView;)Z
    .registers 1

    .line 40
    iget-boolean p0, p0, Lcom/anythink/basead/ui/PlayerView;->O:Z

    return p0
.end method

.method static synthetic t(Lcom/anythink/basead/ui/PlayerView;)I
    .registers 1

    .line 40
    iget p0, p0, Lcom/anythink/basead/ui/PlayerView;->F:I

    return p0
.end method

.method static synthetic u(Lcom/anythink/basead/ui/PlayerView;)Landroid/widget/ImageView;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/anythink/basead/ui/PlayerView;->J:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic v(Lcom/anythink/basead/ui/PlayerView;)Landroid/media/MediaPlayer;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/anythink/basead/ui/PlayerView;->a:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic w(Lcom/anythink/basead/ui/PlayerView;)I
    .registers 1

    .line 40
    iget p0, p0, Lcom/anythink/basead/ui/PlayerView;->G:I

    return p0
.end method

.method static synthetic x(Lcom/anythink/basead/ui/PlayerView;)Z
    .registers 1

    .line 40
    iget-boolean p0, p0, Lcom/anythink/basead/ui/PlayerView;->r:Z

    return p0
.end method

.method static synthetic y(Lcom/anythink/basead/ui/PlayerView;)Landroid/os/Handler;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/anythink/basead/ui/PlayerView;->w:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic z(Lcom/anythink/basead/ui/PlayerView;)Z
    .registers 2

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView;->u:Z

    return v0
.end method


# virtual methods
.method public getCurrentPosition()I
    .registers 2

    .line 690
    iget v0, p0, Lcom/anythink/basead/ui/PlayerView;->j:I

    if-gez v0, :cond_5

    const/4 v0, 0x0

    :cond_5
    return v0
.end method

.method public getVideoLength()I
    .registers 2

    .line 694
    iget v0, p0, Lcom/anythink/basead/ui/PlayerView;->k:I

    return v0
.end method

.method public isPlaying()Z
    .registers 3

    .line 683
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_d

    iget-boolean v1, p0, Lcom/anythink/basead/ui/PlayerView;->u:Z

    if-eqz v1, :cond_d

    .line 684
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0

    .line 686
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public load(Ljava/lang/String;)V
    .registers 2

    .line 471
    iput-object p1, p0, Lcom/anythink/basead/ui/PlayerView;->g:Ljava/lang/String;

    .line 473
    invoke-direct {p0}, Lcom/anythink/basead/ui/PlayerView;->a()V

    .line 474
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 723
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 724
    sget-object v0, Lcom/anythink/basead/ui/PlayerView;->TAG:Ljava/lang/String;

    const-string v1, "onDetachedFromWindow()..."

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PlayerView;->release()V

    .line 726
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6

    .line 183
    sget-object v0, Lcom/anythink/basead/ui/PlayerView;->TAG:Ljava/lang/String;

    const-string v1, "onRestoreInstanceState..."

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    check-cast p1, Lcom/anythink/basead/ui/PlayerView$b;

    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/basead/ui/PlayerView$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p1}, Lcom/anythink/basead/ui/PlayerView$b;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 187
    iget v0, p1, Lcom/anythink/basead/ui/PlayerView$b;->a:I

    iput v0, p0, Lcom/anythink/basead/ui/PlayerView;->j:I

    .line 188
    iget-boolean v0, p1, Lcom/anythink/basead/ui/PlayerView$b;->b:Z

    iput-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView;->o:Z

    .line 189
    iget-boolean v0, p1, Lcom/anythink/basead/ui/PlayerView$b;->c:Z

    iput-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView;->p:Z

    .line 190
    iget-boolean v0, p1, Lcom/anythink/basead/ui/PlayerView$b;->d:Z

    iput-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView;->q:Z

    .line 191
    iget-boolean v0, p1, Lcom/anythink/basead/ui/PlayerView$b;->e:Z

    iput-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView;->s:Z

    .line 192
    iget-boolean v0, p1, Lcom/anythink/basead/ui/PlayerView$b;->f:Z

    iput-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView;->t:Z

    .line 193
    iget-boolean p1, p1, Lcom/anythink/basead/ui/PlayerView$b;->g:Z

    iput-boolean p1, p0, Lcom/anythink/basead/ui/PlayerView;->O:Z

    .line 195
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_53

    .line 196
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_4b

    move v3, v1

    goto :goto_4c

    :cond_4b
    move v3, v2

    :goto_4c
    if-eqz p1, :cond_4f

    goto :goto_50

    :cond_4f
    move v1, v2

    :goto_50
    invoke-virtual {v0, v3, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 199
    :cond_53
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 5

    .line 165
    sget-object v0, Lcom/anythink/basead/ui/PlayerView;->TAG:Ljava/lang/String;

    const-string v1, "onSaveInstanceState..."

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 167
    new-instance v3, Lcom/anythink/basead/ui/PlayerView$b;

    invoke-direct {v3, v2}, Lcom/anythink/basead/ui/PlayerView$b;-><init>(Landroid/os/Parcelable;)V

    .line 169
    iget v2, p0, Lcom/anythink/basead/ui/PlayerView;->j:I

    iput v2, v3, Lcom/anythink/basead/ui/PlayerView$b;->a:I

    .line 170
    iget-boolean v2, p0, Lcom/anythink/basead/ui/PlayerView;->o:Z

    iput-boolean v2, v3, Lcom/anythink/basead/ui/PlayerView$b;->b:Z

    .line 171
    iget-boolean v2, p0, Lcom/anythink/basead/ui/PlayerView;->p:Z

    iput-boolean v2, v3, Lcom/anythink/basead/ui/PlayerView$b;->c:Z

    .line 172
    iget-boolean v2, p0, Lcom/anythink/basead/ui/PlayerView;->q:Z

    iput-boolean v2, v3, Lcom/anythink/basead/ui/PlayerView$b;->d:Z

    .line 173
    iget-boolean v2, p0, Lcom/anythink/basead/ui/PlayerView;->s:Z

    iput-boolean v2, v3, Lcom/anythink/basead/ui/PlayerView$b;->e:Z

    .line 174
    iget-boolean v2, p0, Lcom/anythink/basead/ui/PlayerView;->t:Z

    iput-boolean v2, v3, Lcom/anythink/basead/ui/PlayerView$b;->f:Z

    .line 175
    iget-boolean v2, p0, Lcom/anythink/basead/ui/PlayerView;->O:Z

    iput-boolean v2, v3, Lcom/anythink/basead/ui/PlayerView$b;->g:Z

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/anythink/basead/ui/PlayerView$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-object v3
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    .line 699
    sget-object p2, Lcom/anythink/basead/ui/PlayerView;->TAG:Ljava/lang/String;

    const-string p3, "onSurfaceTextureAvailable()..."

    invoke-static {p2, p3}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    iput-object p1, p0, Lcom/anythink/basead/ui/PlayerView;->b:Landroid/graphics/SurfaceTexture;

    .line 701
    nop

    .line 6596
    invoke-direct {p0}, Lcom/anythink/basead/ui/PlayerView;->a()V

    .line 6598
    :try_start_d
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 6600
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView;->f:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->valid()Z

    move-result p1

    if-eqz p1, :cond_5f

    .line 6603
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "video resource valid - "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/anythink/basead/ui/PlayerView;->f:Ljava/io/FileDescriptor;

    invoke-virtual {p3}, Ljava/io/FileDescriptor;->valid()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6606
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView;->a:Landroid/media/MediaPlayer;

    iget-object p2, p0, Lcom/anythink/basead/ui/PlayerView;->f:Ljava/io/FileDescriptor;

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_39
    .catchall {:try_start_d .. :try_end_39} :catchall_67

    .line 6608
    :try_start_39
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView;->e:Ljava/io/FileInputStream;

    if-eqz p1, :cond_40

    .line 6609
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_41

    .line 6613
    :cond_40
    goto :goto_45

    .line 6612
    :catchall_41
    move-exception p1

    :try_start_42
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 6614
    :goto_45
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView;->d:Landroid/view/Surface;

    if-nez p1, :cond_52

    .line 6615
    new-instance p1, Landroid/view/Surface;

    iget-object p2, p0, Lcom/anythink/basead/ui/PlayerView;->b:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p1, p0, Lcom/anythink/basead/ui/PlayerView;->d:Landroid/view/Surface;

    .line 6617
    :cond_52
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView;->a:Landroid/media/MediaPlayer;

    iget-object p2, p0, Lcom/anythink/basead/ui/PlayerView;->d:Landroid/view/Surface;

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 6618
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 6625
    return-void

    .line 6601
    :cond_5f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "MyOffer video resource is valid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_67
    .catchall {:try_start_42 .. :try_end_67} :catchall_67

    .line 6620
    :catchall_67
    move-exception p1

    .line 6621
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 6622
    iget-object p2, p0, Lcom/anythink/basead/ui/PlayerView;->v:Lcom/anythink/basead/ui/PlayerView$a;

    if-eqz p2, :cond_7c

    .line 6623
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p3, "40002"

    invoke-static {p3, p1}, Lcom/anythink/basead/c/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/f;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/anythink/basead/ui/PlayerView$a;->a(Lcom/anythink/basead/c/f;)V

    .line 702
    :cond_7c
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 3

    .line 711
    sget-object p1, Lcom/anythink/basead/ui/PlayerView;->TAG:Ljava/lang/String;

    const-string v0, "onSurfaceTextureDestroyed()..."

    invoke-static {p1, v0}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PlayerView;->release()V

    .line 713
    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    .line 707
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    .line 719
    return-void
.end method

.method public pause()V
    .registers 3

    .line 642
    sget-object v0, Lcom/anythink/basead/ui/PlayerView;->TAG:Ljava/lang/String;

    const-string v1, "pause()"

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    invoke-direct {p0}, Lcom/anythink/basead/ui/PlayerView;->k()V

    .line 644
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PlayerView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 645
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 647
    :cond_15
    return-void
.end method

.method public release()V
    .registers 3

    .line 661
    iget-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView;->u:Z

    if-nez v0, :cond_5

    .line 662
    return-void

    .line 664
    :cond_5
    sget-object v0, Lcom/anythink/basead/ui/PlayerView;->TAG:Ljava/lang/String;

    const-string v1, "release..."

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    invoke-direct {p0}, Lcom/anythink/basead/ui/PlayerView;->k()V

    .line 666
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->b:Landroid/graphics/SurfaceTexture;

    .line 667
    iput-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->d:Landroid/view/Surface;

    .line 668
    iget-object v1, p0, Lcom/anythink/basead/ui/PlayerView;->a:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2f

    .line 669
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 670
    iget-object v1, p0, Lcom/anythink/basead/ui/PlayerView;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 672
    :cond_23
    iget-object v1, p0, Lcom/anythink/basead/ui/PlayerView;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 673
    iget-object v1, p0, Lcom/anythink/basead/ui/PlayerView;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 674
    iput-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->a:Landroid/media/MediaPlayer;

    .line 676
    :cond_2f
    iget-object v1, p0, Lcom/anythink/basead/ui/PlayerView;->w:Landroid/os/Handler;

    if-eqz v1, :cond_36

    .line 677
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 679
    :cond_36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView;->u:Z

    .line 680
    return-void
.end method

.method public setSetting(Lcom/anythink/core/common/d/j;)V
    .registers 5

    .line 270
    if-nez p1, :cond_3

    .line 271
    return-void

    .line 274
    :cond_3
    invoke-virtual {p1}, Lcom/anythink/core/common/d/j;->n()I

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView;->O:Z

    .line 275
    invoke-virtual {p1}, Lcom/anythink/core/common/d/j;->o()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/anythink/basead/ui/PlayerView;->P:J

    .line 276
    sget-object p1, Lcom/anythink/basead/ui/PlayerView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isMute - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/anythink/basead/ui/PlayerView;->O:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showCloseTime - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/anythink/basead/ui/PlayerView;->P:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method public showCloseButton()V
    .registers 6

    .line 629
    nop

    .line 6396
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/PlayerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 6397
    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/PlayerView;->removeViewAt(I)V

    .line 6400
    :cond_b
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/PlayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/anythink/basead/ui/PlayerView;->K:Landroid/widget/ImageView;

    .line 6401
    invoke-virtual {p0}, Lcom/anythink/basead/ui/PlayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "myoffer_btn_close_id"

    const-string v4, "id"

    invoke-static {v2, v3, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setId(I)V

    .line 6402
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/anythink/basead/ui/PlayerView;->B:I

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 6403
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 6404
    iget v2, p0, Lcom/anythink/basead/ui/PlayerView;->C:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 6405
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/anythink/basead/ui/PlayerView;->I:Lcom/anythink/basead/ui/CountDownView;

    invoke-virtual {v3}, Lcom/anythink/basead/ui/CountDownView;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 6406
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/anythink/basead/ui/PlayerView;->I:Lcom/anythink/basead/ui/CountDownView;

    invoke-virtual {v3}, Lcom/anythink/basead/ui/CountDownView;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 6407
    iget-object v2, p0, Lcom/anythink/basead/ui/PlayerView;->K:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v0, v1}, Lcom/anythink/basead/ui/PlayerView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 6409
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->K:Landroid/widget/ImageView;

    iget v1, p0, Lcom/anythink/basead/ui/PlayerView;->H:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6411
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->K:Landroid/widget/ImageView;

    iget v1, p0, Lcom/anythink/basead/ui/PlayerView;->B:I

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/anythink/basead/ui/a/a;->a(Landroid/view/View;I)V

    .line 6413
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->K:Landroid/widget/ImageView;

    new-instance v1, Lcom/anythink/basead/ui/PlayerView$3;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/PlayerView$3;-><init>(Lcom/anythink/basead/ui/PlayerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 630
    return-void
.end method

.method public start()V
    .registers 3

    .line 634
    sget-object v0, Lcom/anythink/basead/ui/PlayerView;->TAG:Ljava/lang/String;

    const-string v1, "start()"

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_12

    iget-boolean v1, p0, Lcom/anythink/basead/ui/PlayerView;->u:Z

    if-eqz v1, :cond_12

    .line 636
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 638
    :cond_12
    nop

    .line 6442
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->Q:Ljava/lang/Thread;

    if-nez v0, :cond_29

    .line 6445
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/basead/ui/PlayerView;->r:Z

    .line 6446
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/anythink/basead/ui/PlayerView$4;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/PlayerView$4;-><init>(Lcom/anythink/basead/ui/PlayerView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->Q:Ljava/lang/Thread;

    .line 6462
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 639
    :cond_29
    return-void
.end method

.method public stop()V
    .registers 3

    .line 650
    sget-object v0, Lcom/anythink/basead/ui/PlayerView;->TAG:Ljava/lang/String;

    const-string v1, "stop()"

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_e

    .line 652
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 655
    :cond_e
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView;->v:Lcom/anythink/basead/ui/PlayerView$a;

    if-eqz v0, :cond_15

    .line 656
    invoke-interface {v0}, Lcom/anythink/basead/ui/PlayerView$a;->b()V

    .line 658
    :cond_15
    return-void
.end method
