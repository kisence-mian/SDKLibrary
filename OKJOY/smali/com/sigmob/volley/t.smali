.class public final enum Lcom/sigmob/volley/t;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sigmob/volley/t;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sigmob/volley/t;

.field public static final enum b:Lcom/sigmob/volley/t;

.field public static final enum c:Lcom/sigmob/volley/t;

.field public static final enum d:Lcom/sigmob/volley/t;

.field private static final synthetic e:[Lcom/sigmob/volley/t;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sigmob/volley/t;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v2}, Lcom/sigmob/volley/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/volley/t;->a:Lcom/sigmob/volley/t;

    new-instance v0, Lcom/sigmob/volley/t;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/sigmob/volley/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/volley/t;->b:Lcom/sigmob/volley/t;

    new-instance v0, Lcom/sigmob/volley/t;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v4}, Lcom/sigmob/volley/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/volley/t;->c:Lcom/sigmob/volley/t;

    new-instance v0, Lcom/sigmob/volley/t;

    const-string v1, "IMMEDIATE"

    invoke-direct {v0, v1, v5}, Lcom/sigmob/volley/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/volley/t;->d:Lcom/sigmob/volley/t;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sigmob/volley/t;

    sget-object v1, Lcom/sigmob/volley/t;->a:Lcom/sigmob/volley/t;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sigmob/volley/t;->b:Lcom/sigmob/volley/t;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sigmob/volley/t;->c:Lcom/sigmob/volley/t;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sigmob/volley/t;->d:Lcom/sigmob/volley/t;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sigmob/volley/t;->e:[Lcom/sigmob/volley/t;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/volley/t;
    .registers 2

    const-class v0, Lcom/sigmob/volley/t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sigmob/volley/t;

    return-object v0
.end method

.method public static values()[Lcom/sigmob/volley/t;
    .registers 1

    sget-object v0, Lcom/sigmob/volley/t;->e:[Lcom/sigmob/volley/t;

    invoke-virtual {v0}, [Lcom/sigmob/volley/t;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/volley/t;

    return-object v0
.end method
