.class Lcom/ssjj/fnsdk/platform/d;
.super Ljava/lang/Thread;


# instance fields
.field a:I

.field final synthetic b:Lcom/ssjj/fnsdk/platform/a;

.field private final synthetic c:Landroid/app/Activity;

.field private final synthetic d:Landroid/app/AlertDialog;

.field private final synthetic e:Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/platform/a;Landroid/app/Activity;Landroid/app/AlertDialog;Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;)V
    .registers 5

    iput-object p1, p0, Lcom/ssjj/fnsdk/platform/d;->b:Lcom/ssjj/fnsdk/platform/a;

    iput-object p2, p0, Lcom/ssjj/fnsdk/platform/d;->c:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ssjj/fnsdk/platform/d;->d:Landroid/app/AlertDialog;

    iput-object p4, p0, Lcom/ssjj/fnsdk/platform/d;->e:Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x3

    iput p1, p0, Lcom/ssjj/fnsdk/platform/d;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    :goto_0
    iget v0, p0, Lcom/ssjj/fnsdk/platform/d;->a:I

    if-gtz v0, :cond_15

    iget-object v0, p0, Lcom/ssjj/fnsdk/platform/d;->c:Landroid/app/Activity;

    new-instance v1, Lcom/ssjj/fnsdk/platform/f;

    iget-object v2, p0, Lcom/ssjj/fnsdk/platform/d;->d:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/ssjj/fnsdk/platform/d;->c:Landroid/app/Activity;

    iget-object v4, p0, Lcom/ssjj/fnsdk/platform/d;->e:Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/ssjj/fnsdk/platform/f;-><init>(Lcom/ssjj/fnsdk/platform/d;Landroid/app/AlertDialog;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_15
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ssjj/fnsdk/platform/d;->a:I

    iget-object v0, p0, Lcom/ssjj/fnsdk/platform/d;->c:Landroid/app/Activity;

    new-instance v1, Lcom/ssjj/fnsdk/platform/e;

    iget-object v2, p0, Lcom/ssjj/fnsdk/platform/d;->d:Landroid/app/AlertDialog;

    invoke-direct {v1, p0, v2}, Lcom/ssjj/fnsdk/platform/e;-><init>(Lcom/ssjj/fnsdk/platform/d;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x3e8

    :try_start_27
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_0

    :catch_2b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
