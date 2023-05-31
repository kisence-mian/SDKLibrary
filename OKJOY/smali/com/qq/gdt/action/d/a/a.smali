.class public abstract Lcom/qq/gdt/action/d/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/gdt/action/d/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/qq/gdt/action/d/b/b;"
    }
.end annotation


# static fields
.field private static a:Landroid/os/Handler;


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/qq/gdt/action/d/a/a;->a:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/qq/gdt/action/d/a/a;->b:Z

    return-void
.end method

.method private b(ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    sget-object v0, Lcom/qq/gdt/action/d/a/a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/qq/gdt/action/d/a/a$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/qq/gdt/action/d/a/a$1;-><init>(Lcom/qq/gdt/action/d/a/a;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private c(Ljava/lang/Throwable;)V
    .registers 4

    sget-object v0, Lcom/qq/gdt/action/d/a/a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/qq/gdt/action/d/a/a$2;

    invoke-direct {v1, p0, p1}, Lcom/qq/gdt/action/d/a/a$2;-><init>(Lcom/qq/gdt/action/d/a/a;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public abstract a(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation
.end method

.method public a(Lcom/qq/gdt/action/d/b/i;)V
    .registers 5

    :try_start_0
    invoke-virtual {p1}, Lcom/qq/gdt/action/d/b/i;->c()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/qq/gdt/action/d/a/a;->b(Lcom/qq/gdt/action/d/b/i;)Ljava/lang/Object;

    move-result-object v1

    iget-boolean v2, p0, Lcom/qq/gdt/action/d/a/a;->b:Z

    if-eqz v2, :cond_10

    invoke-direct {p0, v0, v1}, Lcom/qq/gdt/action/d/a/a;->b(ILjava/lang/Object;)V

    :goto_f
    return-void

    :cond_10
    invoke-virtual {p0, v0, v1}, Lcom/qq/gdt/action/d/a/a;->a(ILjava/lang/Object;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_f

    :catch_14
    move-exception v0

    new-instance v1, Lcom/qq/gdt/action/b/a;

    const-string v2, "Response parse error"

    invoke-direct {v1, v2, v0}, Lcom/qq/gdt/action/b/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-boolean v0, p0, Lcom/qq/gdt/action/d/a/a;->b:Z

    if-eqz v0, :cond_24

    invoke-direct {p0, v1}, Lcom/qq/gdt/action/d/a/a;->c(Ljava/lang/Throwable;)V

    goto :goto_f

    :cond_24
    invoke-virtual {p0, v1}, Lcom/qq/gdt/action/d/a/a;->b(Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 3

    iget-boolean v0, p0, Lcom/qq/gdt/action/d/a/a;->b:Z

    if-eqz v0, :cond_8

    invoke-direct {p0, p1}, Lcom/qq/gdt/action/d/a/a;->c(Ljava/lang/Throwable;)V

    :goto_7
    return-void

    :cond_8
    invoke-virtual {p0, p1}, Lcom/qq/gdt/action/d/a/a;->b(Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method public abstract b(Lcom/qq/gdt/action/d/b/i;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qq/gdt/action/d/b/i;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/Throwable;)V
.end method
