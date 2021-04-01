.class public Lcom/qq/gdt/action/d/b;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/qq/gdt/action/d/b;


# instance fields
.field private b:Lcom/qq/gdt/action/d/b/c;

.field private c:Lcom/qq/gdt/action/d/b/c;


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, v0}, Lcom/qq/gdt/action/d/b;->a(Lcom/qq/gdt/action/d/b/c;)V

    invoke-direct {p0, v0}, Lcom/qq/gdt/action/d/b;->b(Lcom/qq/gdt/action/d/b/c;)V

    return-void
.end method

.method public static a()Lcom/qq/gdt/action/d/b;
    .registers 2

    sget-object v0, Lcom/qq/gdt/action/d/b;->a:Lcom/qq/gdt/action/d/b;

    if-nez v0, :cond_13

    const-class v1, Lcom/qq/gdt/action/d/b;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/qq/gdt/action/d/b;->a:Lcom/qq/gdt/action/d/b;

    if-nez v0, :cond_12

    new-instance v0, Lcom/qq/gdt/action/d/b;

    invoke-direct {v0}, Lcom/qq/gdt/action/d/b;-><init>()V

    sput-object v0, Lcom/qq/gdt/action/d/b;->a:Lcom/qq/gdt/action/d/b;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/qq/gdt/action/d/b;->a:Lcom/qq/gdt/action/d/b;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private a(Lcom/qq/gdt/action/d/b/c;)V
    .registers 5

    if-nez p1, :cond_2a

    new-instance v0, Lcom/qq/gdt/action/d/b/c$a;

    invoke-direct {v0}, Lcom/qq/gdt/action/d/b/c$a;-><init>()V

    new-instance v1, Lcom/qq/gdt/action/d/b/a/d;

    invoke-direct {v1}, Lcom/qq/gdt/action/d/b/a/d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/qq/gdt/action/d/b/c$a;->a(Lcom/qq/gdt/action/d/b/a/b;)Lcom/qq/gdt/action/d/b/c$a;

    move-result-object v0

    new-instance v1, Lcom/qq/gdt/action/d/b/a/e;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/qq/gdt/action/d/b/a/e;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/qq/gdt/action/d/b/c$a;->a(Lcom/qq/gdt/action/d/b/a/b;)Lcom/qq/gdt/action/d/b/c$a;

    move-result-object v0

    new-instance v1, Lcom/qq/gdt/action/d/b/a/f;

    invoke-direct {v1}, Lcom/qq/gdt/action/d/b/a/f;-><init>()V

    invoke-virtual {v0, v1}, Lcom/qq/gdt/action/d/b/c$a;->a(Lcom/qq/gdt/action/d/b/a/b;)Lcom/qq/gdt/action/d/b/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/d/b/c$a;->a()Lcom/qq/gdt/action/d/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/d/b;->b:Lcom/qq/gdt/action/d/b/c;

    :goto_29
    return-void

    :cond_2a
    iput-object p1, p0, Lcom/qq/gdt/action/d/b;->b:Lcom/qq/gdt/action/d/b/c;

    goto :goto_29
.end method

.method private b(Lcom/qq/gdt/action/d/b/c;)V
    .registers 5

    iget-object v0, p0, Lcom/qq/gdt/action/d/b;->c:Lcom/qq/gdt/action/d/b/c;

    if-nez v0, :cond_23

    new-instance v0, Lcom/qq/gdt/action/d/b/c$a;

    invoke-direct {v0}, Lcom/qq/gdt/action/d/b/c$a;-><init>()V

    new-instance v1, Lcom/qq/gdt/action/d/b/a/d;

    invoke-direct {v1}, Lcom/qq/gdt/action/d/b/a/d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/qq/gdt/action/d/b/c$a;->a(Lcom/qq/gdt/action/d/b/a/b;)Lcom/qq/gdt/action/d/b/c$a;

    move-result-object v0

    new-instance v1, Lcom/qq/gdt/action/d/b/a/e;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/qq/gdt/action/d/b/a/e;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/qq/gdt/action/d/b/c$a;->a(Lcom/qq/gdt/action/d/b/a/b;)Lcom/qq/gdt/action/d/b/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/d/b/c$a;->a()Lcom/qq/gdt/action/d/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/d/b;->c:Lcom/qq/gdt/action/d/b/c;

    :goto_22
    return-void

    :cond_23
    iput-object p1, p0, Lcom/qq/gdt/action/d/b;->c:Lcom/qq/gdt/action/d/b/c;

    goto :goto_22
.end method

.method public static d()Lcom/qq/gdt/action/d/e;
    .registers 1

    new-instance v0, Lcom/qq/gdt/action/d/e;

    invoke-direct {v0}, Lcom/qq/gdt/action/d/e;-><init>()V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/qq/gdt/action/d/b/c;
    .registers 2

    iget-object v0, p0, Lcom/qq/gdt/action/d/b;->b:Lcom/qq/gdt/action/d/b/c;

    return-object v0
.end method

.method public c()Lcom/qq/gdt/action/d/b/c;
    .registers 2

    iget-object v0, p0, Lcom/qq/gdt/action/d/b;->c:Lcom/qq/gdt/action/d/b/c;

    return-object v0
.end method
