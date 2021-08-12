.class public Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;
    .registers 3

    new-instance v0, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;-><init>(Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;B)V

    return-object v0
.end method

.method public setCustomData(Ljava/lang/String;)Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;
    .registers 2

    iput-object p1, p0, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public setUserId(Ljava/lang/String;)Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;
    .registers 2

    iput-object p1, p0, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;->b:Ljava/lang/String;

    return-object p0
.end method
