.class Lcom/ssjj/fnsdk/core/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/x;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/x;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/y;->a:Lcom/ssjj/fnsdk/core/x;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/y;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/y;->a:Lcom/ssjj/fnsdk/core/x;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/x;->a(Lcom/ssjj/fnsdk/core/x;)Lcom/ssjj/fnsdk/core/s;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/s;->a(Lcom/ssjj/fnsdk/core/s;)Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

    move-result-object p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/y;->a:Lcom/ssjj/fnsdk/core/x;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/x;->a(Lcom/ssjj/fnsdk/core/x;)Lcom/ssjj/fnsdk/core/s;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/s;->a(Lcom/ssjj/fnsdk/core/s;)Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

    move-result-object p1

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/y;->b:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;->onLoginFailed(Ljava/lang/String;)V

    :cond_1b
    return-void
.end method
