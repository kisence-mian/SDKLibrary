.class public final enum Lcom/qq/e/comm/managers/status/NetworkType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
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
    .registers 19

    new-instance v6, Lcom/qq/e/comm/managers/status/NetworkType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "unknown"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/qq/e/comm/managers/status/NetworkType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v6, Lcom/qq/e/comm/managers/status/NetworkType;->UNKNOWN:Lcom/qq/e/comm/managers/status/NetworkType;

    new-instance v0, Lcom/qq/e/comm/managers/status/NetworkType;

    const-string v8, "WIFI"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x2

    const-string v12, "wifi"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/qq/e/comm/managers/status/NetworkType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/qq/e/comm/managers/status/NetworkType;->WIFI:Lcom/qq/e/comm/managers/status/NetworkType;

    new-instance v1, Lcom/qq/e/comm/managers/status/NetworkType;

    const-string v14, "NET_2G"

    const/4 v15, 0x2

    const/16 v16, 0x2

    const/16 v17, 0x4

    const-string v18, "2g"

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/qq/e/comm/managers/status/NetworkType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v1, Lcom/qq/e/comm/managers/status/NetworkType;->NET_2G:Lcom/qq/e/comm/managers/status/NetworkType;

    new-instance v2, Lcom/qq/e/comm/managers/status/NetworkType;

    const-string v8, "NET_3G"

    const/4 v9, 0x3

    const/4 v10, 0x3

    const/16 v11, 0x8

    const-string v12, "3g"

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/qq/e/comm/managers/status/NetworkType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v2, Lcom/qq/e/comm/managers/status/NetworkType;->NET_3G:Lcom/qq/e/comm/managers/status/NetworkType;

    new-instance v3, Lcom/qq/e/comm/managers/status/NetworkType;

    const-string v14, "NET_4G"

    const/4 v15, 0x4

    const/16 v16, 0x4

    const/16 v17, 0x10

    const-string v18, "4g"

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcom/qq/e/comm/managers/status/NetworkType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/qq/e/comm/managers/status/NetworkType;->NET_4G:Lcom/qq/e/comm/managers/status/NetworkType;

    const/4 v4, 0x5

    new-array v4, v4, [Lcom/qq/e/comm/managers/status/NetworkType;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object v2, v4, v0

    const/4 v0, 0x4

    aput-object v3, v4, v0

    sput-object v4, Lcom/qq/e/comm/managers/status/NetworkType;->d:[Lcom/qq/e/comm/managers/status/NetworkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/qq/e/comm/managers/status/NetworkType;->a:I

    iput p4, p0, Lcom/qq/e/comm/managers/status/NetworkType;->b:I

    iput-object p5, p0, Lcom/qq/e/comm/managers/status/NetworkType;->c:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qq/e/comm/managers/status/NetworkType;
    .registers 2

    const-class v0, Lcom/qq/e/comm/managers/status/NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qq/e/comm/managers/status/NetworkType;

    return-object p0
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
