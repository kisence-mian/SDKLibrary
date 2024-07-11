.class Lcom/tendcloud/tenddata/game/cv;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Lcom/tendcloud/tenddata/game/bk$a;


# instance fields
.field final synthetic this$1:Lcom/tendcloud/tenddata/game/cu;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/cu;)V
    .registers 2

    .line 133
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cv;->this$1:Lcom/tendcloud/tenddata/game/cu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddTestDeviceEvent()V
    .registers 3

    .line 136
    sget-object v0, Lcom/tendcloud/tenddata/game/bn;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/tendcloud/tenddata/game/cw;

    invoke-direct {v1, p0}, Lcom/tendcloud/tenddata/game/cw;-><init>(Lcom/tendcloud/tenddata/game/cv;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 152
    return-void
.end method
