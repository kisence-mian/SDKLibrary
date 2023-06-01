.class Lcom/ssjj/fnsdk/lib/impl/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/lib/impl/p;

.field private final synthetic b:Lcom/ssjj/fnsdk/lib/sdk/FNParam;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/lib/impl/p;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/lib/impl/q;->a:Lcom/ssjj/fnsdk/lib/impl/p;

    iput-object p2, p0, Lcom/ssjj/fnsdk/lib/impl/q;->b:Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/q;->b:Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    invoke-static {v0}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->getContext(Lcom/ssjj/fnsdk/lib/sdk/FNParam;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/lib/impl/q;->b:Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    const-string v2, "content"

    invoke-virtual {v1, v2}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/ssjj/fnsdk/lib/impl/q;->b:Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    const-string v2, "text"

    invoke-virtual {v1, v2}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_18
    if-eqz v0, :cond_2f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2f
    return-void
.end method
