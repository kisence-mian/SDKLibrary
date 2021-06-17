.class final Lcom/tapjoy/internal/kc$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/kc$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/kc$1;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/kc$1;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/tapjoy/internal/kc$1$1;->a:Lcom/tapjoy/internal/kc$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/kc$1$1;->a:Lcom/tapjoy/internal/kc$1;

    iget-object v0, v0, Lcom/tapjoy/internal/kc$1;->a:Lcom/tapjoy/internal/kc;

    invoke-virtual {v0}, Lcom/tapjoy/internal/kc;->b()V

    .line 48
    iget-object v0, p0, Lcom/tapjoy/internal/kc$1$1;->a:Lcom/tapjoy/internal/kc$1;

    invoke-virtual {v0}, Lcom/tapjoy/internal/kc$1;->c()V

    .line 50
    iget-object v0, p0, Lcom/tapjoy/internal/kc$1$1;->a:Lcom/tapjoy/internal/kc$1;

    .line 1221
    invoke-virtual {v0}, Lcom/tapjoy/internal/ke;->f()Lcom/tapjoy/internal/kh$a;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/internal/kh$a;->c:Lcom/tapjoy/internal/kh$a;
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_46

    if-ne v0, v1, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 50
    :goto_19
    if-eqz v0, :cond_39

    .line 52
    :try_start_1b
    iget-object v0, p0, Lcom/tapjoy/internal/kc$1$1;->a:Lcom/tapjoy/internal/kc$1;

    iget-object v0, v0, Lcom/tapjoy/internal/kc$1;->a:Lcom/tapjoy/internal/kc;

    invoke-virtual {v0}, Lcom/tapjoy/internal/kc;->d()V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_23

    .line 61
    goto :goto_39

    .line 53
    :catchall_23
    move-exception v0

    .line 55
    :try_start_24
    iget-object v1, p0, Lcom/tapjoy/internal/kc$1$1;->a:Lcom/tapjoy/internal/kc$1;

    iget-object v1, v1, Lcom/tapjoy/internal/kc$1;->a:Lcom/tapjoy/internal/kc;

    invoke-virtual {v1}, Lcom/tapjoy/internal/kc;->c()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2b} :catch_2c
    .catchall {:try_start_24 .. :try_end_2b} :catchall_46

    .line 59
    goto :goto_38

    .line 56
    :catch_2c
    move-exception v1

    .line 57
    :try_start_2d
    invoke-static {}, Lcom/tapjoy/internal/kc;->g()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Error while attempting to shut down the service after failure."

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    :goto_38
    throw v0

    .line 64
    :cond_39
    :goto_39
    iget-object v0, p0, Lcom/tapjoy/internal/kc$1$1;->a:Lcom/tapjoy/internal/kc$1;

    iget-object v0, v0, Lcom/tapjoy/internal/kc$1;->a:Lcom/tapjoy/internal/kc;

    invoke-virtual {v0}, Lcom/tapjoy/internal/kc;->c()V

    .line 65
    iget-object v0, p0, Lcom/tapjoy/internal/kc$1$1;->a:Lcom/tapjoy/internal/kc$1;

    invoke-virtual {v0}, Lcom/tapjoy/internal/kc$1;->d()V
    :try_end_45
    .catchall {:try_start_2d .. :try_end_45} :catchall_46

    .line 69
    return-void

    .line 66
    :catchall_46
    move-exception v0

    .line 67
    iget-object v1, p0, Lcom/tapjoy/internal/kc$1$1;->a:Lcom/tapjoy/internal/kc$1;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/kc$1;->a(Ljava/lang/Throwable;)V

    .line 68
    invoke-static {v0}, Lcom/tapjoy/internal/jt;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
