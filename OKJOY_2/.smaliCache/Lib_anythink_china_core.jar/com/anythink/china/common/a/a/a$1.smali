.class final Lcom/anythink/china/common/a/a/a$1;
.super Lcom/anythink/core/common/g/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/china/common/a/a/a;->b(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/anythink/china/common/a/a/a;


# direct methods
.method constructor <init>(Lcom/anythink/china/common/a/a/a;Ljava/lang/Runnable;)V
    .registers 5

    .line 63
    iput-object p1, p0, Lcom/anythink/china/common/a/a/a$1;->c:Lcom/anythink/china/common/a/a/a;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/anythink/china/common/a/a/a$1;->a:J

    iput-object p2, p0, Lcom/anythink/china/common/a/a/a$1;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/anythink/core/common/g/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .line 67
    :try_start_0
    iget-wide v0, p0, Lcom/anythink/china/common/a/a/a$1;->a:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6

    .line 72
    goto :goto_7

    .line 68
    :catch_6
    move-exception v0

    .line 73
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "thread-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/anythink/china/common/a/a/a$1;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "t"

    invoke-static {v1, v0}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/anythink/china/common/a/a/a$1;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 76
    return-void
.end method
