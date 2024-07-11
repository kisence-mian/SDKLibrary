.class final Landroidx/test/espresso/base/RootViewPicker$NoActiveRootsBackoff;
.super Landroidx/test/espresso/base/RootViewPicker$BackOff;
.source "RootViewPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/base/RootViewPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NoActiveRootsBackoff"
.end annotation


# static fields
.field private static final NO_ACTIVE_ROOTS_BACKOFF:Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 320
    nop

    .line 321
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v0, 0x1e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v0, 0x32

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v0, 0x50

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v0, 0x82

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v0, 0xd2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v0, 0x154

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object v1, v2

    invoke-static/range {v1 .. v9}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/base/RootViewPicker$NoActiveRootsBackoff;->NO_ACTIVE_ROOTS_BACKOFF:Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    .line 320
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 324
    sget-object v0, Landroidx/test/espresso/base/RootViewPicker$NoActiveRootsBackoff;->NO_ACTIVE_ROOTS_BACKOFF:Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v0, v1}, Landroidx/test/espresso/base/RootViewPicker$BackOff;-><init>(Ljava/util/List;Ljava/util/concurrent/TimeUnit;)V

    .line 325
    return-void
.end method


# virtual methods
.method public getNextBackoffInMillis()J
    .registers 7

    .line 329
    invoke-virtual {p0}, Landroidx/test/espresso/base/RootViewPicker$NoActiveRootsBackoff;->getBackoffForAttempt()J

    move-result-wide v0

    .line 331
    # getter for: Landroidx/test/espresso/base/RootViewPicker;->TAG:Ljava/lang/String;
    invoke-static {}, Landroidx/test/espresso/base/RootViewPicker;->access$200()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 330
    const-string v4, "No active roots available - waiting: %sms for one to appear."

    invoke-static {v2, v4, v3}, Landroidx/test/internal/util/LogUtil;->logDebugWithProcess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    return-wide v0
.end method
