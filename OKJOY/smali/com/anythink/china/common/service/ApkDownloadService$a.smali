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

    .prologue
    .line 26
    iput-object p1, p0, Lcom/anythink/china/common/service/ApkDownloadService$a;->a:Lcom/anythink/china/common/service/ApkDownloadService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 30
    iget-object v0, p0, Lcom/anythink/china/common/service/ApkDownloadService$a;->a:Lcom/anythink/china/common/service/ApkDownloadService;

    invoke-static {v0}, Lcom/anythink/china/common/service/ApkDownloadService;->a(Lcom/anythink/china/common/service/ApkDownloadService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/china/common/a/b;

    .line 31
    if-eqz v0, :cond_1a

    .line 32
    invoke-virtual {v0}, Lcom/anythink/china/common/a/b;->b()V

    .line 33
    iget-object v0, p0, Lcom/anythink/china/common/service/ApkDownloadService$a;->a:Lcom/anythink/china/common/service/ApkDownloadService;

    invoke-static {v0}, Lcom/anythink/china/common/service/ApkDownloadService;->a(Lcom/anythink/china/common/service/ApkDownloadService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_1a
    return-void
.end method

.method public final a()Z
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/anythink/china/common/service/ApkDownloadService$a;->a:Lcom/anythink/china/common/service/ApkDownloadService;

    invoke-static {v0}, Lcom/anythink/china/common/service/ApkDownloadService;->a(Lcom/anythink/china/common/service/ApkDownloadService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/anythink/china/common/service/ApkDownloadService$a;->a:Lcom/anythink/china/common/service/ApkDownloadService;

    invoke-static {v0}, Lcom/anythink/china/common/service/ApkDownloadService;->a(Lcom/anythink/china/common/service/ApkDownloadService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/china/common/a/b;

    .line 40
    if-eqz v0, :cond_1a

    .line 41
    invoke-virtual {v0}, Lcom/anythink/china/common/a/b;->a()V

    .line 42
    iget-object v0, p0, Lcom/anythink/china/common/service/ApkDownloadService$a;->a:Lcom/anythink/china/common/service/ApkDownloadService;

    invoke-static {v0}, Lcom/anythink/china/common/service/ApkDownloadService;->a(Lcom/anythink/china/common/service/ApkDownloadService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_1a
    return-void
.end method
