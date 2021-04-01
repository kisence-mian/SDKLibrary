.class public final enum Lcom/anythink/hb/data/AuctionNotification$ReasonCode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/hb/data/AuctionNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReasonCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/anythink/hb/data/AuctionNotification$ReasonCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Loss:Lcom/anythink/hb/data/AuctionNotification$ReasonCode;

.field public static final enum Timeout:Lcom/anythink/hb/data/AuctionNotification$ReasonCode;

.field public static final enum Win:Lcom/anythink/hb/data/AuctionNotification$ReasonCode;

.field private static final synthetic a:[Lcom/anythink/hb/data/AuctionNotification$ReasonCode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/anythink/hb/data/AuctionNotification$ReasonCode;

    const-string v1, "Win"

    invoke-direct {v0, v1, v2}, Lcom/anythink/hb/data/AuctionNotification$ReasonCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/anythink/hb/data/AuctionNotification$ReasonCode;->Win:Lcom/anythink/hb/data/AuctionNotification$ReasonCode;

    .line 12
    new-instance v0, Lcom/anythink/hb/data/AuctionNotification$ReasonCode;

    const-string v1, "Loss"

    invoke-direct {v0, v1, v3}, Lcom/anythink/hb/data/AuctionNotification$ReasonCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/anythink/hb/data/AuctionNotification$ReasonCode;->Loss:Lcom/anythink/hb/data/AuctionNotification$ReasonCode;

    .line 13
    new-instance v0, Lcom/anythink/hb/data/AuctionNotification$ReasonCode;

    const-string v1, "Timeout"

    invoke-direct {v0, v1, v4}, Lcom/anythink/hb/data/AuctionNotification$ReasonCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/anythink/hb/data/AuctionNotification$ReasonCode;->Timeout:Lcom/anythink/hb/data/AuctionNotification$ReasonCode;

    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/anythink/hb/data/AuctionNotification$ReasonCode;

    sget-object v1, Lcom/anythink/hb/data/AuctionNotification$ReasonCode;->Win:Lcom/anythink/hb/data/AuctionNotification$ReasonCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/anythink/hb/data/AuctionNotification$ReasonCode;->Loss:Lcom/anythink/hb/data/AuctionNotification$ReasonCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/anythink/hb/data/AuctionNotification$ReasonCode;->Timeout:Lcom/anythink/hb/data/AuctionNotification$ReasonCode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/anythink/hb/data/AuctionNotification$ReasonCode;->a:[Lcom/anythink/hb/data/AuctionNotification$ReasonCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/anythink/hb/data/AuctionNotification$ReasonCode;
    .registers 2

    .prologue
    .line 10
    const-class v0, Lcom/anythink/hb/data/AuctionNotification$ReasonCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/anythink/hb/data/AuctionNotification$ReasonCode;

    return-object v0
.end method

.method public static values()[Lcom/anythink/hb/data/AuctionNotification$ReasonCode;
    .registers 1

    .prologue
    .line 10
    sget-object v0, Lcom/anythink/hb/data/AuctionNotification$ReasonCode;->a:[Lcom/anythink/hb/data/AuctionNotification$ReasonCode;

    invoke-virtual {v0}, [Lcom/anythink/hb/data/AuctionNotification$ReasonCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/anythink/hb/data/AuctionNotification$ReasonCode;

    return-object v0
.end method
