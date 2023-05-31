.class public abstract Lcom/mintegral/msdk/mtgbid/common/b;
.super Ljava/lang/Object;
.source "BidRequestParams.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbid/common/b;->a:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbid/common/b;->a:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/mintegral/msdk/mtgbid/common/b;->b:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getmFloorPrice()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbid/common/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getmUnitId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbid/common/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setmFloorPrice(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 32
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbid/common/b;->b:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setmUnitId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 24
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbid/common/b;->a:Ljava/lang/String;

    .line 25
    return-void
.end method
