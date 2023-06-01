.class Lcom/ssjj/fnsdk/core/au;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)V
    .registers 4

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/au;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/au;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/au;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/au;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->d(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/au;->b:Ljava/lang/String;

    const-string v2, "GET"

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/au;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-static {v0, v1, v2, v3}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)Ljava/lang/String;
    :try_end_f
    .catch Lcom/ssjj/fnsdk/core/SsjjFNException; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNException;->printStackTrace()V

    :goto_14
    return-void
.end method
