.class final enum Lcom/sigmob/sdk/base/d/d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sigmob/sdk/base/d/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sigmob/sdk/base/d/d;

.field public static final enum b:Lcom/sigmob/sdk/base/d/d;

.field public static final enum c:Lcom/sigmob/sdk/base/d/d;

.field private static final synthetic d:[Lcom/sigmob/sdk/base/d/d;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sigmob/sdk/base/d/d;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v2}, Lcom/sigmob/sdk/base/d/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/sdk/base/d/d;->a:Lcom/sigmob/sdk/base/d/d;

    new-instance v0, Lcom/sigmob/sdk/base/d/d;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v3}, Lcom/sigmob/sdk/base/d/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/sdk/base/d/d;->b:Lcom/sigmob/sdk/base/d/d;

    new-instance v0, Lcom/sigmob/sdk/base/d/d;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v4}, Lcom/sigmob/sdk/base/d/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/sdk/base/d/d;->c:Lcom/sigmob/sdk/base/d/d;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sigmob/sdk/base/d/d;

    sget-object v1, Lcom/sigmob/sdk/base/d/d;->a:Lcom/sigmob/sdk/base/d/d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sigmob/sdk/base/d/d;->b:Lcom/sigmob/sdk/base/d/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sigmob/sdk/base/d/d;->c:Lcom/sigmob/sdk/base/d/d;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sigmob/sdk/base/d/d;->d:[Lcom/sigmob/sdk/base/d/d;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/base/d/d;
    .registers 2

    const-class v0, Lcom/sigmob/sdk/base/d/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/d/d;

    return-object v0
.end method

.method public static values()[Lcom/sigmob/sdk/base/d/d;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/base/d/d;->d:[Lcom/sigmob/sdk/base/d/d;

    invoke-virtual {v0}, [Lcom/sigmob/sdk/base/d/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/base/d/d;

    return-object v0
.end method
