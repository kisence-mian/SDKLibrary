.class Lcom/ssjj/fnsdk/core/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/FNUpdateManager;

.field private final synthetic b:Lcom/ssjj/fnsdk/core/FNUpdateManager$a;

.field private final synthetic c:Landroid/app/Activity;

.field private final synthetic d:Lcom/ssjj/fnsdk/core/SsjjFNListener;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/FNUpdateManager;Lcom/ssjj/fnsdk/core/FNUpdateManager$a;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 5

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/i;->a:Lcom/ssjj/fnsdk/core/FNUpdateManager;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/i;->b:Lcom/ssjj/fnsdk/core/FNUpdateManager$a;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/i;->c:Landroid/app/Activity;

    iput-object p4, p0, Lcom/ssjj/fnsdk/core/i;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/i;->b:Lcom/ssjj/fnsdk/core/FNUpdateManager$a;

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->a()V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/i;->a:Lcom/ssjj/fnsdk/core/FNUpdateManager;

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/i;->c:Landroid/app/Activity;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/i;->b:Lcom/ssjj/fnsdk/core/FNUpdateManager$a;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/i;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-static {p1, p2, v0, v1}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->a(Lcom/ssjj/fnsdk/core/FNUpdateManager;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/FNUpdateManager$a;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void
.end method
