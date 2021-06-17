.class Landroidx/test/espresso/IdlingPolicy$Builder;
.super Ljava/lang/Object;
.source "IdlingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/IdlingPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private errorHandler:Landroidx/test/espresso/IdlingPolicy$ResponseAction;

.field private idleTimeout:J

.field private unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/test/espresso/IdlingPolicy$Builder;->idleTimeout:J

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/test/espresso/IdlingPolicy$Builder;->unit:Ljava/util/concurrent/TimeUnit;

    .line 85
    iput-object v0, p0, Landroidx/test/espresso/IdlingPolicy$Builder;->errorHandler:Landroidx/test/espresso/IdlingPolicy$ResponseAction;

    .line 87
    return-void
.end method

.method private constructor <init>(Landroidx/test/espresso/IdlingPolicy;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "copy"
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/test/espresso/IdlingPolicy$Builder;->idleTimeout:J

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/test/espresso/IdlingPolicy$Builder;->unit:Ljava/util/concurrent/TimeUnit;

    .line 85
    iput-object v0, p0, Landroidx/test/espresso/IdlingPolicy$Builder;->errorHandler:Landroidx/test/espresso/IdlingPolicy$ResponseAction;

    .line 90
    # getter for: Landroidx/test/espresso/IdlingPolicy;->idleTimeout:J
    invoke-static {p1}, Landroidx/test/espresso/IdlingPolicy;->access$400(Landroidx/test/espresso/IdlingPolicy;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/test/espresso/IdlingPolicy$Builder;->idleTimeout:J

    .line 91
    # getter for: Landroidx/test/espresso/IdlingPolicy;->unit:Ljava/util/concurrent/TimeUnit;
    invoke-static {p1}, Landroidx/test/espresso/IdlingPolicy;->access$500(Landroidx/test/espresso/IdlingPolicy;)Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/IdlingPolicy$Builder;->unit:Ljava/util/concurrent/TimeUnit;

    .line 92
    # getter for: Landroidx/test/espresso/IdlingPolicy;->errorHandler:Landroidx/test/espresso/IdlingPolicy$ResponseAction;
    invoke-static {p1}, Landroidx/test/espresso/IdlingPolicy;->access$600(Landroidx/test/espresso/IdlingPolicy;)Landroidx/test/espresso/IdlingPolicy$ResponseAction;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/espresso/IdlingPolicy$Builder;->errorHandler:Landroidx/test/espresso/IdlingPolicy$ResponseAction;

    .line 93
    return-void
.end method

.method synthetic constructor <init>(Landroidx/test/espresso/IdlingPolicy;Landroidx/test/espresso/IdlingPolicy$1;)V
    .registers 3

    .line 82
    invoke-direct {p0, p1}, Landroidx/test/espresso/IdlingPolicy$Builder;-><init>(Landroidx/test/espresso/IdlingPolicy;)V

    return-void
.end method

.method static synthetic access$100(Landroidx/test/espresso/IdlingPolicy$Builder;)J
    .registers 3

    .line 82
    iget-wide v0, p0, Landroidx/test/espresso/IdlingPolicy$Builder;->idleTimeout:J

    return-wide v0
.end method

.method static synthetic access$200(Landroidx/test/espresso/IdlingPolicy$Builder;)Ljava/util/concurrent/TimeUnit;
    .registers 1

    .line 82
    iget-object p0, p0, Landroidx/test/espresso/IdlingPolicy$Builder;->unit:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method

.method static synthetic access$300(Landroidx/test/espresso/IdlingPolicy$Builder;)Landroidx/test/espresso/IdlingPolicy$ResponseAction;
    .registers 1

    .line 82
    iget-object p0, p0, Landroidx/test/espresso/IdlingPolicy$Builder;->errorHandler:Landroidx/test/espresso/IdlingPolicy$ResponseAction;

    return-object p0
.end method


# virtual methods
.method public build()Landroidx/test/espresso/IdlingPolicy;
    .registers 3

    .line 96
    new-instance v0, Landroidx/test/espresso/IdlingPolicy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/test/espresso/IdlingPolicy;-><init>(Landroidx/test/espresso/IdlingPolicy$Builder;Landroidx/test/espresso/IdlingPolicy$1;)V

    return-object v0
.end method

.method public logWarning()Landroidx/test/espresso/IdlingPolicy$Builder;
    .registers 2

    .line 121
    sget-object v0, Landroidx/test/espresso/IdlingPolicy$ResponseAction;->LOG_ERROR:Landroidx/test/espresso/IdlingPolicy$ResponseAction;

    iput-object v0, p0, Landroidx/test/espresso/IdlingPolicy$Builder;->errorHandler:Landroidx/test/espresso/IdlingPolicy$ResponseAction;

    .line 122
    return-object p0
.end method

.method public throwAppNotIdleException()Landroidx/test/espresso/IdlingPolicy$Builder;
    .registers 2

    .line 111
    sget-object v0, Landroidx/test/espresso/IdlingPolicy$ResponseAction;->THROW_APP_NOT_IDLE:Landroidx/test/espresso/IdlingPolicy$ResponseAction;

    iput-object v0, p0, Landroidx/test/espresso/IdlingPolicy$Builder;->errorHandler:Landroidx/test/espresso/IdlingPolicy$ResponseAction;

    .line 112
    return-object p0
.end method

.method public throwIdlingResourceTimeoutException()Landroidx/test/espresso/IdlingPolicy$Builder;
    .registers 2

    .line 116
    sget-object v0, Landroidx/test/espresso/IdlingPolicy$ResponseAction;->THROW_IDLE_TIMEOUT:Landroidx/test/espresso/IdlingPolicy$ResponseAction;

    iput-object v0, p0, Landroidx/test/espresso/IdlingPolicy$Builder;->errorHandler:Landroidx/test/espresso/IdlingPolicy$ResponseAction;

    .line 117
    return-object p0
.end method

.method public withIdlingTimeout(J)Landroidx/test/espresso/IdlingPolicy$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idleTimeout"
        }
    .end annotation

    .line 101
    iput-wide p1, p0, Landroidx/test/espresso/IdlingPolicy$Builder;->idleTimeout:J

    .line 102
    return-object p0
.end method

.method public withIdlingTimeoutUnit(Ljava/util/concurrent/TimeUnit;)Landroidx/test/espresso/IdlingPolicy$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unit"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Landroidx/test/espresso/IdlingPolicy$Builder;->unit:Ljava/util/concurrent/TimeUnit;

    .line 107
    return-object p0
.end method
