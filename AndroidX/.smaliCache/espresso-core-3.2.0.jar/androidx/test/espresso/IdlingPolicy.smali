.class public final Landroidx/test/espresso/IdlingPolicy;
.super Ljava/lang/Object;
.source "IdlingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/IdlingPolicy$Builder;,
        Landroidx/test/espresso/IdlingPolicy$ResponseAction;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IdlingPolicy"


# instance fields
.field private final errorHandler:Landroidx/test/espresso/IdlingPolicy$ResponseAction;

.field private final idleTimeout:J

.field private final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method private constructor <init>(Landroidx/test/espresso/IdlingPolicy$Builder;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    # getter for: Landroidx/test/espresso/IdlingPolicy$Builder;->idleTimeout:J
    invoke-static {p1}, Landroidx/test/espresso/IdlingPolicy$Builder;->access$100(Landroidx/test/espresso/IdlingPolicy$Builder;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkArgument(Z)V

    .line 77
    # getter for: Landroidx/test/espresso/IdlingPolicy$Builder;->idleTimeout:J
    invoke-static {p1}, Landroidx/test/espresso/IdlingPolicy$Builder;->access$100(Landroidx/test/espresso/IdlingPolicy$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/test/espresso/IdlingPolicy;->idleTimeout:J

    .line 78
    # getter for: Landroidx/test/espresso/IdlingPolicy$Builder;->unit:Ljava/util/concurrent/TimeUnit;
    invoke-static {p1}, Landroidx/test/espresso/IdlingPolicy$Builder;->access$200(Landroidx/test/espresso/IdlingPolicy$Builder;)Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Landroidx/test/espresso/IdlingPolicy;->unit:Ljava/util/concurrent/TimeUnit;

    .line 79
    # getter for: Landroidx/test/espresso/IdlingPolicy$Builder;->errorHandler:Landroidx/test/espresso/IdlingPolicy$ResponseAction;
    invoke-static {p1}, Landroidx/test/espresso/IdlingPolicy$Builder;->access$300(Landroidx/test/espresso/IdlingPolicy$Builder;)Landroidx/test/espresso/IdlingPolicy$ResponseAction;

    move-result-object p1

    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/IdlingPolicy$ResponseAction;

    iput-object p1, p0, Landroidx/test/espresso/IdlingPolicy;->errorHandler:Landroidx/test/espresso/IdlingPolicy$ResponseAction;

    .line 80
    return-void
.end method

.method synthetic constructor <init>(Landroidx/test/espresso/IdlingPolicy$Builder;Landroidx/test/espresso/IdlingPolicy$1;)V
    .registers 3

    .line 27
    invoke-direct {p0, p1}, Landroidx/test/espresso/IdlingPolicy;-><init>(Landroidx/test/espresso/IdlingPolicy$Builder;)V

    return-void
.end method

.method static synthetic access$400(Landroidx/test/espresso/IdlingPolicy;)J
    .registers 3

    .line 27
    iget-wide v0, p0, Landroidx/test/espresso/IdlingPolicy;->idleTimeout:J

    return-wide v0
.end method

.method static synthetic access$500(Landroidx/test/espresso/IdlingPolicy;)Ljava/util/concurrent/TimeUnit;
    .registers 1

    .line 27
    iget-object p0, p0, Landroidx/test/espresso/IdlingPolicy;->unit:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method

.method static synthetic access$600(Landroidx/test/espresso/IdlingPolicy;)Landroidx/test/espresso/IdlingPolicy$ResponseAction;
    .registers 1

    .line 27
    iget-object p0, p0, Landroidx/test/espresso/IdlingPolicy;->errorHandler:Landroidx/test/espresso/IdlingPolicy$ResponseAction;

    return-object p0
.end method


# virtual methods
.method public getIdleTimeout()J
    .registers 3

    .line 42
    iget-wide v0, p0, Landroidx/test/espresso/IdlingPolicy;->idleTimeout:J

    return-wide v0
.end method

.method public getIdleTimeoutUnit()Ljava/util/concurrent/TimeUnit;
    .registers 2

    .line 47
    iget-object v0, p0, Landroidx/test/espresso/IdlingPolicy;->unit:Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method

.method public handleTimeout(Ljava/util/List;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "busyResources",
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 57
    sget-object v0, Landroidx/test/espresso/IdlingPolicy$1;->$SwitchMap$androidx$test$espresso$IdlingPolicy$ResponseAction:[I

    iget-object v1, p0, Landroidx/test/espresso/IdlingPolicy;->errorHandler:Landroidx/test/espresso/IdlingPolicy$ResponseAction;

    invoke-virtual {v1}, Landroidx/test/espresso/IdlingPolicy$ResponseAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_68

    .line 66
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x18

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "should never reach here."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 63
    :pswitch_34
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "These resources are not idle: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "IdlingPolicy"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    nop

    .line 68
    return-void

    .line 61
    :pswitch_5c
    new-instance p2, Landroidx/test/espresso/IdlingResourceTimeoutException;

    invoke-direct {p2, p1}, Landroidx/test/espresso/IdlingResourceTimeoutException;-><init>(Ljava/util/List;)V

    throw p2

    .line 59
    :pswitch_62
    invoke-static {p1, p2}, Landroidx/test/espresso/AppNotIdleException;->create(Ljava/util/List;Ljava/lang/String;)Landroidx/test/espresso/AppNotIdleException;

    move-result-object p1

    throw p1

    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_62
        :pswitch_5c
        :pswitch_34
    .end packed-switch
.end method

.method toBuilder()Landroidx/test/espresso/IdlingPolicy$Builder;
    .registers 3

    .line 72
    new-instance v0, Landroidx/test/espresso/IdlingPolicy$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/test/espresso/IdlingPolicy$Builder;-><init>(Landroidx/test/espresso/IdlingPolicy;Landroidx/test/espresso/IdlingPolicy$1;)V

    return-object v0
.end method
