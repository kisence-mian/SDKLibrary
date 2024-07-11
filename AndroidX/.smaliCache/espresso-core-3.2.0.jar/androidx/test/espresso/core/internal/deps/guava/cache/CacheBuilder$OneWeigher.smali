.class final enum Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder$OneWeigher;
.super Ljava/lang/Enum;
.source "CacheBuilder.java"

# interfaces
.implements Landroidx/test/espresso/core/internal/deps/guava/cache/Weigher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "OneWeigher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder$OneWeigher;",
        ">;",
        "Landroidx/test/espresso/core/internal/deps/guava/cache/Weigher<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder$OneWeigher;

.field public static final enum INSTANCE:Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder$OneWeigher;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 209
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder$OneWeigher;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder$OneWeigher;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder$OneWeigher;->INSTANCE:Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder$OneWeigher;

    .line 208
    const/4 v1, 0x1

    new-array v1, v1, [Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder$OneWeigher;

    aput-object v0, v1, v2

    sput-object v1, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder$OneWeigher;->$VALUES:[Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder$OneWeigher;

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

    .line 208
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder$OneWeigher;
    .registers 1

    .line 208
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder$OneWeigher;->$VALUES:[Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder$OneWeigher;

    invoke-virtual {v0}, [Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder$OneWeigher;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder$OneWeigher;

    return-object v0
.end method


# virtual methods
.method public weigh(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 213
    const/4 p1, 0x1

    return p1
.end method
