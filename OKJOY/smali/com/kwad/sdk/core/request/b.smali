.class public Lcom/kwad/sdk/core/request/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/export/i/IAdRequestManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/request/b$g;
    }
.end annotation


# static fields
.field private static final a:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/kwad/sdk/core/request/b;->a:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Landroid/os/Handler;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/request/b;->a:Landroid/os/Handler;

    return-object v0
.end method

.method private a(Lcom/kwad/sdk/protocol/model/AdScene;Lcom/kwad/sdk/core/request/b$g;)V
    .registers 5
    .param p2    # Lcom/kwad/sdk/core/request/b$g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/kwad/sdk/KsAdSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ksad/download/k/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/kwad/sdk/core/request/ErrorCode;->ERROR_NO_NETWORK:Lcom/kwad/sdk/core/request/ErrorCode;

    iget v1, v0, Lcom/kwad/sdk/core/request/ErrorCode;->errorCode:I

    iget-object v0, v0, Lcom/kwad/sdk/core/request/ErrorCode;->msg:Ljava/lang/String;

    invoke-interface {p2, v1, v0}, Lcom/kwad/sdk/core/request/b$g;->onError(ILjava/lang/String;)V

    :goto_13
    return-void

    :cond_14
    new-instance v0, Lcom/kwad/sdk/core/request/b$f;

    invoke-direct {v0, p0, p1, p2}, Lcom/kwad/sdk/core/request/b$f;-><init>(Lcom/kwad/sdk/core/request/b;Lcom/kwad/sdk/protocol/model/AdScene;Lcom/kwad/sdk/core/request/b$g;)V

    invoke-virtual {v0}, Lcom/kwad/sdk/c/d/a/a;->b()V

    goto :goto_13
.end method


# virtual methods
.method public loadContentAllianceAd(Lcom/kwad/sdk/protocol/model/AdScene;)Lcom/kwad/sdk/export/i/KsContentAllianceAd;
    .registers 3

    const-string v0, "AdScene must not be null"

    invoke-static {p1, v0}, Lcom/kwad/sdk/e/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/kwad/sdk/core/request/model/AdSceneStyle;->ContentAllianceAd:Lcom/kwad/sdk/core/request/model/AdSceneStyle;

    iget v0, v0, Lcom/kwad/sdk/core/request/model/AdSceneStyle;->adStyle:I

    iput v0, p1, Lcom/kwad/sdk/protocol/model/AdScene;->adStyle:I

    new-instance v0, Lcom/kwad/sdk/b/b;

    invoke-direct {v0, p1}, Lcom/kwad/sdk/b/b;-><init>(Lcom/kwad/sdk/protocol/model/AdScene;)V

    return-object v0
.end method

.method public loadDrawAd(Lcom/kwad/sdk/protocol/model/AdScene;Lcom/kwad/sdk/export/i/IAdRequestManager$DrawAdListener;)V
    .registers 4
    .param p2    # Lcom/kwad/sdk/export/i/IAdRequestManager$DrawAdListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/kwad/sdk/core/request/model/AdSceneStyle;->DrawAd:Lcom/kwad/sdk/core/request/model/AdSceneStyle;

    iget v0, v0, Lcom/kwad/sdk/core/request/model/AdSceneStyle;->adStyle:I

    iput v0, p1, Lcom/kwad/sdk/protocol/model/AdScene;->adStyle:I

    new-instance v0, Lcom/kwad/sdk/core/request/b$e;

    invoke-direct {v0, p0, p2}, Lcom/kwad/sdk/core/request/b$e;-><init>(Lcom/kwad/sdk/core/request/b;Lcom/kwad/sdk/export/i/IAdRequestManager$DrawAdListener;)V

    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/core/request/b;->a(Lcom/kwad/sdk/protocol/model/AdScene;Lcom/kwad/sdk/core/request/b$g;)V

    return-void
.end method

