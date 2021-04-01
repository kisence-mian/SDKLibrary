.class public final enum Lcom/sigmob/sdk/base/common/ac;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sigmob/sdk/base/common/ac;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sigmob/sdk/base/common/ac;

.field public static final enum b:Lcom/sigmob/sdk/base/common/ac;

.field public static final enum c:Lcom/sigmob/sdk/base/common/ac;

.field private static final synthetic e:[Lcom/sigmob/sdk/base/common/ac;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Lcom/sigmob/sdk/base/common/ac;

    const-string v1, "SENSOR_EVENT_BEGIN"

    invoke-direct {v0, v1, v4, v2}, Lcom/sigmob/sdk/base/common/ac;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/sdk/base/common/ac;->a:Lcom/sigmob/sdk/base/common/ac;

    new-instance v0, Lcom/sigmob/sdk/base/common/ac;

    const-string v1, "SENSOR_EVENT_END"

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/sdk/base/common/ac;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/sdk/base/common/ac;->b:Lcom/sigmob/sdk/base/common/ac;

    new-instance v0, Lcom/sigmob/sdk/base/common/ac;

    const-string v1, "SENSOR_EVENT_PUSH"

    invoke-direct {v0, v1, v3, v5}, Lcom/sigmob/sdk/base/common/ac;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/sdk/base/common/ac;->c:Lcom/sigmob/sdk/base/common/ac;

    new-array v0, v5, [Lcom/sigmob/sdk/base/common/ac;

    sget-object v1, Lcom/sigmob/sdk/base/common/ac;->a:Lcom/sigmob/sdk/base/common/ac;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sigmob/sdk/base/common/ac;->b:Lcom/sigmob/sdk/base/common/ac;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sigmob/sdk/base/common/ac;->c:Lcom/sigmob/sdk/base/common/ac;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sigmob/sdk/base/common/ac;->e:[Lcom/sigmob/sdk/base/common/ac;

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

    iput p3, p0, Lcom/sigmob/sdk/base/common/ac;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/base/common/ac;
    .registers 2

    const-class v0, Lcom/sigmob/sdk/base/common/ac;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/common/ac;

    return-object v0
.end method

.method public static values()[Lcom/sigmob/sdk/base/common/ac;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/base/common/ac;->e:[Lcom/sigmob/sdk/base/common/ac;

    invoke-virtual {v0}, [Lcom/sigmob/sdk/base/common/ac;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/base/common/ac;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/base/common/ac;->d:I

    return v0
.end method
