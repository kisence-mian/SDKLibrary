.class Lcom/ssjj/fnsdk/core/ae;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/ad;

.field private final synthetic b:Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/ad;Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/ae;->a:Lcom/ssjj/fnsdk/core/ad;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/ae;->b:Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/ae;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/ae;->b:Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;

    if-eqz p1, :cond_9

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/ae;->c:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;->onFailed(Ljava/lang/String;)V

    :cond_9
    return-void
.end method
