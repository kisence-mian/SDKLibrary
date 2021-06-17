.class final Landroidx/test/espresso/base/RootViewPicker$RootReadyBackoff;
.super Landroidx/test/espresso/base/RootViewPicker$BackOff;
.source "RootViewPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/base/RootViewPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RootReadyBackoff"
.end annotation


# static fields
.field private static final ROOT_READY_BACKOFF:Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;
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
    .registers 9

    .line 358
    nop

    .line 359
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v0, 0x19

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v0, 0x32

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v0, 0xc8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v0, 0x190

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v0, 0x320

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {v1 .. v8}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/base/RootViewPicker$RootReadyBackoff;->ROOT_READY_BACKOFF:Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    .line 358
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 362
    sget-object v0, Landroidx/test/espresso/base/RootViewPicker$RootReadyBackoff;->ROOT_READY_BACKOFF:Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v0, v1}, Landroidx/test/espresso/base/RootViewPicker$BackOff;-><init>(Ljava/util/List;Ljava/util/concurrent/TimeUnit;)V

    .line 363
    return-void
.end method


# virtual methods
.method public getNextBackoffInMillis()J
    .registers 8

    .line 367
    invoke-virtual {p0}, Landroidx/test/espresso/base/RootViewPicker$RootReadyBackoff;->getBackoffForAttempt()J

    move-result-wide v0

    .line 369
    # getter for: Landroidx/test/espresso/base/RootViewPicker;->TAG:Ljava/lang/String;
    invoke-static {}, Landroidx/test/espresso/base/RootViewPicker;->access$200()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 371
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 370
    const-string v5, "Root not ready - waiting: %sms for one to appear."

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 368
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    return-wide v0
.end method
