.class abstract enum Landroidx/test/espresso/core/internal/deps/guava/collect/Maps$EntryFunction;
.super Ljava/lang/Enum;
.source "Maps.java"

# interfaces
.implements Landroidx/test/espresso/core/internal/deps/guava/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "EntryFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/espresso/core/internal/deps/guava/collect/Maps$EntryFunction;",
        ">;",
        "Landroidx/test/espresso/core/internal/deps/guava/base/Function<",
        "Ljava/util/Map$Entry<",
        "**>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/espresso/core/internal/deps/guava/collect/Maps$EntryFunction;

.field public static final enum KEY:Landroidx/test/espresso/core/internal/deps/guava/collect/Maps$EntryFunction;

.field public static final enum VALUE:Landroidx/test/espresso/core/internal/deps/guava/collect/Maps$EntryFunction;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 86
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/collect/Maps$EntryFunction$1;

    const-string v1, "KEY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/core/internal/deps/guava/collect/Maps$EntryFunction$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/collect/Maps$EntryFunction;->KEY:Landroidx/test/espresso/core/internal/deps/guava/collect/Maps$EntryFunction;

    .line 93
    new-instance v1, Landroidx/test/espresso/core/internal/deps/guava/collect/Maps$EntryFunction$2;

    const-string v3, "VALUE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidx/test/espresso/core/internal/deps/guava/collect/Maps$EntryFunction$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/test/espresso/core/internal/deps/guava/collect/Maps$EntryFunction;->VALUE:Landroidx/test/espresso/core/internal/deps/guava/collect/Maps$EntryFunction;

    .line 85
    const/4 v3, 0x2

    new-array v3, v3, [Landroidx/test/espresso/core/internal/deps/guava/collect/Maps$EntryFunction;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Landroidx/test/espresso/core/internal/deps/guava/collect/Maps$EntryFunction;->$VALUES:[Landroidx/test/espresso/core/internal/deps/guava/collect/Maps$EntryFunction;

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

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILandroidx/test/espresso/core/internal/deps/guava/collect/Maps$1;)V
    .registers 4

    .line 85
    invoke-direct {p0, p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/collect/Maps$EntryFunction;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Landroidx/test/espresso/core/internal/deps/guava/collect/Maps$EntryFunction;
    .registers 1

    .line 85
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/collect/Maps$EntryFunction;->$VALUES:[Landroidx/test/espresso/core/internal/deps/guava/collect/Maps$EntryFunction;

    invoke-virtual {v0}, [Landroidx/test/espresso/core/internal/deps/guava/collect/Maps$EntryFunction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/espresso/core/internal/deps/guava/collect/Maps$EntryFunction;

    return-object v0
.end method
