.class public Lcom/anythink/myoffer/ui/f;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/myoffer/ui/f$a;,
        Lcom/anythink/myoffer/ui/f$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:Lcom/anythink/myoffer/ui/b;

.field private K:Landroid/widget/ImageView;

.field private L:Landroid/widget/ImageView;

.field private final M:I

.field private final N:I

.field private final O:I

.field private P:Z

.field private Q:J

.field private R:Ljava/lang/Thread;

.field private b:Landroid/media/MediaPlayer;

.field private c:Landroid/graphics/SurfaceTexture;

.field private d:Landroid/view/TextureView;

.field private e:Landroid/view/Surface;

.field private f:Ljava/io/FileInputStream;

.field private g:Ljava/io/FileDescriptor;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Lcom/anythink/myoffer/ui/f$a;

.field private x:Landroid/os/Handler;

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const-class v0, Lcom/anythink/myoffer/ui/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/myoffer/ui/f;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lcom/anythink/myoffer/ui/f$a;)V
    .registers 9

    .prologue
    const/16 v1, 0x13

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 95
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 50
    iput v4, p0, Lcom/anythink/myoffer/ui/f;->k:I

    .line 59
    iput-boolean v3, p0, Lcom/anythink/myoffer/ui/f;->s:Z

    .line 60
    iput-boolean v3, p0, Lcom/anythink/myoffer/ui/f;->t:Z

    .line 61
    iput-boolean v3, p0, Lcom/anythink/myoffer/ui/f;->u:Z

    .line 62
    iput-boolean v3, p0, Lcom/anythink/myoffer/ui/f;->v:Z

    .line 69
    const/16 v0, 0x1d

    iput v0, p0, Lcom/anythink/myoffer/ui/f;->y:I

    .line 70
    iput v1, p0, Lcom/anythink/myoffer/ui/f;->z:I

    .line 71
    iput v1, p0, Lcom/anythink/myoffer/ui/f;->A:I

    .line 72
    const/16 v0, 0x1e

    iput v0, p0, Lcom/anythink/myoffer/ui/f;->B:I

    .line 85
    iput v5, p0, Lcom/anythink/myoffer/ui/f;->M:I

    .line 86
    const/4 v0, 0x2

    iput v0, p0, Lcom/anythink/myoffer/ui/f;->N:I

    .line 87
    const/4 v0, 0x3

    iput v0, p0, Lcom/anythink/myoffer/ui/f;->O:I

    .line 96
    iput-object p2, p0, Lcom/anythink/myoffer/ui/f;->w:Lcom/anythink/myoffer/ui/f$a;

    .line 98
    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/f;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_player_view_id"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/myoffer/ui/f;->setId(I)V

    .line 99
    invoke-virtual {p0, v5}, Lcom/anythink/myoffer/ui/f;->setSaveEnabled(Z)V

    .line 1156
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1157
    invoke-virtual {p1, p0, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 102
    new-instance v0, Lcom/anythink/myoffer/ui/f$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/anythink/myoffer/ui/f$1;-><init>(Lcom/anythink/myoffer/ui/f;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/anythink/myoffer/ui/f;->x:Landroid/os/Handler;

    .line 153
    return-void
.end method

.method static synthetic A(Lcom/anythink/myoffer/ui/f;)I
    .registers 2

    .prologue
    .line 34
    iget v0, p0, Lcom/anythink/myoffer/ui/f;->l:I

    return v0
.end method

.method static synthetic B(Lcom/anythink/myoffer/ui/f;)V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/anythink/myoffer/ui/f;->p()V

    return-void
.end method

.method static synthetic C(Lcom/anythink/myoffer/ui/f;)Z
    .registers 2

    .prologue
    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/myoffer/ui/f;->u:Z

    return v0
.end method

.method static synthetic a(Lcom/anythink/myoffer/ui/f;)I
    .registers 2

    .prologue
    .line 34
    iget v0, p0, Lcom/anythink/myoffer/ui/f;->k:I

    return v0
.end method

.method static synthetic a(Lcom/anythink/myoffer/ui/f;I)I
    .registers 2

    .prologue
    .line 34
    iput p1, p0, Lcom/anythink/myoffer/ui/f;->k:I

    return p1
.end method

.method private a(Landroid/view/ViewGroup;)V
    .registers 4

    .prologue
    const/4 v1, -0x1

    .line 156
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 157
    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 158
    return-void
.end method

.method static synthetic a(Lcom/anythink/myoffer/ui/f;Z)Z
    .registers 2

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/anythink/myoffer/ui/f;->P:Z

    return p1
.end method

.method static synthetic b(Lcom/anythink/myoffer/ui/f;I)I
    .registers 2

    .prologue
    .line 34
    iput p1, p0, Lcom/anythink/myoffer/ui/f;->l:I

    return p1
.end method

.method static synthetic b(Lcom/anythink/myoffer/ui/f;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->L:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/anythink/myoffer/ui/f;I)I
    .registers 2

    .prologue
    .line 34
    iput p1, p0, Lcom/anythink/myoffer/ui/f;->m:I

    return p1
.end method

.method static synthetic c(Lcom/anythink/myoffer/ui/f;)J
    .registers 3

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/anythink/myoffer/ui/f;->Q:J

    return-wide v0
.end method

.method static synthetic d(Lcom/anythink/myoffer/ui/f;I)I
    .registers 2

    .prologue
    .line 34
    iput p1, p0, Lcom/anythink/myoffer/ui/f;->n:I

    return p1
.end method

.method static synthetic d(Lcom/anythink/myoffer/ui/f;)Z
    .registers 2

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/anythink/myoffer/ui/f;->t:Z

    return v0
.end method

.method static synthetic e(Lcom/anythink/myoffer/ui/f;I)I
    .registers 2

    .prologue
    .line 34
    iput p1, p0, Lcom/anythink/myoffer/ui/f;->o:I

    return p1
.end method

.method static synthetic e(Lcom/anythink/myoffer/ui/f;)Z
    .registers 2

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/anythink/myoffer/ui/f;->u:Z

    return v0
.end method

.method private f()V
    .registers 12

    .prologue
    const/4 v10, -0x1

    const/4 v1, 0x0

    const/4 v9, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    .line 278
    sget-object v0, Lcom/anythink/myoffer/ui/f;->a:Ljava/lang/String;

    const-string v3, "init..."

    invoke-static {v0, v3}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-direct {p0}, Lcom/anythink/myoffer/ui/f;->q()Z

    move-result v0

    .line 280
    if-eqz v0, :cond_25

    .line 281
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->w:Lcom/anythink/myoffer/ui/f$a;

    if-eqz v0, :cond_24

    .line 282
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->w:Lcom/anythink/myoffer/ui/f$a;

    const-string v1, "40002"

    const-string v2, "Video file error!"

    invoke-static {v1, v2}, Lcom/anythink/network/myoffer/MyOfferErrorCode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/network/myoffer/MyOfferError;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/myoffer/ui/f$a;->a(Lcom/anythink/network/myoffer/MyOfferError;)V

    .line 294
    :cond_24
    :goto_24
    return-void

    .line 1297
    :cond_25
    iget v0, p0, Lcom/anythink/myoffer/ui/f;->y:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/f;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v8, v0, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/anythink/myoffer/ui/f;->C:I

    .line 1298
    iget v0, p0, Lcom/anythink/myoffer/ui/f;->z:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/f;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v8, v0, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/anythink/myoffer/ui/f;->D:I

    .line 1299
    iget v0, p0, Lcom/anythink/myoffer/ui/f;->A:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/f;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v8, v0, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/anythink/myoffer/ui/f;->E:I

    .line 1300
    iget v0, p0, Lcom/anythink/myoffer/ui/f;->B:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/f;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v8, v0, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/anythink/myoffer/ui/f;->F:I

    .line 1302
    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/f;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "myoffer_video_mute"

    const-string v4, "drawable"

    invoke-static {v0, v3, v4}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/anythink/myoffer/ui/f;->G:I

    .line 1303
    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/f;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "myoffer_video_no_mute"

    const-string v4, "drawable"

    invoke-static {v0, v3, v4}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/anythink/myoffer/ui/f;->H:I

    .line 1304
    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/f;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "myoffer_video_close"

    const-string v4, "drawable"

    invoke-static {v0, v3, v4}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/anythink/myoffer/ui/f;->I:I

    .line 1308
    iget v0, p0, Lcom/anythink/myoffer/ui/f;->i:I

    if-eqz v0, :cond_af

    iget v0, p0, Lcom/anythink/myoffer/ui/f;->j:I

    if-nez v0, :cond_ce

    .line 1312
    :cond_af
    :try_start_af
    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/f;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1313
    iget-object v3, p0, Lcom/anythink/myoffer/ui/f;->g:Ljava/io/FileDescriptor;

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2104
    invoke-static {v3}, Lcom/anythink/myoffer/a/a/i;->a(Ljava/io/FileDescriptor;)Lcom/anythink/myoffer/a/a/i$a;

    move-result-object v0

    .line 2105
    if-nez v0, :cond_211

    .line 2106
    const/4 v0, 0x0

    .line 1315
    :goto_c4
    if-eqz v0, :cond_ce

    .line 1316
    iget v3, v0, Lcom/anythink/myoffer/a/a/i$a;->a:I

    iput v3, p0, Lcom/anythink/myoffer/ui/f;->i:I

    .line 1317
    iget v0, v0, Lcom/anythink/myoffer/a/a/i$a;->b:I

    iput v0, p0, Lcom/anythink/myoffer/ui/f;->j:I
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_ce} :catch_22c

    .line 2559
    :cond_ce
    :goto_ce
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->d:Landroid/view/TextureView;

    if-nez v0, :cond_113

    .line 2560
    new-instance v0, Landroid/view/TextureView;

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/f;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/myoffer/ui/f;->d:Landroid/view/TextureView;

    .line 2561
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->d:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 2562
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->d:Landroid/view/TextureView;

    invoke-virtual {v0, v8}, Landroid/view/TextureView;->setKeepScreenOn(Z)V

    .line 2564
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2565
    iget v3, p0, Lcom/anythink/myoffer/ui/f;->i:I

    if-eqz v3, :cond_fc

    iget v3, p0, Lcom/anythink/myoffer/ui/f;->j:I

    if-eqz v3, :cond_fc

    .line 2566
    iget v3, p0, Lcom/anythink/myoffer/ui/f;->i:I

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2567
    iget v3, p0, Lcom/anythink/myoffer/ui/f;->j:I

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2569
    :cond_fc
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2570
    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/f;->removeAllViews()V

    .line 2571
    iget-object v3, p0, Lcom/anythink/myoffer/ui/f;->d:Landroid/view/TextureView;

    invoke-virtual {p0, v3, v0}, Lcom/anythink/myoffer/ui/f;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2573
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->d:Landroid/view/TextureView;

    new-instance v3, Lcom/anythink/myoffer/ui/f$9;

    invoke-direct {v3, p0}, Lcom/anythink/myoffer/ui/f$9;-><init>(Lcom/anythink/myoffer/ui/f;)V

    invoke-virtual {v0, v3}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3495
    :cond_113
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->b:Landroid/media/MediaPlayer;

    if-nez v0, :cond_15e

    .line 3496
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/anythink/myoffer/ui/f;->b:Landroid/media/MediaPlayer;

    .line 3497
    iget-object v3, p0, Lcom/anythink/myoffer/ui/f;->b:Landroid/media/MediaPlayer;

    iget-boolean v0, p0, Lcom/anythink/myoffer/ui/f;->P:Z

    if-eqz v0, :cond_23e

    move v0, v1

    :goto_125
    iget-boolean v4, p0, Lcom/anythink/myoffer/ui/f;->P:Z

    if-eqz v4, :cond_241

    :goto_129
    invoke-virtual {v3, v0, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 3498
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->b:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 3499
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->b:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/anythink/myoffer/ui/f$5;

    invoke-direct {v1, p0}, Lcom/anythink/myoffer/ui/f$5;-><init>(Lcom/anythink/myoffer/ui/f;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 3523
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->b:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/anythink/myoffer/ui/f$6;

    invoke-direct {v1, p0}, Lcom/anythink/myoffer/ui/f$6;-><init>(Lcom/anythink/myoffer/ui/f;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 3530
    iget-boolean v0, p0, Lcom/anythink/myoffer/ui/f;->u:Z

    if-nez v0, :cond_154

    .line 3531
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->b:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/anythink/myoffer/ui/f$7;

    invoke-direct {v1, p0}, Lcom/anythink/myoffer/ui/f$7;-><init>(Lcom/anythink/myoffer/ui/f;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 3545
    :cond_154
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->b:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/anythink/myoffer/ui/f$8;

    invoke-direct {v1, p0}, Lcom/anythink/myoffer/ui/f$8;-><init>(Lcom/anythink/myoffer/ui/f;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 4326
    :cond_15e
    invoke-virtual {p0, v8}, Lcom/anythink/myoffer/ui/f;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_167

    .line 4327
    invoke-virtual {p0, v8}, Lcom/anythink/myoffer/ui/f;->removeViewAt(I)V

    .line 4330
    :cond_167
    new-instance v0, Lcom/anythink/myoffer/ui/b;

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/f;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/anythink/myoffer/ui/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/myoffer/ui/f;->J:Lcom/anythink/myoffer/ui/b;

    .line 4331
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->J:Lcom/anythink/myoffer/ui/b;

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/f;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_count_down_view_id"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/ui/b;->setId(I)V

    .line 4332
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/anythink/myoffer/ui/f;->C:I

    iget v2, p0, Lcom/anythink/myoffer/ui/f;->C:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 4333
    iget v1, p0, Lcom/anythink/myoffer/ui/f;->E:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 4334
    iget v1, p0, Lcom/anythink/myoffer/ui/f;->F:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 4335
    iget-object v1, p0, Lcom/anythink/myoffer/ui/f;->J:Lcom/anythink/myoffer/ui/b;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/anythink/myoffer/ui/b;->setVisibility(I)V

    .line 4336
    iget-object v1, p0, Lcom/anythink/myoffer/ui/f;->J:Lcom/anythink/myoffer/ui/b;

    invoke-virtual {p0, v1, v8, v0}, Lcom/anythink/myoffer/ui/f;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 4340
    invoke-virtual {p0, v9}, Lcom/anythink/myoffer/ui/f;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1a8

    .line 4341
    invoke-virtual {p0, v9}, Lcom/anythink/myoffer/ui/f;->removeViewAt(I)V

    .line 4344
    :cond_1a8
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/f;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/myoffer/ui/f;->K:Landroid/widget/ImageView;

    .line 4345
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->K:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/f;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_btn_mute_id"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 4346
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/anythink/myoffer/ui/f;->C:I

    iget v2, p0, Lcom/anythink/myoffer/ui/f;->C:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 4347
    iget-object v1, p0, Lcom/anythink/myoffer/ui/f;->J:Lcom/anythink/myoffer/ui/b;

    invoke-virtual {v1}, Lcom/anythink/myoffer/ui/b;->getId()I

    move-result v1

    invoke-virtual {v0, v8, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 4348
    iget v1, p0, Lcom/anythink/myoffer/ui/f;->D:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 4349
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/anythink/myoffer/ui/f;->J:Lcom/anythink/myoffer/ui/b;

    invoke-virtual {v2}, Lcom/anythink/myoffer/ui/b;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 4350
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/anythink/myoffer/ui/f;->J:Lcom/anythink/myoffer/ui/b;

    invoke-virtual {v2}, Lcom/anythink/myoffer/ui/b;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 4351
    iget-object v1, p0, Lcom/anythink/myoffer/ui/f;->K:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4352
    iget-object v1, p0, Lcom/anythink/myoffer/ui/f;->K:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v9, v0}, Lcom/anythink/myoffer/ui/f;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 4354
    iget-boolean v0, p0, Lcom/anythink/myoffer/ui/f;->P:Z

    if-eqz v0, :cond_244

    .line 4355
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->K:Landroid/widget/ImageView;

    iget v1, p0, Lcom/anythink/myoffer/ui/f;->G:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 4360
    :goto_205
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->K:Landroid/widget/ImageView;

    new-instance v1, Lcom/anythink/myoffer/ui/f$2;

    invoke-direct {v1, p0}, Lcom/anythink/myoffer/ui/f$2;-><init>(Lcom/anythink/myoffer/ui/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_24

    .line 2109
    :cond_211
    :try_start_211
    iget v3, v0, Lcom/anythink/myoffer/a/a/i$a;->a:I

    .line 2110
    iget v6, v0, Lcom/anythink/myoffer/a/a/i$a;->b:I

    .line 2112
    int-to-float v3, v3

    mul-float/2addr v3, v2

    int-to-float v6, v6

    div-float/2addr v3, v6

    .line 2113
    int-to-float v6, v4

    mul-float/2addr v6, v2

    int-to-float v7, v5

    div-float/2addr v6, v7

    .line 2116
    cmpg-float v6, v3, v6

    if-gez v6, :cond_232

    .line 2117
    iput v5, v0, Lcom/anythink/myoffer/a/a/i$a;->b:I

    .line 2118
    iget v4, v0, Lcom/anythink/myoffer/a/a/i$a;->b:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Lcom/anythink/myoffer/a/a/i$a;->a:I
    :try_end_22a
    .catch Ljava/lang/Exception; {:try_start_211 .. :try_end_22a} :catch_22c

    goto/16 :goto_c4

    .line 1320
    :catch_22c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_ce

    .line 2121
    :cond_232
    :try_start_232
    iput v4, v0, Lcom/anythink/myoffer/a/a/i$a;->a:I

    .line 2122
    iget v4, v0, Lcom/anythink/myoffer/a/a/i$a;->a:I

    int-to-float v4, v4

    div-float v3, v4, v3

    float-to-int v3, v3

    iput v3, v0, Lcom/anythink/myoffer/a/a/i$a;->b:I
    :try_end_23c
    .catch Ljava/lang/Exception; {:try_start_232 .. :try_end_23c} :catch_22c

    goto/16 :goto_c4

    :cond_23e
    move v0, v2

    .line 3497
    goto/16 :goto_125

    :cond_241
    move v1, v2

    goto/16 :goto_129

    .line 4357
    :cond_244
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->K:Landroid/widget/ImageView;

    iget v1, p0, Lcom/anythink/myoffer/ui/f;->H:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_205
.end method

.method static synthetic f(Lcom/anythink/myoffer/ui/f;)Z
    .registers 2

    .prologue
    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/myoffer/ui/f;->t:Z

    return v0
.end method

.method static synthetic g(Lcom/anythink/myoffer/ui/f;)Lcom/anythink/myoffer/ui/f$a;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->w:Lcom/anythink/myoffer/ui/f$a;

    return-object v0
.end method

.method private g()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 297
    iget v0, p0, Lcom/anythink/myoffer/ui/f;->y:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/f;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/anythink/myoffer/ui/f;->C:I

    .line 298
    iget v0, p0, Lcom/anythink/myoffer/ui/f;->z:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/f;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/anythink/myoffer/ui/f;->D:I

    .line 299
    iget v0, p0, Lcom/anythink/myoffer/ui/f;->A:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/f;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/anythink/myoffer/ui/f;->E:I

    .line 300
    iget v0, p0, Lcom/anythink/myoffer/ui/f;->B:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/f;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/anythink/myoffer/ui/f;->F:I

    .line 302
    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/f;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_video_mute"

    const-string v2, "drawable"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/anythink/myoffer/ui/f;->G:I

    .line 303
    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/f;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_video_no_mute"

    const-string v2, "drawable"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/anythink/myoffer/ui/f;->H:I

    .line 304
    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/f;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_video_close"

    const-string v2, "drawable"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/anythink/myoffer/ui/f;->I:I

    .line 305
    return-void
.end method

.method private h()V
    .registers 7

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 308
    iget v0, p0, Lcom/anythink/myoffer/ui/f;->i:I

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/anythink/myoffer/ui/f;->j:I

    if-eqz v0, :cond_b

    .line 322
    :cond_a
    :goto_a
    return-void

    .line 312
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/f;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 313
    iget-object v1, p0, Lcom/anythink/myoffer/ui/f;->g:Ljava/io/FileDescriptor;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 5104
    invoke-static {v1}, Lcom/anythink/myoffer/a/a/i;->a(Ljava/io/FileDescriptor;)Lcom/anythink/myoffer/a/a/i$a;

    move-result-object v0

    .line 5105
    if-nez v0, :cond_30

    .line 5106
    const/4 v0, 0x0

    .line 315
    :goto_20
    if-eqz v0, :cond_a

    .line 316
    iget v1, v0, Lcom/anythink/myoffer/a/a/i$a;->a:I

    iput v1, p0, Lcom/anythink/myoffer/ui/f;->i:I

    .line 317
    iget v0, v0, Lcom/anythink/myoffer/a/a/i$a;->b:I

    iput v0, p0, Lcom/anythink/myoffer/ui/f;->j:I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2a} :catch_2b

    goto :goto_a

    .line 320
    :catch_2b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    .line 5109
    :cond_30
    :try_start_30
    iget v1, v0, Lcom/anythink/myoffer/a/a/i$a;->a:I

    .line 5110
    iget v4, v0, Lcom/anythink/myoffer/a/a/i$a;->b:I

    .line 5112
    int-to-float v1, v1

    mul-float/2addr v1, v5

    int-to-float v4, v4

    div-float/2addr v1, v4

    .line 5113
    int-to-float v4, v2

    mul-float/2addr v4, v5

    int-to-float v5, v3

    div-float/2addr v4, v5

    .line 5116
    cmpg-float v4, v1, v4

    if-gez v4, :cond_4a

    .line 5117
    iput v3, v0, Lcom/anythink/myoffer/a/a/i$a;->b:I

    .line 5118
    iget v2, v0, Lcom/anythink/myoffer/a/a/i$a;->b:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/anythink/myoffer/a/a/i$a;->a:I

    goto :goto_20

    .line 5121
    :cond_4a
    iput v2, v0, Lcom/anythink/myoffer/a/a/i$a;->a:I

    .line 5122
    iget v2, v0, Lcom/anythink/myoffer/a/a/i$a;->a:I

    int-to-float v2, v2

    div-float v1, v2, v1

    float-to-int v1, v1

    iput v1, v0, Lcom/anythink/myoffer/a/a/i$a;->b:I
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_54} :catch_2b

    goto :goto_20
.end method

.method static synthetic h(Lcom/anythink/myoffer/ui/f;)Z
    .registers 2

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/anythink/myoffer/ui/f;->p:Z

    return v0
.end method

.method static synthetic i(Lcom/anythink/myoffer/ui/f;)I
    .registers 2

    .prologue
    .line 34
    iget v0, p0, Lcom/anythink/myoffer/ui/f;->m:I

    return v0
.end method

.method private i()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 326
    invoke-virtual {p0, v4}, Lcom/anythink/myoffer/ui/f;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 327
    invoke-virtual {p0, v4}, Lcom/anythink/myoffer/ui/f;->removeViewAt(I)V

    .line 330
    :cond_a
    new-instance v0, Lcom/anythink/myoffer/ui/b;

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/f;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/anythink/myoffer/ui/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/myoffer/ui/f;->J:Lcom/anythink/myoffer/ui/b;

    .line 331
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->J:Lcom/anythink/myoffer/ui/b;

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/f;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_count_down_view_id"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/ui/b;->setId(I)V

    .line 332
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/anythink/myoffer/ui/f;->C:I

    iget v2, p0, Lcom/anythink/myoffer/ui/f;->C:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 333
    iget v1, p0, Lcom/anythink/myoffer/ui/f;->E:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 334
    iget v1, p0, Lcom/anythink/myoffer/ui/f;->F:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 335
    iget-object v1, p0, Lcom/anythink/myoffer/ui/f;->J:Lcom/anythink/myoffer/ui/b;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/anythink/myoffer/ui/b;->setVisibility(I)V

    .line 336
    iget-object v1, p0, Lcom/anythink/myoffer/ui/f;->J:Lcom/anythink/myoffer/ui/b;

    invoke-virtual {p0, v1, v4, v0}, Lcom/anythink/myoffer/ui/f;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 337
    return-void
.end method

.method private j()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    .line 340
    invoke-virtual {p0, v4}, Lcom/anythink/myoffer/ui/f;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 341
    invoke-virtual {p0, v4}, Lcom/anythink/myoffer/ui/f;->removeViewAt(I)V

    .line 344
    :cond_a
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/f;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/myoffer/ui/f;->K:Landroid/widget/ImageView;

    .line 345
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->K:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/f;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_btn_mute_id"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 346
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/anythink/myoffer/ui/f;->C:I

    iget v2, p0, Lcom/anythink/myoffer/ui/f;->C:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 347
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/anythink/myoffer/ui/f;->J:Lcom/anythink/myoffer/ui/b;

    invoke-virtual {v2}, Lcom/anythink/myoffer/ui/b;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 348
    iget v1, p0, Lcom/anythink/myoffer/ui/f;->D:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 349
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/anythink/myoffer/ui/f;->J:Lcom/anythink/myoffer/ui/b;

    invoke-virtual {v2}, Lcom/anythink/myoffer/ui/b;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 350
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/anythink/myoffer/ui/f;->J:Lcom/anythink/myoffer/ui/b;

    invoke-virtual {v2}, Lcom/anythink/myoffer/ui/b;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 351
    iget-object v1, p0, Lcom/anythink/myoffer/ui/f;->K:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 352
    iget-object v1, p0, Lcom/anythink/myoffer/ui/f;->K:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v4, v0}, Lcom/anythink/myoffer/ui/f;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 354
    iget-boolean v0, p0, Lcom/anythink/myoffer/ui/f;->P:Z

    if-eqz v0, :cond_73

    .line 355
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->K:Landroid/widget/ImageView;

    iget v1, p0, Lcom/anythink/myoffer/ui/f;->G:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 360
    :goto_68
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->K:Landroid/widget/ImageView;

    new-instance v1, Lcom/anythink/myoffer/ui/f$2;

    invoke-direct {v1, p0}, Lcom/anythink/myoffer/ui/f$2;-><init>(Lcom/anythink/myoffer/ui/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    return-void

    .line 357
    :cond_73
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->K:Landroid/widget/ImageView;

    iget v1, p0, Lcom/anythink/myoffer/ui/f;->H:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_68
.end method

.method static synthetic j(Lcom/anythink/myoffer/ui/f;)Z
    .registers 2

    .prologue
    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/myoffer/ui/f;->p:Z

    return v0
.end method

.method private k()V
    .registers 6

    .prologue
    const/4 v4, 0x3

    .line 385
    invoke-virtual {p0, v4}, Lcom/anythink/myoffer/ui/f;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 386
    invoke-virtual {p0, v4}, Lcom/anythink/myoffer/ui/f;->removeViewAt(I)V

    .line 389
    :cond_a
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/f;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/myoffer/ui/f;->L:Landroid/widget/ImageView;

    .line 390
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->L:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/f;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_btn_close_id"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 391
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/anythink/myoffer/ui/f;->C:I

    iget v2, p0, Lcom/anythink/myoffer/ui/f;->C:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 392
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 393
    iget v1, p0, Lcom/anythink/myoffer/ui/f;->D:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 394
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/anythink/myoffer/ui/f;->J:Lcom/anythink/myoffer/ui/b;

    invoke-virtual {v2}, Lcom/anythink/myoffer/ui/b;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 395
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/anythink/myoffer/ui/f;->J:Lcom/anythink/myoffer/ui/b;

    invoke-virtual {v2}, Lcom/anythink/myoffer/ui/b;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 396
    iget-object v1, p0, Lcom/anythink/myoffer/ui/f;->L:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v4, v0}, Lcom/anythink/myoffer/ui/f;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 398
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->L:Landroid/widget/ImageView;

    iget v1, p0, Lcom/anythink/myoffer/ui/f;->I:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 400
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->L:Landroid/widget/ImageView;

    iget v1, p0, Lcom/anythink/myoffer/ui/f;->C:I

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/anythink/myoffer/ui/a/a;->a(Landroid/view/View;I)V

    .line 402
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->L:Landroid/widget/ImageView;

    new-instance v1, Lcom/anythink/myoffer/ui/f$3;

    invoke-direct {v1, p0}, Lcom/anythink/myoffer/ui/f$3;-><init>(Lcom/anythink/myoffer/ui/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    return-void
.end method

.method static synthetic k(Lcom/anythink/myoffer/ui/f;)Z
    .registers 2

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/anythink/myoffer/ui/f;->q:Z

    return v0
.end method

.method static synthetic l(Lcom/anythink/myoffer/ui/f;)I
    .registers 2

    .prologue
    .line 34
    iget v0, p0, Lcom/anythink/myoffer/ui/f;->n:I

    return v0
.end method

.method private l()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 413
    .line 5418
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->J:Lcom/anythink/myoffer/ui/b;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->J:Lcom/anythink/myoffer/ui/b;

    invoke-virtual {v0}, Lcom/anythink/myoffer/ui/b;->isShown()Z

    move-result v0

    if-nez v0, :cond_12

    .line 5419
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->J:Lcom/anythink/myoffer/ui/b;

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/ui/b;->setVisibility(I)V

    .line 5424
    :cond_12
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->K:Landroid/widget/ImageView;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->K:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-nez v0, :cond_23

    .line 5425
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->K:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 415
    :cond_23
    return-void
.end method

.method private m()V
    .registers 3

    .prologue
    .line 418
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->J:Lcom/anythink/myoffer/ui/b;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->J:Lcom/anythink/myoffer/ui/b;

    invoke-virtual {v0}, Lcom/anythink/myoffer/ui/b;->isShown()Z

    move-result v0

    if-nez v0, :cond_12

    .line 419
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->J:Lcom/anythink/myoffer/ui/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/ui/b;->setVisibility(I)V

    .line 421
    :cond_12
    return-void
.end method

.method static synthetic m(Lcom/anythink/myoffer/ui/f;)Z
    .registers 2

    .prologue
    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/myoffer/ui/f;->q:Z

    return v0
.end method

.method private n()V
    .registers 3

    .prologue
    .line 424
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->K:Landroid/widget/ImageView;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->K:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-nez v0, :cond_12

    .line 425
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->K:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 427
    :cond_12
    return-void
.end method

.method static synthetic n(Lcom/anythink/myoffer/ui/f;)Z
    .registers 2

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/anythink/myoffer/ui/f;->r:Z

    return v0
.end method

.method static synthetic o(Lcom/anythink/myoffer/ui/f;)I
    .registers 2

    .prologue
    .line 34
    iget v0, p0, Lcom/anythink/myoffer/ui/f;->o:I

    return v0
.end method

.method private o()V
    .registers 3

    .prologue
    .line 432
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->R:Ljava/lang/Thread;

    if-eqz v0, :cond_5

    .line 453
    :goto_4
    return-void

    .line 435
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/myoffer/ui/f;->s:Z

    .line 436
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/anythink/myoffer/ui/f$4;

    invoke-direct {v1, p0}, Lcom/anythink/myoffer/ui/f$4;-><init>(Lcom/anythink/myoffer/ui/f;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/anythink/myoffer/ui/f;->R:Ljava/lang/Thread;

    .line 452
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->R:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_4
.end method

.method private p()V
    .registers 2

    .prologue
    .line 456
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/myoffer/ui/f;->s:Z

    .line 457
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/myoffer/ui/f;->R:Ljava/lang/Thread;

    .line 458
    return-void
.end method

.method static synthetic p(Lcom/anythink/myoffer/ui/f;)Z
    .registers 2

    .prologue
    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/myoffer/ui/f;->r:Z

    return v0
.end method

.method static synthetic q(Lcom/anythink/myoffer/ui/f;)V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 34
    .line 7418
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->J:Lcom/anythink/myoffer/ui/b;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->J:Lcom/anythink/myoffer/ui/b;

    invoke-virtual {v0}, Lcom/anythink/myoffer/ui/b;->isShown()Z

    move-result v0

    if-nez v0, :cond_12

    .line 7419
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->J:Lcom/anythink/myoffer/ui/b;

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/ui/b;->setVisibility(I)V

    .line 7424
    :cond_12
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->K:Landroid/widget/ImageView;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->K:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-nez v0, :cond_23

    .line 7425
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->K:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 34
    :cond_23
    return-void
.end method

.method private q()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 467
    invoke-static {}, Lcom/anythink/myoffer/a/c;->a()Lcom/anythink/myoffer/a/c;

    move-result-object v0

    iget-object v2, p0, Lcom/anythink/myoffer/ui/f;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/anythink/myoffer/a/c;->a(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/ui/f;->f:Ljava/io/FileInputStream;

    .line 468
    const/4 v0, 0x0

    .line 471
    :try_start_e
    iget-object v2, p0, Lcom/anythink/myoffer/ui/f;->f:Ljava/io/FileInputStream;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_10} :catch_28

    if-nez v2, :cond_1e

    .line 481
    :goto_12
    if-eqz v1, :cond_1d

    .line 482
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->f:Ljava/io/FileInputStream;

    if-eqz v0, :cond_1d

    .line 484
    :try_start_18
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->f:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_2d

    .line 490
    :cond_1d
    :goto_1d
    return v1

    .line 474
    :cond_1e
    :try_start_1e
    iget-object v2, p0, Lcom/anythink/myoffer/ui/f;->f:Ljava/io/FileInputStream;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/anythink/myoffer/ui/f;->g:Ljava/io/FileDescriptor;
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_26} :catch_28

    move v1, v0

    .line 480
    goto :goto_12

    .line 478
    :catch_28
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12

    .line 486
    :catch_2d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1d
.end method

.method static synthetic r(Lcom/anythink/myoffer/ui/f;)Lcom/anythink/myoffer/ui/b;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->J:Lcom/anythink/myoffer/ui/b;

    return-object v0
.end method

.method private r()V
    .registers 6

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 495
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->b:Landroid/media/MediaPlayer;

    if-nez v0, :cond_4e

    .line 496
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/anythink/myoffer/ui/f;->b:Landroid/media/MediaPlayer;

    .line 497
    iget-object v3, p0, Lcom/anythink/myoffer/ui/f;->b:Landroid/media/MediaPlayer;

    iget-boolean v0, p0, Lcom/anythink/myoffer/ui/f;->P:Z

    if-eqz v0, :cond_4f

    move v0, v1

    :goto_15
    iget-boolean v4, p0, Lcom/anythink/myoffer/ui/f;->P:Z

    if-eqz v4, :cond_51

    :goto_19
    invoke-virtual {v3, v0, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 498
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->b:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 499
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->b:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/anythink/myoffer/ui/f$5;

    invoke-direct {v1, p0}, Lcom/anythink/myoffer/ui/f$5;-><init>(Lcom/anythink/myoffer/ui/f;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 523
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->b:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/anythink/myoffer/ui/f$6;

    invoke-direct {v1, p0}, Lcom/anythink/myoffer/ui/f$6;-><init>(Lcom/anythink/myoffer/ui/f;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 530
    iget-boolean v0, p0, Lcom/anythink/myoffer/ui/f;->u:Z

    if-nez v0, :cond_44

    .line 531
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->b:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/anythink/myoffer/ui/f$7;

    invoke-direct {v1, p0}, Lcom/anythink/myoffer/ui/f$7;-><init>(Lcom/anythink/myoffer/ui/f;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 545
    :cond_44
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->b:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/anythink/myoffer/ui/f$8;

    invoke-direct {v1, p0}, Lcom/anythink/myoffer/ui/f$8;-><init>(Lcom/anythink/myoffer/ui/f;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 556
    :cond_4e
    return-void

    :cond_4f
    move v0, v2

    .line 497
    goto :goto_15

    :cond_51
    move v1, v2

    goto :goto_19
.end method

.method private s()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 559
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->d:Landroid/view/TextureView;

    if-nez v0, :cond_47

    .line 560
    new-instance v0, Landroid/view/TextureView;

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/f;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/myoffer/ui/f;->d:Landroid/view/TextureView;

    .line 561
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->d:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 562
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->d:Landroid/view/TextureView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setKeepScreenOn(Z)V

    .line 564
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 565
    iget v1, p0, Lcom/anythink/myoffer/ui/f;->i:I

    if-eqz v1, :cond_30

    iget v1, p0, Lcom/anythink/myoffer/ui/f;->j:I

    if-eqz v1, :cond_30

    .line 566
    iget v1, p0, Lcom/anythink/myoffer/ui/f;->i:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 567
    iget v1, p0, Lcom/anythink/myoffer/ui/f;->j:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 569
    :cond_30
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 570
    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/f;->removeAllViews()V

    .line 571
    iget-object v1, p0, Lcom/anythink/myoffer/ui/f;->d:Landroid/view/TextureView;

    invoke-virtual {p0, v1, v0}, Lcom/anythink/myoffer/ui/f;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 573
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->d:Landroid/view/TextureView;

    new-instance v1, Lcom/anythink/myoffer/ui/f$9;

    invoke-direct {v1, p0}, Lcom/anythink/myoffer/ui/f$9;-><init>(Lcom/anythink/myoffer/ui/f;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 582
    :cond_47
    return-void
.end method

.method static synthetic s(Lcom/anythink/myoffer/ui/f;)Z
    .registers 2

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/anythink/myoffer/ui/f;->P:Z

    return v0
.end method

.method static synthetic t(Lcom/anythink/myoffer/ui/f;)I
    .registers 2

    .prologue
    .line 34
    iget v0, p0, Lcom/anythink/myoffer/ui/f;->G:I

    return v0
.end method

.method private t()V
    .registers 4

    .prologue
    .line 586
    invoke-direct {p0}, Lcom/anythink/myoffer/ui/f;->f()V

    .line 588
    :try_start_3
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 589
    sget-object v0, Lcom/anythink/myoffer/ui/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "valid - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/myoffer/ui/f;->g:Ljava/io/FileDescriptor;

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->b:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/anythink/myoffer/ui/f;->g:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_29} :catch_51

    .line 592
    :try_start_29
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->f:Ljava/io/FileInputStream;

    if-eqz v0, :cond_32

    .line 593
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->f:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_32} :catch_4c

    .line 598
    :cond_32
    :goto_32
    :try_start_32
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->e:Landroid/view/Surface;

    if-nez v0, :cond_3f

    .line 599
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/anythink/myoffer/ui/f;->c:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/anythink/myoffer/ui/f;->e:Landroid/view/Surface;

    .line 601
    :cond_3f
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->b:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/anythink/myoffer/ui/f;->e:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 602
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 610
    :cond_4b
    :goto_4b
    return-void

    .line 596
    :catch_4c
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_50} :catch_51

    goto :goto_32

    .line 604
    :catch_51
    move-exception v0

    .line 605
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 606
    iget-object v1, p0, Lcom/anythink/myoffer/ui/f;->w:Lcom/anythink/myoffer/ui/f$a;

    if-eqz v1, :cond_4b

    .line 607
    iget-object v1, p0, Lcom/anythink/myoffer/ui/f;->w:Lcom/anythink/myoffer/ui/f$a;

    const-string v2, "40002"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/anythink/network/myoffer/MyOfferErrorCode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/network/myoffer/MyOfferError;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/anythink/myoffer/ui/f$a;->a(Lcom/anythink/network/myoffer/MyOfferError;)V

    goto :goto_4b
.end method

.method static synthetic u(Lcom/anythink/myoffer/ui/f;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->K:Landroid/widget/ImageView;

    return-object v0
.end method

.method private u()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 645
    iget-boolean v0, p0, Lcom/anythink/myoffer/ui/f;->v:Z

    if-nez v0, :cond_6

    .line 664
    :goto_5
    return-void

    .line 648
    :cond_6
    sget-object v0, Lcom/anythink/myoffer/ui/f;->a:Ljava/lang/String;

    const-string v1, "release..."

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    invoke-direct {p0}, Lcom/anythink/myoffer/ui/f;->p()V

    .line 650
    iput-object v2, p0, Lcom/anythink/myoffer/ui/f;->c:Landroid/graphics/SurfaceTexture;

    .line 651
    iput-object v2, p0, Lcom/anythink/myoffer/ui/f;->e:Landroid/view/Surface;

    .line 652
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_31

    .line 653
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 654
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 656
    :cond_25
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 657
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 658
    iput-object v2, p0, Lcom/anythink/myoffer/ui/f;->b:Landroid/media/MediaPlayer;

    .line 660
    :cond_31
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->x:Landroid/os/Handler;

    if-eqz v0, :cond_3a

    .line 661
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->x:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 663
    :cond_3a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/myoffer/ui/f;->v:Z

    goto :goto_5
.end method

.method static synthetic v(Lcom/anythink/myoffer/ui/f;)Landroid/media/MediaPlayer;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->b:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic w(Lcom/anythink/myoffer/ui/f;)I
    .registers 2

    .prologue
    .line 34
    iget v0, p0, Lcom/anythink/myoffer/ui/f;->H:I

    return v0
.end method

.method static synthetic x(Lcom/anythink/myoffer/ui/f;)Z
    .registers 2

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/anythink/myoffer/ui/f;->s:Z

    return v0
.end method

.method static synthetic y(Lcom/anythink/myoffer/ui/f;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->x:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic z(Lcom/anythink/myoffer/ui/f;)Z
    .registers 2

    .prologue
    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/myoffer/ui/f;->v:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .registers 6

    .prologue
    const/4 v4, 0x3

    .line 613
    .line 6385
    invoke-virtual {p0, v4}, Lcom/anythink/myoffer/ui/f;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 6386
    invoke-virtual {p0, v4}, Lcom/anythink/myoffer/ui/f;->removeViewAt(I)V

    .line 6389
    :cond_a
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/f;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/myoffer/ui/f;->L:Landroid/widget/ImageView;

    .line 6390
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->L:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/f;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_btn_close_id"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 6391
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/anythink/myoffer/ui/f;->C:I

    iget v2, p0, Lcom/anythink/myoffer/ui/f;->C:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 6392
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 6393
    iget v1, p0, Lcom/anythink/myoffer/ui/f;->D:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 6394
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/anythink/myoffer/ui/f;->J:Lcom/anythink/myoffer/ui/b;

    invoke-virtual {v2}, Lcom/anythink/myoffer/ui/b;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 6395
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/anythink/myoffer/ui/f;->J:Lcom/anythink/myoffer/ui/b;

    invoke-virtual {v2}, Lcom/anythink/myoffer/ui/b;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 6396
    iget-object v1, p0, Lcom/anythink/myoffer/ui/f;->L:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v4, v0}, Lcom/anythink/myoffer/ui/f;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 6398
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->L:Landroid/widget/ImageView;

    iget v1, p0, Lcom/anythink/myoffer/ui/f;->I:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6400
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->L:Landroid/widget/ImageView;

    iget v1, p0, Lcom/anythink/myoffer/ui/f;->C:I

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/anythink/myoffer/ui/a/a;->a(Landroid/view/View;I)V

    .line 6402
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->L:Landroid/widget/ImageView;

    new-instance v1, Lcom/anythink/myoffer/ui/f$3;

    invoke-direct {v1, p0}, Lcom/anythink/myoffer/ui/f$3;-><init>(Lcom/anythink/myoffer/ui/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 614
    return-void
.end method

.method public final a(Lcom/anythink/myoffer/c/c;)V
    .registers 6

    .prologue
    .line 267
    if-nez p1, :cond_3

    .line 275
    :goto_2
    return-void

    .line 271
    :cond_3
    invoke-virtual {p1}, Lcom/anythink/myoffer/c/c;->d()I

    move-result v0

    if-nez v0, :cond_42

    const/4 v0, 0x1

    :goto_a
    iput-boolean v0, p0, Lcom/anythink/myoffer/ui/f;->P:Z

    .line 272
    invoke-virtual {p1}, Lcom/anythink/myoffer/c/c;->e()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/anythink/myoffer/ui/f;->Q:J

    .line 273
    sget-object v0, Lcom/anythink/myoffer/ui/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isMute - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/anythink/myoffer/ui/f;->P:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    sget-object v0, Lcom/anythink/myoffer/ui/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showCloseTime - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/anythink/myoffer/ui/f;->Q:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 271
    :cond_42
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 461
    iput-object p1, p0, Lcom/anythink/myoffer/ui/f;->h:Ljava/lang/String;

    .line 463
    invoke-direct {p0}, Lcom/anythink/myoffer/ui/f;->f()V

    .line 464
    return-void
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 618
    sget-object v0, Lcom/anythink/myoffer/ui/f;->a:Ljava/lang/String;

    const-string v1, "start()"

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/anythink/myoffer/ui/f;->v:Z

    if-eqz v0, :cond_14

    .line 620
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 6432
    :cond_14
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->R:Ljava/lang/Thread;

    if-nez v0, :cond_2c

    .line 6435
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/myoffer/ui/f;->s:Z

    .line 6436
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/anythink/myoffer/ui/f$4;

    invoke-direct {v1, p0}, Lcom/anythink/myoffer/ui/f$4;-><init>(Lcom/anythink/myoffer/ui/f;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/anythink/myoffer/ui/f;->R:Ljava/lang/Thread;

    .line 6452
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->R:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 623
    :cond_2c
    return-void
.end method

.method public final c()V
    .registers 3

    .prologue
    .line 626
    sget-object v0, Lcom/anythink/myoffer/ui/f;->a:Ljava/lang/String;

    const-string v1, "pause()"

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    invoke-direct {p0}, Lcom/anythink/myoffer/ui/f;->p()V

    .line 628
    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/f;->e()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 629
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 631
    :cond_15
    return-void
.end method

.method public final d()V
    .registers 3

    .prologue
    .line 634
    sget-object v0, Lcom/anythink/myoffer/ui/f;->a:Ljava/lang/String;

    const-string v1, "stop()"

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_10

    .line 636
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 639
    :cond_10
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->w:Lcom/anythink/myoffer/ui/f$a;

    if-eqz v0, :cond_19

    .line 640
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->w:Lcom/anythink/myoffer/ui/f$a;

    invoke-interface {v0}, Lcom/anythink/myoffer/ui/f$a;->b()V

    .line 642
    :cond_19
    return-void
.end method

.method public final e()Z
    .registers 2

    .prologue
    .line 667
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/anythink/myoffer/ui/f;->v:Z

    if-eqz v0, :cond_f

    .line 668
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    .line 670
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 700
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 701
    sget-object v0, Lcom/anythink/myoffer/ui/f;->a:Ljava/lang/String;

    const-string v1, "onDetachedFromWindow()..."

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    invoke-direct {p0}, Lcom/anythink/myoffer/ui/f;->u()V

    .line 703
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 7

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 180
    sget-object v0, Lcom/anythink/myoffer/ui/f;->a:Ljava/lang/String;

    const-string v3, "onRestoreInstanceState..."

    invoke-static {v0, v3}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    check-cast p1, Lcom/anythink/myoffer/ui/f$b;

    .line 182
    sget-object v0, Lcom/anythink/myoffer/ui/f;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onRestoreInstanceState..."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/myoffer/ui/f$b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p1}, Lcom/anythink/myoffer/ui/f$b;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 184
    iget v0, p1, Lcom/anythink/myoffer/ui/f$b;->a:I

    iput v0, p0, Lcom/anythink/myoffer/ui/f;->k:I

    .line 185
    iget-boolean v0, p1, Lcom/anythink/myoffer/ui/f$b;->b:Z

    iput-boolean v0, p0, Lcom/anythink/myoffer/ui/f;->p:Z

    .line 186
    iget-boolean v0, p1, Lcom/anythink/myoffer/ui/f$b;->c:Z

    iput-boolean v0, p0, Lcom/anythink/myoffer/ui/f;->q:Z

    .line 187
    iget-boolean v0, p1, Lcom/anythink/myoffer/ui/f$b;->d:Z

    iput-boolean v0, p0, Lcom/anythink/myoffer/ui/f;->r:Z

    .line 188
    iget-boolean v0, p1, Lcom/anythink/myoffer/ui/f$b;->e:Z

    iput-boolean v0, p0, Lcom/anythink/myoffer/ui/f;->t:Z

    .line 189
    iget-boolean v0, p1, Lcom/anythink/myoffer/ui/f$b;->f:Z

    iput-boolean v0, p0, Lcom/anythink/myoffer/ui/f;->u:Z

    .line 190
    iget-boolean v0, p1, Lcom/anythink/myoffer/ui/f$b;->g:Z

    iput-boolean v0, p0, Lcom/anythink/myoffer/ui/f;->P:Z

    .line 192
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_59

    .line 193
    iget-object v3, p0, Lcom/anythink/myoffer/ui/f;->b:Landroid/media/MediaPlayer;

    iget-boolean v0, p0, Lcom/anythink/myoffer/ui/f;->P:Z

    if-eqz v0, :cond_5a

    move v0, v1

    :goto_52
    iget-boolean v4, p0, Lcom/anythink/myoffer/ui/f;->P:Z

    if-eqz v4, :cond_5c

    :goto_56
    invoke-virtual {v3, v0, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 196
    :cond_59
    return-void

    :cond_5a
    move v0, v2

    .line 193
    goto :goto_52

    :cond_5c
    move v1, v2

    goto :goto_56
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 5

    .prologue
    .line 162
    sget-object v0, Lcom/anythink/myoffer/ui/f;->a:Ljava/lang/String;

    const-string v1, "onSaveInstanceState..."

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 164
    new-instance v1, Lcom/anythink/myoffer/ui/f$b;

    invoke-direct {v1, v0}, Lcom/anythink/myoffer/ui/f$b;-><init>(Landroid/os/Parcelable;)V

    .line 166
    iget v0, p0, Lcom/anythink/myoffer/ui/f;->k:I

    iput v0, v1, Lcom/anythink/myoffer/ui/f$b;->a:I

    .line 167
    iget-boolean v0, p0, Lcom/anythink/myoffer/ui/f;->p:Z

    iput-boolean v0, v1, Lcom/anythink/myoffer/ui/f$b;->b:Z

    .line 168
    iget-boolean v0, p0, Lcom/anythink/myoffer/ui/f;->q:Z

    iput-boolean v0, v1, Lcom/anythink/myoffer/ui/f$b;->c:Z

    .line 169
    iget-boolean v0, p0, Lcom/anythink/myoffer/ui/f;->r:Z

    iput-boolean v0, v1, Lcom/anythink/myoffer/ui/f$b;->d:Z

    .line 170
    iget-boolean v0, p0, Lcom/anythink/myoffer/ui/f;->t:Z

    iput-boolean v0, v1, Lcom/anythink/myoffer/ui/f$b;->e:Z

    .line 171
    iget-boolean v0, p0, Lcom/anythink/myoffer/ui/f;->u:Z

    iput-boolean v0, v1, Lcom/anythink/myoffer/ui/f$b;->f:Z

    .line 172
    iget-boolean v0, p0, Lcom/anythink/myoffer/ui/f;->P:Z

    iput-boolean v0, v1, Lcom/anythink/myoffer/ui/f$b;->g:Z

    .line 174
    sget-object v0, Lcom/anythink/myoffer/ui/f;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSaveInstanceState..."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/anythink/myoffer/ui/f$b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-object v1
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 7

    .prologue
    .line 676
    sget-object v0, Lcom/anythink/myoffer/ui/f;->a:Ljava/lang/String;

    const-string v1, "onSurfaceTextureAvailable()..."

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    iput-object p1, p0, Lcom/anythink/myoffer/ui/f;->c:Landroid/graphics/SurfaceTexture;

    .line 6586
    invoke-direct {p0}, Lcom/anythink/myoffer/ui/f;->f()V

    .line 6588
    :try_start_c
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 6589
    sget-object v0, Lcom/anythink/myoffer/ui/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "valid - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/myoffer/ui/f;->g:Ljava/io/FileDescriptor;

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6590
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->b:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/anythink/myoffer/ui/f;->g:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_32} :catch_5a

    .line 6592
    :try_start_32
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->f:Ljava/io/FileInputStream;

    if-eqz v0, :cond_3b

    .line 6593
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->f:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_3b} :catch_55

    .line 6598
    :cond_3b
    :goto_3b
    :try_start_3b
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->e:Landroid/view/Surface;

    if-nez v0, :cond_48

    .line 6599
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/anythink/myoffer/ui/f;->c:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/anythink/myoffer/ui/f;->e:Landroid/view/Surface;

    .line 6601
    :cond_48
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->b:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/anythink/myoffer/ui/f;->e:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 6602
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 6609
    :cond_54
    :goto_54
    return-void

    .line 6596
    :catch_55
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_59} :catch_5a

    goto :goto_3b

    .line 6604
    :catch_5a
    move-exception v0

    .line 6605
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 6606
    iget-object v1, p0, Lcom/anythink/myoffer/ui/f;->w:Lcom/anythink/myoffer/ui/f$a;

    if-eqz v1, :cond_54

    .line 6607
    iget-object v1, p0, Lcom/anythink/myoffer/ui/f;->w:Lcom/anythink/myoffer/ui/f$a;

    const-string v2, "40002"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/anythink/network/myoffer/MyOfferErrorCode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/network/myoffer/MyOfferError;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/anythink/myoffer/ui/f$a;->a(Lcom/anythink/network/myoffer/MyOfferError;)V

    goto :goto_54
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 4

    .prologue
    .line 688
    sget-object v0, Lcom/anythink/myoffer/ui/f;->a:Ljava/lang/String;

    const-string v1, "onSurfaceTextureDestroyed()..."

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    invoke-direct {p0}, Lcom/anythink/myoffer/ui/f;->u()V

    .line 690
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    .prologue
    .line 684
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    .prologue
    .line 696
    return-void
.end method
