.class public Lcom/kwad/sdk/core/request/g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/request/g$d;,
        Lcom/kwad/sdk/core/request/g$c;
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

    sput-object v0, Lcom/kwad/sdk/core/request/g;->a:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Landroid/os/Handler;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/request/g;->a:Landroid/os/Handler;

    return-object v0
.end method

.method private a(Lcom/kwad/sdk/protocol/model/AdScene;Lcom/kwad/sdk/core/request/g$d;)V
    .registers 5
    .param p2    # Lcom/kwad/sdk/core/request/g$d;
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

    invoke-interface {p2, v1, v0}, Lcom/kwad/sdk/core/request/g$d;->onError(ILjava/lang/String;)V

    :goto_13
    return-void

    :cond_14
    new-instance v0, Lcom/kwad/sdk/core/request/g$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/kwad/sdk/core/request/g$b;-><init>(Lcom/kwad/sdk/core/request/g;Lcom/kwad/sdk/protocol/model/AdScene;Lcom/kwad/sdk/core/request/g$d;)V

    invoke-virtual {v0}, Lcom/kwad/sdk/c/d/a/a;->b()V

    goto :goto_13
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/protocol/model/AdScene;Lcom/kwad/sdk/core/request/g$c;)V
    .registers 4
    .param p2    # Lcom/kwad/sdk/core/request/g$c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/kwad/sdk/core/request/model/AdSceneStyle;->ContentAllianceAd:Lcom/kwad/sdk/core/request/model/AdSceneStyle;

    iget v0, v0, Lcom/kwad/sdk/core/request/model/AdSceneStyle;->adStyle:I

    iput v0, p1, Lcom/kwad/sdk/protocol/model/AdScene;->adStyle:I

    new-instance v0, Lcom/kwad/sdk/core/request/g$a;

    invoke-direct {v0, p0, p2}, Lcom/kwad/sdk/core/request/g$a;-><init>(Lcom/kwad/sdk/core/request/g;Lcom/kwad/sdk/core/request/g$c;)V

    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/core/request/g;->a(Lcom/kwad/sdk/protocol/model/AdScene;Lcom/kwad/sdk/core/request/g$d;)V

    return-void
.end method
