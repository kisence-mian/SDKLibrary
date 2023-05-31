.class public final enum Lcom/qq/e/comm/managers/status/Carrier;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qq/e/comm/managers/status/Carrier;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CMCC:Lcom/qq/e/comm/managers/status/Carrier;

.field public static final enum TELECOM:Lcom/qq/e/comm/managers/status/Carrier;

.field public static final enum UNICOM:Lcom/qq/e/comm/managers/status/Carrier;

.field public static final enum UNKNOWN:Lcom/qq/e/comm/managers/status/Carrier;

.field private static final synthetic b:[Lcom/qq/e/comm/managers/status/Carrier;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/qq/e/comm/managers/status/Carrier;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2, v2}, Lcom/qq/e/comm/managers/status/Carrier;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qq/e/comm/managers/status/Carrier;->UNKNOWN:Lcom/qq/e/comm/managers/status/Carrier;

    new-instance v0, Lcom/qq/e/comm/managers/status/Carrier;

    const-string v1, "CMCC"

    invoke-direct {v0, v1, v3, v3}, Lcom/qq/e/comm/managers/status/Carrier;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qq/e/comm/managers/status/Carrier;->CMCC:Lcom/qq/e/comm/managers/status/Carrier;

    new-instance v0, Lcom/qq/e/comm/managers/status/Carrier;

    const-string v1, "UNICOM"

    invoke-direct {v0, v1, v4, v4}, Lcom/qq/e/comm/managers/status/Carrier;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qq/e/comm/managers/status/Carrier;->UNICOM:Lcom/qq/e/comm/managers/status/Carrier;

    new-instance v0, Lcom/qq/e/comm/managers/status/Carrier;

    const-string v1, "TELECOM"

    invoke-direct {v0, v1, v5, v5}, Lcom/qq/e/comm/managers/status/Carrier;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qq/e/comm/managers/status/Carrier;->TELECOM:Lcom/qq/e/comm/managers/status/Carrier;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/qq/e/comm/managers/status/Carrier;

    sget-object v1, Lcom/qq/e/comm/managers/status/Carrier;->UNKNOWN:Lcom/qq/e/comm/managers/status/Carrier;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qq/e/comm/managers/status/Carrier;->CMCC:Lcom/qq/e/comm/managers/status/Carrier;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qq/e/comm/managers/status/Carrier;->UNICOM:Lcom/qq/e/comm/managers/status/Carrier;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qq/e/comm/managers/status/Carrier;->TELECOM:Lcom/qq/e/comm/managers/status/Carrier;

    aput-object v1, v0, v5

    sput-object v0, Lcom/qq/e/comm/managers/status/Carrier;->b:[Lcom/qq/e/comm/managers/status/Carrier;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/qq/e/comm/managers/status/Carrier;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qq/e/comm/managers/status/Carrier;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/qq/e/comm/managers/status/Carrier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qq/e/comm/managers/status/Carrier;

    return-object v0
.end method

.method public static values()[Lcom/qq/e/comm/managers/status/Carrier;
    .registers 1

    sget-object v0, Lcom/qq/e/comm/managers/status/Carrier;->b:[Lcom/qq/e/comm/managers/status/Carrier;

    invoke-virtual {v0}, [Lcom/qq/e/comm/managers/status/Carrier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qq/e/comm/managers/status/Carrier;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .registers 2

    iget v0, p0, Lcom/qq/e/comm/managers/status/Carrier;->a:I

    return v0
.end method
