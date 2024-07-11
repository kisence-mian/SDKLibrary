.class final Lcom/tramini/plugin/a/g/a/a$1;
.super Lcom/tramini/plugin/a/g/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tramini/plugin/a/g/a/a;->a(Ljava/lang/Runnable;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/tramini/plugin/a/g/a/a;


# direct methods
.method constructor <init>(Lcom/tramini/plugin/a/g/a/a;JLjava/lang/Runnable;)V
    .registers 5

    .line 49
    iput-object p1, p0, Lcom/tramini/plugin/a/g/a/a$1;->c:Lcom/tramini/plugin/a/g/a/a;

    iput-wide p2, p0, Lcom/tramini/plugin/a/g/a/a$1;->a:J

    iput-object p4, p0, Lcom/tramini/plugin/a/g/a/a$1;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/tramini/plugin/a/g/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 53
    :try_start_0
    iget-wide v0, p0, Lcom/tramini/plugin/a/g/a/a$1;->a:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6

    .line 56
    goto :goto_7

    .line 54
    :catch_6
    move-exception v0

    .line 57
    :goto_7
    iget-object v0, p0, Lcom/tramini/plugin/a/g/a/a$1;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 59
    return-void
.end method
