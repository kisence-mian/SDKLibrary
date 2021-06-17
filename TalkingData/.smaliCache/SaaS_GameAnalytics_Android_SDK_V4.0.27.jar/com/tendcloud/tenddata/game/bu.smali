.class Lcom/tendcloud/tenddata/game/bu;
.super Ljava/lang/ThreadLocal;
.source "td"


# instance fields
.field final synthetic this$0:Lcom/tendcloud/tenddata/game/bt;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/bt;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/bu;->this$0:Lcom/tendcloud/tenddata/game/bt;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .line 45
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/bu;->initialValue()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .registers 2

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    return-object v0
.end method
