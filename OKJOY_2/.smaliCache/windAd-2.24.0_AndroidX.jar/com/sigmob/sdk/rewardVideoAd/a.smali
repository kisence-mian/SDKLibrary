.class public final enum Lcom/sigmob/sdk/rewardVideoAd/a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sigmob/sdk/rewardVideoAd/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sigmob/sdk/rewardVideoAd/a;

.field public static final enum b:Lcom/sigmob/sdk/rewardVideoAd/a;

.field public static final enum c:Lcom/sigmob/sdk/rewardVideoAd/a;

.field public static final enum d:Lcom/sigmob/sdk/rewardVideoAd/a;

.field public static final enum e:Lcom/sigmob/sdk/rewardVideoAd/a;

.field private static final synthetic g:[Lcom/sigmob/sdk/rewardVideoAd/a;


# instance fields
.field private f:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    new-instance v0, Lcom/sigmob/sdk/rewardVideoAd/a;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "AppSWith"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v2}, Lcom/sigmob/sdk/rewardVideoAd/a;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/sigmob/sdk/rewardVideoAd/a;->a:Lcom/sigmob/sdk/rewardVideoAd/a;

    new-instance v2, Lcom/sigmob/sdk/rewardVideoAd/a;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "AutoNextPreload"

    invoke-direct {v2, v6, v1, v5}, Lcom/sigmob/sdk/rewardVideoAd/a;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v2, Lcom/sigmob/sdk/rewardVideoAd/a;->b:Lcom/sigmob/sdk/rewardVideoAd/a;

    new-instance v5, Lcom/sigmob/sdk/rewardVideoAd/a;

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "NormalRequest"

    invoke-direct {v5, v8, v3, v7}, Lcom/sigmob/sdk/rewardVideoAd/a;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v5, Lcom/sigmob/sdk/rewardVideoAd/a;->c:Lcom/sigmob/sdk/rewardVideoAd/a;

    new-instance v7, Lcom/sigmob/sdk/rewardVideoAd/a;

    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "OtherRequest"

    invoke-direct {v7, v10, v6, v9}, Lcom/sigmob/sdk/rewardVideoAd/a;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v7, Lcom/sigmob/sdk/rewardVideoAd/a;->d:Lcom/sigmob/sdk/rewardVideoAd/a;

    new-instance v9, Lcom/sigmob/sdk/rewardVideoAd/a;

    const/4 v10, 0x5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "SplashCloseRequest"

    invoke-direct {v9, v12, v8, v11}, Lcom/sigmob/sdk/rewardVideoAd/a;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v9, Lcom/sigmob/sdk/rewardVideoAd/a;->e:Lcom/sigmob/sdk/rewardVideoAd/a;

    new-array v10, v10, [Lcom/sigmob/sdk/rewardVideoAd/a;

    aput-object v0, v10, v4

    aput-object v2, v10, v1

    aput-object v5, v10, v3

    aput-object v7, v10, v6

    aput-object v9, v10, v8

    sput-object v10, Lcom/sigmob/sdk/rewardVideoAd/a;->g:[Lcom/sigmob/sdk/rewardVideoAd/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Integer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sigmob/sdk/rewardVideoAd/a;->f:Ljava/lang/Integer;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/rewardVideoAd/a;
    .registers 2

    const-class v0, Lcom/sigmob/sdk/rewardVideoAd/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sigmob/sdk/rewardVideoAd/a;

    return-object p0
.end method

.method public static values()[Lcom/sigmob/sdk/rewardVideoAd/a;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/rewardVideoAd/a;->g:[Lcom/sigmob/sdk/rewardVideoAd/a;

    invoke-virtual {v0}, [Lcom/sigmob/sdk/rewardVideoAd/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/rewardVideoAd/a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/rewardVideoAd/a;->f:Ljava/lang/Integer;

    return-object v0
.end method
