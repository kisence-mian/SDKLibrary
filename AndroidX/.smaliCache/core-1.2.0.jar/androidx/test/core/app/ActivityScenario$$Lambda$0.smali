.class final synthetic Landroidx/test/core/app/ActivityScenario$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/test/internal/platform/ServiceLoaderWrapper$Factory;


# static fields
.field static final $instance:Landroidx/test/internal/platform/ServiceLoaderWrapper$Factory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/test/core/app/ActivityScenario$$Lambda$0;

    invoke-direct {v0}, Landroidx/test/core/app/ActivityScenario$$Lambda$0;-><init>()V

    sput-object v0, Landroidx/test/core/app/ActivityScenario$$Lambda$0;->$instance:Landroidx/test/internal/platform/ServiceLoaderWrapper$Factory;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Landroidx/test/core/app/ActivityScenario;->lambda$new$0$ActivityScenario()Landroidx/test/internal/platform/app/ActivityInvoker;

    move-result-object v0

    return-object v0
.end method
