.class Lcom/ssjj/fnsdk/core/cz/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Lcom/ssjj/fnsdk/core/SsjjFNParams;

.field private final synthetic d:Lcom/ssjj/fnsdk/core/SsjjFNListener;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 5

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/cz/a;->a:Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/cz/a;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/cz/a;->c:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    iput-object p4, p0, Lcom/ssjj/fnsdk/core/cz/a;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/cz/a;->a:Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/cz/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/cz/a;->c:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/cz/a;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->djPay0(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void
.end method
