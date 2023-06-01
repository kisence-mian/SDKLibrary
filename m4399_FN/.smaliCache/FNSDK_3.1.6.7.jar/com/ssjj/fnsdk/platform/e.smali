.class Lcom/ssjj/fnsdk/platform/e;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/platform/d;

.field private final synthetic b:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/platform/d;Landroid/app/AlertDialog;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/platform/e;->a:Lcom/ssjj/fnsdk/platform/d;

    iput-object p2, p0, Lcom/ssjj/fnsdk/platform/e;->b:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/ssjj/fnsdk/platform/e;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/ssjj/fnsdk/platform/e;->b:Landroid/app/AlertDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u521d\u59cb\u5316\u63a5\u53e3 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ssjj/fnsdk/platform/e;->a:Lcom/ssjj/fnsdk/platform/d;

    iget v2, v2, Lcom/ssjj/fnsdk/platform/d;->a:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u79d2\u540e\u81ea\u52a8 \u521d\u59cb\u5316\u6210\u529f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    :cond_28
    return-void
.end method
