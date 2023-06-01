.class Lcom/ssjj/fnsdk/core/by;
.super Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->b()V

    return-void
.end method
