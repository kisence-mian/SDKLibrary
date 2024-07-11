.class public final enum Lcom/facebook/bidding/FBAdBidAuctionType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/bidding/FBAdBidAuctionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/bidding/FBAdBidAuctionType;

.field public static final enum FIRST_PRICE:Lcom/facebook/bidding/FBAdBidAuctionType;

.field public static final enum SECOND_PRICE:Lcom/facebook/bidding/FBAdBidAuctionType;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lcom/facebook/bidding/FBAdBidAuctionType;

    const-string v1, "FIRST_PRICE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/bidding/FBAdBidAuctionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/bidding/FBAdBidAuctionType;->FIRST_PRICE:Lcom/facebook/bidding/FBAdBidAuctionType;

    new-instance v1, Lcom/facebook/bidding/FBAdBidAuctionType;

    const-string v4, "SECOND_PRICE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/facebook/bidding/FBAdBidAuctionType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/facebook/bidding/FBAdBidAuctionType;->SECOND_PRICE:Lcom/facebook/bidding/FBAdBidAuctionType;

    new-array v4, v5, [Lcom/facebook/bidding/FBAdBidAuctionType;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    sput-object v4, Lcom/facebook/bidding/FBAdBidAuctionType;->$VALUES:[Lcom/facebook/bidding/FBAdBidAuctionType;

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

    iput p3, p0, Lcom/facebook/bidding/FBAdBidAuctionType;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/bidding/FBAdBidAuctionType;
    .registers 2

    const-class v0, Lcom/facebook/bidding/FBAdBidAuctionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/bidding/FBAdBidAuctionType;

    return-object p0
.end method

.method public static values()[Lcom/facebook/bidding/FBAdBidAuctionType;
    .registers 1

    sget-object v0, Lcom/facebook/bidding/FBAdBidAuctionType;->$VALUES:[Lcom/facebook/bidding/FBAdBidAuctionType;

    invoke-virtual {v0}, [Lcom/facebook/bidding/FBAdBidAuctionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/bidding/FBAdBidAuctionType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    iget v0, p0, Lcom/facebook/bidding/FBAdBidAuctionType;->a:I

    return v0
.end method
