.class final Lcom/anythink/core/b/g/a/a$1;
.super Lcom/anythink/core/b/g/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/g/a/a;->a(Ljava/lang/Runnable;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/anythink/core/b/g/a/a;


# direct methods
.method constructor <init>(Lcom/anythink/core/b/g/a/a;JLjava/lang/Runnable;)V
    .registers 5

    .prologue
    .line 70
    iput-object p1, p0, Lcom/anythink/core/b/g/a/a$1;->c:Lcom/anythink/core/b/g/a/a;

    iput-wide p2, p0, Lcom/anythink/core/b/g/a/a$1;->a:J

    iput-object p4, p0, Lcom/anythink/core/b/g/a/a$1;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/anythink/core/b/g/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .prologue
    .line 74
    :try_start_0
    iget-wide v0, p0, Lcom/anythink/core/b/g/a/a$1;->a:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_23

    .line 80
    :goto_5
    const-string v0, "t"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "thread-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/anythink/core/b/g/a/a$1;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/anythink/core/b/g/a/a$1;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 83
    return-void

    :catch_23
    move-exception v0

    goto :goto_5
.end method
