.class public Lcom/kwad/sdk/core/preload/SplashPreloadManager$PreLoadPara;
.super Lcom/kwad/sdk/core/response/a/a;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/preload/SplashPreloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreLoadPara"
.end annotation


# instance fields
.field public isValidReturned:I

.field public spreadTime:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/core/response/a/a;-><init>()V

    return-void
.end method
