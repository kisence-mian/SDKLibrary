.class public Lcom/mintegral/msdk/mtgbid/out/BidResponsed;
.super Ljava/lang/Object;
.source "BidResponsed.java"

# interfaces
.implements Lcom/mintegral/msdk/system/NoProGuard;


# static fields
.field public static final KEY_BID_ID:Ljava/lang/String; = "bid"

.field public static final KEY_CUR:Ljava/lang/String; = "cur"

.field public static final KEY_LN:Ljava/lang/String; = "ln"

.field public static final KEY_PRICE:Ljava/lang/String; = "price"

.field public static final KEY_TOKEN:Ljava/lang/String; = "token"

.field public static final KEY_WN:Ljava/lang/String; = "wn"


# instance fields
.field private bidId:Ljava/lang/String;

.field private bidToken:Ljava/lang/String;

.field private cur:Ljava/lang/String;

.field protected ln:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field protected wn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBidId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbid/out/BidResponsed;->bidId:Ljava/lang/String;

    return-object v0
.end method

.method public getBidToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbid/out/BidResponsed;->bidToken:Ljava/lang/String;

    return-object v0
.end method

.method public getCur()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbid/out/BidResponsed;->cur:Ljava/lang/String;

    return-object v0
.end method

.method public getLn()Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbid/out/BidResponsed;->ln:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbid/out/BidResponsed;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getWn()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbid/out/BidResponsed;->wn:Ljava/lang/String;

    return-object v0
.end method

.method public sendLossNotice(Landroid/content/Context;Lcom/mintegral/msdk/mtgbid/out/BidLossCode;)V
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 91
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbid/out/BidResponsed;->ln:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    if-eqz p1, :cond_3e

    if-eqz p2, :cond_3e

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgbid/out/BidResponsed;->ln:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/mintegral/msdk/mtgbid/out/BidResponsed;->ln:Ljava/lang/String;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3f

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 94
    :goto_24
    const-string v1, "reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 95
    invoke-virtual {p2}, Lcom/mintegral/msdk/mtgbid/out/BidLossCode;->getCurrentCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 98
    :cond_3e
    return-void

    .line 93
    :cond_3f
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_24
.end method

.method public sendWinNotice(Landroid/content/Context;)V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 106
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbid/out/BidResponsed;->wn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    if-eqz p1, :cond_15

    .line 107
    const/4 v1, 0x0

    const-string v2, ""

    iget-object v3, p0, Lcom/mintegral/msdk/mtgbid/out/BidResponsed;->wn:Ljava/lang/String;

    move-object v0, p1

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 109
    :cond_15
    return-void
.end method

.method protected setBidId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 46
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbid/out/BidResponsed;->bidId:Ljava/lang/String;

    .line 47
    return-void
.end method

.method protected setBidToken(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 62
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbid/out/BidResponsed;->bidToken:Ljava/lang/String;

    .line 63
    return-void
.end method

.method protected setCur(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 70
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbid/out/BidResponsed;->cur:Ljava/lang/String;

    .line 71
    return-void
.end method

.method protected setPrice(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 54
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbid/out/BidResponsed;->price:Ljava/lang/String;

    .line 55
    return-void
.end method
