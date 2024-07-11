.class public final Lcom/anythink/china/common/service/ApkDownloadService$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/anythink/china/common/service/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/china/common/service/ApkDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/china/common/service/ApkDownloadService;


# direct methods
.method public constructor <init>(Lcom/anythink/china/common/service/ApkDownloadService;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/anythink/china/common/service/ApkDownloadService$a;->a:Lcom/anythink/china/common/service/ApkDownloadService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 3

    .line 37
    iget-object v0, p0, Lcom/anythink/china/common/service/ApkDownloadService$a;->a:Lcom/anythink/china/common/service/ApkDownloadService;

    invoke-static {v0}, Lcom/anythink/china/common/service/ApkDownloadService;->a(Lcom/anythink/china/common/service/ApkDownloadService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/china/common/a/d;

    .line 38
    if-eqz v0, :cond_1a

    .line 39
    invoke-virtual {v0}, Lcom/anythink/china/common/a/d;->b()V

    .line 40
    iget-object v0, p0, Lcom/anythink/china/common/service/ApkDownloadService$a;->a:Lcom/anythink/china/common/service/ApkDownloadService;

    invoke-static {v0}, Lcom/anythink/china/common/service/ApkDownloadService;->a(Lcom/anythink/china/common/service/ApkDownloadService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_1a
    return-void
.end method

.method public final a()Z
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/anythink/china/common/service/ApkDownloadService$a;->a:Lcom/anythink/china/common/service/ApkDownloadService;

    invoke-static {v0}, Lcom/anythink/china/common/service/ApkDownloadService;->a(Lcom/anythink/china/common/service/ApkDownloadService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    .line 46
    iget-object v0, p0, Lcom/anythink/china/common/service/ApkDownloadService$a;->a:Lcom/anythink/china/common/service/ApkDownloadService;

    invoke-static {v0}, Lcom/anythink/china/common/service/ApkDownloadService;->a(Lcom/anythink/china/common/service/ApkDownloadService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/china/common/a/d;

    .line 47
    if-eqz v0, :cond_1a

    .line 48
    invoke-virtual {v0}, Lcom/anythink/china/common/a/d;->a()V

    .line 49
    iget-object v0, p0, Lcom/anythink/china/common/service/ApkDownloadService$a;->a:Lcom/anythink/china/common/service/ApkDownloadService;

    invoke-static {v0}, Lcom/anythink/china/common/service/ApkDownloadService;->a(Lcom/anythink/china/common/service/ApkDownloadService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_1a
    return-void
.end method
