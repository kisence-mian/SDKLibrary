.class final Lcom/anythink/china/common/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/china/common/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/china/common/a;


# direct methods
.method constructor <init>(Lcom/anythink/china/common/a;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/anythink/china/common/a$1;->a:Lcom/anythink/china/common/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 80
    iget-object p1, p0, Lcom/anythink/china/common/a$1;->a:Lcom/anythink/china/common/a;

    check-cast p2, Lcom/anythink/china/common/service/ApkDownloadService$a;

    invoke-static {p1, p2}, Lcom/anythink/china/common/a;->a(Lcom/anythink/china/common/a;Lcom/anythink/china/common/service/ApkDownloadService$a;)Lcom/anythink/china/common/service/ApkDownloadService$a;

    .line 81
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 85
    iget-object p1, p0, Lcom/anythink/china/common/a$1;->a:Lcom/anythink/china/common/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/anythink/china/common/a;->a(Lcom/anythink/china/common/a;Lcom/anythink/china/common/service/ApkDownloadService$a;)Lcom/anythink/china/common/service/ApkDownloadService$a;

    .line 86
    return-void
.end method
