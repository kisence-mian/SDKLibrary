.class public abstract Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;
.super Landroid/app/Activity;
.source "TTBaseVideoActivity.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/video/c/b;
.implements Lcom/bytedance/sdk/openadsdk/f/f;
.implements Lcom/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver$a;
.implements Lcom/bytedance/sdk/openadsdk/utils/al$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$a;
    }
.end annotation


# static fields
.field protected static ad:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private static bf:Lcom/bytedance/sdk/openadsdk/playable/d$a;


# instance fields
.field A:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;

.field B:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeToast;

.field C:Lcom/bytedance/sdk/openadsdk/dislike/c;

.field D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

.field E:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

.field F:Lcom/bytedance/sdk/openadsdk/core/x;

.field G:Lcom/bytedance/sdk/openadsdk/core/x;

.field H:Lcom/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver;

.field final I:Lcom/bytedance/sdk/openadsdk/utils/al;

.field final J:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;",
            ">;"
        }
    .end annotation
.end field

.field K:Ljava/lang/String;

.field L:Ljava/lang/String;

.field M:I

.field N:I

.field protected O:Ljava/lang/String;

.field P:Z

.field Q:I

.field R:I

.field S:I

.field T:I

.field final U:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final V:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final W:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final X:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final Y:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final Z:Ljava/util/concurrent/atomic/AtomicBoolean;

.field a:Landroid/view/View;

.field aA:J

.field aB:I

.field aC:I

.field aD:Ljava/util/concurrent/atomic/AtomicBoolean;

.field aE:Ljava/lang/String;

.field aF:Z

.field protected aG:Z

.field aH:Ljava/lang/String;

.field aI:Ljava/lang/String;

.field protected aJ:Lcom/bytedance/sdk/openadsdk/c/p;

.field protected aK:I

.field aL:Landroid/view/View;

.field protected aM:Z

.field protected aN:Z

.field protected aO:Lcom/bytedance/sdk/openadsdk/f/a;

.field protected aP:Lcom/bytedance/sdk/openadsdk/f/e;

.field protected aQ:Lcom/bytedance/sdk/openadsdk/f/d;

.field protected aR:I

.field aS:Landroid/widget/ProgressBar;

.field private aT:Lcom/bytedance/sdk/openadsdk/core/a/e;

.field private aU:Z

.field private aV:Z

.field private aW:Z

.field private final aX:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private aY:J

.field private aZ:J

.field protected final aa:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected ab:Lcom/bytedance/sdk/openadsdk/core/widget/c;

.field protected final ac:Ljava/lang/String;

.field protected ae:Lcom/bytedance/sdk/openadsdk/IListenerManager;

.field protected af:Ljava/lang/String;

.field protected ag:Z

.field protected ah:Z

.field protected ai:I

.field aj:Landroid/widget/LinearLayout;

.field ak:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

.field al:Landroid/widget/TextView;

.field am:Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;

.field an:Landroid/widget/TextView;

.field ao:Landroid/widget/TextView;

.field ap:Ljava/util/concurrent/atomic/AtomicBoolean;

.field aq:Z

.field ar:I

.field as:Ljava/lang/String;

.field at:I

.field protected au:Lcom/bytedance/sdk/openadsdk/f/g;

.field av:Z

.field aw:Landroid/widget/TextView;

.field ax:J

.field ay:I

.field az:J

.field b:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

.field private ba:J

.field private bb:J

.field private bc:J

.field private bd:J

.field private be:Lcom/bytedance/sdk/openadsdk/playable/e;

.field private bg:Z

.field private bh:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private bi:Landroid/view/View$OnClickListener;

.field c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

.field d:Landroid/widget/RelativeLayout;

.field e:Landroid/content/Context;

.field protected f:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

.field protected g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;",
            ">;"
        }
    .end annotation
.end field

.field h:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

.field i:Landroid/widget/ImageView;

.field j:Landroid/widget/RelativeLayout;

.field k:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

.field l:Landroid/widget/TextView;

.field m:Landroid/widget/TextView;

.field n:Landroid/widget/TextView;

.field o:Landroid/widget/FrameLayout;

.field p:Landroid/widget/FrameLayout;

.field q:Landroid/widget/FrameLayout;

.field r:Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;

.field s:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field t:Lcom/bytedance/sdk/openadsdk/c/j;

.field u:Ljava/lang/String;

.field v:Z

.field w:J

.field x:Ljava/lang/String;

.field y:I

.field z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 258
    const/4 v0, 0x0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ad:Landroid/os/RemoteCallbackList;

    .line 329
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$1;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->bf:Lcom/bytedance/sdk/openadsdk/playable/d$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .line 149
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->v:Z

    .line 211
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->z:Z

    .line 228
    new-instance v2, Lcom/bytedance/sdk/openadsdk/utils/al;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/bytedance/sdk/openadsdk/utils/al;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/openadsdk/utils/al$a;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    .line 229
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->J:Ljava/util/Map;

    .line 236
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->P:Z

    .line 238
    const/4 v2, 0x5

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->R:I

    .line 240
    const/4 v2, 0x3

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->S:I

    .line 246
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->U:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 247
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->V:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 248
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->W:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 249
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->X:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 250
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->Y:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 251
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->Z:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 252
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aa:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 256
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ac:Ljava/lang/String;

    .line 265
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ag:Z

    .line 267
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ah:Z

    .line 268
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ai:I

    .line 278
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ap:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 279
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aq:Z

    .line 281
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ar:I

    .line 282
    const-string v2, ""

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->as:Ljava/lang/String;

    .line 283
    const/4 v3, 0x7

    iput v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->at:I

    .line 291
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ax:J

    .line 292
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ay:I

    .line 293
    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->az:J

    .line 294
    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aA:J

    .line 295
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aB:I

    .line 296
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aC:I

    .line 297
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v5, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aD:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 299
    instance-of v5, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;

    if-eqz v5, :cond_90

    const-string v5, "rewarded_video"

    goto :goto_92

    :cond_90
    const-string v5, "fullscreen_interstitial_ad"

    :goto_92
    iput-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aE:Ljava/lang/String;

    .line 301
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aF:Z

    .line 303
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aG:Z

    .line 305
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aV:Z

    .line 307
    const-string v5, "video_player"

    iput-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aH:Ljava/lang/String;

    .line 308
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aI:Ljava/lang/String;

    .line 312
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aK:I

    .line 315
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aW:Z

    .line 317
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aX:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 320
    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aY:J

    .line 321
    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aZ:J

    .line 322
    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ba:J

    .line 323
    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->bb:J

    .line 324
    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->bc:J

    .line 325
    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->bd:J

    .line 562
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->bg:Z

    .line 611
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->bh:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1605
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aL:Landroid/view/View;

    .line 1930
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$10;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$10;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->bi:Landroid/view/View$OnClickListener;

    .line 2422
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aM:Z

    .line 2424
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aN:Z

    .line 2986
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$17;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$17;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aO:Lcom/bytedance/sdk/openadsdk/f/a;

    .line 3014
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$18;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$18;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aP:Lcom/bytedance/sdk/openadsdk/f/e;

    .line 3021
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$19;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$19;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aQ:Lcom/bytedance/sdk/openadsdk/f/d;

    .line 3039
    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aR:I

    return-void
.end method

.method private P()Ljava/lang/String;
    .registers 16

    .line 570
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->o()Ljava/lang/String;

    move-result-object v0

    .line 571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPlayableLoadH5Url->loadH5Url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Playable"

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_151

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v1, :cond_151

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v1

    if-nez v1, :cond_32

    goto/16 :goto_151

    .line 576
    :cond_32
    nop

    .line 577
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->R:I

    const/16 v3, 0xf

    if-ne v1, v3, :cond_3c

    .line 578
    const-string v1, "portrait"

    goto :goto_3e

    .line 580
    :cond_3c
    const-string v1, "landscape"

    .line 583
    :goto_3e
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v3

    .line 584
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/d/b;->e()I

    move-result v4

    .line 585
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/d/b;->f()I

    move-result v5

    .line 586
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/d/l;->U()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a()Ljava/lang/String;

    move-result-object v6

    .line 587
    const/4 v7, 0x1

    .line 588
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object v8

    .line 589
    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v9}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v9

    invoke-virtual {v9}, Lcom/bytedance/sdk/openadsdk/core/d/b;->d()Ljava/lang/String;

    move-result-object v9

    .line 590
    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v10

    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b()Ljava/lang/String;

    move-result-object v10

    .line 591
    iget-object v11, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v11

    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v11

    .line 592
    iget-object v12, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v12}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ad()Ljava/lang/String;

    move-result-object v12

    .line 593
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 594
    const-string v14, "appname="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 595
    const-string v14, "&stars="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 596
    const-string v4, "&comments="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 597
    const-string v4, "&icon="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 598
    const-string v4, "&downloading="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 599
    const-string v4, "&id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 600
    const-string v4, "&pkg_name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 601
    const-string v4, "&download_url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 602
    const-string v4, "&name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 603
    const-string v4, "&orientation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 604
    const-string v3, "&apptitle="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Playable-loadH5Url="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    return-object v0

    .line 574
    :cond_151
    :goto_151
    return-object v0
.end method

.method private Q()V
    .registers 3

    .line 614
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->bh:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 615
    return-void

    .line 617
    :cond_a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->f:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    if-eqz v0, :cond_1d

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->h:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    if-eqz v1, :cond_1d

    .line 618
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 619
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->h:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 621
    :cond_1d
    return-void
.end method

.method private R()I
    .registers 3

    .line 953
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aB:I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aC:I

    if-ne v0, v1, :cond_9

    const/16 v0, 0x384

    goto :goto_b

    :cond_9
    const/16 v0, 0x3b6

    :goto_b
    return v0
.end method

.method private S()V
    .registers 4

    .line 1080
    const-string v0, "tt_reward_full_endcard_backup"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aj:Landroid/widget/LinearLayout;

    .line 1081
    const-string v0, "tt_reward_ad_icon_backup"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ak:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    .line 1082
    const-string v0, "tt_reward_ad_appname_backup"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->al:Landroid/widget/TextView;

    .line 1083
    const-string v0, "tt_rb_score_backup"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->am:Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;

    .line 1084
    const-string v0, "tt_comment_backup"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->an:Landroid/widget/TextView;

    .line 1085
    const-string v0, "tt_reward_ad_download_backup"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ao:Landroid/widget/TextView;

    .line 1087
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->am:Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;

    if-eqz v0, :cond_89

    .line 1088
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setStarEmptyNum(I)V

    .line 1089
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->am:Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setStarFillNum(I)V

    .line 1090
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->am:Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setStarImageWidth(F)V

    .line 1091
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->am:Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setStarImageHeight(F)V

    .line 1092
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->am:Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setStarImagePadding(F)V

    .line 1093
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->am:Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->a()V

    .line 1095
    :cond_89
    return-void
.end method

.method private T()V
    .registers 5

    .line 1149
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez v0, :cond_5

    .line 1150
    return-void

    .line 1152
    :cond_5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->d(Ljava/lang/String;)I

    move-result v0

    .line 1153
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1154
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a/c;->b()Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object v2

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->at:I

    .line 1155
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/g/a/c;->a(I)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object v0

    .line 1156
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object v0

    .line 1157
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ar:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->b(I)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->as:Ljava/lang/String;

    .line 1158
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/g/a/c;->g(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    .line 1159
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->h(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/g/a/c;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    .line 1160
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a;->a()Lcom/bytedance/sdk/openadsdk/g/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/g/a;->l(Lcom/bytedance/sdk/openadsdk/g/a/c;)V

    .line 1161
    return-void
.end method

.method private V()V
    .registers 6

    .line 1185
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->be:Lcom/bytedance/sdk/openadsdk/playable/e;

    if-eqz v0, :cond_5

    .line 1186
    return-void

    .line 1189
    :cond_5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->v()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1190
    sget-object v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->bf:Lcom/bytedance/sdk/openadsdk/playable/d$a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/playable/d;->a(Lcom/bytedance/sdk/openadsdk/playable/d$a;)V

    .line 1193
    :cond_14
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$25;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$25;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;)V

    .line 1239
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->f:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/playable/e;->a(Landroid/content/Context;Landroid/webkit/WebView;Lcom/bytedance/sdk/openadsdk/playable/a;)Lcom/bytedance/sdk/openadsdk/playable/e;

    move-result-object v0

    .line 1240
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/playable/e;->e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/playable/e;

    move-result-object v0

    .line 1241
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/playable/e;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/playable/e;

    move-result-object v0

    .line 1242
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/a/a;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdkEdition"

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/playable/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/playable/e;

    move-result-object v0

    .line 1243
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/a/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/playable/e;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/playable/e;

    move-result-object v0

    .line 1244
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/a/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/playable/e;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/playable/e;

    move-result-object v0

    .line 1245
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/playable/e;->c(Z)Lcom/bytedance/sdk/openadsdk/playable/e;

    move-result-object v0

    .line 1246
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/playable/e;->a(Z)Lcom/bytedance/sdk/openadsdk/playable/e;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->be:Lcom/bytedance/sdk/openadsdk/playable/e;

    .line 1248
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->d(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 1249
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->be:Lcom/bytedance/sdk/openadsdk/playable/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/playable/e;->b(Z)Lcom/bytedance/sdk/openadsdk/playable/e;

    goto :goto_70

    .line 1251
    :cond_6b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->be:Lcom/bytedance/sdk/openadsdk/playable/e;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/playable/e;->b(Z)Lcom/bytedance/sdk/openadsdk/playable/e;

    .line 1254
    :goto_70
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_89

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_89

    .line 1255
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->be:Lcom/bytedance/sdk/openadsdk/playable/e;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/playable/e;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/playable/e;

    .line 1258
    :cond_89
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->be:Lcom/bytedance/sdk/openadsdk/playable/e;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/playable/e;->j()Ljava/util/Set;

    move-result-object v0

    .line 1260
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->be:Lcom/bytedance/sdk/openadsdk/playable/e;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 1262
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9a
    :goto_9a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1265
    const-string v3, "subscribe_app_ad"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9a

    .line 1266
    const-string v3, "adInfo"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9a

    .line 1267
    const-string v3, "webview_time_track"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9a

    .line 1268
    const-string v3, "download_app_ad"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c7

    .line 1269
    goto :goto_9a

    .line 1272
    :cond_c7
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->F:Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/x;->a()Lcom/bytedance/sdk/openadsdk/e/a/q;

    move-result-object v3

    new-instance v4, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$26;

    invoke-direct {v4, p0, v1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$26;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v3, v2, v4}, Lcom/bytedance/sdk/openadsdk/e/a/q;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/e/a/e;)Lcom/bytedance/sdk/openadsdk/e/a/q;

    .line 1287
    goto :goto_9a

    .line 1288
    :cond_d6
    return-void
.end method

.method private X()V
    .registers 3

    .line 1484
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aD()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1485
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setShowDislike(Z)V

    goto :goto_15

    .line 1487
    :cond_f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setShowDislike(Z)V

    .line 1489
    :goto_15
    return-void
.end method

.method private Y()V
    .registers 3

    .line 1492
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->c()V

    .line 1493
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->i:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 1494
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->j:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 1496
    return-void
.end method

.method private Z()V
    .registers 3

    .line 2431
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz v0, :cond_39

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_39

    .line 2434
    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->n()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->w:J

    .line 2435
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->h()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    .line 2436
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->l()Z

    move-result v0

    if-nez v0, :cond_38

    .line 2437
    :cond_2b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->h()V

    .line 2438
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->l()V

    .line 2439
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aN:Z

    .line 2441
    :cond_38
    return-void

    .line 2432
    :cond_39
    :goto_39
    return-void
.end method

.method protected static a(Landroid/app/Activity;)F
    .registers 2

    .line 3170
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->g(Landroid/content/Context;)I

    move-result v0

    .line 3171
    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->b(Landroid/content/Context;F)I

    move-result p0

    int-to-float p0, p0

    .line 3172
    return p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;J)J
    .registers 3

    .line 149
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aY:J

    return-wide p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;I)Landroid/os/Message;
    .registers 2

    .line 149
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->d(I)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method private a(IIII)V
    .registers 12

    .line 1531
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->y()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1532
    return-void

    .line 1534
    :cond_7
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$a;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$a;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;IIII)V

    .line 1535
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$a;->a(J)V

    .line 1536
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->d:Landroid/widget/RelativeLayout;

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$a;Landroid/view/View;Landroid/view/View;Z)V

    .line 1537
    return-void
