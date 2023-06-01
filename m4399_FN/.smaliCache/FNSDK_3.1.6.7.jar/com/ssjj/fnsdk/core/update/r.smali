.class Lcom/ssjj/fnsdk/core/update/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr$a;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr$a;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/r;->a:Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr$a;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/update/r;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/r;->a:Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr$a;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr$a;->a(Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr$a;)Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr$PatchListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/r;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr$PatchListener;->onFailed(Ljava/lang/String;)V

    return-void
.end method
