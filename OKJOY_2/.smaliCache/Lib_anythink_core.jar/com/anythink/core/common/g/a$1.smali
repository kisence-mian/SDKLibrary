.class final Lcom/anythink/core/common/g/a$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/g/a;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/g/a;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/g/a;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/anythink/core/common/g/a$1;->a:Lcom/anythink/core/common/g/a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 23
    monitor-enter p0

    .line 24
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/common/g/a$1;->a:Lcom/anythink/core/common/g/a;

    invoke-static {v0}, Lcom/anythink/core/common/g/a;->a(Lcom/anythink/core/common/g/a;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 25
    iget-object v0, p0, Lcom/anythink/core/common/g/a$1;->a:Lcom/anythink/core/common/g/a;

    invoke-static {v0}, Lcom/anythink/core/common/g/a;->b(Lcom/anythink/core/common/g/a;)Z

    .line 26
    iget-object v0, p0, Lcom/anythink/core/common/g/a$1;->a:Lcom/anythink/core/common/g/a;

    invoke-virtual {v0}, Lcom/anythink/core/common/g/a;->b()V

    .line 28
    :cond_13
    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v0
.end method
