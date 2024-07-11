.class final enum Landroidx/test/espresso/assertion/PositionAssertions$Position;
.super Ljava/lang/Enum;
.source "PositionAssertions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/assertion/PositionAssertions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Position"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/espresso/assertion/PositionAssertions$Position;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/espresso/assertion/PositionAssertions$Position;

.field public static final enum BOTTOM_ALIGNED:Landroidx/test/espresso/assertion/PositionAssertions$Position;

.field public static final enum COMPLETELY_ABOVE:Landroidx/test/espresso/assertion/PositionAssertions$Position;

.field public static final enum COMPLETELY_BELOW:Landroidx/test/espresso/assertion/PositionAssertions$Position;

.field public static final enum COMPLETELY_LEFT_OF:Landroidx/test/espresso/assertion/PositionAssertions$Position;

.field public static final enum COMPLETELY_RIGHT_OF:Landroidx/test/espresso/assertion/PositionAssertions$Position;

.field public static final enum LEFT_ALIGNED:Landroidx/test/espresso/assertion/PositionAssertions$Position;

.field public static final enum PARTIALLY_ABOVE:Landroidx/test/espresso/assertion/PositionAssertions$Position;

.field public static final enum PARTIALLY_BELOW:Landroidx/test/espresso/assertion/PositionAssertions$Position;

.field public static final enum PARTIALLY_LEFT_OF:Landroidx/test/espresso/assertion/PositionAssertions$Position;

.field public static final enum PARTIALLY_RIGHT_OF:Landroidx/test/espresso/assertion/PositionAssertions$Position;

.field public static final enum RIGHT_ALIGNED:Landroidx/test/espresso/assertion/PositionAssertions$Position;

.field public static final enum TOP_ALIGNED:Landroidx/test/espresso/assertion/PositionAssertions$Position;


