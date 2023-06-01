.class Lcom/ssjj/fnsdk/core/update/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/update/ViewUpdate;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/update/ViewUpdate;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/ab;->a:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 2

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/ab;->a:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->b(Lcom/ssjj/fnsdk/core/update/ViewUpdate;)Lcom/ssjj/fnsdk/core/update/ViewUpdate$ViewCallBack;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/ab;->a:Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->b(Lcom/ssjj/fnsdk/core/update/ViewUpdate;)Lcom/ssjj/fnsdk/core/update/ViewUpdate$ViewCallBack;

    move-result-object p1

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/update/ViewUpdate$ViewCallBack;->onLongClickSize()V

    :cond_11
    const/4 p1, 0x1

    return p1
.end method
