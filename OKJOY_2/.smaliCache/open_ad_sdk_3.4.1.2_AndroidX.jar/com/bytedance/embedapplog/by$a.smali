.class Lcom/bytedance/embedapplog/by$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/embedapplog/by;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/bytedance/embedapplog/by$a;->a:Ljava/lang/Runnable;

    .line 68
    iput-object p2, p0, Lcom/bytedance/embedapplog/by$a;->b:Ljava/lang/String;

    .line 69
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "origin stacktrace"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/embedapplog/by$a;->c:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/embedapplog/by$a;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 80
    goto :goto_30

    .line 76
    :catch_6
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/embedapplog/by$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exception\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/embedapplog/by$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TrackerDr"

    invoke-static {v2, v1, v0}, Lcom/bytedance/embedapplog/bx;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    :goto_30
    return-void
.end method
