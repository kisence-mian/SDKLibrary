.class public final enum Lcom/sigmob/sdk/base/services/f;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sigmob/sdk/base/services/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sigmob/sdk/base/services/f;

.field public static final enum b:Lcom/sigmob/sdk/base/services/f;

.field public static final enum c:Lcom/sigmob/sdk/base/services/f;

.field private static final synthetic e:[Lcom/sigmob/sdk/base/services/f;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v0, Lcom/sigmob/sdk/base/services/f;

    const-string v1, "SENSOR_EVENT_BEGIN"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/sdk/base/services/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/sdk/base/services/f;->a:Lcom/sigmob/sdk/base/services/f;

    new-instance v1, Lcom/sigmob/sdk/base/services/f;

    const-string v4, "SENSOR_EVENT_END"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/sigmob/sdk/base/services/f;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sigmob/sdk/base/services/f;->b:Lcom/sigmob/sdk/base/services/f;

    new-instance v4, Lcom/sigmob/sdk/base/services/f;

    const-string v6, "SENSOR_EVENT_PUSH"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/sigmob/sdk/base/services/f;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/sigmob/sdk/base/services/f;->c:Lcom/sigmob/sdk/base/services/f;

    new-array v6, v7, [Lcom/sigmob/sdk/base/services/f;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    sput-object v6, Lcom/sigmob/sdk/base/services/f;->e:[Lcom/sigmob/sdk/base/services/f;

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

    iput p3, p0, Lcom/sigmob/sdk/base/services/f;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/base/services/f;
    .registers 2

    const-class v0, Lcom/sigmob/sdk/base/services/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sigmob/sdk/base/services/f;

    return-object p0
.end method

.method public static values()[Lcom/sigmob/sdk/base/services/f;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/base/services/f;->e:[Lcom/sigmob/sdk/base/services/f;

    invoke-virtual {v0}, [Lcom/sigmob/sdk/base/services/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/base/services/f;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/base/services/f;->d:I

    return v0
.end method
