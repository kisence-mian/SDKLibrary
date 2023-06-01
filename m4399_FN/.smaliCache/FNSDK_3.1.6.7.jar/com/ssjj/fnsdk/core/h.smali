.class Lcom/ssjj/fnsdk/core/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/FNUpdateManager;

.field private final synthetic b:Lcom/ssjj/fnsdk/core/FNUpdateManager$a;

.field private final synthetic c:Lcom/ssjj/fnsdk/core/SsjjFNListener;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/FNUpdateManager;Lcom/ssjj/fnsdk/core/FNUpdateManager$a;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 4

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/h;->a:Lcom/ssjj/fnsdk/core/FNUpdateManager;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/h;->b:Lcom/ssjj/fnsdk/core/FNUpdateManager$a;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/h;->c:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 5

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/h;->b:Lcom/ssjj/fnsdk/core/FNUpdateManager$a;

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->b()Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "\u4e0b\u8f7d\u5b8c\u6210\uff0c\u4f46\u53d6\u6d88\u5b89\u88c5"

    goto :goto_d

    :cond_b
    const-string p1, "\u53d6\u6d88\u66f4\u65b0"

    :goto_d
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/h;->c:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz v0, :cond_1a

    sget v1, Lcom/ssjj/fnsdk/core/FNUpdateManager;->CODE_UPDATE_CANCEL:I

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/h;->b:Lcom/ssjj/fnsdk/core/FNUpdateManager$a;

    iget-object v2, v2, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->a:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-interface {v0, v1, p1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_1a
    return-void
.end method
