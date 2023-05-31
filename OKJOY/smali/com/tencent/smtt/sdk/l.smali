.class final Lcom/tencent/smtt/sdk/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/smtt/sdk/TbsListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;)V
    .registers 3

    iput-object p1, p0, Lcom/tencent/smtt/sdk/l;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/smtt/sdk/l;->b:Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDownloadFinish(I)V
    .registers 2

    return-void
.end method

.method public final onDownloadProgress(I)V
    .registers 2

    return-void
.end method

.method public final onInstallFinish(I)V
    .registers 4

    iget-object v0, p0, Lcom/tencent/smtt/sdk/l;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/l;->b:Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;

    invoke-static {v0, v1}, Lcom/tencent/smtt/sdk/QbSdk;->preInit(Landroid/content/Context;Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;)V

    return-void
.end method
