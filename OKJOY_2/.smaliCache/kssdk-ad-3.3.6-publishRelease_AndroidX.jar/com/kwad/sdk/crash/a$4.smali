.class final Lcom/kwad/sdk/crash/a$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/crash/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    :try_start_0
    invoke-static {}, Lcom/kwad/sdk/crash/a;->b()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    :goto_3
    invoke-static {}, Lcom/kwad/sdk/crash/a;->c()V

    goto :goto_9

    :catchall_7
    move-exception v0

    goto :goto_3

    :goto_9
    return-void
.end method
