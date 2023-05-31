.class public final enum Lcom/sigmob/sdk/base/common/k;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sigmob/sdk/base/common/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sigmob/sdk/base/common/k;

.field public static final enum b:Lcom/sigmob/sdk/base/common/k;

.field private static final synthetic c:[Lcom/sigmob/sdk/base/common/k;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sigmob/sdk/base/common/k;

    const-string v1, "TRACKING_URL"

    invoke-direct {v0, v1, v2}, Lcom/sigmob/sdk/base/common/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/sdk/base/common/k;->a:Lcom/sigmob/sdk/base/common/k;

    new-instance v0, Lcom/sigmob/sdk/base/common/k;

    const-string v1, "QUARTILE_EVENT"

    invoke-direct {v0, v1, v3}, Lcom/sigmob/sdk/base/common/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/sdk/base/common/k;->b:Lcom/sigmob/sdk/base/common/k;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sigmob/sdk/base/common/k;

    sget-object v1, Lcom/sigmob/sdk/base/common/k;->a:Lcom/sigmob/sdk/base/common/k;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sigmob/sdk/base/common/k;->b:Lcom/sigmob/sdk/base/common/k;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sigmob/sdk/base/common/k;->c:[Lcom/sigmob/sdk/base/common/k;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/base/common/k;
    .registers 2

    const-class v0, Lcom/sigmob/sdk/base/common/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/common/k;

    return-object v0
.end method

.method public static values()[Lcom/sigmob/sdk/base/common/k;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/base/common/k;->c:[Lcom/sigmob/sdk/base/common/k;

    invoke-virtual {v0}, [Lcom/sigmob/sdk/base/common/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/base/common/k;

    return-object v0
.end method
