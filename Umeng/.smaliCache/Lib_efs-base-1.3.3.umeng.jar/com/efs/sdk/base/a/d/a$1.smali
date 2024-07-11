.class final Lcom/efs/sdk/base/a/d/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/efs/sdk/base/a/d/a;->c(Lcom/efs/sdk/base/protocol/ILogProtocol;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/efs/sdk/base/protocol/ILogProtocol;

.field final synthetic b:Lcom/efs/sdk/base/a/d/a;


# direct methods
.method constructor <init>(Lcom/efs/sdk/base/a/d/a;Lcom/efs/sdk/base/protocol/ILogProtocol;)V
    .registers 3

    .line 213
    iput-object p1, p0, Lcom/efs/sdk/base/a/d/a$1;->b:Lcom/efs/sdk/base/a/d/a;

    iput-object p2, p0, Lcom/efs/sdk/base/a/d/a$1;->a:Lcom/efs/sdk/base/protocol/ILogProtocol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/efs/sdk/base/a/d/a$1;->a:Lcom/efs/sdk/base/protocol/ILogProtocol;

    .line 1053
    invoke-static {}, Lcom/efs/sdk/base/a/c/c$a;->a()Lcom/efs/sdk/base/a/c/c;

    move-result-object v1

    .line 1057
    iget-object v1, v1, Lcom/efs/sdk/base/a/c/c;->a:Lcom/efs/sdk/base/a/c/b;

    .line 218
    invoke-interface {v0, v1}, Lcom/efs/sdk/base/protocol/ILogProtocol;->insertGlobal(Lcom/efs/sdk/base/a/c/b;)V

    .line 220
    const-string v0, "wa"

    iget-object v1, p0, Lcom/efs/sdk/base/a/d/a$1;->a:Lcom/efs/sdk/base/protocol/ILogProtocol;

    invoke-interface {v1}, Lcom/efs/sdk/base/protocol/ILogProtocol;->getLogType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 221
    iget-object v0, p0, Lcom/efs/sdk/base/a/d/a$1;->a:Lcom/efs/sdk/base/protocol/ILogProtocol;

    invoke-static {v0}, Lcom/efs/sdk/base/a/d/a;->b(Lcom/efs/sdk/base/protocol/ILogProtocol;)V

    .line 225
    :cond_1e
    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v0

    .line 1194
    iget-boolean v0, v0, Lcom/efs/sdk/base/a/c/a;->e:Z

    .line 225
    if-nez v0, :cond_27

    .line 226
    return-void

    .line 229
    :cond_27
    iget-object v0, p0, Lcom/efs/sdk/base/a/d/a$1;->a:Lcom/efs/sdk/base/protocol/ILogProtocol;

    invoke-static {v0}, Lcom/efs/sdk/base/a/f/b;->a(Lcom/efs/sdk/base/protocol/ILogProtocol;)Lcom/efs/sdk/base/a/f/b;

    move-result-object v0

    .line 2035
    invoke-static {}, Lcom/efs/sdk/base/a/g/d$a;->a()Lcom/efs/sdk/base/a/g/d;

    move-result-object v1

    .line 232
    nop

    .line 2044
    new-instance v2, Lcom/efs/sdk/base/a/g/d$1;

    invoke-direct {v2, v1, v0}, Lcom/efs/sdk/base/a/g/d$1;-><init>(Lcom/efs/sdk/base/a/g/d;Lcom/efs/sdk/base/a/f/b;)V

    invoke-static {v2}, Lcom/efs/sdk/base/a/h/a/d;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_3a
    .catchall {:try_start_0 .. :try_end_3a} :catchall_3b

    .line 235
    return-void

    .line 233
    :catchall_3b
    move-exception v0

    .line 234
    const-string v1, "efs.base"

    const-string v2, "log send error"

    invoke-static {v1, v2, v0}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    return-void
.end method
