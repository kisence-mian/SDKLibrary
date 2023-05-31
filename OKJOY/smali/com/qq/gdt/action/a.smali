.class Lcom/qq/gdt/action/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/gdt/action/a$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/qq/gdt/action/a;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/qq/gdt/action/a$a;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qq/gdt/action/a;->b:Landroid/content/Context;

    new-instance v0, Lcom/qq/gdt/action/a$a;

    invoke-direct {v0, p0}, Lcom/qq/gdt/action/a$a;-><init>(Lcom/qq/gdt/action/a;)V

    iput-object v0, p0, Lcom/qq/gdt/action/a;->c:Lcom/qq/gdt/action/a$a;

    return-void
.end method

.method static synthetic a(Lcom/qq/gdt/action/a;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/qq/gdt/action/a;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/qq/gdt/action/a;
    .registers 3

    sget-object v0, Lcom/qq/gdt/action/a;->a:Lcom/qq/gdt/action/a;

    if-nez v0, :cond_13

    const-class v1, Lcom/qq/gdt/action/a;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/qq/gdt/action/a;->a:Lcom/qq/gdt/action/a;

    if-nez v0, :cond_12

    new-instance v0, Lcom/qq/gdt/action/a;

    invoke-direct {v0, p0}, Lcom/qq/gdt/action/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qq/gdt/action/a;->a:Lcom/qq/gdt/action/a;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/qq/gdt/action/a;->a:Lcom/qq/gdt/action/a;

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
.method public a()V
    .registers 3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/qq/gdt/action/a;->c:Lcom/qq/gdt/action/a$a;

    invoke-virtual {v1, v0}, Lcom/qq/gdt/action/a$a;->a(Landroid/os/Message;)V

    return-void
.end method

.method public a(Z)V
    .registers 4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/qq/gdt/action/a;->c:Lcom/qq/gdt/action/a$a;

    invoke-virtual {v1, v0}, Lcom/qq/gdt/action/a$a;->a(Landroid/os/Message;)V

    return-void
.end method

.method public varargs a([Lcom/qq/gdt/action/a/a;)V
    .registers 4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/qq/gdt/action/a;->c:Lcom/qq/gdt/action/a$a;

    invoke-virtual {v1, v0}, Lcom/qq/gdt/action/a$a;->a(Landroid/os/Message;)V

    return-void
.end method
