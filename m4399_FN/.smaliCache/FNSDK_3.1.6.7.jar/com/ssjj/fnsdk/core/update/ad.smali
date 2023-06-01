.class Lcom/ssjj/fnsdk/core/update/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/update/ViewUpdateDetail;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/update/ViewUpdateDetail;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/ad;->a:Lcom/ssjj/fnsdk/core/update/ViewUpdateDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/ad;->a:Lcom/ssjj/fnsdk/core/update/ViewUpdateDetail;

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/update/ViewUpdateDetail;->a()V

    return-void
.end method
