.class Lcom/ssjj/fnsdk/core/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/SsjjFNListener;


# instance fields
.field private final synthetic a:[Ljava/lang/String;

.field private final synthetic b:I

.field private final synthetic c:[I

.field private final synthetic d:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>([Ljava/lang/String;I[ILjava/util/concurrent/CountDownLatch;)V
    .registers 5

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/a;->a:[Ljava/lang/String;

    iput p2, p0, Lcom/ssjj/fnsdk/core/a;->b:I

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/a;->c:[I

    iput-object p4, p0, Lcom/ssjj/fnsdk/core/a;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    .registers 4

    if-nez p1, :cond_14

    const-string p1, "savePath"

    invoke-virtual {p3, p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/a;->a:[Ljava/lang/String;

    iget p3, p0, Lcom/ssjj/fnsdk/core/a;->b:I

    aput-object p1, p2, p3

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/a;->c:[I

    const/4 p2, 0x1

    aput p2, p1, p3

    goto :goto_21

    :cond_14
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/a;->a:[Ljava/lang/String;

    iget p2, p0, Lcom/ssjj/fnsdk/core/a;->b:I

    const-string p3, ""

    aput-object p3, p1, p2

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/a;->c:[I

    const/4 p3, 0x0

    aput p3, p1, p2

    :goto_21
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/a;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
