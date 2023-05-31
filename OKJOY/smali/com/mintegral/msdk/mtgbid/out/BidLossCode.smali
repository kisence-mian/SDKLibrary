.class public Lcom/mintegral/msdk/mtgbid/out/BidLossCode;
.super Ljava/lang/Object;
.source "BidLossCode.java"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput v0, Lcom/mintegral/msdk/mtgbid/out/BidLossCode;->a:I

    return-void
.end method

.method private constructor <init>(I)V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sput p1, Lcom/mintegral/msdk/mtgbid/out/BidLossCode;->a:I

    .line 25
    return-void
.end method

.method public static bidPriceNotHighest()Lcom/mintegral/msdk/mtgbid/out/BidLossCode;
    .registers 2

    .prologue
    .line 40
    new-instance v0, Lcom/mintegral/msdk/mtgbid/out/BidLossCode;

    const/16 v1, 0x66

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/mtgbid/out/BidLossCode;-><init>(I)V

    return-object v0
.end method

.method public static bidTimeOut()Lcom/mintegral/msdk/mtgbid/out/BidLossCode;
    .registers 2

    .prologue
    .line 32
    new-instance v0, Lcom/mintegral/msdk/mtgbid/out/BidLossCode;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/mtgbid/out/BidLossCode;-><init>(I)V

    return-object v0
.end method

.method public static bidWinButNotShow()Lcom/mintegral/msdk/mtgbid/out/BidLossCode;
    .registers 2

    .prologue
    .line 48
    new-instance v0, Lcom/mintegral/msdk/mtgbid/out/BidLossCode;

    const/16 v1, 0xbb9

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/mtgbid/out/BidLossCode;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public getCurrentCode()I
    .registers 2

    .prologue
    .line 52
    sget v0, Lcom/mintegral/msdk/mtgbid/out/BidLossCode;->a:I

    return v0
.end method
