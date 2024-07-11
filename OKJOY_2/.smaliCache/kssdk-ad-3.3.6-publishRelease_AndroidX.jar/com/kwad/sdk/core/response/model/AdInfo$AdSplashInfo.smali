.class public Lcom/kwad/sdk/core/response/model/AdInfo$AdSplashInfo;
.super Lcom/kwad/sdk/core/response/a/a;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/response/model/AdInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdSplashInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5c8367f9a097067dL


# instance fields
.field public imageDisplaySecond:I

.field public logoPosition:I

.field public mute:I

.field public skipSecond:I

.field public skipTips:Ljava/lang/String;

.field public speakerIconUrl:Ljava/lang/String;

.field public speakerMuteIconUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/core/response/a/a;-><init>()V

    return-void
.end method
