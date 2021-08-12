.class Lcom/kwad/sdk/api/loader/DynamicInstallReceiver$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/api/loader/DynamicInstallReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/io/File;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/kwad/sdk/api/loader/DynamicInstallReceiver;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/api/loader/DynamicInstallReceiver;Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/kwad/sdk/api/loader/DynamicInstallReceiver$1;->d:Lcom/kwad/sdk/api/loader/DynamicInstallReceiver;

    iput-object p2, p0, Lcom/kwad/sdk/api/loader/DynamicInstallReceiver$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/kwad/sdk/api/loader/DynamicInstallReceiver$1;->b:Ljava/io/File;

    iput-object p4, p0, Lcom/kwad/sdk/api/loader/DynamicInstallReceiver$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/api/loader/DynamicInstallReceiver$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/kwad/sdk/api/loader/DynamicInstallReceiver$1;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/api/loader/DynamicInstallReceiver$1;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/api/loader/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/DynamicInstallReceiver$1;->a:Landroid/content/Context;

    sget-object v1, Lcom/kwad/sdk/api/loader/f;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/kwad/sdk/api/loader/DynamicInstallReceiver$1;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/api/loader/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/DynamicInstallReceiver$1;->b:Ljava/io/File;

    invoke-static {v0}, Lcom/kwad/sdk/api/loader/g;->a(Ljava/io/File;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_23
    :goto_23
    return-void
.end method
