.class Lcom/ssjj/fnsdk/core/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/FNUpdateManager;

.field private final synthetic b:Lcom/ssjj/fnsdk/core/FNUpdateManager$a;

.field private final synthetic c:Landroid/app/Activity;

.field private final synthetic d:Lcom/ssjj/fnsdk/core/SsjjFNListener;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/FNUpdateManager;Lcom/ssjj/fnsdk/core/FNUpdateManager$a;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 5

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/g;->a:Lcom/ssjj/fnsdk/core/FNUpdateManager;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/g;->b:Lcom/ssjj/fnsdk/core/FNUpdateManager$a;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/g;->c:Landroid/app/Activity;

    iput-object p4, p0, Lcom/ssjj/fnsdk/core/g;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/g;->b:Lcom/ssjj/fnsdk/core/FNUpdateManager$a;

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->b()Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/g;->a:Lcom/ssjj/fnsdk/core/FNUpdateManager;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/g;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/g;->b:Lcom/ssjj/fnsdk/core/FNUpdateManager$a;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/g;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-static {p1, v0, v1, v2}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->b(Lcom/ssjj/fnsdk/core/FNUpdateManager;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/FNUpdateManager$a;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    goto :goto_28

    :cond_14
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/g;->a:Lcom/ssjj/fnsdk/core/FNUpdateManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->c(Lcom/ssjj/fnsdk/core/FNUpdateManager;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/g;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz p1, :cond_28

    sget v0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->CODE_UPDATE_CANCEL:I

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/g;->b:Lcom/ssjj/fnsdk/core/FNUpdateManager$a;

    iget-object v1, v1, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->a:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    const-string v2, ""

    invoke-interface {p1, v0, v2, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_28
    :goto_28
    return-void
.end method
