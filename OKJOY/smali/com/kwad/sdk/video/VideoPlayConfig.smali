.class public Lcom/kwad/sdk/video/VideoPlayConfig;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/video/VideoPlayConfig$Builder;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x63f93bdac132a415L


# instance fields
.field public showLandscape:Z

.field public showScene:Ljava/lang/String;

.field public skipThirtySecond:Z


# direct methods
.method private constructor <init>(Lcom/kwad/sdk/video/VideoPlayConfig$Builder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    # getter for: Lcom/kwad/sdk/video/VideoPlayConfig$Builder;->showScene:Ljava/lang/String;
    invoke-static {p1}, Lcom/kwad/sdk/video/VideoPlayConfig$Builder;->access$000(Lcom/kwad/sdk/video/VideoPlayConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/video/VideoPlayConfig;->showScene:Ljava/lang/String;

    # getter for: Lcom/kwad/sdk/video/VideoPlayConfig$Builder;->showLandscape:Z
    invoke-static {p1}, Lcom/kwad/sdk/video/VideoPlayConfig$Builder;->access$100(Lcom/kwad/sdk/video/VideoPlayConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kwad/sdk/video/VideoPlayConfig;->showLandscape:Z

    # getter for: Lcom/kwad/sdk/video/VideoPlayConfig$Builder;->skipLongTime:Z
    invoke-static {p1}, Lcom/kwad/sdk/video/VideoPlayConfig$Builder;->access$200(Lcom/kwad/sdk/video/VideoPlayConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kwad/sdk/video/VideoPlayConfig;->skipThirtySecond:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/kwad/sdk/video/VideoPlayConfig$Builder;Lcom/kwad/sdk/video/VideoPlayConfig$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/kwad/sdk/video/VideoPlayConfig;-><init>(Lcom/kwad/sdk/video/VideoPlayConfig$Builder;)V

    return-void
.end method
