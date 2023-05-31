.class public final enum Lcom/sigmob/sdk/base/c/p;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sigmob/sdk/base/c/p;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sigmob/sdk/base/c/p;

.field public static final enum b:Lcom/sigmob/sdk/base/c/p;

.field public static final enum c:Lcom/sigmob/sdk/base/c/p;

.field private static final synthetic e:[Lcom/sigmob/sdk/base/c/p;


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sigmob/sdk/base/c/p;

    const-string v1, "LOCATION"

    const-string v2, "Location"

    invoke-direct {v0, v1, v3, v2}, Lcom/sigmob/sdk/base/c/p;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/sdk/base/c/p;->a:Lcom/sigmob/sdk/base/c/p;

    new-instance v0, Lcom/sigmob/sdk/base/c/p;

    const-string v1, "USER_AGENT"

    const-string v2, "User-Agent"

    invoke-direct {v0, v1, v4, v2}, Lcom/sigmob/sdk/base/c/p;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/sdk/base/c/p;->b:Lcom/sigmob/sdk/base/c/p;

    new-instance v0, Lcom/sigmob/sdk/base/c/p;

    const-string v1, "ACCEPT_LANGUAGE"

    const-string v2, "Accept-Language"

    invoke-direct {v0, v1, v5, v2}, Lcom/sigmob/sdk/base/c/p;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/sdk/base/c/p;->c:Lcom/sigmob/sdk/base/c/p;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sigmob/sdk/base/c/p;

    sget-object v1, Lcom/sigmob/sdk/base/c/p;->a:Lcom/sigmob/sdk/base/c/p;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sigmob/sdk/base/c/p;->b:Lcom/sigmob/sdk/base/c/p;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sigmob/sdk/base/c/p;->c:Lcom/sigmob/sdk/base/c/p;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sigmob/sdk/base/c/p;->e:[Lcom/sigmob/sdk/base/c/p;

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

    iput-object p3, p0, Lcom/sigmob/sdk/base/c/p;->d:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/base/c/p;
    .registers 2

    const-class v0, Lcom/sigmob/sdk/base/c/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/c/p;

    return-object v0
.end method

.method public static values()[Lcom/sigmob/sdk/base/c/p;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/base/c/p;->e:[Lcom/sigmob/sdk/base/c/p;

    invoke-virtual {v0}, [Lcom/sigmob/sdk/base/c/p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/base/c/p;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/p;->d:Ljava/lang/String;

    return-object v0
.end method
