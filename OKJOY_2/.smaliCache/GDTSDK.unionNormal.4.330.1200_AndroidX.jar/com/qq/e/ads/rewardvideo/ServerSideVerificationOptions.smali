.class public Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;
    }
.end annotation


# static fields
.field public static final TRANS_ID:Ljava/lang/String; = "transId"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;->a(Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;->b(Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;-><init>(Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;)V

    return-void
.end method


# virtual methods
.method public getCustomData()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;->b:Ljava/lang/String;

    return-object v0
.end method
