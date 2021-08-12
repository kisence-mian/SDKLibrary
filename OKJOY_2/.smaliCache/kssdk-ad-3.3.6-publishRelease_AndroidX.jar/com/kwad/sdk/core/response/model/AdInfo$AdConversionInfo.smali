.class public Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;
.super Lcom/kwad/sdk/core/response/a/a;

# interfaces
.implements Lcom/kwad/sdk/core/b;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/response/model/AdInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdConversionInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1686e8d2a933f490L


# instance fields
.field public appDownloadUrl:Ljava/lang/String;

.field public deeplinkUrl:Ljava/lang/String;

.field public h5Type:I

.field public h5Url:Ljava/lang/String;

.field public marketUrl:Ljava/lang/String;

.field public playableStyleInfo:Lcom/kwad/sdk/core/response/model/AdInfo$PlayableStyleInfo;

.field public playableUrl:Ljava/lang/String;

.field public retryH5TimeStep:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/core/response/a/a;-><init>()V

    return-void
.end method
