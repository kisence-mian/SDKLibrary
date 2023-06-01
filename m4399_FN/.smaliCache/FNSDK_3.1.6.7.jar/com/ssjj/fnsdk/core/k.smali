.class Lcom/ssjj/fnsdk/core/k;
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

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/k;->a:Lcom/ssjj/fnsdk/core/FNUpdateManager;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/k;->b:Lcom/ssjj/fnsdk/core/FNUpdateManager$a;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/k;->c:Landroid/app/Activity;

    iput-object p4, p0, Lcom/ssjj/fnsdk/core/k;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/k;->b:Lcom/ssjj/fnsdk/core/FNUpdateManager$a;

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->b()Z

    move-result p1

    if-eqz p1, :cond_4a

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/k;->b:Lcom/ssjj/fnsdk/core/FNUpdateManager$a;

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->f()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1a

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/k;->a:Lcom/ssjj/fnsdk/core/FNUpdateManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->d(Lcom/ssjj/fnsdk/core/FNUpdateManager;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    :cond_1a
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/k;->a:Lcom/ssjj/fnsdk/core/FNUpdateManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->e(Lcom/ssjj/fnsdk/core/FNUpdateManager;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {p1, v1}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->a(Lcom/ssjj/fnsdk/core/FNUpdateManager;I)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/k;->a:Lcom/ssjj/fnsdk/core/FNUpdateManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->e(Lcom/ssjj/fnsdk/core/FNUpdateManager;)I

    move-result p1

    if-lt p1, v0, :cond_3e

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/k;->a:Lcom/ssjj/fnsdk/core/FNUpdateManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->f(Lcom/ssjj/fnsdk/core/FNUpdateManager;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/k;->a:Lcom/ssjj/fnsdk/core/FNUpdateManager;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/k;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/k;->b:Lcom/ssjj/fnsdk/core/FNUpdateManager$a;

    iget-object v1, v1, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->a:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/k;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-virtual {p1, v0, v1, v2}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->showUpdateDialog(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    :cond_3e
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/k;->a:Lcom/ssjj/fnsdk/core/FNUpdateManager;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/k;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/k;->b:Lcom/ssjj/fnsdk/core/FNUpdateManager$a;

    iget-object v1, v1, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->a:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-virtual {p1, v0, v1}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->install(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    goto :goto_5c

    :cond_4a
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/k;->a:Lcom/ssjj/fnsdk/core/FNUpdateManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->f(Lcom/ssjj/fnsdk/core/FNUpdateManager;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/k;->a:Lcom/ssjj/fnsdk/core/FNUpdateManager;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/k;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/k;->b:Lcom/ssjj/fnsdk/core/FNUpdateManager$a;

    iget-object v1, v1, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->a:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/k;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-virtual {p1, v0, v1, v2}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->showUpdateDialog(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    :goto_5c
    return-void
.end method
