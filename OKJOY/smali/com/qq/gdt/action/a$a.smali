.class Lcom/qq/gdt/action/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/gdt/action/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/gdt/action/a$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/qq/gdt/action/a;

.field private final b:Ljava/lang/Object;

.field private c:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/qq/gdt/action/a;)V
    .registers 5

    iput-object p1, p0, Lcom/qq/gdt/action/a$a;->a:Lcom/qq/gdt/action/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/qq/gdt/action/a$a;->b:Ljava/lang/Object;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "com.qq.gdt.action.ActionReporter.Worker"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/qq/gdt/action/a$a$a;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/qq/gdt/action/a$a$a;-><init>(Lcom/qq/gdt/action/a$a;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/qq/gdt/action/a$a;->c:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method a(Landroid/os/Message;)V
    .registers 5

    iget-object v1, p0, Lcom/qq/gdt/action/a$a;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/qq/gdt/action/a$a;->c:Landroid/os/Handler;

    if-nez v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dropping a message: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/gdt/action/h/l;->c(Ljava/lang/String;)V

    :goto_1f
    monitor-exit v1

    return-void

    :cond_21
    iget-object v0, p0, Lcom/qq/gdt/action/a$a;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1f

    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v0
.end method
