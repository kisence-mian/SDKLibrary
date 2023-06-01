.class Lcom/ssjj/fnsdk/core/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/s;

.field private final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/s;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/z;->a:Lcom/ssjj/fnsdk/core/s;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/z;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/z;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Landroid/app/Activity;)V

    return-void
.end method
