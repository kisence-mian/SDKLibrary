.class Lcom/sigmob/sdk/mraid/l;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Lcom/sigmob/sdk/mraid/m;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/l;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method varargs a([Landroid/view/View;)Lcom/sigmob/sdk/mraid/m;
    .registers 5

    new-instance v0, Lcom/sigmob/sdk/mraid/m;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/l;->a:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/sigmob/sdk/mraid/m;-><init>(Landroid/os/Handler;[Landroid/view/View;Lcom/sigmob/sdk/mraid/h$1;)V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/l;->b:Lcom/sigmob/sdk/mraid/m;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/l;->b:Lcom/sigmob/sdk/mraid/m;

    return-object v0
.end method

.method a()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/l;->b:Lcom/sigmob/sdk/mraid/m;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/l;->b:Lcom/sigmob/sdk/mraid/m;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/m;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/l;->b:Lcom/sigmob/sdk/mraid/m;

    :cond_c
    return-void
.end method
