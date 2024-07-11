.class public final enum Lcom/tapjoy/internal/cq;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tapjoy/internal/cq;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tapjoy/internal/cq;

.field public static final enum b:Lcom/tapjoy/internal/cq;

.field public static final enum c:Lcom/tapjoy/internal/cq;

.field private static final synthetic e:[Lcom/tapjoy/internal/cq;


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v0, Lcom/tapjoy/internal/cq;

    const-string v1, "HTML"

    const/4 v2, 0x0

    const-string v3, "html"

    invoke-direct {v0, v1, v2, v3}, Lcom/tapjoy/internal/cq;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tapjoy/internal/cq;->a:Lcom/tapjoy/internal/cq;

    new-instance v1, Lcom/tapjoy/internal/cq;

    const-string v3, "NATIVE"

    const/4 v4, 0x1

    const-string v5, "native"

    invoke-direct {v1, v3, v4, v5}, Lcom/tapjoy/internal/cq;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/tapjoy/internal/cq;->b:Lcom/tapjoy/internal/cq;

    new-instance v3, Lcom/tapjoy/internal/cq;

    const-string v5, "JAVASCRIPT"

    const/4 v6, 0x2

    const-string v7, "javascript"

    invoke-direct {v3, v5, v6, v7}, Lcom/tapjoy/internal/cq;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/tapjoy/internal/cq;->c:Lcom/tapjoy/internal/cq;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/tapjoy/internal/cq;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/tapjoy/internal/cq;->e:[Lcom/tapjoy/internal/cq;

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

    iput-object p3, p0, Lcom/tapjoy/internal/cq;->d:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/internal/cq;
    .registers 2

    const-class v0, Lcom/tapjoy/internal/cq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/internal/cq;

    return-object p0
.end method

.method public static values()[Lcom/tapjoy/internal/cq;
    .registers 1

    sget-object v0, Lcom/tapjoy/internal/cq;->e:[Lcom/tapjoy/internal/cq;

    invoke-virtual {v0}, [Lcom/tapjoy/internal/cq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/internal/cq;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/internal/cq;->d:Ljava/lang/String;

    return-object v0
.end method
