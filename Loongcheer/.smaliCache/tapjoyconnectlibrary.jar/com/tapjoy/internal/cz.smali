.class public final enum Lcom/tapjoy/internal/cz;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tapjoy/internal/cz;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tapjoy/internal/cz;

.field public static final enum b:Lcom/tapjoy/internal/cz;

.field public static final enum c:Lcom/tapjoy/internal/cz;

.field public static final enum d:Lcom/tapjoy/internal/cz;

.field private static final synthetic f:[Lcom/tapjoy/internal/cz;


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    new-instance v0, Lcom/tapjoy/internal/cz;

    const-string v1, "PREROLL"

    const/4 v2, 0x0

    const-string v3, "preroll"

    invoke-direct {v0, v1, v2, v3}, Lcom/tapjoy/internal/cz;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tapjoy/internal/cz;->a:Lcom/tapjoy/internal/cz;

    new-instance v1, Lcom/tapjoy/internal/cz;

    const-string v3, "MIDROLL"

    const/4 v4, 0x1

    const-string v5, "midroll"

    invoke-direct {v1, v3, v4, v5}, Lcom/tapjoy/internal/cz;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/tapjoy/internal/cz;->b:Lcom/tapjoy/internal/cz;

    new-instance v3, Lcom/tapjoy/internal/cz;

    const-string v5, "POSTROLL"

    const/4 v6, 0x2

    const-string v7, "postroll"

    invoke-direct {v3, v5, v6, v7}, Lcom/tapjoy/internal/cz;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/tapjoy/internal/cz;->c:Lcom/tapjoy/internal/cz;

    new-instance v5, Lcom/tapjoy/internal/cz;

    const-string v7, "STANDALONE"

    const/4 v8, 0x3

    const-string v9, "standalone"

    invoke-direct {v5, v7, v8, v9}, Lcom/tapjoy/internal/cz;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/tapjoy/internal/cz;->d:Lcom/tapjoy/internal/cz;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/tapjoy/internal/cz;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/tapjoy/internal/cz;->f:[Lcom/tapjoy/internal/cz;

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

    iput-object p3, p0, Lcom/tapjoy/internal/cz;->e:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/internal/cz;
    .registers 2

    const-class v0, Lcom/tapjoy/internal/cz;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/internal/cz;

    return-object p0
.end method

.method public static values()[Lcom/tapjoy/internal/cz;
    .registers 1

    sget-object v0, Lcom/tapjoy/internal/cz;->f:[Lcom/tapjoy/internal/cz;

    invoke-virtual {v0}, [Lcom/tapjoy/internal/cz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/internal/cz;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/internal/cz;->e:Ljava/lang/String;

    return-object v0
.end method
