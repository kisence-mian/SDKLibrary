.class Lcom/sigmob/sdk/mraid/m;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field private final b:[Landroid/view/View;

.field private final c:Landroid/os/Handler;

.field private d:Ljava/lang/Runnable;

.field private final e:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Landroid/os/Handler;[Landroid/view/View;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sigmob/sdk/mraid/m$1;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/mraid/m$1;-><init>(Lcom/sigmob/sdk/mraid/m;)V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/m;->e:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/m;->c:Landroid/os/Handler;

    iput-object p2, p0, Lcom/sigmob/sdk/mraid/m;->b:[Landroid/view/View;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Handler;[Landroid/view/View;Lcom/sigmob/sdk/mraid/h$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/mraid/m;-><init>(Landroid/os/Handler;[Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/mraid/m;)[Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/m;->b:[Landroid/view/View;

    return-object v0
.end method

.method private b()V
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/mraid/m;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sigmob/sdk/mraid/m;->a:I

    iget v0, p0, Lcom/sigmob/sdk/mraid/m;->a:I

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/m;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/m;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/m;->d:Ljava/lang/Runnable;

    :cond_16
    return-void
.end method

.method static synthetic b(Lcom/sigmob/sdk/mraid/m;)V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/mraid/m;->b()V

    return-void
.end method


# virtual methods
.method a()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/m;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/m;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/m;->d:Ljava/lang/Runnable;

    return-void
.end method

.method a(Ljava/lang/Runnable;)V
    .registers 4

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/m;->d:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/m;->b:[Landroid/view/View;

    array-length v0, v0

    iput v0, p0, Lcom/sigmob/sdk/mraid/m;->a:I

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/m;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/m;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