.end method

.method private a(Landroid/view/View;)V
    .registers 5

    .line 1939
    if-nez p1, :cond_3

    return-void

    .line 1940
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "tt_rb_score"

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_17

    .line 1941
    const-string p1, "click_play_star_level"

    invoke-direct {p0, p1, v2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_c0

    .line 1942
    :cond_17
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "tt_comment_vertical"

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2a

    .line 1943
    const-string p1, "click_play_star_nums"

    invoke-direct {p0, p1, v2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_c0

    .line 1944
    :cond_2a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "tt_reward_ad_appname"

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3d

    .line 1945
    const-string p1, "click_play_source"

    invoke-direct {p0, p1, v2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_c0

    .line 1946
    :cond_3d
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "tt_reward_ad_icon"

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_50

    .line 1947
    const-string p1, "click_play_logo"

    invoke-direct {p0, p1, v2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_c0

    .line 1948
    :cond_50
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "tt_video_reward_bar"

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_b7

    .line 1949
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "tt_click_lower_non_content_layout"

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_b7

    .line 1950
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "tt_click_upper_non_content_layout"

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_75

    goto :goto_b7

    .line 1952
    :cond_75
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "tt_reward_ad_download"

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_8b

    .line 1953
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->A()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "click_start_play"

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_c0

    .line 1954
    :cond_8b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "tt_video_reward_container"

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_a1

    .line 1955
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->A()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "click_video"

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_c0

    .line 1956
    :cond_a1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "tt_reward_ad_download_backup"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_c0

    .line 1957
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->A()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "fallback_endcard_click"

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_c0

    .line 1951
    :cond_b7
    :goto_b7
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->A()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "click_start_play_bar"

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1959
    :cond_c0
    :goto_c0
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$a;Landroid/view/View;Landroid/view/View;Z)V
    .registers 19

    .line 1540
    move-object v11, p0

    .line 1541
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->af:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1542
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1543
    iget-object v1, v11, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->af:Ljava/lang/String;

    const-string v2, "rit_scene"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v12, v0

    goto :goto_19

    .line 1541
    :cond_17
    const/4 v0, 0x0

    move-object v12, v0

    .line 1545
    :goto_19
    nop

    .line 1546
    instance-of v0, v11, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    if-eqz v0, :cond_21

    .line 1547
    const-string v0, "fullscreen_interstitial_ad"

    goto :goto_23

    .line 1546
    :cond_21
    const-string v0, ""

    .line 1549
    :goto_23
    instance-of v1, v11, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;

    if-eqz v1, :cond_2b

    .line 1550
    const-string v0, "rewarded_video"

    move-object v13, v0

    goto :goto_2c

    .line 1549
    :cond_2b
    move-object v13, v0

    .line 1552
    :goto_2c
    if-eqz p1, :cond_62

    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez v0, :cond_33

    goto :goto_62

    .line 1555
    :cond_33
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$a;->a(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$a;)I

    move-result v1

    .line 1556
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$a;->b(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$a;)I

    move-result v2

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$a;->c(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$a;)I

    move-result v3

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$a;->d(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$a;)I

    move-result v4

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$a;->e(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$a;)J

    move-result-wide v5

    .line 1557
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$a;->f(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$a;)J

    move-result-wide v7

    .line 1555
    move-object v0, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-virtual/range {v0 .. v10}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(IIIIJJLandroid/view/View;Landroid/view/View;)Lcom/bytedance/sdk/openadsdk/core/d/f;

    move-result-object v4

    .line 1558
    iget-object v1, v11, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->e:Landroid/content/Context;

    iget-object v3, v11, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const-string v2, "click_other"

    move-object v5, v13

    move/from16 v6, p4

    move-object v7, v12

    invoke-static/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/core/d/f;Ljava/lang/String;ZLjava/util/Map;)V

    .line 1559
    return-void

    .line 1553
    :cond_62
    :goto_62
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;Landroid/view/View;)V
    .registers 2

    .line 149
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;Landroid/view/View;IIII)V
    .registers 6

    .line 149
    invoke-direct/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->b(Landroid/view/View;IIII)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;Lcom/bytedance/sdk/openadsdk/core/x;JJI)V
    .registers 7

    .line 149
    invoke-direct/range {p0 .. p6}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/core/x;JJI)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 149
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    .line 149
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;)V
    .registers 5

    .line 625
    if-nez p1, :cond_3

    .line 626
    return-void

    .line 628
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->a(Z)Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->b(Z)Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a;->a(Landroid/webkit/WebView;)V

    .line 629
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->N:I

    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/r;->a(Landroid/webkit/WebView;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 631
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_2f

    .line 632
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 634
    :cond_2f
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/x;JJI)V
    .registers 9

    .line 1898
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_e

    .line 1899
    const-wide/16 v0, 0x64

    mul-long/2addr p2, v0

    div-long/2addr p2, p4

    long-to-int p2, p2

    .line 1900
    invoke-virtual {p0, p1, p6, p2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/core/x;II)V

    .line 1902
    :cond_e
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;Lcom/bytedance/sdk/openadsdk/core/x;)V
    .registers 4

    .line 1822
    if-eqz p1, :cond_e

    if-nez p2, :cond_5

    goto :goto_e

    .line 1825
    :cond_5
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$8;

    invoke-direct {v0, p0, p2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$8;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;Lcom/bytedance/sdk/openadsdk/core/x;)V

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 1895
    return-void

    .line 1823
    :cond_e
    :goto_e
    return-void
.end method

.method private a(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .registers 18

    .line 2770
    new-instance v9, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$16;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$16;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-static {v9, v0}, Lcom/bytedance/sdk/openadsdk/j/e;->b(Ljava/lang/Runnable;I)V

    .line 2780
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 565
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Lcom/bytedance/sdk/openadsdk/c/d;->c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 566
    return-void
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 7

    .line 1511
    instance-of v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    if-eqz v0, :cond_e

    .line 1512
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const/4 v2, 0x0

    const-string v3, "fullscreen_interstitial_ad"

    invoke-static {v0, v1, v3, p1, v2}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1514
    :cond_e
    instance-of v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;

    if-eqz v0, :cond_1b

    .line 1515
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const-string v2, "rewarded_video"

    invoke-static {v0, v1, v2, p1, p2}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1517
    :cond_1b
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;)Z
    .registers 1

    .line 149
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->bg:Z

    return p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;Z)Z
    .registers 2

    .line 149
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->bg:Z

    return p1
.end method

.method public static a(ZLandroid/app/Activity;I)[F
    .registers 7

    .line 3251
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Landroid/app/Activity;)F

    move-result v0

    .line 3252
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->b(Landroid/app/Activity;)F

    move-result p1

    .line 3253
    cmpl-float v1, v0, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_10

    move v1, v2

    goto :goto_11

    :cond_10
    move v1, v3

    :goto_11
    if-eq p0, v1, :cond_17

    .line 3254
    add-float/2addr v0, p1

    .line 3255
    sub-float p1, v0, p1

    .line 3256
    sub-float/2addr v0, p1

    .line 3262
    :cond_17
    if-eqz p0, :cond_1c

    .line 3263
    int-to-float p0, p2

    sub-float/2addr v0, p0

    goto :goto_1e

    .line 3265
    :cond_1c
    int-to-float p0, p2

    sub-float/2addr p1, p0

    .line 3268
    :goto_1e
    const/4 p0, 0x2

    new-array p0, p0, [F

    aput p1, p0, v3

    aput v0, p0, v2

    return-object p0
.end method

.method private aa()V
    .registers 3

    .line 2525
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    if-eqz v0, :cond_8

    .line 2526
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setShowSound(Z)V

    .line 2528
    :cond_8
    return-void
.end method

.method private ab()V
    .registers 13

    .line 2735
    nop

    .line 2736
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->T:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v0

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/h/a;->g:I

    .line 2737
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->e(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_32

    .line 2741
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->L()D

    move-result-wide v4

    .line 2742
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->Q:I

    int-to-double v10, v1

    div-double/2addr v10, v4

    sub-double/2addr v8, v10

    mul-double/2addr v8, v6

    int-to-double v0, v0

    cmpl-double v0, v8, v0

    if-ltz v0, :cond_2f

    goto :goto_30

    :cond_2f
    move v2, v3

    .line 2744
    :goto_30
    move v3, v2

    goto :goto_74

    .line 2746
    :cond_32
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v1

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->T:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/h/h;->o(Ljava/lang/String;)I

    move-result v1

    .line 2747
    const/high16 v4, 0x42c80000    # 100.0f

    const/high16 v5, 0x3f800000    # 1.0f

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ay:I

    int-to-float v6, v6

    int-to-float v1, v1

    div-float/2addr v6, v1

    sub-float/2addr v5, v6

    mul-float/2addr v5, v4

    int-to-float v0, v0

    cmpl-float v0, v5, v0

    if-ltz v0, :cond_52

    move v0, v2

    goto :goto_53

    :cond_52
    move v0, v3

    .line 2748
    :goto_53
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v1

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->T:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/h/h;->m(Ljava/lang/String;)I

    move-result v1

    .line 2750
    if-nez v1, :cond_71

    .line 2753
    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->F:Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/x;->e()Z

    move-result v0

    if-eqz v0, :cond_6e

    goto :goto_6f

    :cond_6e
    move v2, v3

    :goto_6f
    move v3, v2

    goto :goto_74

    .line 2755
    :cond_71
    if-ne v1, v2, :cond_74

    .line 2758
    move v3, v0

    .line 2762
    :cond_74
    :goto_74
    if-eqz v3, :cond_7b

    .line 2763
    const/16 v0, 0x2710

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->f(I)V

    .line 2766
    :cond_7b
    return-void
.end method

.method private ac()V
    .registers 4

    .line 3203
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aI:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aI:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4f

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->v()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_4f

    .line 3206
    :cond_19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aI:Ljava/lang/String;

    const-string v1, "playable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->d(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_4c

    .line 3208
    :cond_2c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aI:Ljava/lang/String;

    const-string v2, "endcard"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 3209
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aH:Ljava/lang/String;

    goto :goto_4e

    .line 3210
    :cond_39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->C()Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 3211
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aH:Ljava/lang/String;

    goto :goto_4e

    .line 3207
    :cond_4c
    :goto_4c
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aH:Ljava/lang/String;

    .line 3213
    :cond_4e
    :goto_4e
    return-void

    .line 3204
    :cond_4f
    :goto_4f
    return-void
.end method

.method private ad()V
    .registers 3

    .line 3218
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->B:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeToast;

    const-string v1, "\u60a8\u5df2\u6210\u529f\u63d0\u4ea4\u53cd\u9988\uff0c\u8bf7\u52ff\u91cd\u590d\u63d0\u4ea4\u54e6\uff01"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeToast;->a(Ljava/lang/String;)V

    .line 3219
    return-void
.end method

.method private ae()V
    .registers 3

    .line 3223
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->B:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeToast;

    const-string v1, "\u611f\u8c22\u60a8\u7684\u53cd\u9988\uff01\n\u6211\u4eec\u5c06\u4e3a\u60a8\u5e26\u6765\u66f4\u4f18\u8d28\u7684\u5e7f\u544a\u4f53\u9a8c"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeToast;->a(Ljava/lang/String;)V

    .line 3224
    return-void
.end method

.method protected static b(Landroid/app/Activity;)F
    .registers 2

    .line 3177
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->h(Landroid/content/Context;)I

    move-result v0

    .line 3178
    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->b(Landroid/content/Context;F)I

    move-result p0

    int-to-float p0, p0

    .line 3179
    return p0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;J)J
    .registers 3

    .line 149
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ba:J

    return-wide p1
.end method

.method private b(Landroid/view/View;IIII)V
    .registers 8

    .line 1962
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->y()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1963
    return-void

    .line 1965
    :cond_7
    if-nez p1, :cond_a

    return-void

    .line 1966
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "tt_rb_score"

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1b

    .line 1967
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(IIII)V

    goto/16 :goto_a4

    .line 1968
    :cond_1b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "tt_comment_vertical"

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2c

    .line 1969
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(IIII)V

    goto/16 :goto_a4

    .line 1970
    :cond_2c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "tt_reward_ad_appname"

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3c

    .line 1971
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(IIII)V

    goto :goto_a4

    .line 1972
    :cond_3c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "tt_reward_ad_icon"

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_4c

    .line 1973
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(IIII)V

    goto :goto_a4

    .line 1974
    :cond_4c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "tt_video_reward_bar"

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_a1

    .line 1975
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "tt_click_lower_non_content_layout"

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_a1

    .line 1976
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "tt_click_upper_non_content_layout"

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_71

    goto :goto_a1

    .line 1978
    :cond_71
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "tt_reward_ad_download"

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_81

    .line 1979
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(IIII)V

    goto :goto_a4

    .line 1980
    :cond_81
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "tt_video_reward_container"

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_91

    .line 1981
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(IIII)V

    goto :goto_a4

    .line 1982
    :cond_91
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "tt_reward_ad_download_backup"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_a4

    .line 1983
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(IIII)V

    goto :goto_a4

    .line 1977
    :cond_a1
    :goto_a1
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(IIII)V

    .line 1985
    :cond_a4
    :goto_a4
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;)V
    .registers 1

    .line 149
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->Q()V

    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;Z)Z
    .registers 2

    .line 149
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aW:Z

    return p1
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;J)J
    .registers 3

    .line 149
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aZ:J

    return-wide p1
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;)Z
    .registers 1

    .line 149
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aW:Z

    return p0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;Z)Z
    .registers 2

    .line 149
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aU:Z

    return p1
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;)I
    .registers 1

    .line 149
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->R()I

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;J)J
    .registers 3

    .line 149
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->bb:J

    return-wide p1
