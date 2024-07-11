.class final Lcom/anythink/core/common/g/a/a$1;
.super Lcom/anythink/core/common/g/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/g/a/a;->a(Ljava/lang/Runnable;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/anythink/core/common/g/a/a;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/g/a/a;JLjava/lang/Runnable;)V
    .registers 5

    .line 108
    iput-object p1, p0, Lcom/anythink/core/common/g/a/a$1;->c:Lcom/anythink/core/common/g/a/a;

    iput-wide p2, p0, Lcom/anythink/core/common/g/a/a$1;->a:J

    iput-object p4, p0, Lcom/anythink/core/common/g/a/a$1;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/anythink/core/common/g/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .line 112
    :try_start_0
    iget-wide v0, p0, Lcom/anythink/core/common/g/a/a$1;->a:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6

    .line 117
    goto :goto_7

    .line 113
    :catch_6
    move-exception v0

    .line 118
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "thread-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/anythink/core/common/g/a/a$1;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "t"

    invoke-static {v1, v0}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/anythink/core/common/g/a/a$1;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 121
    return-void
.end method
