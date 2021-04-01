.class final Lcom/anythink/myoffer/a/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/myoffer/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/myoffer/a/a/a;


# direct methods
.method constructor <init>(Lcom/anythink/myoffer/a/a/a;)V
    .registers 2

    .prologue
    .line 250
    iput-object p1, p0, Lcom/anythink/myoffer/a/a/a$1;->a:Lcom/anythink/myoffer/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/Void;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 253
    iget-object v1, p0, Lcom/anythink/myoffer/a/a/a$1;->a:Lcom/anythink/myoffer/a/a/a;

    monitor-enter v1

    .line 254
    :try_start_4
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a$1;->a:Lcom/anythink/myoffer/a/a/a;

    invoke-static {v0}, Lcom/anythink/myoffer/a/a/a;->a(Lcom/anythink/myoffer/a/a/a;)Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_e

    .line 255
    monitor-exit v1

    .line 263
    :goto_d
    return-object v2

    .line 257
    :cond_e
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a$1;->a:Lcom/anythink/myoffer/a/a/a;

    invoke-static {v0}, Lcom/anythink/myoffer/a/a/a;->b(Lcom/anythink/myoffer/a/a/a;)V

    .line 258
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a$1;->a:Lcom/anythink/myoffer/a/a/a;

    invoke-static {v0}, Lcom/anythink/myoffer/a/a/a;->c(Lcom/anythink/myoffer/a/a/a;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 259
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a$1;->a:Lcom/anythink/myoffer/a/a/a;

    invoke-static {v0}, Lcom/anythink/myoffer/a/a/a;->d(Lcom/anythink/myoffer/a/a/a;)V

    .line 260
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a$1;->a:Lcom/anythink/myoffer/a/a/a;

    invoke-static {v0}, Lcom/anythink/myoffer/a/a/a;->e(Lcom/anythink/myoffer/a/a/a;)I

    .line 262
    :cond_25
    monitor-exit v1

    goto :goto_d

    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_4 .. :try_end_29} :catchall_27

    throw v0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/anythink/myoffer/a/a/a$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
