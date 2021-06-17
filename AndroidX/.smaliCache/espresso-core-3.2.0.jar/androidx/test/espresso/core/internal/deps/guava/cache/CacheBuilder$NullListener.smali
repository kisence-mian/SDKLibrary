.class final enum Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder$NullListener;
.super Ljava/lang/Enum;
.source "CacheBuilder.java"

# interfaces
.implements Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "NullListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder$NullListener;",
        ">;",
        "Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalListener<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder$NullListener;

.field public static final enum INSTANCE:Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder$NullListener;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 202
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder$NullListener;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder$NullListener;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder$NullListener;->INSTANCE:Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder$NullListener;

    .line 201
    const/4 v1, 0x1

    new-array v1, v1, [Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder$NullListener;

    aput-object v0, v1, v2

    sput-object v1, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder$NullListener;->$VALUES:[Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder$NullListener;

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

    .line 201
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder$NullListener;
    .registers 1

    .line 201
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder$NullListener;->$VALUES:[Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder$NullListener;

    invoke-virtual {v0}, [Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder$NullListener;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder$NullListener;

    return-object v0
.end method


# virtual methods
.method public onRemoval(Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalNotification;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notification"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalNotification<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 205
    return-void
.end method
