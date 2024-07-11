.class public final enum Lcom/sigmob/sdk/common/e/i;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sigmob/sdk/common/e/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sigmob/sdk/common/e/i;

.field public static final enum b:Lcom/sigmob/sdk/common/e/i;

.field public static final enum c:Lcom/sigmob/sdk/common/e/i;

.field private static final synthetic e:[Lcom/sigmob/sdk/common/e/i;


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v0, Lcom/sigmob/sdk/common/e/i;

    const-string v1, "LOCATION"

    const/4 v2, 0x0

    const-string v3, "Location"

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/sdk/common/e/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/sdk/common/e/i;->a:Lcom/sigmob/sdk/common/e/i;

    new-instance v1, Lcom/sigmob/sdk/common/e/i;

    const-string v3, "USER_AGENT"

    const/4 v4, 0x1

    const-string v5, "User-Agent"

    invoke-direct {v1, v3, v4, v5}, Lcom/sigmob/sdk/common/e/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sigmob/sdk/common/e/i;->b:Lcom/sigmob/sdk/common/e/i;

    new-instance v3, Lcom/sigmob/sdk/common/e/i;

    const-string v5, "ACCEPT_LANGUAGE"

    const/4 v6, 0x2

    const-string v7, "Accept-Language"

    invoke-direct {v3, v5, v6, v7}, Lcom/sigmob/sdk/common/e/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/sigmob/sdk/common/e/i;->c:Lcom/sigmob/sdk/common/e/i;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sigmob/sdk/common/e/i;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/sigmob/sdk/common/e/i;->e:[Lcom/sigmob/sdk/common/e/i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sigmob/sdk/common/e/i;->d:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/common/e/i;
    .registers 2

    const-class v0, Lcom/sigmob/sdk/common/e/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sigmob/sdk/common/e/i;

    return-object p0
.end method

.method public static values()[Lcom/sigmob/sdk/common/e/i;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/common/e/i;->e:[Lcom/sigmob/sdk/common/e/i;

    invoke-virtual {v0}, [Lcom/sigmob/sdk/common/e/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/common/e/i;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/e/i;->d:Ljava/lang/String;

    return-object v0
.end method
