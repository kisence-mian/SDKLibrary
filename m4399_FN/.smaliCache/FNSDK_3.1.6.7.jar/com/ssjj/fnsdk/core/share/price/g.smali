.class Lcom/ssjj/fnsdk/core/share/price/g;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;

.field private final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field private final synthetic c:Lcom/ssjj/fnsdk/core/SsjjFNListener;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;Ljava/util/concurrent/CountDownLatch;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 4

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/price/g;->a:Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/share/price/g;->b:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/share/price/g;->c:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    :try_start_0
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/price/g;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_a
    const/4 p1, 0x0

    return-object p1
.end method

.method protected a(Ljava/lang/String;)V
    .registers 5

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/price/g;->c:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz p1, :cond_b

    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_b
    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/share/price/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/share/price/g;->a(Ljava/lang/String;)V

    return-void
.end method
