.class public Lcom/kwad/sdk/video/VideoPlayConfig$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/video/VideoPlayConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private showLandscape:Z

.field private showScene:Ljava/lang/String;

.field private skipLongTime:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/kwad/sdk/video/VideoPlayConfig$Builder;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/video/VideoPlayConfig$Builder;->showScene:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kwad/sdk/video/VideoPlayConfig$Builder;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwad/sdk/video/VideoPlayConfig$Builder;->showLandscape:Z

    return v0
.end method

.method static synthetic access$200(Lcom/kwad/sdk/video/VideoPlayConfig$Builder;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwad/sdk/video/VideoPlayConfig$Builder;->skipLongTime:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/kwad/sdk/video/VideoPlayConfig;
    .registers 3

    new-instance v0, Lcom/kwad/sdk/video/VideoPlayConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kwad/sdk/video/VideoPlayConfig;-><init>(Lcom/kwad/sdk/video/VideoPlayConfig$Builder;Lcom/kwad/sdk/video/VideoPlayConfig$1;)V

    return-object v0
.end method

.method public showLandscape(Z)Lcom/kwad/sdk/video/VideoPlayConfig$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/video/VideoPlayConfig$Builder;->showLandscape:Z

    return-object p0
.end method

.method public showScene(Ljava/lang/String;)Lcom/kwad/sdk/video/VideoPlayConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/video/VideoPlayConfig$Builder;->showScene:Ljava/lang/String;

    return-object p0
.end method

.method public skipThirtySecond(Z)Lcom/kwad/sdk/video/VideoPlayConfig$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/video/VideoPlayConfig$Builder;->skipLongTime:Z

    return-object p0
.end method
