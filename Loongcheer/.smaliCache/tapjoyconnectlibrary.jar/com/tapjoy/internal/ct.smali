.class public final enum Lcom/tapjoy/internal/ct;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tapjoy/internal/ct;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tapjoy/internal/ct;

.field public static final enum b:Lcom/tapjoy/internal/ct;

.field public static final enum c:Lcom/tapjoy/internal/ct;

.field public static final enum d:Lcom/tapjoy/internal/ct;

.field public static final enum e:Lcom/tapjoy/internal/ct;

.field public static final enum f:Lcom/tapjoy/internal/ct;

.field public static final enum g:Lcom/tapjoy/internal/ct;

.field public static final enum h:Lcom/tapjoy/internal/ct;

.field private static final synthetic j:[Lcom/tapjoy/internal/ct;


# instance fields
.field private final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    new-instance v0, Lcom/tapjoy/internal/ct;

    const-string v1, "DEFINED_BY_JAVASCRIPT"

    const/4 v2, 0x0

    const-string v3, "definedByJavaScript"

    invoke-direct {v0, v1, v2, v3}, Lcom/tapjoy/internal/ct;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tapjoy/internal/ct;->a:Lcom/tapjoy/internal/ct;

    new-instance v1, Lcom/tapjoy/internal/ct;

    const-string v3, "UNSPECIFIED"

    const/4 v4, 0x1

    const-string v5, "unspecified"

    invoke-direct {v1, v3, v4, v5}, Lcom/tapjoy/internal/ct;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/tapjoy/internal/ct;->b:Lcom/tapjoy/internal/ct;

    new-instance v3, Lcom/tapjoy/internal/ct;

    const-string v5, "LOADED"

    const/4 v6, 0x2

    const-string v7, "loaded"

    invoke-direct {v3, v5, v6, v7}, Lcom/tapjoy/internal/ct;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/tapjoy/internal/ct;->c:Lcom/tapjoy/internal/ct;

    new-instance v5, Lcom/tapjoy/internal/ct;

    const-string v7, "BEGIN_TO_RENDER"

    const/4 v8, 0x3

    const-string v9, "beginToRender"

    invoke-direct {v5, v7, v8, v9}, Lcom/tapjoy/internal/ct;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/tapjoy/internal/ct;->d:Lcom/tapjoy/internal/ct;

    new-instance v7, Lcom/tapjoy/internal/ct;

    const-string v9, "ONE_PIXEL"

    const/4 v10, 0x4

    const-string v11, "onePixel"

    invoke-direct {v7, v9, v10, v11}, Lcom/tapjoy/internal/ct;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/tapjoy/internal/ct;->e:Lcom/tapjoy/internal/ct;

    new-instance v9, Lcom/tapjoy/internal/ct;

    const-string v11, "VIEWABLE"

    const/4 v12, 0x5

    const-string v13, "viewable"

    invoke-direct {v9, v11, v12, v13}, Lcom/tapjoy/internal/ct;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/tapjoy/internal/ct;->f:Lcom/tapjoy/internal/ct;

    new-instance v11, Lcom/tapjoy/internal/ct;

    const-string v13, "AUDIBLE"

    const/4 v14, 0x6

    const-string v15, "audible"

    invoke-direct {v11, v13, v14, v15}, Lcom/tapjoy/internal/ct;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/tapjoy/internal/ct;->g:Lcom/tapjoy/internal/ct;

    new-instance v13, Lcom/tapjoy/internal/ct;

    const-string v15, "OTHER"

    const/4 v14, 0x7

    const-string v12, "other"

    invoke-direct {v13, v15, v14, v12}, Lcom/tapjoy/internal/ct;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/tapjoy/internal/ct;->h:Lcom/tapjoy/internal/ct;

    const/16 v12, 0x8

    new-array v12, v12, [Lcom/tapjoy/internal/ct;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    aput-object v7, v12, v10

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    aput-object v13, v12, v14

    sput-object v12, Lcom/tapjoy/internal/ct;->j:[Lcom/tapjoy/internal/ct;

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

    iput-object p3, p0, Lcom/tapjoy/internal/ct;->i:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/internal/ct;
    .registers 2

    const-class v0, Lcom/tapjoy/internal/ct;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/internal/ct;

    return-object p0
.end method

.method public static values()[Lcom/tapjoy/internal/ct;
    .registers 1

    sget-object v0, Lcom/tapjoy/internal/ct;->j:[Lcom/tapjoy/internal/ct;

    invoke-virtual {v0}, [Lcom/tapjoy/internal/ct;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/internal/ct;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/internal/ct;->i:Ljava/lang/String;

    return-object v0
.end method
