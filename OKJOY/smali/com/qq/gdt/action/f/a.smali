.class public Lcom/qq/gdt/action/f/a;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/qq/gdt/action/f/a;


# instance fields
.field private final b:Lcom/qq/gdt/action/f/b;


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "recorder"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/qq/gdt/action/f/b;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/qq/gdt/action/f/b;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/qq/gdt/action/f/a;->b:Lcom/qq/gdt/action/f/b;

    return-void
.end method

.method public static a()Lcom/qq/gdt/action/f/a;
    .registers 2

    sget-object v0, Lcom/qq/gdt/action/f/a;->a:Lcom/qq/gdt/action/f/a;

    if-nez v0, :cond_13

    const-class v1, Lcom/qq/gdt/action/f/a;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/qq/gdt/action/f/a;->a:Lcom/qq/gdt/action/f/a;

    if-nez v0, :cond_12

    new-instance v0, Lcom/qq/gdt/action/f/a;

    invoke-direct {v0}, Lcom/qq/gdt/action/f/a;-><init>()V

    sput-object v0, Lcom/qq/gdt/action/f/a;->a:Lcom/qq/gdt/action/f/a;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/qq/gdt/action/f/a;->a:Lcom/qq/gdt/action/f/a;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public a(ILorg/json/JSONObject;)V
    .registers 5

    invoke-static {p1, p2}, Lcom/qq/gdt/action/f/c;->a(ILorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/qq/gdt/action/f/a;->b:Lcom/qq/gdt/action/f/b;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/qq/gdt/action/f/b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Lcom/qq/gdt/action/f/a/b;

    invoke-direct {v1, p1, p2}, Lcom/qq/gdt/action/f/a/b;-><init>(ILorg/json/JSONObject;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/qq/gdt/action/f/a;->b:Lcom/qq/gdt/action/f/b;

    invoke-virtual {v1, v0}, Lcom/qq/gdt/action/f/b;->sendMessage(Landroid/os/Message;)Z

    :cond_19
    return-void
.end method

.method public a(Lcom/qq/gdt/action/a/a;)V
    .registers 7

    invoke-static {p1}, Lcom/qq/gdt/action/f/c;->a(Lcom/qq/gdt/action/a/a;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/qq/gdt/action/f/a;->b:Lcom/qq/gdt/action/f/b;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/qq/gdt/action/f/b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Lcom/qq/gdt/action/f/a/a;

    invoke-virtual {p1}, Lcom/qq/gdt/action/a/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/qq/gdt/action/a/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/qq/gdt/action/a/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/qq/gdt/action/f/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/qq/gdt/action/f/a;->b:Lcom/qq/gdt/action/f/b;

    invoke-virtual {v1, v0}, Lcom/qq/gdt/action/f/b;->sendMessage(Landroid/os/Message;)Z

    :cond_25
    return-void
.end method

.method b()V
    .registers 3

    iget-object v0, p0, Lcom/qq/gdt/action/f/a;->b:Lcom/qq/gdt/action/f/b;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/qq/gdt/action/f/b;->sendEmptyMessage(I)Z

    return-void
.end method

.method c()V
    .registers 3

    iget-object v0, p0, Lcom/qq/gdt/action/f/a;->b:Lcom/qq/gdt/action/f/b;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/qq/gdt/action/f/b;->sendEmptyMessage(I)Z

    return-void
.end method
