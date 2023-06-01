.class Lcom/ssjj/fnsdk/core/b;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Ljava/util/concurrent/CountDownLatch;

.field private final synthetic b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

.field private final synthetic c:I

.field private final synthetic d:[I

.field private final synthetic e:Ljava/util/List;

.field private final synthetic f:[Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountDownLatch;Lcom/ssjj/fnsdk/core/SsjjFNListener;I[ILjava/util/List;[Ljava/lang/String;)V
    .registers 7

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/b;->a:Ljava/util/concurrent/CountDownLatch;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/b;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    iput p3, p0, Lcom/ssjj/fnsdk/core/b;->c:I

    iput-object p4, p0, Lcom/ssjj/fnsdk/core/b;->d:[I

    iput-object p5, p0, Lcom/ssjj/fnsdk/core/b;->e:Ljava/util/List;

    iput-object p6, p0, Lcom/ssjj/fnsdk/core/b;->f:[Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 2

    :try_start_0
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/b;->a:Ljava/util/concurrent/CountDownLatch;

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

.method protected a(Ljava/lang/Void;)V
    .registers 7

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/b;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz p1, :cond_73

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "download fail:["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_12
    iget v4, p0, Lcom/ssjj/fnsdk/core/b;->c:I

    if-lt v2, v4, :cond_4b

    const-string v2, "]"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    if-eqz v3, :cond_41

    const/4 p1, 0x0

    :goto_23
    iget v1, p0, Lcom/ssjj/fnsdk/core/b;->c:I

    if-lt p1, v1, :cond_2f

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/b;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    const-string v1, ""

    invoke-interface {p1, v0, v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    goto :goto_73

    :cond_2f
    iget-object v1, p0, Lcom/ssjj/fnsdk/core/b;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/b;->f:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v1, v3}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_23

    :cond_41
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/b;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    goto :goto_73

    :cond_4b
    iget-object v4, p0, Lcom/ssjj/fnsdk/core/b;->d:[I

    aget v4, v4, v2

    if-nez v4, :cond_70

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/b;->e:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :cond_70
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_73
    :goto_73
    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/b;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/b;->a(Ljava/lang/Void;)V

    return-void
.end method
