.class public abstract enum Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;
.super Ljava/lang/Enum;
.source "RemovalCause.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;

.field public static final enum COLLECTED:Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;

.field public static final enum EXPIRED:Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;

.field public static final enum EXPLICIT:Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;

.field public static final enum REPLACED:Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;

.field public static final enum SIZE:Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 35
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause$1;

    const-string v1, "EXPLICIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;->EXPLICIT:Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;

    .line 48
    new-instance v1, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause$2;

    const-string v3, "REPLACED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;->REPLACED:Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;

    .line 60
    new-instance v3, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause$3;

    const-string v5, "COLLECTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;->COLLECTED:Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;

    .line 71
    new-instance v5, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause$4;

    const-string v7, "EXPIRED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;->EXPIRED:Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;

    .line 82
    new-instance v7, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause$5;

    const-string v9, "SIZE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause$5;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;->SIZE:Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;

    .line 28
    const/4 v9, 0x5

    new-array v9, v9, [Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;->$VALUES:[Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILandroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause$1;)V
    .registers 4

    .line 29
    invoke-direct {p0, p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;
    .registers 1

    .line 28
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;->$VALUES:[Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;

    invoke-virtual {v0}, [Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;

    return-object v0
.end method


# virtual methods
.method abstract wasEvicted()Z
.end method
