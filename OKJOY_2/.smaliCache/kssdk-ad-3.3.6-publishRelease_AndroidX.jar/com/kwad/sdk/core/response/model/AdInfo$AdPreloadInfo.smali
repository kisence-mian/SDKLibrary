.class public Lcom/kwad/sdk/core/response/model/AdInfo$AdPreloadInfo;
.super Lcom/kwad/sdk/core/response/a/a;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/response/model/AdInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdPreloadInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x10c46960e35ce4beL


# instance fields
.field public preloadId:Ljava/lang/String;

.field public preloadTips:Ljava/lang/String;

.field public preloadType:I

.field public validityPeriod:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/core/response/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdPreloadInfo;

    if-eqz v0, :cond_12

    check-cast p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdPreloadInfo;

    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdPreloadInfo;->preloadId:Ljava/lang/String;

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdPreloadInfo;->preloadId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdPreloadInfo;->preloadId:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    :cond_9
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
