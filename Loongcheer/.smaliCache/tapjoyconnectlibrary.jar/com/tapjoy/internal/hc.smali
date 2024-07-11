.class public Lcom/tapjoy/internal/hc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/gq;


# static fields
.field private static final a:Lcom/tapjoy/internal/hc;


# instance fields
.field private final b:Lcom/tapjoy/internal/gq;

.field private final c:Lcom/tapjoy/internal/av;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    new-instance v0, Lcom/tapjoy/internal/hc$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/hc$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/hc;->a:Lcom/tapjoy/internal/hc;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/hc;->b:Lcom/tapjoy/internal/gq;

    .line 61
    iput-object v0, p0, Lcom/tapjoy/internal/hc;->c:Lcom/tapjoy/internal/av;

    .line 62
    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .line 14
    invoke-direct {p0}, Lcom/tapjoy/internal/hc;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/internal/gq;)V
    .registers 4

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/tapjoy/internal/hc;->b:Lcom/tapjoy/internal/gq;

    .line 2038
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    .line 2039
    if-eqz p1, :cond_20

    .line 2048
    invoke-static {p1}, Lcom/tapjoy/internal/jr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2049
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_19

    invoke-static {}, Lcom/tapjoy/internal/t;->a()Landroid/os/Handler;

    move-result-object p1

    goto :goto_21

    :cond_19
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2039
    move-object p1, v0

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    .line 66
    :goto_21
    nop

    .line 67
    if-eqz p1, :cond_35

    .line 68
    invoke-static {p1}, Lcom/tapjoy/internal/t;->a(Landroid/os/Handler;)Lcom/tapjoy/internal/av;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/hc;->c:Lcom/tapjoy/internal/av;

    .line 69
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    aput-object p1, v0, v1

    return-void

    .line 70
    :cond_35
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Lcom/tapjoy/internal/gt;->b()Ljava/lang/Thread;

    move-result-object v0

    if-ne p1, v0, :cond_44

    .line 71
    sget-object p1, Lcom/tapjoy/internal/gt;->a:Lcom/tapjoy/internal/av;

    iput-object p1, p0, Lcom/tapjoy/internal/hc;->c:Lcom/tapjoy/internal/av;

    .line 72
    return-void

    .line 74
    :cond_44
    invoke-static {}, Lcom/tapjoy/internal/t;->a()Landroid/os/Handler;

    move-result-object p1

    invoke-static {p1}, Lcom/tapjoy/internal/t;->a(Landroid/os/Handler;)Lcom/tapjoy/internal/av;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/hc;->c:Lcom/tapjoy/internal/av;

    .line 77
    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/hc;)Lcom/tapjoy/internal/gq;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/tapjoy/internal/hc;->b:Lcom/tapjoy/internal/gq;

    return-object p0
.end method

.method public static a(Lcom/tapjoy/internal/gq;)Lcom/tapjoy/internal/hc;
    .registers 2

    .line 49
    if-eqz p0, :cond_8

    .line 50
    new-instance v0, Lcom/tapjoy/internal/hc;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/hc;-><init>(Lcom/tapjoy/internal/gq;)V

    return-object v0

    .line 52
    :cond_8
    sget-object p0, Lcom/tapjoy/internal/hc;->a:Lcom/tapjoy/internal/hc;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    .line 81
    iget-object v0, p0, Lcom/tapjoy/internal/hc;->c:Lcom/tapjoy/internal/av;

    new-instance v1, Lcom/tapjoy/internal/hc$2;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/internal/hc$2;-><init>(Lcom/tapjoy/internal/hc;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/av;->a(Ljava/lang/Runnable;)Z

    .line 87
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/tapjoy/internal/gn;)V
    .registers 5

    .line 121
    iget-object v0, p0, Lcom/tapjoy/internal/hc;->c:Lcom/tapjoy/internal/av;

    new-instance v1, Lcom/tapjoy/internal/hc$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/tapjoy/internal/hc$6;-><init>(Lcom/tapjoy/internal/hc;Ljava/lang/String;Lcom/tapjoy/internal/gn;)V

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/av;->a(Ljava/lang/Runnable;)Z

    .line 127
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/gn;)V
    .registers 6

    .line 131
    iget-object v0, p0, Lcom/tapjoy/internal/hc;->c:Lcom/tapjoy/internal/av;

    new-instance v1, Lcom/tapjoy/internal/hc$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/tapjoy/internal/hc$7;-><init>(Lcom/tapjoy/internal/hc;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/gn;)V

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/av;->a(Ljava/lang/Runnable;)Z

    .line 137
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .line 91
    iget-object v0, p0, Lcom/tapjoy/internal/hc;->c:Lcom/tapjoy/internal/av;

    new-instance v1, Lcom/tapjoy/internal/hc$3;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/internal/hc$3;-><init>(Lcom/tapjoy/internal/hc;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/av;->a(Ljava/lang/Runnable;)Z

    .line 97
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 4

    .line 101
    iget-object v0, p0, Lcom/tapjoy/internal/hc;->c:Lcom/tapjoy/internal/av;

    new-instance v1, Lcom/tapjoy/internal/hc$4;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/internal/hc$4;-><init>(Lcom/tapjoy/internal/hc;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/av;->a(Ljava/lang/Runnable;)Z

    .line 107
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 4

    .line 111
    iget-object v0, p0, Lcom/tapjoy/internal/hc;->c:Lcom/tapjoy/internal/av;

    new-instance v1, Lcom/tapjoy/internal/hc$5;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/internal/hc$5;-><init>(Lcom/tapjoy/internal/hc;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/av;->a(Ljava/lang/Runnable;)Z

    .line 117
    return-void
.end method
