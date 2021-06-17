.class public final enum Lcom/tendcloud/tenddata/game/ek;
.super Ljava/lang/Enum;
.source "td"


# static fields
.field public static final enum a:Lcom/tendcloud/tenddata/game/ek;

.field public static final enum b:Lcom/tendcloud/tenddata/game/ek;

.field public static final enum c:Lcom/tendcloud/tenddata/game/ek;

.field private static final synthetic e:[Lcom/tendcloud/tenddata/game/ek;


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 4
    new-instance v0, Lcom/tendcloud/tenddata/game/ek;

    const-string v1, "WIFI"

    const/4 v2, 0x0

    const-string v3, "wifi"

    invoke-direct {v0, v1, v2, v3}, Lcom/tendcloud/tenddata/game/ek;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tendcloud/tenddata/game/ek;->a:Lcom/tendcloud/tenddata/game/ek;

    .line 5
    new-instance v1, Lcom/tendcloud/tenddata/game/ek;

    const-string v3, "CELLULAR"

    const/4 v4, 0x1

    const-string v5, "cellular"

    invoke-direct {v1, v3, v4, v5}, Lcom/tendcloud/tenddata/game/ek;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/tendcloud/tenddata/game/ek;->b:Lcom/tendcloud/tenddata/game/ek;

    .line 6
    new-instance v3, Lcom/tendcloud/tenddata/game/ek;

    const-string v5, "BLUETOOTH"

    const/4 v6, 0x2

    const-string v7, "bluetooth"

    invoke-direct {v3, v5, v6, v7}, Lcom/tendcloud/tenddata/game/ek;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/tendcloud/tenddata/game/ek;->c:Lcom/tendcloud/tenddata/game/ek;

    .line 3
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/tendcloud/tenddata/game/ek;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/tendcloud/tenddata/game/ek;->e:[Lcom/tendcloud/tenddata/game/ek;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput-object p3, p0, Lcom/tendcloud/tenddata/game/ek;->d:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/game/ek;
    .registers 2

    .line 3
    const-class v0, Lcom/tendcloud/tenddata/game/ek;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tendcloud/tenddata/game/ek;

    return-object p0
.end method

.method public static values()[Lcom/tendcloud/tenddata/game/ek;
    .registers 1

    .line 3
    sget-object v0, Lcom/tendcloud/tenddata/game/ek;->e:[Lcom/tendcloud/tenddata/game/ek;

    invoke-virtual {v0}, [Lcom/tendcloud/tenddata/game/ek;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tendcloud/tenddata/game/ek;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ek;->d:Ljava/lang/String;

    return-object v0
.end method
