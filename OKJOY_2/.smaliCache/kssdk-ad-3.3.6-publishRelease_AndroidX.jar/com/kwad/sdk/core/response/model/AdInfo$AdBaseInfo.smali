.class public Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;
.super Lcom/kwad/sdk/core/response/a/a;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/response/model/AdInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdBaseInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x166cc6064f414573L


# instance fields
.field public adActionBarColor:Ljava/lang/String;

.field public adActionDescription:Ljava/lang/String;

.field public adDescription:Ljava/lang/String;

.field public adGrayMarkIcon:Ljava/lang/String;

.field public adMarkIcon:Ljava/lang/String;

.field public adOperationType:I

.field public adShowDuration:I

.field public adSourceDescription:Ljava/lang/String;

.field public adSourceType:I

.field public appCategory:Ljava/lang/String;

.field public appDescription:Ljava/lang/String;

.field public appDownloadCountDesc:Ljava/lang/String;

.field public appIconUrl:Ljava/lang/String;

.field public appImageSize:Lcom/kwad/sdk/core/response/model/AdInfo$MaterialSize;

.field public appImageUrl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public appName:Ljava/lang/String;

.field public appPackageName:Ljava/lang/String;

.field public appScore:I

.field public appVersion:Ljava/lang/String;

.field public clickUrl:Ljava/lang/String;

.field public convUrl:Ljava/lang/String;

.field public corporationName:Ljava/lang/String;

.field public creativeId:J

.field public ecpm:I

.field public enableSkipAd:I

.field public mABParams:Lcom/kwad/sdk/core/response/model/ABParams;

.field public packageSize:J

.field public productName:Ljava/lang/String;

.field public showUrl:Ljava/lang/String;

.field public skipSecond:I

.field public videoPlayedNS:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/core/response/a/a;-><init>()V

    new-instance v0, Lcom/kwad/sdk/core/response/model/ABParams;

    invoke-direct {v0}, Lcom/kwad/sdk/core/response/model/ABParams;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->mABParams:Lcom/kwad/sdk/core/response/model/ABParams;

    return-void
.end method