.method public loadFeedAd(Lcom/kwad/sdk/protocol/model/AdScene;Lcom/kwad/sdk/export/i/IAdRequestManager$FeedAdListener;)V
    .registers 4
    .param p2    # Lcom/kwad/sdk/export/i/IAdRequestManager$FeedAdListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/kwad/sdk/core/request/model/AdSceneStyle;->FeedAd:Lcom/kwad/sdk/core/request/model/AdSceneStyle;

    iget v0, v0, Lcom/kwad/sdk/core/request/model/AdSceneStyle;->adStyle:I

    iput v0, p1, Lcom/kwad/sdk/protocol/model/AdScene;->adStyle:I

    new-instance v0, Lcom/kwad/sdk/core/request/b$d;

    invoke-direct {v0, p0, p2}, Lcom/kwad/sdk/core/request/b$d;-><init>(Lcom/kwad/sdk/core/request/b;Lcom/kwad/sdk/export/i/IAdRequestManager$FeedAdListener;)V

    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/core/request/b;->a(Lcom/kwad/sdk/protocol/model/AdScene;Lcom/kwad/sdk/core/request/b$g;)V

    return-void
.end method

.method public loadFullScreenVideoAd(Lcom/kwad/sdk/protocol/model/AdScene;Lcom/kwad/sdk/export/i/IAdRequestManager$FullScreenVideoAdListener;)V
    .registers 4
    .param p2    # Lcom/kwad/sdk/export/i/IAdRequestManager$FullScreenVideoAdListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/kwad/sdk/core/request/model/AdSceneStyle;->FullscreenAd:Lcom/kwad/sdk/core/request/model/AdSceneStyle;

    iget v0, v0, Lcom/kwad/sdk/core/request/model/AdSceneStyle;->adStyle:I

    iput v0, p1, Lcom/kwad/sdk/protocol/model/AdScene;->adStyle:I

    new-instance v0, Lcom/kwad/sdk/core/request/b$a;

    invoke-direct {v0, p0, p2}, Lcom/kwad/sdk/core/request/b$a;-><init>(Lcom/kwad/sdk/core/request/b;Lcom/kwad/sdk/export/i/IAdRequestManager$FullScreenVideoAdListener;)V

    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/core/request/b;->a(Lcom/kwad/sdk/protocol/model/AdScene;Lcom/kwad/sdk/core/request/b$g;)V

    return-void
.end method

.method public loadNativeAd(Lcom/kwad/sdk/protocol/model/AdScene;Lcom/kwad/sdk/export/i/IAdRequestManager$NativeAdListener;)V
    .registers 4
    .param p2    # Lcom/kwad/sdk/export/i/IAdRequestManager$NativeAdListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/kwad/sdk/core/request/model/AdSceneStyle;->FeedAd:Lcom/kwad/sdk/core/request/model/AdSceneStyle;

    iget v0, v0, Lcom/kwad/sdk/core/request/model/AdSceneStyle;->adStyle:I

    iput v0, p1, Lcom/kwad/sdk/protocol/model/AdScene;->adStyle:I

    new-instance v0, Lcom/kwad/sdk/core/request/b$c;

    invoke-direct {v0, p0, p2}, Lcom/kwad/sdk/core/request/b$c;-><init>(Lcom/kwad/sdk/core/request/b;Lcom/kwad/sdk/export/i/IAdRequestManager$NativeAdListener;)V

    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/core/request/b;->a(Lcom/kwad/sdk/protocol/model/AdScene;Lcom/kwad/sdk/core/request/b$g;)V

    return-void
.end method

.method public loadRewardVideoAd(Lcom/kwad/sdk/protocol/model/AdScene;Lcom/kwad/sdk/export/i/IAdRequestManager$RewardVideoAdListener;)V
    .registers 4
    .param p2    # Lcom/kwad/sdk/export/i/IAdRequestManager$RewardVideoAdListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/kwad/sdk/core/request/model/AdSceneStyle;->RewardAd:Lcom/kwad/sdk/core/request/model/AdSceneStyle;

    iget v0, v0, Lcom/kwad/sdk/core/request/model/AdSceneStyle;->adStyle:I

    iput v0, p1, Lcom/kwad/sdk/protocol/model/AdScene;->adStyle:I

    new-instance v0, Lcom/kwad/sdk/core/request/b$b;

    invoke-direct {v0, p0, p2}, Lcom/kwad/sdk/core/request/b$b;-><init>(Lcom/kwad/sdk/core/request/b;Lcom/kwad/sdk/export/i/IAdRequestManager$RewardVideoAdListener;)V

    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/core/request/b;->a(Lcom/kwad/sdk/protocol/model/AdScene;Lcom/kwad/sdk/core/request/b$g;)V

    return-void
.end method
