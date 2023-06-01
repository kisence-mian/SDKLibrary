.class Lcom/ssjj/fnsdk/core/share/page/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/page/j;->a:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/page/j;->a:Lcom/ssjj/fnsdk/core/share/page/SelectTextView;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/share/page/SelectTextView;->l(Lcom/ssjj/fnsdk/core/share/page/SelectTextView;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method
