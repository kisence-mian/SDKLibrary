.class Lcom/ssjj/fnsdk/core/share/process/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/SsjjFNListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/share/process/ShareManager;

.field private final synthetic b:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/share/process/ShareManager;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/process/g;->a:Lcom/ssjj/fnsdk/core/share/process/ShareManager;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/share/process/g;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    .registers 4

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/process/g;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