# instance fields
.field private final positionValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 384
    new-instance v0, Landroidx/test/espresso/assertion/PositionAssertions$Position;

    const-string v1, "COMPLETELY_LEFT_OF"

    const/4 v2, 0x0

    const-string v3, "completely left of"

    invoke-direct {v0, v1, v2, v3}, Landroidx/test/espresso/assertion/PositionAssertions$Position;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroidx/test/espresso/assertion/PositionAssertions$Position;->COMPLETELY_LEFT_OF:Landroidx/test/espresso/assertion/PositionAssertions$Position;

    .line 385
    new-instance v1, Landroidx/test/espresso/assertion/PositionAssertions$Position;

    const-string v3, "COMPLETELY_RIGHT_OF"

    const/4 v4, 0x1

    const-string v5, "completely right of"

    invoke-direct {v1, v3, v4, v5}, Landroidx/test/espresso/assertion/PositionAssertions$Position;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Landroidx/test/espresso/assertion/PositionAssertions$Position;->COMPLETELY_RIGHT_OF:Landroidx/test/espresso/assertion/PositionAssertions$Position;

    .line 386
    new-instance v3, Landroidx/test/espresso/assertion/PositionAssertions$Position;

    const-string v5, "COMPLETELY_ABOVE"

    const/4 v6, 0x2

    const-string v7, "completely above"

    invoke-direct {v3, v5, v6, v7}, Landroidx/test/espresso/assertion/PositionAssertions$Position;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Landroidx/test/espresso/assertion/PositionAssertions$Position;->COMPLETELY_ABOVE:Landroidx/test/espresso/assertion/PositionAssertions$Position;

    .line 387
    new-instance v5, Landroidx/test/espresso/assertion/PositionAssertions$Position;

    const-string v7, "COMPLETELY_BELOW"

    const/4 v8, 0x3

    const-string v9, "completely below"

    invoke-direct {v5, v7, v8, v9}, Landroidx/test/espresso/assertion/PositionAssertions$Position;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Landroidx/test/espresso/assertion/PositionAssertions$Position;->COMPLETELY_BELOW:Landroidx/test/espresso/assertion/PositionAssertions$Position;

    .line 388
    new-instance v7, Landroidx/test/espresso/assertion/PositionAssertions$Position;

    const-string v9, "PARTIALLY_LEFT_OF"

    const/4 v10, 0x4

    const-string v11, "partially left of"

    invoke-direct {v7, v9, v10, v11}, Landroidx/test/espresso/assertion/PositionAssertions$Position;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Landroidx/test/espresso/assertion/PositionAssertions$Position;->PARTIALLY_LEFT_OF:Landroidx/test/espresso/assertion/PositionAssertions$Position;

    .line 389
    new-instance v9, Landroidx/test/espresso/assertion/PositionAssertions$Position;

    const-string v11, "PARTIALLY_RIGHT_OF"

    const/4 v12, 0x5

    const-string v13, "partially right of"

    invoke-direct {v9, v11, v12, v13}, Landroidx/test/espresso/assertion/PositionAssertions$Position;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Landroidx/test/espresso/assertion/PositionAssertions$Position;->PARTIALLY_RIGHT_OF:Landroidx/test/espresso/assertion/PositionAssertions$Position;

    .line 390
    new-instance v11, Landroidx/test/espresso/assertion/PositionAssertions$Position;

    const-string v13, "PARTIALLY_ABOVE"

    const/4 v14, 0x6

    const-string v15, "partially above"

    invoke-direct {v11, v13, v14, v15}, Landroidx/test/espresso/assertion/PositionAssertions$Position;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Landroidx/test/espresso/assertion/PositionAssertions$Position;->PARTIALLY_ABOVE:Landroidx/test/espresso/assertion/PositionAssertions$Position;

    .line 391
    new-instance v13, Landroidx/test/espresso/assertion/PositionAssertions$Position;

    const-string v15, "PARTIALLY_BELOW"

    const/4 v14, 0x7

    const-string v12, "partially below"

    invoke-direct {v13, v15, v14, v12}, Landroidx/test/espresso/assertion/PositionAssertions$Position;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Landroidx/test/espresso/assertion/PositionAssertions$Position;->PARTIALLY_BELOW:Landroidx/test/espresso/assertion/PositionAssertions$Position;

    .line 392
    new-instance v12, Landroidx/test/espresso/assertion/PositionAssertions$Position;

    const-string v15, "LEFT_ALIGNED"

    const/16 v14, 0x8

    const-string v10, "aligned left with"

    invoke-direct {v12, v15, v14, v10}, Landroidx/test/espresso/assertion/PositionAssertions$Position;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Landroidx/test/espresso/assertion/PositionAssertions$Position;->LEFT_ALIGNED:Landroidx/test/espresso/assertion/PositionAssertions$Position;

    .line 393
    new-instance v10, Landroidx/test/espresso/assertion/PositionAssertions$Position;

    const-string v15, "RIGHT_ALIGNED"

    const/16 v14, 0x9

    const-string v8, "aligned right with"

    invoke-direct {v10, v15, v14, v8}, Landroidx/test/espresso/assertion/PositionAssertions$Position;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Landroidx/test/espresso/assertion/PositionAssertions$Position;->RIGHT_ALIGNED:Landroidx/test/espresso/assertion/PositionAssertions$Position;

    .line 394
    new-instance v8, Landroidx/test/espresso/assertion/PositionAssertions$Position;

    const-string v15, "TOP_ALIGNED"

    const/16 v14, 0xa

    const-string v6, "aligned top with"

    invoke-direct {v8, v15, v14, v6}, Landroidx/test/espresso/assertion/PositionAssertions$Position;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Landroidx/test/espresso/assertion/PositionAssertions$Position;->TOP_ALIGNED:Landroidx/test/espresso/assertion/PositionAssertions$Position;

    .line 395
    new-instance v6, Landroidx/test/espresso/assertion/PositionAssertions$Position;

    const-string v15, "BOTTOM_ALIGNED"

    const/16 v14, 0xb

    const-string v4, "aligned bottom with"

    invoke-direct {v6, v15, v14, v4}, Landroidx/test/espresso/assertion/PositionAssertions$Position;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Landroidx/test/espresso/assertion/PositionAssertions$Position;->BOTTOM_ALIGNED:Landroidx/test/espresso/assertion/PositionAssertions$Position;

    .line 383
    const/16 v4, 0xc

    new-array v4, v4, [Landroidx/test/espresso/assertion/PositionAssertions$Position;

    aput-object v0, v4, v2

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    aput-object v6, v4, v14

    sput-object v4, Landroidx/test/espresso/assertion/PositionAssertions$Position;->$VALUES:[Landroidx/test/espresso/assertion/PositionAssertions$Position;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 399
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 400
    iput-object p3, p0, Landroidx/test/espresso/assertion/PositionAssertions$Position;->positionValue:Ljava/lang/String;

    .line 401
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/test/espresso/assertion/PositionAssertions$Position;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 383
    const-class v0, Landroidx/test/espresso/assertion/PositionAssertions$Position;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/test/espresso/assertion/PositionAssertions$Position;

    return-object p0
.end method

.method public static values()[Landroidx/test/espresso/assertion/PositionAssertions$Position;
    .registers 1

    .line 383
    sget-object v0, Landroidx/test/espresso/assertion/PositionAssertions$Position;->$VALUES:[Landroidx/test/espresso/assertion/PositionAssertions$Position;

    invoke-virtual {v0}, [Landroidx/test/espresso/assertion/PositionAssertions$Position;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/espresso/assertion/PositionAssertions$Position;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 405
    iget-object v0, p0, Landroidx/test/espresso/assertion/PositionAssertions$Position;->positionValue:Ljava/lang/String;

    return-object v0
.end method
