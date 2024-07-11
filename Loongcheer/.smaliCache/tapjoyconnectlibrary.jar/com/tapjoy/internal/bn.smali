.class public final enum Lcom/tapjoy/internal/bn;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tapjoy/internal/bn;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tapjoy/internal/bn;

.field public static final enum b:Lcom/tapjoy/internal/bn;

.field public static final enum c:Lcom/tapjoy/internal/bn;

.field public static final enum d:Lcom/tapjoy/internal/bn;

.field public static final enum e:Lcom/tapjoy/internal/bn;

.field public static final enum f:Lcom/tapjoy/internal/bn;

.field public static final enum g:Lcom/tapjoy/internal/bn;

.field public static final enum h:Lcom/tapjoy/internal/bn;

.field public static final enum i:Lcom/tapjoy/internal/bn;

.field public static final enum j:Lcom/tapjoy/internal/bn;

.field private static final synthetic k:[Lcom/tapjoy/internal/bn;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 29
    new-instance v0, Lcom/tapjoy/internal/bn;

    const-string v1, "BEGIN_ARRAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/bn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/bn;->a:Lcom/tapjoy/internal/bn;

    .line 35
    new-instance v1, Lcom/tapjoy/internal/bn;

    const-string v3, "END_ARRAY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tapjoy/internal/bn;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tapjoy/internal/bn;->b:Lcom/tapjoy/internal/bn;

    .line 41
    new-instance v3, Lcom/tapjoy/internal/bn;

    const-string v5, "BEGIN_OBJECT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/tapjoy/internal/bn;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tapjoy/internal/bn;->c:Lcom/tapjoy/internal/bn;

    .line 47
    new-instance v5, Lcom/tapjoy/internal/bn;

    const-string v7, "END_OBJECT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/tapjoy/internal/bn;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/tapjoy/internal/bn;->d:Lcom/tapjoy/internal/bn;

    .line 54
    new-instance v7, Lcom/tapjoy/internal/bn;

    const-string v9, "NAME"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/tapjoy/internal/bn;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/tapjoy/internal/bn;->e:Lcom/tapjoy/internal/bn;

    .line 59
    new-instance v9, Lcom/tapjoy/internal/bn;

    const-string v11, "STRING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/tapjoy/internal/bn;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/tapjoy/internal/bn;->f:Lcom/tapjoy/internal/bn;

    .line 65
    new-instance v11, Lcom/tapjoy/internal/bn;

    const-string v13, "NUMBER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/tapjoy/internal/bn;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/tapjoy/internal/bn;->g:Lcom/tapjoy/internal/bn;

    .line 70
    new-instance v13, Lcom/tapjoy/internal/bn;

    const-string v15, "BOOLEAN"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/tapjoy/internal/bn;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/tapjoy/internal/bn;->h:Lcom/tapjoy/internal/bn;

    .line 75
    new-instance v15, Lcom/tapjoy/internal/bn;

    const-string v14, "NULL"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/tapjoy/internal/bn;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/tapjoy/internal/bn;->i:Lcom/tapjoy/internal/bn;

    .line 82
    new-instance v14, Lcom/tapjoy/internal/bn;

    const-string v12, "END_DOCUMENT"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/tapjoy/internal/bn;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/tapjoy/internal/bn;->j:Lcom/tapjoy/internal/bn;

    .line 23
    const/16 v12, 0xa

    new-array v12, v12, [Lcom/tapjoy/internal/bn;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    sput-object v12, Lcom/tapjoy/internal/bn;->k:[Lcom/tapjoy/internal/bn;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/internal/bn;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 23
    const-class v0, Lcom/tapjoy/internal/bn;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/bn;

    return-object v0
.end method

.method public static values()[Lcom/tapjoy/internal/bn;
    .registers 1

    .line 23
    sget-object v0, Lcom/tapjoy/internal/bn;->k:[Lcom/tapjoy/internal/bn;

    invoke-virtual {v0}, [Lcom/tapjoy/internal/bn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/internal/bn;

    return-object v0
.end method