.end method

.method private d(I)Landroid/os/Message;
    .registers 4

    .line 1048
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1049
    const/16 v1, 0x320

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1050
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1051
    return-object v0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;J)J
    .registers 3

    .line 149
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->bc:J

    return-wide p1
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;)V
    .registers 1

    .line 149
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ab()V

    return-void
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;)J
    .registers 3

    .line 149
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aY:J

    return-wide v0
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;J)J
    .registers 3

    .line 149
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->bd:J

    return-wide p1
.end method

.method private f(Z)V
    .registers 4

    .line 1098
    if-nez p1, :cond_3e

    .line 1099
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ak:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    const/4 v0, 0x0

    if-eqz p1, :cond_1c

    .line 1100
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1101
    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1102
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ak:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1105
    :cond_1c
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ao:Landroid/widget/TextView;

    if-eqz p1, :cond_3e

    .line 1106
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1107
    const/high16 v1, 0x420c0000    # 35.0f

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1108
    const/high16 v0, 0x43ab0000    # 342.0f

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1109
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ao:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1112
    :cond_3e
    return-void
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;)J
    .registers 3

    .line 149
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ba:J

    return-wide v0
.end method

.method private g(Z)Ljava/lang/String;
    .registers 4

    .line 2089
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    .line 2090
    :cond_6
    const/4 v1, 0x4

    if-eqz p1, :cond_15

    .line 2091
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->T()I

    move-result p1

    if-eq p1, v1, :cond_12

    .line 2092
    const-string p1, "\u67e5\u770b"

    return-object p1

    .line 2094
    :cond_12
    const-string p1, "\u4e0b\u8f7d"

    return-object p1

    .line 2097
    :cond_15
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->T()I

    move-result p1

    if-eq p1, v1, :cond_1e

    .line 2098
    const-string p1, "View"

    return-object p1

    .line 2100
    :cond_1e
    const-string p1, "Install"

    return-object p1
.end method

.method static synthetic h(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;)J
    .registers 3

    .line 149
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aZ:J

    return-wide v0
.end method

.method static synthetic i(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;)J
    .registers 3

    .line 149
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->bb:J

    return-wide v0
.end method

.method static synthetic j(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;)J
    .registers 3

    .line 149
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->bc:J

    return-wide v0
.end method

.method static synthetic k(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;)J
    .registers 3

    .line 149
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->bd:J

    return-wide v0
.end method

.method static synthetic l(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;)V
    .registers 1

    .line 149
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ae()V

    return-void
.end method


