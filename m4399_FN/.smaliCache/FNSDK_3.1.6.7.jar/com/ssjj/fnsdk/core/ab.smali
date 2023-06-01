.class Lcom/ssjj/fnsdk/core/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/SsjjFNListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/s;

.field private final synthetic b:Landroid/app/Activity;

.field private final synthetic c:Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;

.field private final synthetic d:Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/s;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;)V
    .registers 5

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/ab;->a:Lcom/ssjj/fnsdk/core/s;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/ab;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/ab;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;

    iput-object p4, p0, Lcom/ssjj/fnsdk/core/ab;->d:Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    .registers 5

    const/4 p2, 0x1

    if-ne p1, p2, :cond_f

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/ab;->a:Lcom/ssjj/fnsdk/core/s;

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/ab;->b:Landroid/app/Activity;

    iget-object p3, p0, Lcom/ssjj/fnsdk/core/ab;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/ab;->d:Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;

    invoke-static {p1, p2, p3, v0}, Lcom/ssjj/fnsdk/core/s;->a(Lcom/ssjj/fnsdk/core/s;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;)V

    goto :goto_1a

    :cond_f
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/ab;->a:Lcom/ssjj/fnsdk/core/s;

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/ab;->b:Landroid/app/Activity;

    iget-object p3, p0, Lcom/ssjj/fnsdk/core/ab;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/ab;->d:Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;

    invoke-static {p1, p2, p3, v0}, Lcom/ssjj/fnsdk/core/s;->b(Lcom/ssjj/fnsdk/core/s;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;)V

    :goto_1a
    return-void
.end method
