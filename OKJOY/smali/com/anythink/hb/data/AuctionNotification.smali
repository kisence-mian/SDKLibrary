.class public Lcom/anythink/hb/data/AuctionNotification;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/hb/data/AuctionNotification$ReasonCode;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/anythink/hb/data/AuctionNotification$ReasonCode;

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>(ZLcom/anythink/hb/data/AuctionNotification$ReasonCode;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean p1, p0, Lcom/anythink/hb/data/AuctionNotification;->a:Z

    .line 18
    iput-object p2, p0, Lcom/anythink/hb/data/AuctionNotification;->b:Lcom/anythink/hb/data/AuctionNotification$ReasonCode;

    .line 19
    iput-object p3, p0, Lcom/anythink/hb/data/AuctionNotification;->c:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static getAuctionNotification(Lcom/anythink/hb/data/AuctionNotification$ReasonCode;)Lcom/anythink/hb/data/AuctionNotification;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 52
    const/4 v0, 0x0

    .line 53
    sget-object v1, Lcom/anythink/hb/data/AuctionNotification$1;->a:[I

    invoke-virtual {p0}, Lcom/anythink/hb/data/AuctionNotification$ReasonCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2e

    .line 70
    :goto_d
    return-object v0

    .line 55
    :pswitch_e
    new-instance v0, Lcom/anythink/hb/data/AuctionNotification;

    const/4 v1, 0x1

    sget-object v2, Lcom/anythink/hb/data/AuctionNotification$ReasonCode;->Win:Lcom/anythink/hb/data/AuctionNotification$ReasonCode;

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/anythink/hb/data/AuctionNotification;-><init>(ZLcom/anythink/hb/data/AuctionNotification$ReasonCode;Ljava/lang/String;)V

    goto :goto_d

    .line 59
    :pswitch_19
    new-instance v0, Lcom/anythink/hb/data/AuctionNotification;

    sget-object v1, Lcom/anythink/hb/data/AuctionNotification$ReasonCode;->Loss:Lcom/anythink/hb/data/AuctionNotification$ReasonCode;

    const-string v2, ""

    invoke-direct {v0, v3, v1, v2}, Lcom/anythink/hb/data/AuctionNotification;-><init>(ZLcom/anythink/hb/data/AuctionNotification$ReasonCode;Ljava/lang/String;)V

    goto :goto_d

    .line 63
    :pswitch_23
    new-instance v0, Lcom/anythink/hb/data/AuctionNotification;

    sget-object v1, Lcom/anythink/hb/data/AuctionNotification$ReasonCode;->Timeout:Lcom/anythink/hb/data/AuctionNotification$ReasonCode;

    const-string v2, ""

    invoke-direct {v0, v3, v1, v2}, Lcom/anythink/hb/data/AuctionNotification;-><init>(ZLcom/anythink/hb/data/AuctionNotification$ReasonCode;Ljava/lang/String;)V

    goto :goto_d

    .line 53
    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_e
        :pswitch_19
        :pswitch_23
    .end packed-switch
.end method


# virtual methods
.method public getReasonCode()Lcom/anythink/hb/data/AuctionNotification$ReasonCode;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/anythink/hb/data/AuctionNotification;->b:Lcom/anythink/hb/data/AuctionNotification$ReasonCode;

    return-object v0
.end method

.method public getReasonDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/anythink/hb/data/AuctionNotification;->c:Ljava/lang/String;

    return-object v0
.end method

.method public isWinner()Z
    .registers 2

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/anythink/hb/data/AuctionNotification;->a:Z

    return v0
.end method

.method public setReasonCode(Lcom/anythink/hb/data/AuctionNotification$ReasonCode;)V
    .registers 2

    .prologue
    .line 39
    iput-object p1, p0, Lcom/anythink/hb/data/AuctionNotification;->b:Lcom/anythink/hb/data/AuctionNotification$ReasonCode;

    .line 40
    return-void
.end method

.method public setReasonDescription(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 47
    iput-object p1, p0, Lcom/anythink/hb/data/AuctionNotification;->c:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setWinner(Z)V
    .registers 2

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/anythink/hb/data/AuctionNotification;->a:Z

    .line 32
    return-void
.end method
