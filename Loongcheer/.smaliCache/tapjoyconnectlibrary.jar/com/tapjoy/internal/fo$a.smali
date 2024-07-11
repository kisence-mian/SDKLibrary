.class final Lcom/tapjoy/internal/fo$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/fo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/lang/Thread;

.field private final c:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Thread;Landroid/os/Looper;)V
    .registers 4

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/tapjoy/internal/fo$a;->a:Ljava/lang/Object;

    .line 47
    iput-object p2, p0, Lcom/tapjoy/internal/fo$a;->b:Ljava/lang/Thread;

    .line 48
    iput-object p3, p0, Lcom/tapjoy/internal/fo$a;->c:Landroid/os/Looper;

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/fo$a;)Ljava/lang/Object;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/tapjoy/internal/fo$a;->a:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/tapjoy/internal/fo$a;->b:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_f

    .line 54
    iget-object v0, p0, Lcom/tapjoy/internal/fo$a;->a:Ljava/lang/Object;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 57
    :cond_f
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 61
    new-instance v0, Lcom/tapjoy/internal/fo$a$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/tapjoy/internal/fo$a$1;-><init>(Lcom/tapjoy/internal/fo$a;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 76
    iget-object v1, p0, Lcom/tapjoy/internal/fo$a;->c:Landroid/os/Looper;

    const/4 v2, 0x0

    if-eqz v1, :cond_33

    new-instance v1, Landroid/os/Handler;

    iget-object v3, p0, Lcom/tapjoy/internal/fo$a;->c:Landroid/os/Looper;

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 77
    return-object v2

    .line 78
    :cond_33
    iget-object v1, p0, Lcom/tapjoy/internal/fo$a;->b:Ljava/lang/Thread;

    invoke-static {}, Lcom/tapjoy/internal/gt;->b()Ljava/lang/Thread;

    move-result-object v3

    if-ne v1, v3, :cond_44

    sget-object v1, Lcom/tapjoy/internal/gt;->a:Lcom/tapjoy/internal/av;

    .line 79
    invoke-interface {v1, v0}, Lcom/tapjoy/internal/av;->a(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 80
    return-object v2

    .line 82
    :cond_44
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    .line 83
    if-eqz v1, :cond_56

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 84
    return-object v2

    .line 86
    :cond_56
    iget-object v0, p0, Lcom/tapjoy/internal/fo$a;->a:Ljava/lang/Object;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 58
    :cond_5d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "method not return void: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
