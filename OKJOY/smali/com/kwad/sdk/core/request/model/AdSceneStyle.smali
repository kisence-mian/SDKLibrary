.class public final enum Lcom/kwad/sdk/core/request/model/AdSceneStyle;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kwad/sdk/core/request/model/AdSceneStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kwad/sdk/core/request/model/AdSceneStyle;

.field public static final enum ContentAllianceAd:Lcom/kwad/sdk/core/request/model/AdSceneStyle;

.field public static final enum DrawAd:Lcom/kwad/sdk/core/request/model/AdSceneStyle;

.field public static final enum FeedAd:Lcom/kwad/sdk/core/request/model/AdSceneStyle;

.field public static final enum FullscreenAd:Lcom/kwad/sdk/core/request/model/AdSceneStyle;

.field public static final enum RewardAd:Lcom/kwad/sdk/core/request/model/AdSceneStyle;


# instance fields
.field public adStyle:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Lcom/kwad/sdk/core/request/model/AdSceneStyle;

    const-string v1, "FeedAd"

    invoke-direct {v0, v1, v6, v3}, Lcom/kwad/sdk/core/request/model/AdSceneStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kwad/sdk/core/request/model/AdSceneStyle;->FeedAd:Lcom/kwad/sdk/core/request/model/AdSceneStyle;

    new-instance v0, Lcom/kwad/sdk/core/request/model/AdSceneStyle;

    const-string v1, "RewardAd"

    invoke-direct {v0, v1, v3, v4}, Lcom/kwad/sdk/core/request/model/AdSceneStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kwad/sdk/core/request/model/AdSceneStyle;->RewardAd:Lcom/kwad/sdk/core/request/model/AdSceneStyle;

    new-instance v0, Lcom/kwad/sdk/core/request/model/AdSceneStyle;

    const-string v1, "FullscreenAd"

    invoke-direct {v0, v1, v4, v5}, Lcom/kwad/sdk/core/request/model/AdSceneStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kwad/sdk/core/request/model/AdSceneStyle;->FullscreenAd:Lcom/kwad/sdk/core/request/model/AdSceneStyle;

    new-instance v0, Lcom/kwad/sdk/core/request/model/AdSceneStyle;

    const-string v1, "DrawAd"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v5, v2}, Lcom/kwad/sdk/core/request/model/AdSceneStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kwad/sdk/core/request/model/AdSceneStyle;->DrawAd:Lcom/kwad/sdk/core/request/model/AdSceneStyle;

    new-instance v0, Lcom/kwad/sdk/core/request/model/AdSceneStyle;

    const-string v1, "ContentAllianceAd"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v7, v2}, Lcom/kwad/sdk/core/request/model/AdSceneStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kwad/sdk/core/request/model/AdSceneStyle;->ContentAllianceAd:Lcom/kwad/sdk/core/request/model/AdSceneStyle;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/kwad/sdk/core/request/model/AdSceneStyle;

    sget-object v1, Lcom/kwad/sdk/core/request/model/AdSceneStyle;->FeedAd:Lcom/kwad/sdk/core/request/model/AdSceneStyle;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kwad/sdk/core/request/model/AdSceneStyle;->RewardAd:Lcom/kwad/sdk/core/request/model/AdSceneStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kwad/sdk/core/request/model/AdSceneStyle;->FullscreenAd:Lcom/kwad/sdk/core/request/model/AdSceneStyle;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kwad/sdk/core/request/model/AdSceneStyle;->DrawAd:Lcom/kwad/sdk/core/request/model/AdSceneStyle;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kwad/sdk/core/request/model/AdSceneStyle;->ContentAllianceAd:Lcom/kwad/sdk/core/request/model/AdSceneStyle;

    aput-object v1, v0, v7

    sput-object v0, Lcom/kwad/sdk/core/request/model/AdSceneStyle;->$VALUES:[Lcom/kwad/sdk/core/request/model/AdSceneStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/kwad/sdk/core/request/model/AdSceneStyle;->adStyle:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kwad/sdk/core/request/model/AdSceneStyle;
    .registers 2

    const-class v0, Lcom/kwad/sdk/core/request/model/AdSceneStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/request/model/AdSceneStyle;

    return-object v0
.end method

.method public static values()[Lcom/kwad/sdk/core/request/model/AdSceneStyle;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/request/model/AdSceneStyle;->$VALUES:[Lcom/kwad/sdk/core/request/model/AdSceneStyle;

    invoke-virtual {v0}, [Lcom/kwad/sdk/core/request/model/AdSceneStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kwad/sdk/core/request/model/AdSceneStyle;

    return-object v0
.end method
