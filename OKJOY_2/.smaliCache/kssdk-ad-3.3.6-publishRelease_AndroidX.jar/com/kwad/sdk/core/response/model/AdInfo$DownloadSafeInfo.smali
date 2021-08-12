.class public Lcom/kwad/sdk/core/response/model/AdInfo$DownloadSafeInfo;
.super Lcom/kwad/sdk/core/response/a/a;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/response/model/AdInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadSafeInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x15dc478ee94a6df2L


# instance fields
.field public appPrivacyUrl:Ljava/lang/String;

.field public downloadPauseEnable:Z

.field public permissionInfo:Ljava/lang/String;

.field public webPageTipbarSwitch:Z

.field public webPageTipbarText:Ljava/lang/String;

.field public windowPopType:I

.field public windowPopUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/core/response/a/a;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$DownloadSafeInfo;->windowPopType:I

    iput-boolean v0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$DownloadSafeInfo;->downloadPauseEnable:Z

    iput-boolean v0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$DownloadSafeInfo;->webPageTipbarSwitch:Z

    return-void
.end method
