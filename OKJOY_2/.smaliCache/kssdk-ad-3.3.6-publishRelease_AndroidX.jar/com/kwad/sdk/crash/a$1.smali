.class final Lcom/kwad/sdk/crash/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/crash/a;->a(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/crash/a$1;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/crash/a$1;->a:Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/kwad/sdk/crash/b/a;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance v0, Lcom/kwad/sdk/crash/SdkCaughtException;

    iget-object v1, p0, Lcom/kwad/sdk/crash/a$1;->a:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/crash/SdkCaughtException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/kwad/sdk/crash/c/a;->a(Ljava/lang/Throwable;)V
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_13

    goto :goto_17

    :catchall_13
    move-exception v0

    invoke-static {v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :cond_17
    :goto_17
    return-void
.end method