# virtual methods
.method protected A()Lorg/json/JSONObject;
    .registers 6

    .line 1988
    nop

    .line 1989
    nop

    .line 1990
    nop

    .line 1993
    const/4 v0, 0x0

    :try_start_4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz v1, :cond_13

    .line 1994
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->q()J

    move-result-wide v1

    .line 1995
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->r()I

    move-result v3

    goto :goto_16

    .line 1993
    :cond_13
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 1997
    :goto_16
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_29

    .line 1998
    :try_start_1b
    const-string v0, "duration"

    invoke-virtual {v4, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1999
    const-string v0, "percent"

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_26

    .line 2000
    return-object v4

    .line 2001
    :catchall_26
    move-exception v0

    move-object v0, v4

    goto :goto_2a

    :catchall_29
    move-exception v1

    .line 2003
    :goto_2a
    return-object v0
.end method

.method protected B()Ljava/lang/String;
    .registers 4

    .line 2008
    nop

    .line 2009
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const-string v1, "\u7acb\u5373\u4e0b\u8f7d"

    if-nez v0, :cond_8

    .line 2010
    return-object v1

    .line 2012
    :cond_8
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->af()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2013
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->T()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_24

    .line 2014
    const-string v1, "\u67e5\u770b\u8be6\u60c5"

    goto :goto_24

    .line 2017
    :cond_1e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->af()Ljava/lang/String;

    move-result-object v1

    .line 2019
    :cond_24
    :goto_24
    return-object v1
.end method

.method protected C()Ljava/lang/String;
    .registers 8

    .line 2028
    nop

    .line 2029
    nop

    .line 2030
    nop

    .line 2031
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2032
    if-nez v0, :cond_b

    .line 2033
    const-string v0, ""

    .line 2036
    :cond_b
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_d
    sget-object v3, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    sget-object v3, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2f
    .catchall {:try_start_d .. :try_end_2f} :catchall_42

    if-eqz v3, :cond_32

    goto :goto_34

    :cond_32
    move v3, v1

    goto :goto_35

    :cond_34
    :goto_34
    move v3, v2

    .line 2037
    :goto_35
    :try_start_35
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3f
    .catchall {:try_start_35 .. :try_end_3f} :catchall_40

    .line 2039
    goto :goto_45

    .line 2038
    :catchall_40
    move-exception v0

    goto :goto_44

    :catchall_42
    move-exception v0

    move v3, v2

    :goto_44
    move v0, v1

    .line 2041
    :goto_45
    const-string v4, "\u4e0b\u8f7d"

    if-eqz v3, :cond_4a

    .line 2042
    goto :goto_4e

    .line 2043
    :cond_4a
    if-eqz v0, :cond_4e

    .line 2044
    const-string v4, "Install"

    .line 2047
    :cond_4e
    :goto_4e
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez v5, :cond_53

    .line 2048
    return-object v4

    .line 2052
    :cond_53
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/d/l;->af()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 2053
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->T()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_af

    .line 2054
    if-eqz v3, :cond_6b

    .line 2055
    const-string v4, "\u67e5\u770b"

    goto :goto_af

    .line 2056
    :cond_6b
    if-eqz v0, :cond_af

    .line 2057
    const-string v4, "View"

    goto :goto_af

    .line 2061
    :cond_70
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/d/l;->af()Ljava/lang/String;

    move-result-object v4

    .line 2063
    if-eqz v4, :cond_93

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/utils/aj;->j(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_93

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_93

    .line 2064
    if-eqz v3, :cond_8c

    .line 2065
    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->g(Z)Ljava/lang/String;

    move-result-object v4

    goto :goto_af

    .line 2066
    :cond_8c
    if-eqz v0, :cond_af

    .line 2067
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->g(Z)Ljava/lang/String;

    move-result-object v4

    goto :goto_af

    .line 2069
    :cond_93
    if-eqz v4, :cond_af

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/utils/aj;->j(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_af

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x7

    if-le v5, v6, :cond_af

    .line 2070
    if-eqz v3, :cond_a9

    .line 2071
    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->g(Z)Ljava/lang/String;

    move-result-object v4

    goto :goto_af

    .line 2072
    :cond_a9
    if-eqz v0, :cond_af

    .line 2073
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->g(Z)Ljava/lang/String;

    move-result-object v4

    .line 2078
    :cond_af
    :goto_af
    if-eqz v0, :cond_cc

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/utils/aj;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_cc

    .line 2079
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2080
    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 2081
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2084
    :cond_cc
    return-object v4
.end method

.method D()V
    .registers 8

    .line 2109
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ah:Z

    if-eqz v0, :cond_51

    .line 2110
    const/4 v0, 0x1

    new-array v0, v0, [I

    const-string v1, "#0070FF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 2111
    const/high16 v1, 0x41880000    # 17.0f

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;F)I

    move-result v1

    .line 2112
    const-string v3, "#80000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    .line 2113
    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {p0, v4}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;F)I

    move-result v4

    .line 2114
    nop

    .line 2115
    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/widget/f$a;

    invoke-direct {v5}, Lcom/bytedance/sdk/openadsdk/core/widget/f$a;-><init>()V

    aget v6, v0, v2

    .line 2116
    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/openadsdk/core/widget/f$a;->a(I)Lcom/bytedance/sdk/openadsdk/core/widget/f$a;

    move-result-object v5

    .line 2117
    invoke-virtual {v5, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/f$a;->b(I)Lcom/bytedance/sdk/openadsdk/core/widget/f$a;

    move-result-object v3

    .line 2118
    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/f$a;->a([I)Lcom/bytedance/sdk/openadsdk/core/widget/f$a;

    move-result-object v0

    .line 2119
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/f$a;->c(I)Lcom/bytedance/sdk/openadsdk/core/widget/f$a;

    move-result-object v0

    .line 2120
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/f$a;->d(I)Lcom/bytedance/sdk/openadsdk/core/widget/f$a;

    move-result-object v0

    .line 2121
    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/widget/f$a;->e(I)Lcom/bytedance/sdk/openadsdk/core/widget/f$a;

    move-result-object v0

    .line 2122
    const-string v1, "tt_reward_ad_download_layout"

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 2123
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/f;->a(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/widget/f$a;)V

    .line 2125
    :cond_51
    return-void
.end method

.method E()V
    .registers 5

    .line 2128
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->C:Lcom/bytedance/sdk/openadsdk/dislike/c;

    if-nez v0, :cond_15

    .line 2129
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/c;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/c;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->C:Lcom/bytedance/sdk/openadsdk/dislike/c;

    .line 2130
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$11;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$11;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/c;->a(Lcom/bytedance/sdk/openadsdk/dislike/c$a;)V

    .line 2173
    :cond_15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->A:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;

    const v1, 0x1020002

    if-nez v0, :cond_3a

    .line 2174
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aE:Ljava/lang/String;

    invoke-direct {v0, p0, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->A:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;

    .line 2175
    new-instance v2, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$13;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$13;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->setCallback(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew$a;)V

    .line 2207
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 2208
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->A:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2211
    :cond_3a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->B:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeToast;

    if-nez v0, :cond_50

    .line 2212
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeToast;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeToast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->B:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeToast;

    .line 2213
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 2214
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->B:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeToast;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2216
    :cond_50
    return-void
.end method

.method protected F()V
    .registers 6

    .line 2353
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->V:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2354
    return-void

    .line 2356
    :cond_a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz v0, :cond_46

    .line 2357
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_34

    .line 2358
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v0

    .line 2359
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->i()Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->j()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 2361
    :cond_27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->y()V

    .line 2362
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->w:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(JZ)Z

    .line 2364
    :cond_33
    goto :goto_46

    .line 2366
    :cond_34
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aN:Z

    if-eqz v0, :cond_46

    .line 2367
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->y()V

    .line 2368
    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->w:J

    invoke-virtual {p0, v3, v4, v2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(JZ)Z

    .line 2369
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aN:Z

    .line 2374
    :cond_46
    :goto_46
    return-void
.end method

.method protected G()V
    .registers 3

    .line 2704
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    if-eqz v0, :cond_17

    .line 2705
    const/16 v1, 0x384

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeMessages(I)V

    .line 2706
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    const/16 v1, 0x3b6

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeMessages(I)V

    .line 2707
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeMessages(I)V

    .line 2709
    :cond_17
    return-void
.end method

.method protected H()V
    .registers 5

    .line 2712
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    if-eqz v0, :cond_19

    .line 2713
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2714
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->R()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2715
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ay:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2716
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/al;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2718
    :cond_19
    return-void
.end method

.method I()V
    .registers 7

    .line 2798
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->Y:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2799
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->Z:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2800
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->C:Lcom/bytedance/sdk/openadsdk/dislike/c;

    if-eqz v0, :cond_12

    .line 2801
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->a()V

    .line 2803
    :cond_12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    const/4 v2, 0x1

    if-eqz v0, :cond_47

    .line 2804
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setShowSkip(Z)V

    .line 2805
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setShowCountDown(Z)V

    .line 2806
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->X()V

    .line 2807
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/d/l;->b(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setShowSound(Z)V

    .line 2808
    instance-of v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenExpressVideoActivity;

    if-nez v0, :cond_35

    instance-of v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    if-eqz v0, :cond_47

    :cond_35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 2810
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->b(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 2811
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setShowSound(Z)V

    .line 2812
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setShowSkip(Z)V

    .line 2817
    :cond_47
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->c()V

    .line 2819
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->B:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeToast;

    if-eqz v0, :cond_51

    .line 2821
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeToast;->a()V

    .line 2824
    :cond_51
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->U:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 2825
    return-void

    .line 2827
    :cond_5a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->X:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2829
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ap:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aq:Z

    invoke-static {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/d/l;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;ZZ)Z

    move-result v0

    const-string v3, "TTBaseVideoActivity"

    if-nez v0, :cond_f1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->b(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v0

    if-nez v0, :cond_f1

    .line 2830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showEndcardForSkip isEndCardLoadSuc="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aq:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " so load back up end card"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2831
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aJ:Lcom/bytedance/sdk/openadsdk/c/p;

    if-eqz v0, :cond_bb

    .line 2832
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->g(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v0

    if-nez v0, :cond_b1

    .line 2833
    const-string v0, "TimeTrackLog report 408 from backup page after skip"

    invoke-static {v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2834
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aJ:Lcom/bytedance/sdk/openadsdk/c/p;

    const/16 v2, 0x198

    const-string v3, "end_card_timeout"

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/c/p;->a(ILjava/lang/String;)V

    .line 2837
    :cond_b1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aJ:Lcom/bytedance/sdk/openadsdk/c/p;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/c/p;->c()V

    .line 2838
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aJ:Lcom/bytedance/sdk/openadsdk/c/p;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/c/p;->d()V

    .line 2840
    :cond_bb
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->f:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    const/16 v2, 0x8

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 2841
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aj:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 2842
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->Y()V

    .line 2843
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aa()V

    .line 2844
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->T()V

    .line 2846
    instance-of v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    if-eqz v0, :cond_f0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz v0, :cond_f0

    .line 2847
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->v()Z

    move-result v0

    if-eqz v0, :cond_f0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->X:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 2848
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->j()V

    .line 2849
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->m()V

    .line 2852
    :cond_f0
    return-void

    .line 2855
    :cond_f1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aJ:Lcom/bytedance/sdk/openadsdk/c/p;

    if-eqz v0, :cond_10f

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->g(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v0

    if-nez v0, :cond_10f

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->b(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v0

    if-nez v0, :cond_10f

    .line 2856
    const-string v0, "TimeTrackLog report Success from Android after skip"

    invoke-static {v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2857
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aJ:Lcom/bytedance/sdk/openadsdk/c/p;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/c/p;->b()V

    .line 2861
    :cond_10f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_125

    .line 2862
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->f:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;F)V

    .line 2863
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->i:Landroid/widget/ImageView;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;F)V

    .line 2864
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->j:Landroid/widget/RelativeLayout;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;F)V

    .line 2866
    :cond_125
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->f:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 2868
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const/16 v1, 0x258

    const/4 v3, -0x1

    if-eqz v0, :cond_154

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->C()Z

    move-result v0

    if-eqz v0, :cond_154

    .line 2869
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->T:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/h/h;->p(Ljava/lang/String;)I

    move-result v0

    .line 2870
    if-ne v0, v3, :cond_14b

    .line 2871
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->Y()V

    goto :goto_17b

    .line 2872
    :cond_14b
    if-ltz v0, :cond_17b

    .line 2873
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    int-to-long v4, v0

    invoke-virtual {v3, v1, v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/al;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_17b

    .line 2875
    :cond_154
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_17b

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->C()Z

    move-result v0

    if-nez v0, :cond_17b

    .line 2876
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->T:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/h/h;->l(Ljava/lang/String;)I

    move-result v0

    .line 2877
    if-ne v0, v3, :cond_172

    .line 2878
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->Y()V

    goto :goto_17c

    .line 2879
    :cond_172
    if-ltz v0, :cond_17c

    .line 2880
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    int-to-long v4, v0

    invoke-virtual {v3, v1, v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/al;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_17c

    .line 2875
    :cond_17b
    :goto_17b
    nop

    .line 2885
    :cond_17c
    :goto_17c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    const/16 v1, 0x1f4

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/al;->sendEmptyMessageDelayed(IJ)Z

    .line 2886
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->P:Z

    invoke-virtual {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(ZZ)V

    .line 2887
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->F:Lcom/bytedance/sdk/openadsdk/core/x;

    if-eqz v0, :cond_194

    .line 2888
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/x;->b(Z)Lcom/bytedance/sdk/openadsdk/core/x;

    .line 2889
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->b(Z)V

    .line 2891
    :cond_194
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->p()V

    .line 2892
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->be:Lcom/bytedance/sdk/openadsdk/playable/e;

    if-eqz v0, :cond_19e

    .line 2893
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/playable/e;->b(Z)Lcom/bytedance/sdk/openadsdk/playable/e;

    .line 2895
    :cond_19e
    return-void
.end method

.method public J()V
    .registers 2

    .line 3131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aF:Z

    .line 3132
    return-void
.end method

.method public K()V
    .registers 2

    .line 3136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aF:Z

    .line 3137
    return-void
.end method

.method public L()D
    .registers 3

    .line 3161
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 3162
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/t;->e()D

    move-result-wide v0

    return-wide v0

    .line 3164
    :cond_15
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected M()V
    .registers 3

    .line 3183
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3184
    return-void

    .line 3188
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->Z:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3189
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ad()V

    .line 3190
    return-void

    .line 3193
    :cond_13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->A:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;

    if-nez v0, :cond_1a

    .line 3194
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->E()V

    .line 3197
    :cond_1a
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ac()V

    .line 3198
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->A:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->a(Ljava/lang/String;)V

    .line 3199
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->A:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->a()V

    .line 3200
    return-void
.end method

.method protected N()V
    .registers 3

    .line 3284
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    if-eqz v0, :cond_9

    .line 3285
    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeMessages(I)V

    .line 3287
    :cond_9
    return-void
.end method

.method protected O()V
    .registers 3

    .line 3293
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_39

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ac:Ljava/lang/String;

    .line 3294
    const-string v1, "C8817D"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ac:Ljava/lang/String;

    .line 3295
    const-string v1, "M5"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ac:Ljava/lang/String;

    .line 3296
    const-string v1, "R7t"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_39

    .line 3301
    :cond_25
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->w()Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->Y:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_44

    .line 3302
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->k()V

    goto :goto_44

    .line 3297
    :cond_39
    :goto_39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->Y:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_44

    .line 3298
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->F()V

    .line 3305
    :cond_44
    :goto_44
    return-void
.end method

.method protected a(I)Lcom/bytedance/sdk/openadsdk/IListenerManager;
    .registers 3

    .line 2783
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    move-result-object v0

    .line 2784
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a(I)Landroid/os/IBinder;

    move-result-object p1

    .line 2785
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/a;->asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object p1

    return-object p1
.end method

.method protected a(IIIIJJLandroid/view/View;Landroid/view/View;)Lcom/bytedance/sdk/openadsdk/core/d/f;
    .registers 12

    .line 1586
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/d/f$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/d/f$a;-><init>()V

    .line 1587
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/f$a;->e(I)Lcom/bytedance/sdk/openadsdk/core/d/f$a;

    move-result-object p1

    .line 1588
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/f$a;->d(I)Lcom/bytedance/sdk/openadsdk/core/d/f$a;

    move-result-object p1

    .line 1589
    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/d/f$a;->c(I)Lcom/bytedance/sdk/openadsdk/core/d/f$a;

    move-result-object p1

    .line 1590
    invoke-virtual {p1, p4}, Lcom/bytedance/sdk/openadsdk/core/d/f$a;->b(I)Lcom/bytedance/sdk/openadsdk/core/d/f$a;

    move-result-object p1

    .line 1591
    invoke-virtual {p1, p5, p6}, Lcom/bytedance/sdk/openadsdk/core/d/f$a;->b(J)Lcom/bytedance/sdk/openadsdk/core/d/f$a;

    move-result-object p1

    .line 1592
    invoke-virtual {p1, p7, p8}, Lcom/bytedance/sdk/openadsdk/core/d/f$a;->a(J)Lcom/bytedance/sdk/openadsdk/core/d/f$a;

    move-result-object p1

    .line 1593
    invoke-static {p9}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/f$a;->b([I)Lcom/bytedance/sdk/openadsdk/core/d/f$a;

    move-result-object p1

    .line 1594
    invoke-static {p10}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/f$a;->a([I)Lcom/bytedance/sdk/openadsdk/core/d/f$a;

    move-result-object p1

    .line 1595
    invoke-static {p9}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/view/View;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/f$a;->c([I)Lcom/bytedance/sdk/openadsdk/core/d/f$a;

    move-result-object p1

    .line 1596
    invoke-static {p10}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/view/View;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/f$a;->d([I)Lcom/bytedance/sdk/openadsdk/core/d/f$a;

    move-result-object p1

    .line 1597
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/f$a;->f(I)Lcom/bytedance/sdk/openadsdk/core/d/f$a;

    move-result-object p1

    .line 1598
    const/4 p3, -0x1

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/d/f$a;->g(I)Lcom/bytedance/sdk/openadsdk/core/d/f$a;

    move-result-object p1

    .line 1599
    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/d/f$a;->h(I)Lcom/bytedance/sdk/openadsdk/core/d/f$a;

    move-result-object p1

    .line 1600
    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/d/f$a;->a(Landroid/util/SparseArray;)Lcom/bytedance/sdk/openadsdk/core/d/f$a;

    move-result-object p1

    .line 1601
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/i;->b()Z

    move-result p3

    if-eqz p3, :cond_5c

    goto :goto_5d

    :cond_5c
    const/4 p2, 0x2

    :goto_5d
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/f$a;->a(I)Lcom/bytedance/sdk/openadsdk/core/d/f$a;

    move-result-object p1

    .line 1602
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/f$a;->a()Lcom/bytedance/sdk/openadsdk/core/d/f;

    move-result-object p1

    .line 1586
    return-object p1
.end method

.method protected a()V
    .registers 2

    .line 376
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->d(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->e(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 378
    :cond_10
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aR:I

    if-nez v0, :cond_1a

    .line 379
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->P:Z

    .line 380
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Z)V

    .line 383
    :cond_1a
    return-void
.end method

.method protected a(II)V
    .registers 5

    .line 2938
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2939
    const-string v1, "width"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2940
    const-string p1, "height"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2941
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->F:Lcom/bytedance/sdk/openadsdk/core/x;

    const-string p2, "resize"

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 2944
    goto :goto_1b

    .line 2942
    :catch_17
    move-exception p1

    .line 2943
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2945
    :goto_1b
    return-void
.end method

.method protected a(Landroid/content/Context;)V
    .registers 4

    .line 3143
    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->H:Lcom/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver;

    .line 3144
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver;->a(Lcom/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver$a;)V

    .line 3145
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3146
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->H:Lcom/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    .line 3148
    goto :goto_18

    .line 3147
    :catchall_17
    move-exception p1

    .line 3149
    :goto_18
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .registers 14

    .line 2559
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/16 v2, 0x1f4

    if-ne v0, v2, :cond_5e

    .line 2560
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->b(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 2562
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aa()V

    .line 2564
    :cond_12
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    .line 2565
    if-eqz p1, :cond_22

    .line 2566
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->onResume()V

    .line 2567
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->resumeTimers()V

    .line 2569
    :cond_22
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    if-eqz p1, :cond_29

    .line 2570
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setShowCountDown(Z)V

    .line 2572
    :cond_29
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->f:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    if-eqz p1, :cond_3c

    .line 2573
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;F)V

    .line 2574
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->i:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;F)V

    .line 2575
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->j:Landroid/widget/RelativeLayout;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;F)V

    .line 2578
    :cond_3c
    instance-of p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    if-eqz p1, :cond_5c

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz p1, :cond_5c

    .line 2579
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->v()Z

    move-result p1

    if-eqz p1, :cond_5c

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->X:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 2580
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->j()V

    .line 2581
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->m()V

    .line 2583
    :cond_5c
    goto/16 :goto_1ec

    :cond_5e
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x258

    if-ne v0, v2, :cond_69

    .line 2584
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->Y()V

    goto/16 :goto_1ec

    .line 2586
    :cond_69
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x320

    if-ne v0, v3, :cond_ad

    .line 2588
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2589
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "remove_loading_page_type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2590
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object p1

    if-eqz p1, :cond_96

    .line 2591
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/t;->j()Ljava/lang/String;

    move-result-object p1

    const-string v1, "playable_url"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2593
    :cond_96
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aE:Ljava/lang/String;

    const-string v2, "remove_loading_page"

    invoke-static {p0, p1, v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/c/d;->k(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2596
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeMessages(I)V

    .line 2597
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->b:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    if-eqz p1, :cond_ab

    .line 2598
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->a()V

    .line 2600
    :cond_ab
    goto/16 :goto_1ec

    :cond_ad
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x2711

    const/16 v4, 0x2712

    const/4 v5, 0x0

    const-wide/16 v6, 0x1

    const/16 v8, 0x384

    const-wide/16 v9, 0x3e8

    const/4 v11, 0x1

    if-ne v0, v8, :cond_113

    .line 2601
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->i()I

    move-result v0

    if-eq v0, v11, :cond_c6

    .line 2602
    return-void

    .line 2605
    :cond_c6
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 2606
    if-lez p1, :cond_f8

    .line 2607
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    if-eqz v0, :cond_da

    .line 2608
    invoke-virtual {v0, v11}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setShowSkip(Z)V

    .line 2609
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 2611
    :cond_da
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2612
    iput v8, v0, Landroid/os/Message;->what:I

    .line 2613
    add-int/lit8 v1, p1, -0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2614
    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->az:J

    sub-long/2addr v3, v6

    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->az:J

    .line 2615
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    invoke-virtual {v3, v0, v9, v10}, Lcom/bytedance/sdk/openadsdk/utils/al;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2616
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ay:I

    .line 2617
    if-ne p1, v11, :cond_f7

    .line 2618
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    invoke-virtual {p1, v2, v9, v10}, Lcom/bytedance/sdk/openadsdk/utils/al;->sendEmptyMessageDelayed(IJ)Z

    .line 2620
    :cond_f7
    goto :goto_10a

    .line 2621
    :cond_f8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    if-eqz p1, :cond_ff

    .line 2622
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setShowSkip(Z)V

    .line 2625
    :cond_ff
    instance-of p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;

    if-eqz p1, :cond_107

    .line 2626
    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->f(I)V

    goto :goto_10a

    .line 2628
    :cond_107
    invoke-virtual {p0, v4}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->f(I)V

    .line 2632
    :goto_10a
    instance-of p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;

    if-eqz p1, :cond_111

    .line 2633
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ab()V

    .line 2635
    :cond_111
    goto/16 :goto_1ec

    :cond_113
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v8, 0x3b6

    if-ne v0, v8, :cond_1af

    .line 2636
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->i()I

    move-result v0

    if-eq v0, v11, :cond_122

    .line 2637
    return-void

    .line 2640
    :cond_122
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 2641
    if-lez p1, :cond_18c

    .line 2642
    if-ne p1, v11, :cond_12d

    .line 2643
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    invoke-virtual {v0, v2, v9, v10}, Lcom/bytedance/sdk/openadsdk/utils/al;->sendEmptyMessageDelayed(IJ)Z

    .line 2646
    :cond_12d
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aC:I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aB:I

    sub-int/2addr v1, p1

    sub-int/2addr v0, v1

    .line 2647
    if-lez v0, :cond_15f

    .line 2648
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    if-eqz v1, :cond_176

    .line 2649
    invoke-virtual {v1, v11}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setShowSkip(Z)V

    .line 2650
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u53ef\u5728("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "s)\u540e\u8df3\u8fc7"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_176

    .line 2654
    :cond_15f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    if-eqz v0, :cond_176

    .line 2655
    invoke-virtual {v0, v11}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setShowSkip(Z)V

    .line 2656
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u8df3\u8fc7"

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 2657
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    invoke-virtual {v0, v11}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setSkipEnable(Z)V

    .line 2660
    :cond_176
    :goto_176
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2661
    iput v8, v0, Landroid/os/Message;->what:I

    .line 2662
    sub-int/2addr p1, v11

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2663
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->az:J

    sub-long/2addr v1, v6

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->az:J

    .line 2664
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    invoke-virtual {v1, v0, v9, v10}, Lcom/bytedance/sdk/openadsdk/utils/al;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2665
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ay:I

    .line 2666
    goto :goto_1a7

    .line 2667
    :cond_18c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    if-eqz v0, :cond_19c

    .line 2668
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setShowSkip(Z)V

    .line 2669
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v5}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 2672
    :cond_19c
    instance-of p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;

    if-eqz p1, :cond_1a4

    .line 2673
    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->f(I)V

    goto :goto_1a7

    .line 2675
    :cond_1a4
    invoke-virtual {p0, v4}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->f(I)V

    .line 2679
    :goto_1a7
    instance-of p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;

    if-eqz p1, :cond_1ae

    .line 2680
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ab()V

    .line 2682
    :cond_1ae
    goto :goto_1ec

    :cond_1af
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x12c

    if-ne v0, v1, :cond_1dc

    .line 2684
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz v0, :cond_1c8

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v0

    if-eqz v0, :cond_1c8

    .line 2685
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->d()V

    .line 2687
    :cond_1c8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz v0, :cond_1cf

    .line 2688
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->m()V

    .line 2690
    :cond_1cf
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->u()V

    .line 2691
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v11, :cond_1ec

    .line 2692
    const/16 p1, 0x2710

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->f(I)V

    goto :goto_1ec

    .line 2694
    :cond_1dc
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x190

    if-ne p1, v0, :cond_1ec

    .line 2696
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz p1, :cond_1e9

    .line 2697
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->m()V

    .line 2699
    :cond_1e9
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->u()V

    .line 2701
    :cond_1ec
    :goto_1ec
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/x;II)V
    .registers 6

    .line 1905
    if-eqz p1, :cond_25

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aX:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_25

    .line 1909
    :cond_b
    :try_start_b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1910
    const-string v1, "downloadStatus"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1911
    const-string p2, "downloadProcessRate"

    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1912
    const-string p2, "showDownloadStatus"

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/x;->b(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1f} :catch_20

    .line 1915
    goto :goto_24

    .line 1913
    :catch_20
    move-exception p1

    .line 1914
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1916
    :goto_24
    return-void

    .line 1906
    :cond_25
    :goto_25
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .registers 11

    .line 714
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->f:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    if-nez v0, :cond_5

    .line 715
    return-void

    .line 717
    :cond_5
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/j;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->f:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-direct {v0, p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/c/j;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Landroid/webkit/WebView;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/c/j;->a(Z)Lcom/bytedance/sdk/openadsdk/c/j;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->t:Lcom/bytedance/sdk/openadsdk/c/j;

    .line 718
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->h()Z

    move-result v2

    if-eqz v2, :cond_1e

    const-string v2, "landingpage_endcard"

    goto :goto_1f

    :cond_1e
    move-object v2, p1

    :goto_1f
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/c/j;->a(Ljava/lang/String;)V

    .line 720
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->f:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    new-instance v8, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->e:Landroid/content/Context;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->F:Lcom/bytedance/sdk/openadsdk/core/x;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->K:Ljava/lang/String;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->t:Lcom/bytedance/sdk/openadsdk/c/j;

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$22;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/x;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/c/j;)V

    invoke-virtual {v0, v8}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 893
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->f:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;)V

    .line 894
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->i()I

    move-result v0

    if-ne v0, v1, :cond_53

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->C()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 895
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->h:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;)V

    .line 896
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->g()Z

    .line 898
    :cond_53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_6b

    .line 899
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->av:Z

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->setWebContentsDebuggingEnabled(Z)V

    .line 900
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->av:Z

    if-eqz v0, :cond_6b

    .line 902
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->f:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 905
    :cond_6b
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->i()V

    .line 906
    const-string v0, "reward_endcard"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e

    .line 907
    const-string v0, "fullscreen_endcard"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8a

    .line 908
    :cond_7e
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->f:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 909
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->f:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->setBackgroundColor(I)V

    .line 911
    :cond_8a
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->f:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 912
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->f:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$23;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->F:Lcom/bytedance/sdk/openadsdk/core/x;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->t:Lcom/bytedance/sdk/openadsdk/c/j;

    invoke-direct {v0, p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$23;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;Lcom/bytedance/sdk/openadsdk/core/x;Lcom/bytedance/sdk/openadsdk/c/j;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 929
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->f:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$24;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$24;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 950
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2952
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz v0, :cond_83

    .line 2953
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 2954
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->o()J

    move-result-wide v2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    .line 2955
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v0

    .line 2953
    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;JLcom/bytedance/sdk/openadsdk/core/video/d/d;)Ljava/util/Map;

    move-result-object v11

    .line 2956
    if-eqz p3, :cond_36

    .line 2957
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2958
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v11, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2959
    goto :goto_1e

    .line 2961
    :cond_36
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->e:Landroid/content/Context;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    .line 2962
    invoke-interface {p3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->p()J

    move-result-wide v8

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {p3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->r()I

    move-result v10

    .line 2961
    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v4 .. v11}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;JILjava/util/Map;)V

    .line 2963
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "event tag:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", TotalPlayDuration="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->p()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",mBasevideoController.getPct()="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->r()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TTBaseVideoActivity"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2965
    :cond_83
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/util/Map;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2971
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz v0, :cond_5d

    .line 2972
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 2973
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->o()J

    move-result-wide v2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    .line 2974
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v0

    .line 2972
    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;JLcom/bytedance/sdk/openadsdk/core/video/d/d;)Ljava/util/Map;

    move-result-object v11

    .line 2975
    if-eqz p2, :cond_36

    .line 2976
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2977
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v11, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2978
    goto :goto_1e

    .line 2980
    :cond_36
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->z:Z

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;Z)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "play_type"

    invoke-interface {v11, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2981
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->e:Landroid/content/Context;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    .line 2982
    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->p()J

    move-result-wide v8

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->r()I

    move-result v10

    .line 2981
    const-string v7, "endcard_skip"

    move-object v6, p1

    invoke-static/range {v4 .. v11}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;JILjava/util/Map;)V

    .line 2984
    :cond_5d
    return-void
.end method

.method protected a(Z)V
    .registers 3

    .line 1055
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    if-eqz v0, :cond_7

    .line 1056
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setSoundMute(Z)V

    .line 1058
    :cond_7
    return-void
.end method

.method protected a(ZZ)V
    .registers 5

    .line 2905
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2906
    const-string v1, "endcard_mute"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2907
    const-string p1, "endcard_show"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2908
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->F:Lcom/bytedance/sdk/openadsdk/core/x;

    const-string p2, "endcard_control_event"

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 2911
    goto :goto_1b

    .line 2909
    :catch_17
    move-exception p1

    .line 2910
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2912
    :goto_1b
    return-void
.end method

.method protected b(I)Lcom/bytedance/sdk/openadsdk/IListenerManager;
    .registers 3

    .line 2789
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ae:Lcom/bytedance/sdk/openadsdk/IListenerManager;

    if-nez v0, :cond_16

    .line 2790
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    move-result-object v0

    .line 2791
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a(I)Landroid/os/IBinder;

    move-result-object p1

    .line 2792
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/a;->asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ae:Lcom/bytedance/sdk/openadsdk/IListenerManager;

    .line 2794
    :cond_16
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ae:Lcom/bytedance/sdk/openadsdk/IListenerManager;

    return-object p1
.end method

.method protected b()V
    .registers 2

    .line 388
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Landroid/app/Activity;)V

    .line 389
    return-void
.end method

.method protected b(Landroid/content/Context;)V
    .registers 4

    .line 3154
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->H:Lcom/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver;->a(Lcom/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver$a;)V

    .line 3155
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->H:Lcom/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    .line 3157
    goto :goto_d

    .line 3156
    :catchall_c
    move-exception p1

    .line 3158
    :goto_d
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .registers 6

    .line 963
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->i()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->C()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 964
    return-void

    .line 967
    :cond_12
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->w:J

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(JZ)Z

    move-result v0

    .line 968
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->V:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 969
    if-nez v0, :cond_34

    .line 970
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->u()V

    .line 971
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 972
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "vbtt_skip_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 975
    :cond_34
    return-void
.end method

.method protected b(Z)V
    .registers 4

    .line 2916
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2917
    const-string v1, "viewStatus"

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2918
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->F:Lcom/bytedance/sdk/openadsdk/core/x;

    const-string v1, "viewableChange"

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 2922
    goto :goto_1b

    .line 2920
    :catch_17
    move-exception p1

    .line 2921
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2923
    :goto_1b
    return-void
.end method

.method c()V
    .registers 3

    .line 395
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->e(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->P:Z

    if-eqz v0, :cond_15

    .line 396
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Z)V

    .line 397
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->au:Lcom/bytedance/sdk/openadsdk/f/g;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/f/g;->a(Z)V

    .line 399
    :cond_15
    return-void
.end method

.method public c(I)V
    .registers 8

    .line 3044
    const-string v0, "onVolumeChanged"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez p1, :cond_18

    .line 3045
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aR:I

    if-lez v3, :cond_d

    .line 3046
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aR:I

    goto :goto_29

    .line 3049
    :cond_d
    const-string v3, "onVolumeChanged >>>> \u53d8\u4e3a\u975e\u9759\u97f3\u72b6\u6001\u901a\u77e5 h5"

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3050
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->c(Z)V

    .line 3051
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aR:I

    goto :goto_29

    .line 3054
    :cond_18
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aR:I

    if-lez v3, :cond_27

    .line 3056
    const-string v3, "onVolumeChanged >>>> \u53d8\u4e3a\u9759\u97f3\u72b6\u6001\u901a\u77e5 h5"

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3057
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->c(Z)V

    .line 3058
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aR:I

    goto :goto_29

    .line 3060
    :cond_27
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aR:I

    .line 3065
    :goto_29
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->e(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result p1

    if-eqz p1, :cond_3a

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->U:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_3a

    .line 3066
    return-void

    .line 3069
    :cond_3a
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->d(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result p1

    if-nez p1, :cond_4a

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->e(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result p1

    if-eqz p1, :cond_f9

    .line 3071
    :cond_4a
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->au:Lcom/bytedance/sdk/openadsdk/f/g;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/g;->c()Z

    move-result p1

    const-string v0, " mLastVolume="

    const-string v3, " mVolume="

    const-string v4, "TTBaseVideoActivity"

    if-eqz p1, :cond_a2

    .line 3073
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onVolumeChanged by SDK mIsMute="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->P:Z

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aR:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->au:Lcom/bytedance/sdk/openadsdk/f/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/g;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3075
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aR:I

    if-nez p1, :cond_97

    .line 3076
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Z)V

    .line 3077
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz p1, :cond_f9

    .line 3078
    invoke-interface {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->c(Z)V

    goto :goto_f9

    .line 3081
    :cond_97
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Z)V

    .line 3082
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz p1, :cond_f9

    .line 3083
    invoke-interface {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->c(Z)V

    goto :goto_f9

    .line 3089
    :cond_a2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->au:Lcom/bytedance/sdk/openadsdk/f/g;

    const/4 v5, -0x1

    invoke-virtual {p1, v5}, Lcom/bytedance/sdk/openadsdk/f/g;->b(I)V

    .line 3090
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onVolumeChanged by User mIsMute="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->P:Z

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aR:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->au:Lcom/bytedance/sdk/openadsdk/f/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/g;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3091
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aV:Z

    if-eqz p1, :cond_f9

    .line 3093
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aR:I

    if-nez p1, :cond_ed

    .line 3094
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->P:Z

    .line 3095
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Z)V

    .line 3096
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz p1, :cond_f9

    .line 3097
    invoke-interface {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->c(Z)V

    goto :goto_f9

    .line 3100
    :cond_ed
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->P:Z

    .line 3101
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Z)V

    .line 3102
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz p1, :cond_f9

    .line 3103
    invoke-interface {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->c(Z)V

    .line 3109
    :cond_f9
    :goto_f9
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 3

    .line 1919
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$9;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$9;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1928
    return-void
.end method

.method protected c(Z)V
    .registers 4

    .line 2928
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2929
    const-string v1, "endcard_mute"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2930
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->F:Lcom/bytedance/sdk/openadsdk/core/x;

    const-string v1, "volumeChange"

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 2933
    goto :goto_16

    .line 2931
    :catch_12
    move-exception p1

    .line 2932
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2934
    :goto_16
    return-void
.end method

.method d()V
    .registers 4

    .line 402
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->R:I

    const/4 v1, 0x0

    const/16 v2, 0xf

    if-ne v0, v2, :cond_16

    .line 404
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_27

    .line 405
    const/high16 v2, 0x43190000    # 153.0f

    invoke-static {p0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_27

    .line 408
    :cond_16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_24

    .line 409
    const/high16 v2, 0x43ca0000    # 404.0f

    invoke-static {p0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 411
    :cond_24
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->f(Z)V

    .line 414
    :cond_27
    :goto_27
    instance-of v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    if-eqz v0, :cond_30

    .line 415
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->d:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 417
    :cond_30
    return-void
.end method

.method d(Ljava/lang/String;)V
    .registers 8

    .line 3115
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aF:Z

    if-nez v0, :cond_5

    return-void

    .line 3117
    :cond_5
    instance-of v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;

    if-eqz v0, :cond_c

    const-string v0, "rewarded_video"

    goto :goto_e

    :cond_c
    const-string v0, "fullscreen_interstitial_ad"

    .line 3118
    :goto_e
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ax:J

    sub-long/2addr v2, v4

    .line 3120
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "duration"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3121
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {p0, v2, v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/c/d;->h(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3124
    const-string v0, "return_foreground"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 3125
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aF:Z

    .line 3127
    :cond_33
    return-void
.end method

.method protected d(Z)V
    .registers 4

    .line 3233
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aS:Landroid/widget/ProgressBar;

    if-nez v0, :cond_35

    .line 3234
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aS:Landroid/widget/ProgressBar;

    .line 3235
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x78

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3236
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3237
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aS:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3238
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "tt_video_loading_progress_bar"

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3239
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aS:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3240
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->o:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aS:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3242
    :cond_35
    if-eqz p1, :cond_3e

    .line 3243
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aS:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_45

    .line 3245
    :cond_3e
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aS:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3248
    :goto_45
    return-void
.end method

.method e()V
    .registers 4

    .line 434
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->w()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->S:I

    .line 435
    const/16 v1, -0xc8

    if-ne v0, v1, :cond_2b

    .line 436
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->T:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->k(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->S:I

    .line 439
    :cond_2b
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->S:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3a

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->v:Z

    if-eqz v0, :cond_3a

    .line 440
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->d:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 442
    :cond_3a
    return-void
.end method

.method protected e(Z)V
    .registers 5

    .line 3272
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3273
    const/16 v1, 0x190

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3275
    if-eqz p1, :cond_10

    .line 3276
    const/16 p1, 0x2710

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->f(I)V

    .line 3278
    :cond_10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    if-eqz p1, :cond_19

    .line 3279
    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/al;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3281
    :cond_19
    return-void
.end method

.method protected f()V
    .registers 6

    .line 446
    const-string v0, "tt_reward_playable_loading"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->b:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    .line 447
    const-string v0, "tt_top_layout_proxy"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    .line 448
    if-eqz v0, :cond_28

    .line 449
    instance-of v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a(ZLcom/bytedance/sdk/openadsdk/core/d/l;)Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    .line 450
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->X()V

    .line 452
    :cond_28
    const-string v0, "tt_reward_root"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a:Landroid/view/View;

    .line 453
    const-string v0, "tt_browser_webview_loading"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->h:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    .line 454
    const-string v0, "tt_reward_browser_webview"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->f:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    .line 455
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->f:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->g:Ljava/lang/ref/WeakReference;

    .line 456
    const-string v0, "tt_video_ad_close_layout"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->j:Landroid/widget/RelativeLayout;

    .line 457
    const-string v0, "tt_video_ad_close"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->i:Landroid/widget/ImageView;

    .line 458
    const-string v0, "tt_ad_logo"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aw:Landroid/widget/TextView;

    .line 460
    const-string v0, "tt_video_reward_container"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->o:Landroid/widget/FrameLayout;

    .line 461
    const-string v0, "tt_click_upper_non_content_layout"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->p:Landroid/widget/FrameLayout;

    .line 462
    const-string v0, "tt_click_lower_non_content_layout"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->q:Landroid/widget/FrameLayout;

    .line 463
    const-string v0, "tt_reward_full_endcard_backup"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aj:Landroid/widget/LinearLayout;

    .line 464
    const-string v0, "tt_reward_ad_download"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->n:Landroid/widget/TextView;

    .line 465
    const-string v0, "tt_video_reward_bar"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->d:Landroid/widget/RelativeLayout;

    .line 466
    const-string v0, "tt_reward_ad_icon"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->k:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    .line 467
    const-string v0, "tt_reward_ad_appname"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->l:Landroid/widget/TextView;

    .line 468
    const-string v0, "tt_comment_vertical"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->m:Landroid/widget/TextView;

    .line 469
    const-string v0, "tt_rb_score"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->r:Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;

    .line 470
    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eqz v0, :cond_144

    .line 471
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setStarEmptyNum(I)V

    .line 472
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->r:Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setStarFillNum(I)V

    .line 473
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->r:Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {p0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setStarImageWidth(F)V

    .line 474
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->r:Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {p0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setStarImageHeight(F)V

    .line 475
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->r:Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {p0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setStarImagePadding(F)V

    .line 476
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->r:Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->a()V

    .line 479
    :cond_144
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_1b2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->C()Z

    move-result v0

    if-eqz v0, :cond_1b2

    .line 481
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->f:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->setBackgroundColor(I)V

    .line 482
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->h:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->setBackgroundColor(I)V

    .line 483
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->i()I

    move-result v0

    if-ne v0, v2, :cond_1ab

    .line 485
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->o:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 486
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->p:Landroid/widget/FrameLayout;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 487
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->q:Landroid/widget/FrameLayout;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 488
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->d:Landroid/widget/RelativeLayout;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 489
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->l:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 490
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->k:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 491
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->m:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 492
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->r:Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 493
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->i:Landroid/widget/ImageView;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 494
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->j:Landroid/widget/RelativeLayout;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 495
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->f:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 496
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->h:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 497
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->n:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 498
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aw:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 500
    :cond_1ab
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    if-eqz v0, :cond_1b2

    .line 502
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setShowSound(Z)V

    .line 506
    :cond_1b2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->f:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    if-eqz v0, :cond_1c2

    .line 507
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 508
    new-instance v2, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$12;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$12;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 526
    :cond_1c2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->S()V

    .line 527
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->v:Z

    if-nez v0, :cond_1ce

    .line 528
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->d:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 533
    :cond_1ce
    :try_start_1ce
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ag:Z

    if-eqz v0, :cond_212

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_212

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ak()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_212

    .line 534
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 535
    const/high16 v1, 0x425c0000    # 55.0f

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 536
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 537
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 539
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 540
    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 541
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_212
    .catchall {:try_start_1ce .. :try_end_212} :catchall_213

    .line 544
    :cond_212
    goto :goto_214

    .line 543
    :catchall_213
    move-exception v0

    .line 547
    :goto_214
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_25c

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ag:Z

    if-eqz v0, :cond_25c

    .line 548
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->o:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_25c

    .line 549
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;)I

    move-result v0

    .line 550
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 551
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 552
    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0x10

    .line 553
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 554
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 556
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->d(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ai:I

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NonContentAreaHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ai:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTBaseVideoActivity"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    :cond_25c
    return-void
.end method

.method protected g()Z
    .registers 11

    .line 638
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->h:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 639
    return v1

    .line 641
    :cond_6
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->P()Ljava/lang/String;

    move-result-object v0

    .line 642
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 643
    return v1

    .line 645
    :cond_11
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->h:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    new-instance v9, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$20;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->e:Landroid/content/Context;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->G:Lcom/bytedance/sdk/openadsdk/core/x;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$20;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/x;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/c/j;)V

    invoke-virtual {v2, v9}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 673
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->h:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->loadUrl(Ljava/lang/String;)V

    .line 674
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->h:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 675
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->h:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/webview/b;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->G:Lcom/bytedance/sdk/openadsdk/core/x;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->t:Lcom/bytedance/sdk/openadsdk/c/j;

    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/b;-><init>(Lcom/bytedance/sdk/openadsdk/core/x;Lcom/bytedance/sdk/openadsdk/c/j;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 676
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->h:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$21;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$21;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 698
    const/4 v0, 0x1

    return v0
.end method

.method protected h()Z
    .registers 4

    .line 702
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->O:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 703
    return v1

    .line 706
    :cond_6
    :try_start_6
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 707
    invoke-virtual {v0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    const-string v2, "show_landingpage"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_14} :catch_15

    return v0

    .line 708
    :catch_15
    move-exception v0

    .line 709
    return v1
.end method

.method protected i()V
    .registers 3

    .line 957
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->f:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    if-eqz v0, :cond_d

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aG:Z

    if-eqz v1, :cond_d

    .line 958
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->loadUrl(Ljava/lang/String;)V

    .line 960
    :cond_d
    return-void
.end method

.method protected j()V
    .registers 3

    .line 978
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_14

    .line 979
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ah:Z

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->C()Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_d
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->B()Ljava/lang/String;

    move-result-object v1

    :goto_11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 981
    :cond_14
    return-void
.end method

.method protected k()V
    .registers 5

    .line 984
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->m:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 985
    return-void

    .line 988
    :cond_5
    const/16 v0, 0x1ad6

    .line 989
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 990
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->f()I

    move-result v0

    .line 992
    :cond_19
    const-string v1, "tt_comment_num"

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 993
    const/16 v2, 0x2710

    if-le v0, v2, :cond_30

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    div-int/2addr v0, v2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u4e07"

    goto :goto_3b

    :cond_30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    :goto_3b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 994
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 995
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 996
    return-void
.end method

.method protected l()V
    .registers 4

    .line 999
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->k:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    if-eqz v0, :cond_3d

    .line 1000
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->U()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->U()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 1001
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->U()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->k:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_3d

    .line 1003
    :cond_32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->k:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    const-string v1, "tt_ad_logo_small"

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;->setImageResource(I)V

    .line 1007
    :cond_3d
    :goto_3d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_7a

    .line 1008
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->R:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_6f

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6f

    .line 1009
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7a

    .line 1011
    :cond_6f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ad()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1014
    :cond_7a
    :goto_7a
    return-void
.end method

.method protected m()V
    .registers 3

    .line 1017
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/t;->j()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->O:Ljava/lang/String;

    .line 1018
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5b

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->R:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_5b

    .line 1019
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->O:Ljava/lang/String;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&orientation=portrait"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->O:Ljava/lang/String;

    goto :goto_5b

    .line 1022
    :cond_44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?orientation=portrait"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->O:Ljava/lang/String;

    .line 1025
    :cond_5b
    :goto_5b
    return-void
.end method

.method protected n()V
    .registers 5

    .line 1028
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->b:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    if-nez v0, :cond_5

    .line 1029
    return-void

    .line 1032
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->A()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 1033
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->D()Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_3c

    .line 1038
    :cond_18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->b:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->b()V

    .line 1041
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->D()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 1042
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->B()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1043
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->d(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/al;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1045
    :cond_3b
    return-void

    .line 1034
    :cond_3c
    :goto_3c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->b:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->a()V

    .line 1035
    return-void
.end method

.method protected o()V
    .registers 3

    .line 1061
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->C()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->i()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 1062
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aw:Landroid/widget/TextView;

    if-eqz v0, :cond_1a

    .line 1063
    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 1065
    :cond_1a
    return-void

    .line 1068
    :cond_1b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aw:Landroid/widget/TextView;

    if-eqz v0, :cond_23

    .line 1069
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 1071
    :cond_23
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 3

    .line 2532
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 2533
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/app/Activity;)V

    .line 2535
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$15;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$15;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 2555
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .line 2517
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->f(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2518
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->f:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2519
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->f:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->goBack()V

    .line 2522
    :cond_17
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    .line 343
    if-eqz p1, :cond_a

    .line 344
    const-string v0, "is_bar_click_first"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aU:Z

    .line 346
    :cond_a
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 348
    :try_start_d
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->i(Landroid/content/Context;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->b(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aK:I
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_20

    .line 350
    goto :goto_21

    .line 349
    :catchall_20
    move-exception v0

    .line 352
    :goto_21
    const/4 v0, 0x1

    :try_start_22
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->requestWindowFeature(I)Z

    .line 353
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 354
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V
    :try_end_37
    .catchall {:try_start_22 .. :try_end_37} :catchall_38

    .line 356
    goto :goto_39

    .line 355
    :catchall_38
    move-exception v0

    .line 359
    :goto_39
    :try_start_39
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Landroid/content/Context;)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    .line 361
    goto :goto_3e

    .line 360
    :catchall_3d
    move-exception v0

    .line 363
    :goto_3e
    if-eqz p1, :cond_52

    const-string v0, "video_current"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_52

    .line 364
    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->w:J

    .line 367
    :cond_52
    iput-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->e:Landroid/content/Context;

    .line 369
    new-instance p1, Lcom/bytedance/sdk/openadsdk/f/g;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/f/g;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->au:Lcom/bytedance/sdk/openadsdk/f/g;

    .line 370
    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/f/g;->a(Lcom/bytedance/sdk/openadsdk/f/f;)V

    .line 371
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->au:Lcom/bytedance/sdk/openadsdk/f/g;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/g;->g()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aR:I

    .line 372
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate >>>>>> mVolume = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aR:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onVolumeChanged"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method protected onDestroy()V
    .registers 10

    .line 2445
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2446
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aJ:Lcom/bytedance/sdk/openadsdk/c/p;

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    .line 2447
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Z)V

    .line 2448
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aJ:Lcom/bytedance/sdk/openadsdk/c/p;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/c/p;->m()V

    .line 2450
    :cond_10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->B:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeToast;

    if-eqz v0, :cond_17

    .line 2451
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeToast;->b()V

    .line 2453
    :cond_17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    const/4 v2, 0x0

    if-eqz v0, :cond_1f

    .line 2454
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2456
    :cond_1f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->f:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/aa;->a(Landroid/content/Context;Landroid/webkit/WebView;)V

    .line 2457
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->f:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa;->a(Landroid/webkit/WebView;)V

    .line 2458
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz v0, :cond_34

    .line 2459
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->l()V

    .line 2460
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    .line 2462
    :cond_34
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->f:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    .line 2463
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->F:Lcom/bytedance/sdk/openadsdk/core/x;

    if-eqz v0, :cond_3d

    .line 2464
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/x;->o()V

    .line 2466
    :cond_3d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aX:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2467
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->E:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v0, :cond_49

    .line 2468
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->d()V

    .line 2470
    :cond_49
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->t:Lcom/bytedance/sdk/openadsdk/c/j;

    if-eqz v0, :cond_50

    .line 2471
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/c/j;->d()V

    .line 2474
    :cond_50
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->au:Lcom/bytedance/sdk/openadsdk/f/g;

    if-eqz v0, :cond_5c

    .line 2475
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/g;->f()V

    .line 2476
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->au:Lcom/bytedance/sdk/openadsdk/f/g;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/f/g;->a(Lcom/bytedance/sdk/openadsdk/f/f;)V

    .line 2479
    :cond_5c
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->b(Landroid/content/Context;)V

    .line 2481
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 2483
    :try_start_69
    const-string v2, "recycleRes"

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-string v7, ""

    const-string v8, ""

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    :try_end_77
    .catchall {:try_start_69 .. :try_end_77} :catchall_78

    .line 2486
    goto :goto_80

    .line 2484
    :catchall_78
    move-exception v0

    .line 2485
    const-string v1, "TTBaseVideoActivity"

    const-string v2, "remove from ITTAppDownloadListener throw Exception : "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2488
    :cond_80
    :goto_80
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->be:Lcom/bytedance/sdk/openadsdk/playable/e;

    if-eqz v0, :cond_87

    .line 2489
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/playable/e;->r()V

    .line 2492
    :cond_87
    return-void
.end method

.method protected onPause()V
    .registers 6

    .line 2378
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2379
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aV:Z

    .line 2380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause mIsActivityShow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aV:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsMute="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->P:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TTBaseVideoActivity"

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2381
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->f:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    if-eqz v1, :cond_33

    .line 2382
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->onPause()V

    .line 2384
    :cond_33
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v1, v3, :cond_88

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ac:Ljava/lang/String;

    .line 2385
    const-string v3, "C8817D"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_88

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ac:Ljava/lang/String;

    .line 2386
    const-string v3, "M5"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_88

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ac:Ljava/lang/String;

    .line 2387
    const-string v3, "R7t"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    goto :goto_88

    .line 2393
    :cond_58
    :try_start_58
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->v()Z

    move-result v1

    if-eqz v1, :cond_6b

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->Y:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_6b

    .line 2394
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->h()V
    :try_end_6b
    .catchall {:try_start_58 .. :try_end_6b} :catchall_6c

    .line 2398
    :cond_6b
    goto :goto_93

    .line 2396
    :catchall_6c
    move-exception v1

    .line 2397
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPause throw Exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_93

    .line 2388
    :cond_88
    :goto_88
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->Y:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_93

    .line 2389
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->Z()V

    .line 2402
    :cond_93
    :goto_93
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->F:Lcom/bytedance/sdk/openadsdk/core/x;

    const/4 v2, 0x1

    if-eqz v1, :cond_a6

    .line 2403
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/x;->n()V

    .line 2404
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->F:Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/x;->b(Z)Lcom/bytedance/sdk/openadsdk/core/x;

    .line 2405
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->b(Z)V

    .line 2406
    invoke-virtual {p0, v2, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(ZZ)V

    .line 2408
    :cond_a6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->E:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v0, :cond_ad

    .line 2409
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->c()V

    .line 2411
    :cond_ad
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_d9

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->i()I

    move-result v0

    if-ne v0, v2, :cond_d9

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->C()Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 2412
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    const/16 v1, 0x3b6

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeMessages(I)V

    .line 2413
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    const/16 v1, 0x384

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeMessages(I)V

    .line 2414
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeMessages(I)V

    .line 2415
    const-string v0, "go_background"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->d(Ljava/lang/String;)V

    .line 2417
    :cond_d9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->be:Lcom/bytedance/sdk/openadsdk/playable/e;

    if-eqz v0, :cond_e0

    .line 2418
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/playable/e;->p()V

    .line 2420
    :cond_e0
    return-void
.end method

.method protected onResume()V
    .registers 5

    .line 2223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aV:Z

    .line 2224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume mIsActivityShow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aV:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsMute="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->P:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TTBaseVideoActivity"

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2225
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->U:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 2226
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->X()V

    .line 2228
    :cond_38
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->d(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v1

    if-nez v1, :cond_48

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->e(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 2229
    :cond_48
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aR:I

    if-nez v1, :cond_4e

    .line 2230
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->P:Z

    .line 2232
    :cond_4e
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->P:Z

    if-eqz v1, :cond_5a

    .line 2233
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->au:Lcom/bytedance/sdk/openadsdk/f/g;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/f/g;->a(Z)V

    .line 2234
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Z)V

    .line 2237
    :cond_5a
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->R:I

    const/16 v2, 0xf

    const/4 v3, 0x0

    if-ne v1, v2, :cond_65

    .line 2238
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->setRequestedOrientation(I)V

    goto :goto_68

    .line 2240
    :cond_65
    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->setRequestedOrientation(I)V

    .line 2242
    :goto_68
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2243
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->f:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    if-eqz v1, :cond_72

    .line 2244
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->onResume()V

    .line 2248
    :cond_72
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->au:Lcom/bytedance/sdk/openadsdk/f/g;

    if-eqz v1, :cond_7e

    .line 2249
    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/openadsdk/f/g;->a(Lcom/bytedance/sdk/openadsdk/f/f;)V

    .line 2250
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->au:Lcom/bytedance/sdk/openadsdk/f/g;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/f/g;->e()V

    .line 2253
    :cond_7e
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->U:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_8d

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aM:Z

    if-nez v1, :cond_8d

    .line 2254
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->O()V

    .line 2256
    :cond_8d
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->F:Lcom/bytedance/sdk/openadsdk/core/x;

    if-eqz v1, :cond_b5

    .line 2257
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/x;->m()V

    .line 2258
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->f:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    if-eqz v1, :cond_b5

    .line 2259
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_aa

    .line 2260
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->F:Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/x;->b(Z)Lcom/bytedance/sdk/openadsdk/core/x;

    .line 2261
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->b(Z)V

    .line 2262
    invoke-virtual {p0, v3, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(ZZ)V

    goto :goto_b5

    .line 2264
    :cond_aa
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->F:Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/x;->b(Z)Lcom/bytedance/sdk/openadsdk/core/x;

    .line 2265
    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->b(Z)V

    .line 2266
    invoke-virtual {p0, v0, v3}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(ZZ)V

    .line 2270
    :cond_b5
    :goto_b5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->E:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v1, :cond_c1

    .line 2271
    invoke-interface {v1, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Landroid/app/Activity;)V

    .line 2272
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->E:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->b()V

    .line 2274
    :cond_c1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->t:Lcom/bytedance/sdk/openadsdk/c/j;

    if-eqz v1, :cond_c8

    .line 2275
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/c/j;->b()V

    .line 2279
    :cond_c8
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aD:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_10a

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v1, :cond_10a

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->i()I

    move-result v1

    if-ne v1, v0, :cond_10a

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->C()Z

    move-result v0

    if-eqz v0, :cond_10a

    .line 2280
    const-string v0, "return_foreground"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->d(Ljava/lang/String;)V

    .line 2282
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ab:Lcom/bytedance/sdk/openadsdk/core/widget/c;

    if-eqz v0, :cond_f3

    if-eqz v0, :cond_10a

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/c;->isShowing()Z

    move-result v0

    if-nez v0, :cond_10a

    .line 2284
    :cond_f3
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ay:I

    if-lez v0, :cond_10a

    .line 2285
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2286
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->R()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2287
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ay:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2288
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/al;->sendMessage(Landroid/os/Message;)Z

    .line 2304
    :cond_10a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->be:Lcom/bytedance/sdk/openadsdk/playable/e;

    if-eqz v0, :cond_11b

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->U:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_11b

    .line 2305
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->be:Lcom/bytedance/sdk/openadsdk/playable/e;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/playable/e;->q()V

    .line 2308
    :cond_11b
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5

    .line 2497
    if-nez p1, :cond_7

    .line 2498
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 2502
    :cond_7
    :try_start_7
    const-string v0, "material_meta"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aF()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2503
    const-string v0, "multi_process_meta_md5"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->u:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2504
    const-string v0, "video_current"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-nez v1, :cond_2a

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->w:J

    goto :goto_2e

    :cond_2a
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->n()J

    move-result-wide v1

    :goto_2e
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2505
    const-string v0, "video_cache_url"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->x:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2506
    const-string v0, "orientation"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->y:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2507
    const-string v0, "is_mute"

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->P:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2508
    const-string v0, "is_bar_click_first"

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aU:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_4d
    .catchall {:try_start_7 .. :try_end_4d} :catchall_4e

    .line 2510
    goto :goto_4f

    .line 2509
    :catchall_4e
    move-exception v0

    .line 2512
    :goto_4f
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2513
    return-void
.end method

.method protected onStart()V
    .registers 2

    .line 2312
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2313
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aJ:Lcom/bytedance/sdk/openadsdk/c/p;

    if-eqz v0, :cond_a

    .line 2314
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/c/p;->k()V

    .line 2316
    :cond_a
    return-void
.end method

.method protected onStop()V
    .registers 3

    .line 2320
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStop mIsMute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->P:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->au:Lcom/bytedance/sdk/openadsdk/f/g;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/f/g;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mVolume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTBaseVideoActivity"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2322
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aJ:Lcom/bytedance/sdk/openadsdk/c/p;

    if-eqz v0, :cond_40

    .line 2323
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/c/p;->j()V

    .line 2325
    :cond_40
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->t:Lcom/bytedance/sdk/openadsdk/c/j;

    if-eqz v0, :cond_47

    .line 2326
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/c/j;->c()V

    .line 2328
    :cond_47
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_74

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->i()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_74

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->C()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 2329
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    const/16 v1, 0x3b6

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeMessages(I)V

    .line 2330
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    const/16 v1, 0x384

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeMessages(I)V

    .line 2331
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeMessages(I)V

    .line 2332
    const-string v0, "go_background"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->d(Ljava/lang/String;)V

    .line 2335
    :cond_74
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->P:Z

    if-eqz v0, :cond_80

    .line 2338
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$14;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$14;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2347
    :cond_80
    return-void
.end method

.method protected p()V
    .registers 3

    .line 1074
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aw:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 1075
    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 1077
    :cond_9
    return-void
.end method

.method protected q()V
    .registers 5

    .line 1115
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ak:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    if-eqz v0, :cond_3d

    .line 1116
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->U()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->U()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 1117
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->U()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ak:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_3d

    .line 1119
    :cond_32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ak:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    const-string v1, "tt_ad_logo_small"

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;->setImageResource(I)V

    .line 1123
    :cond_3d
    :goto_3d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->al:Landroid/widget/TextView;

    if-eqz v0, :cond_74

    .line 1124
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 1125
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_69

    .line 1126
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->al:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_74

    .line 1128
    :cond_69
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->al:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ad()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1132
    :cond_74
    :goto_74
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->an:Landroid/widget/TextView;

    if-eqz v0, :cond_c5

    .line 1133
    const/16 v0, 0x1ad6

    .line 1134
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v1

    if-eqz v1, :cond_8c

    .line 1135
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->f()I

    move-result v0

    .line 1137
    :cond_8c
    const-string v1, "tt_comment_num_backup"

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1138
    const/16 v2, 0x2710

    if-le v0, v2, :cond_a3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    div-int/2addr v0, v2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u4e07"

    goto :goto_ae

    :cond_a3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    :goto_ae
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1139
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1140
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->an:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1143
    :cond_c5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ao:Landroid/widget/TextView;

    if-eqz v0, :cond_d0

    .line 1144
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1146
    :cond_d0
    return-void
.end method

.method protected r()V
    .registers 16

    .line 1164
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->d:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_5

    return-void

    .line 1166
    :cond_5
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    .line 1167
    const v1, 0x3f266666    # 0.65f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    .line 1168
    const v3, 0x3f43d70a    # 0.765f

    const v4, 0x3f666666    # 0.9f

    invoke-static {v3, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    .line 1169
    const v4, 0x3f6147ae    # 0.88f

    invoke-static {v4, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    .line 1170
    const v5, 0x3f733333    # 0.95f

    invoke-static {v5, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    .line 1171
    invoke-static {v2, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    .line 1173
    const/4 v6, 0x6

    new-array v7, v6, [Landroid/animation/Keyframe;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v9, 0x1

    aput-object v1, v7, v9

    const/4 v10, 0x2

    aput-object v3, v7, v10

    const/4 v11, 0x3

    aput-object v4, v7, v11

    const/4 v12, 0x4

    aput-object v5, v7, v12

    const/4 v13, 0x5

    aput-object v2, v7, v13

    const-string v14, "scaleX"

    invoke-static {v14, v7}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 1174
    new-array v6, v6, [Landroid/animation/Keyframe;

    aput-object v0, v6, v8

    aput-object v1, v6, v9

    aput-object v3, v6, v10

    aput-object v4, v6, v11

    aput-object v5, v6, v12

    aput-object v2, v6, v13

    const-string v0, "scaleY"

    invoke-static {v0, v6}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 1175
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->d:Landroid/widget/RelativeLayout;

    new-array v2, v10, [Landroid/animation/PropertyValuesHolder;

    aput-object v7, v2, v8

    aput-object v0, v2, v9

    invoke-static {v1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1176
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1177
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1178
    return-void
.end method

.method abstract s()Lcom/bytedance/sdk/openadsdk/c/p;
.end method

.method t()V
    .registers 4

    .line 1292
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1293
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->af:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 1294
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->af:Ljava/lang/String;

    const-string v2, "rit_scene"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1297
    :cond_14
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s()Lcom/bytedance/sdk/openadsdk/c/p;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aJ:Lcom/bytedance/sdk/openadsdk/c/p;

    .line 1299
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/x;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->e:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/x;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->F:Lcom/bytedance/sdk/openadsdk/core/x;

    .line 1300
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->f:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/x;->b(Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 1301
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->K:Ljava/lang/String;

    .line 1302
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/x;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->j:Landroid/widget/RelativeLayout;

    .line 1303
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Landroid/view/View;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->L:Ljava/lang/String;

    .line 1304
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/x;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->M:I

    .line 1305
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/x;->a(I)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v1

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->av:Z

    .line 1306
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Z)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aO:Lcom/bytedance/sdk/openadsdk/f/a;

    .line 1307
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/openadsdk/f/a;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aP:Lcom/bytedance/sdk/openadsdk/f/e;

    .line 1308
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/openadsdk/f/e;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aQ:Lcom/bytedance/sdk/openadsdk/f/d;

    .line 1309
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/openadsdk/f/d;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 1310
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/aj;->i(Lcom/bytedance/sdk/openadsdk/core/d/l;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/x;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->f:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    .line 1311
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aJ:Lcom/bytedance/sdk/openadsdk/c/p;

    .line 1312
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/openadsdk/c/p;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v1

    .line 1313
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/core/x;

    .line 1316
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->b(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 1317
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->V()V

    .line 1320
    :cond_83
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/x;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->G:Lcom/bytedance/sdk/openadsdk/core/x;

    .line 1321
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->h:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->b(Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 1322
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->K:Ljava/lang/String;

    .line 1323
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->L:Ljava/lang/String;

    .line 1324
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->M:I

    .line 1325
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->a(I)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->h:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    .line 1326
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aJ:Lcom/bytedance/sdk/openadsdk/c/p;

    .line 1327
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/openadsdk/c/p;)Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 1328
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->i(Lcom/bytedance/sdk/openadsdk/core/d/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/x;

    .line 1330
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->F:Lcom/bytedance/sdk/openadsdk/core/x;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$2;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/openadsdk/f/b;)Lcom/bytedance/sdk/openadsdk/core/x;

    .line 1348
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->F:Lcom/bytedance/sdk/openadsdk/core/x;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$3;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/openadsdk/f/h;)Lcom/bytedance/sdk/openadsdk/core/x;

    .line 1371
    return-void
.end method

.method u()V
    .registers 7

    .line 1374
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_d

    .line 1375
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1376
    return-void

    .line 1379
    :cond_d
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1380
    return-void

    .line 1382
    :cond_14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aJ:Lcom/bytedance/sdk/openadsdk/c/p;

    if-eqz v0, :cond_1b

    .line 1383
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/c/p;->h()V

    .line 1385
    :cond_1b
    const-string v0, "endcard"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aH:Ljava/lang/String;

    .line 1386
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->Y:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1387
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->Z:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1388
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->C:Lcom/bytedance/sdk/openadsdk/dislike/c;

    if-eqz v0, :cond_31

    .line 1389
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/dislike/c;->a()V

    .line 1392
    :cond_31
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->c()V

    .line 1394
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ab:Lcom/bytedance/sdk/openadsdk/core/widget/c;

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/c;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1395
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ab:Lcom/bytedance/sdk/openadsdk/core/widget/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/c;->dismiss()V

    .line 1397
    :cond_43
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->B:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeToast;

    if-eqz v0, :cond_4a

    .line 1399
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeToast;->a()V

    .line 1401
    :cond_4a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    const/4 v2, 0x1

    if-eqz v0, :cond_7a

    .line 1402
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->d(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 1403
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setShowSkip(Z)V

    goto :goto_62

    .line 1405
    :cond_5d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setShowSkip(Z)V

    .line 1407
    :goto_62
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->X()V

    .line 1408
    instance-of v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenExpressVideoActivity;

    if-nez v0, :cond_6d

    instance-of v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardExpressVideoActivity;

    if-eqz v0, :cond_7a

    :cond_6d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 1410
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->b(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 1411
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setShowSound(Z)V

    .line 1415
    :cond_7a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->U:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 1416
    return-void

    .line 1420
    :cond_83
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ap:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aq:Z

    invoke-static {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/d/l;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;ZZ)Z

    move-result v0

    const-string v3, "TTBaseVideoActivity"

    if-nez v0, :cond_f5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->b(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v0

    if-nez v0, :cond_f5

    .line 1421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEndCardLoadSuc="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aq:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " so load back up end card"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aJ:Lcom/bytedance/sdk/openadsdk/c/p;

    if-eqz v0, :cond_df

    .line 1423
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->g(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v0

    if-nez v0, :cond_d5

    .line 1424
    const-string v0, "TimeTrackLog report 408 from backup page"

    invoke-static {v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aJ:Lcom/bytedance/sdk/openadsdk/c/p;

    const/16 v2, 0x198

    const-string v3, "end_card_timeout"

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/c/p;->a(ILjava/lang/String;)V

    .line 1428
    :cond_d5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aJ:Lcom/bytedance/sdk/openadsdk/c/p;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/c/p;->c()V

    .line 1429
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aJ:Lcom/bytedance/sdk/openadsdk/c/p;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/c/p;->d()V

    .line 1431
    :cond_df
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->f:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    const/16 v2, 0x8

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 1432
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aj:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 1433
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->Y()V

    .line 1434
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aa()V

    .line 1435
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->T()V

    .line 1436
    return-void

    .line 1439
    :cond_f5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aJ:Lcom/bytedance/sdk/openadsdk/c/p;

    if-eqz v0, :cond_113

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->g(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v0

    if-nez v0, :cond_113

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->b(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v0

    if-nez v0, :cond_113

    .line 1440
    const-string v0, "TimeTrackLog report Success from Android"

    invoke-static {v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aJ:Lcom/bytedance/sdk/openadsdk/c/p;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/c/p;->b()V

    .line 1446
    :cond_113
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->f:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;F)V

    .line 1447
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->i:Landroid/widget/ImageView;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;F)V

    .line 1448
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->j:Landroid/widget/RelativeLayout;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;F)V

    .line 1449
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->f:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 1451
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const/16 v1, 0x258

    const/4 v3, -0x1

    if-eqz v0, :cond_16d

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->C()Z

    move-result v0

    if-eqz v0, :cond_16d

    .line 1452
    instance-of v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;

    .line 1453
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->T:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/h/h;->p(Ljava/lang/String;)I

    move-result v0

    .line 1454
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/d/l;->i()I

    move-result v4

    if-ne v4, v2, :cond_15e

    .line 1455
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->T:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/h/h;->o(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v2

    mul-int/lit16 v0, v0, 0x3e8

    .line 1457
    :cond_15e
    if-ne v0, v3, :cond_164

    .line 1458
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->Y()V

    goto :goto_194

    .line 1459
    :cond_164
    if-ltz v0, :cond_194

    .line 1460
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    int-to-long v4, v0

    invoke-virtual {v3, v1, v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/al;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_194

    .line 1462
    :cond_16d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_194

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->C()Z

    move-result v0

    if-nez v0, :cond_194

    .line 1463
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->T:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/h/h;->l(Ljava/lang/String;)I

    move-result v0

    .line 1464
    if-ne v0, v3, :cond_18b

    .line 1465
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->Y()V

    goto :goto_195

    .line 1467
    :cond_18b
    if-ltz v0, :cond_195

    .line 1468
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    int-to-long v4, v0

    invoke-virtual {v3, v1, v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/al;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_195

    .line 1462
    :cond_194
    :goto_194
    nop

    .line 1471
    :cond_195
    :goto_195
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    const/16 v1, 0x1f4

    const-wide/16 v3, 0x14

    invoke-virtual {v0, v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/al;->sendEmptyMessageDelayed(IJ)Z

    .line 1472
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->P:Z

    invoke-virtual {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(ZZ)V

    .line 1473
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->b(Z)V

    .line 1474
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->p()V

    .line 1475
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->F:Lcom/bytedance/sdk/openadsdk/core/x;

    if-eqz v0, :cond_1b0

    .line 1476
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/x;->b(Z)Lcom/bytedance/sdk/openadsdk/core/x;

    .line 1478
    :cond_1b0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->be:Lcom/bytedance/sdk/openadsdk/playable/e;

    if-eqz v0, :cond_1b7

    .line 1479
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/playable/e;->b(Z)Lcom/bytedance/sdk/openadsdk/playable/e;

    .line 1481
    :cond_1b7
    return-void
.end method

.method v()Z
    .registers 2

    .line 1499
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz v0, :cond_18

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->g()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method protected w()Z
    .registers 2

    .line 1503
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz v0, :cond_18

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->i()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method protected x()Z
    .registers 2

    .line 1507
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->x()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method y()Z
    .registers 4

    .line 1520
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1521
    return v1

    .line 1523
    :cond_6
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->I()I

    move-result v0

    .line 1524
    const/4 v2, 0x1

    if-ne v0, v2, :cond_e

    .line 1525
    return v2

    .line 1527
    :cond_e
    return v1
.end method

.method z()V
    .registers 9

    .line 1609
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez v0, :cond_5

    .line 1610
    return-void

    .line 1613
    :cond_5
    instance-of v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;

    .line 1614
    if-eqz v0, :cond_c

    const-string v0, "rewarded_video"

    goto :goto_e

    :cond_c
    const-string v0, "fullscreen_interstitial_ad"

    :goto_e
    move-object v7, v0

    .line 1617
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$4;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->M:I

    move-object v1, v0

    move-object v2, p0

    move-object v3, p0

    move-object v5, v7

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$4;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aT:Lcom/bytedance/sdk/openadsdk/core/a/e;

    .line 1652
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/a/e;->a(Landroid/view/View;)V

    .line 1653
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->af:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 1654
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1655
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->af:Ljava/lang/String;

    const-string v2, "rit_scene"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1656
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aT:Lcom/bytedance/sdk/openadsdk/core/a/e;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/a/e;->a(Ljava/util/Map;)V

    .line 1659
    :cond_3c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->E:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v0, :cond_50

    .line 1660
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aT:Lcom/bytedance/sdk/openadsdk/core/a/e;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/a/e;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V

    .line 1661
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->E:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    const/4 v1, 0x1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$5;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$5;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(ILcom/bytedance/sdk/openadsdk/downloadnew/core/a$a;)V

    .line 1706
    :cond_50
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->b:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    if-eqz v0, :cond_7a

    .line 1707
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->getPlayView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_7a

    .line 1708
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->D()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 1710
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->b:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->getPlayView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aT:Lcom/bytedance/sdk/openadsdk/core/a/e;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1711
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->b:Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->getPlayView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aT:Lcom/bytedance/sdk/openadsdk/core/a/e;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1714
    :cond_7a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_13f

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->o()Lcom/bytedance/sdk/openadsdk/core/d/e;

    move-result-object v0

    if-eqz v0, :cond_13f

    .line 1716
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->o()Lcom/bytedance/sdk/openadsdk/core/d/e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/core/d/e;->e:Z

    if-eqz v0, :cond_9d

    .line 1717
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aT:Lcom/bytedance/sdk/openadsdk/core/a/e;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1718
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aT:Lcom/bytedance/sdk/openadsdk/core/a/e;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_a4

    .line 1720
    :cond_9d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->bi:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1723
    :goto_a4
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ag:Z

    const-string v1, "TTBaseVideoActivity#mRlDownloadBar"

    if-eqz v0, :cond_11f

    .line 1724
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->o()Lcom/bytedance/sdk/openadsdk/core/d/e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/core/d/e;->a:Z

    if-eqz v0, :cond_fb

    .line 1725
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->d:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aT:Lcom/bytedance/sdk/openadsdk/core/a/e;

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 1726
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->d:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aT:Lcom/bytedance/sdk/openadsdk/core/a/e;

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;Landroid/view/View$OnTouchListener;Ljava/lang/String;)V

    .line 1728
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aT:Lcom/bytedance/sdk/openadsdk/core/a/e;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1729
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aT:Lcom/bytedance/sdk/openadsdk/core/a/e;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1731
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aT:Lcom/bytedance/sdk/openadsdk/core/a/e;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1732
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aT:Lcom/bytedance/sdk/openadsdk/core/a/e;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1734
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->r:Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aT:Lcom/bytedance/sdk/openadsdk/core/a/e;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1735
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->r:Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aT:Lcom/bytedance/sdk/openadsdk/core/a/e;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1737
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->k:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aT:Lcom/bytedance/sdk/openadsdk/core/a/e;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1738
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->k:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aT:Lcom/bytedance/sdk/openadsdk/core/a/e;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_13f

    .line 1740
    :cond_fb
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->d:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->bi:Landroid/view/View$OnClickListener;

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 1742
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->bi:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1743
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->bi:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1744
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->r:Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->bi:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1745
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->k:Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->bi:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_13f

    .line 1749
    :cond_11f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->o()Lcom/bytedance/sdk/openadsdk/core/d/e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/core/d/e;->c:Z

    if-eqz v0, :cond_138

    .line 1750
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->d:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aT:Lcom/bytedance/sdk/openadsdk/core/a/e;

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 1751
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->d:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aT:Lcom/bytedance/sdk/openadsdk/core/a/e;

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;Landroid/view/View$OnTouchListener;Ljava/lang/String;)V

    goto :goto_13f

    .line 1754
    :cond_138
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->d:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->bi:Landroid/view/View$OnClickListener;

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 1760
    :cond_13f
    :goto_13f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->o:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_169

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_169

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->o()Lcom/bytedance/sdk/openadsdk/core/d/e;

    move-result-object v0

    if-eqz v0, :cond_169

    .line 1761
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->o()Lcom/bytedance/sdk/openadsdk/core/d/e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/core/d/e;->f:Z

    if-eqz v0, :cond_15f

    .line 1762
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->o:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aT:Lcom/bytedance/sdk/openadsdk/core/a/e;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_169

    .line 1764
    :cond_15f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->o:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$6;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$6;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1775
    :cond_169
    :goto_169
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ag:Z

    if-eqz v0, :cond_1ee

    .line 1776
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->o()Lcom/bytedance/sdk/openadsdk/core/d/e;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1ae

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->p:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1ae

    .line 1777
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 1778
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->p:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1779
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ai:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1780
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->p:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1782
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->o()Lcom/bytedance/sdk/openadsdk/core/d/e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/core/d/e;->b:Z

    if-eqz v0, :cond_1a7

    .line 1783
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->p:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aT:Lcom/bytedance/sdk/openadsdk/core/a/e;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1784
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->p:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aT:Lcom/bytedance/sdk/openadsdk/core/a/e;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1ae

    .line 1786
    :cond_1a7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->p:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->bi:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1790
    :cond_1ae
    :goto_1ae
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->o()Lcom/bytedance/sdk/openadsdk/core/d/e;

    move-result-object v0

    if-eqz v0, :cond_1ee

    .line 1791
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->q:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1ee

    .line 1792
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 1793
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1794
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ai:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1795
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1797
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->o()Lcom/bytedance/sdk/openadsdk/core/d/e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/core/d/e;->d:Z

    if-eqz v0, :cond_1e7

    .line 1798
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->q:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aT:Lcom/bytedance/sdk/openadsdk/core/a/e;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1799
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->q:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aT:Lcom/bytedance/sdk/openadsdk/core/a/e;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1ee

    .line 1801
    :cond_1e7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->q:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->bi:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1808
    :cond_1ee
    :goto_1ee
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aj:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$7;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$7;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;)V

    const-string v2, "TTBaseVideoActivity#mLLEndCardBackup"

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 1816
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ao:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aT:Lcom/bytedance/sdk/openadsdk/core/a/e;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1817
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->ao:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->aT:Lcom/bytedance/sdk/openadsdk/core/a/e;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1818
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->E:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->F:Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;Lcom/bytedance/sdk/openadsdk/core/x;)V

    .line 1819
    return-void
.end method
