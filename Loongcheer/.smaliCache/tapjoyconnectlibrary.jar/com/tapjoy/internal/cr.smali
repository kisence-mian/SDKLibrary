.class public final enum Lcom/tapjoy/internal/cr;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tapjoy/internal/cr;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tapjoy/internal/cr;

.field public static final enum b:Lcom/tapjoy/internal/cr;

.field public static final enum c:Lcom/tapjoy/internal/cr;

.field public static final enum d:Lcom/tapjoy/internal/cr;

.field public static final enum e:Lcom/tapjoy/internal/cr;

.field private static final synthetic g:[Lcom/tapjoy/internal/cr;


# instance fields
.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    new-instance v0, Lcom/tapjoy/internal/cr;

    const-string v1, "DEFINED_BY_JAVASCRIPT"

    const/4 v2, 0x0

    const-string v3, "definedByJavaScript"

    invoke-direct {v0, v1, v2, v3}, Lcom/tapjoy/internal/cr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tapjoy/internal/cr;->a:Lcom/tapjoy/internal/cr;

    new-instance v1, Lcom/tapjoy/internal/cr;

    const-string v3, "HTML_DISPLAY"

    const/4 v4, 0x1

    const-string v5, "htmlDisplay"

    invoke-direct {v1, v3, v4, v5}, Lcom/tapjoy/internal/cr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/tapjoy/internal/cr;->b:Lcom/tapjoy/internal/cr;

    new-instance v3, Lcom/tapjoy/internal/cr;

    const-string v5, "NATIVE_DISPLAY"

    const/4 v6, 0x2

    const-string v7, "nativeDisplay"

    invoke-direct {v3, v5, v6, v7}, Lcom/tapjoy/internal/cr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/tapjoy/internal/cr;->c:Lcom/tapjoy/internal/cr;

    new-instance v5, Lcom/tapjoy/internal/cr;

    const-string v7, "VIDEO"

    const/4 v8, 0x3

    const-string v9, "video"

    invoke-direct {v5, v7, v8, v9}, Lcom/tapjoy/internal/cr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/tapjoy/internal/cr;->d:Lcom/tapjoy/internal/cr;

    new-instance v7, Lcom/tapjoy/internal/cr;

    const-string v9, "AUDIO"

    const/4 v10, 0x4

    const-string v11, "audio"

    invoke-direct {v7, v9, v10, v11}, Lcom/tapjoy/internal/cr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/tapjoy/internal/cr;->e:Lcom/tapjoy/internal/cr;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/tapjoy/internal/cr;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/tapjoy/internal/cr;->g:[Lcom/tapjoy/internal/cr;

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

    iput-object p3, p0, Lcom/tapjoy/internal/cr;->f:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/internal/cr;
    .registers 2

    const-class v0, Lcom/tapjoy/internal/cr;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/internal/cr;

    return-object p0
.end method

.method public static values()[Lcom/tapjoy/internal/cr;
    .registers 1

    sget-object v0, Lcom/tapjoy/internal/cr;->g:[Lcom/tapjoy/internal/cr;

    invoke-virtual {v0}, [Lcom/tapjoy/internal/cr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/internal/cr;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/internal/cr;->f:Ljava/lang/String;

    return-object v0
.end method
