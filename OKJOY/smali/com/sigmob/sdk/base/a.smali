.class public final enum Lcom/sigmob/sdk/base/a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sigmob/sdk/base/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sigmob/sdk/base/a;

.field public static final enum b:Lcom/sigmob/sdk/base/a;

.field public static final enum c:Lcom/sigmob/sdk/base/a;

.field private static final synthetic d:[Lcom/sigmob/sdk/base/a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sigmob/sdk/base/a;

    const-string v1, "COMPANION_CLICK"

    invoke-direct {v0, v1, v2}, Lcom/sigmob/sdk/base/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/sdk/base/a;->a:Lcom/sigmob/sdk/base/a;

    new-instance v0, Lcom/sigmob/sdk/base/a;

    const-string v1, "ENDCARD_CLICK"

    invoke-direct {v0, v1, v3}, Lcom/sigmob/sdk/base/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/sdk/base/a;->b:Lcom/sigmob/sdk/base/a;

    new-instance v0, Lcom/sigmob/sdk/base/a;

    const-string v1, "VIDEO_CLICK"

    invoke-direct {v0, v1, v4}, Lcom/sigmob/sdk/base/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/sdk/base/a;->c:Lcom/sigmob/sdk/base/a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sigmob/sdk/base/a;

    sget-object v1, Lcom/sigmob/sdk/base/a;->a:Lcom/sigmob/sdk/base/a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sigmob/sdk/base/a;->b:Lcom/sigmob/sdk/base/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sigmob/sdk/base/a;->c:Lcom/sigmob/sdk/base/a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sigmob/sdk/base/a;->d:[Lcom/sigmob/sdk/base/a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/base/a;
    .registers 2

    const-class v0, Lcom/sigmob/sdk/base/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/a;

    return-object v0
.end method

.method public static values()[Lcom/sigmob/sdk/base/a;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/base/a;->d:[Lcom/sigmob/sdk/base/a;

    invoke-virtual {v0}, [Lcom/sigmob/sdk/base/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/base/a;

    return-object v0
.end method
