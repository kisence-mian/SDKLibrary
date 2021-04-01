.class public final enum Lcom/qq/e/comm/managers/status/NetworkType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qq/e/comm/managers/status/NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum NET_2G:Lcom/qq/e/comm/managers/status/NetworkType;

.field public static final enum NET_3G:Lcom/qq/e/comm/managers/status/NetworkType;

.field public static final enum NET_4G:Lcom/qq/e/comm/managers/status/NetworkType;

.field public static final enum UNKNOWN:Lcom/qq/e/comm/managers/status/NetworkType;

.field public static final enum WIFI:Lcom/qq/e/comm/managers/status/NetworkType;

.field private static final synthetic d:[Lcom/qq/e/comm/managers/status/NetworkType;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lcom/qq/e/comm/managers/status/NetworkType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "unknown"

    invoke-direct/range {v0 .. v5}, Lcom/qq/e/comm/managers/status/NetworkType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/qq/e/comm/managers/status/NetworkType;->UNKNOWN:Lcom/qq/e/comm/managers/status/NetworkType;

    new-instance v0, Lcom/qq/e/comm/managers/status/NetworkType;

    const-string v1, "WIFI"

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x2

    const-string v5, "wifi"

    invoke-direct/range {v0 .. v5}, Lcom/qq/e/comm/managers/status/NetworkType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/qq/e/comm/managers/status/NetworkType;->WIFI:Lcom/qq/e/comm/managers/status/NetworkType;

    new-instance v0, Lcom/qq/e/comm/managers/status/NetworkType;

    const-string v1, "NET_2G"

    const/4 v2, 0x2

    const/4 v3, 0x2

    const/4 v4, 0x4

    const-string v5, "2g"

    invoke-direct/range {v0 .. v5}, Lcom/qq/e/comm/managers/status/NetworkType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/qq/e/comm/managers/status/NetworkType;->NET_2G:Lcom/qq/e/comm/managers/status/NetworkType;

    new-instance v0, Lcom/qq/e/comm/managers/status/NetworkType;

    const-string v1, "NET_3G"

    const/4 v2, 0x3

    const/4 v3, 0x3

    const/16 v4, 0x8

    const-string v5, "3g"

    invoke-direct/range {v0 .. v5}, Lcom/qq/e/comm/managers/status/NetworkType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/qq/e/comm/managers/status/NetworkType;->NET_3G:Lcom/qq/e/comm/managers/status/NetworkType;

    new-instance v0, Lcom/qq/e/comm/managers/status/NetworkType;

    const-string v1, "NET_4G"

    const/4 v2, 0x4

    const/4 v3, 0x4

    const/16 v4, 0x10

    const-string v5, "4g"

    invoke-direct/range {v0 .. v5}, Lcom/qq/e/comm/managers/status/NetworkType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/qq/e/comm/managers/status/NetworkType;->NET_4G:Lcom/qq/e/comm/managers/status/NetworkType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/qq/e/comm/managers/status/NetworkType;

    const/4 v1, 0x0

    sget-object v2, Lcom/qq/e/comm/managers/status/NetworkType;->UNKNOWN:Lcom/qq/e/comm/managers/status/NetworkType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/qq/e/comm/managers/status/NetworkType;->WIFI:Lcom/qq/e/comm/managers/status/NetworkType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/qq/e/comm/managers/status/NetworkType;->NET_2G:Lcom/qq/e/comm/managers/status/NetworkType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/qq/e/comm/managers/status/NetworkType;->NET_3G:Lcom/qq/e/comm/managers/status/NetworkType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/qq/e/comm/managers/status/NetworkType;->NET_4G:Lcom/qq/e/comm/managers/status/NetworkType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/qq/e/comm/managers/status/NetworkType;->d:[Lcom/qq/e/comm/managers/status/NetworkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .registers 6
    .param p3, "connValue"    # I
    .param p4, "permValue"    # I
    .param p5, "nameValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/qq/e/comm/managers/status/NetworkType;->a:I

    iput p4, p0, Lcom/qq/e/comm/managers/status/NetworkType;->b:I

    iput-object p5, p0, Lcom/qq/e/comm/managers/status/NetworkType;->c:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qq/e/comm/managers/status/NetworkType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/qq/e/comm/managers/status/NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qq/e/comm/managers/status/NetworkType;

    return-object v0
.end method

.method public static values()[Lcom/qq/e/comm/managers/status/NetworkType;
    .registers 1

    sget-object v0, Lcom/qq/e/comm/managers/status/NetworkType;->d:[Lcom/qq/e/comm/managers/status/NetworkType;

    invoke-virtual {v0}, [Lcom/qq/e/comm/managers/status/NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qq/e/comm/managers/status/NetworkType;

    return-object v0
.end method


# virtual methods
.method public final getConnValue()I
    .registers 2

    iget v0, p0, Lcom/qq/e/comm/managers/status/NetworkType;->a:I

    return v0
.end method

.method public final getNameValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/comm/managers/status/NetworkType;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getPermValue()I
    .registers 2

    iget v0, p0, Lcom/qq/e/comm/managers/status/NetworkType;->b:I

    return v0
.end method
