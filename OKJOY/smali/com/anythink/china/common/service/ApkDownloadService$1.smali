.class final Lcom/anythink/china/common/service/ApkDownloadService$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/china/common/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/china/common/service/ApkDownloadService;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/china/common/service/ApkDownloadService;


# direct methods
.method constructor <init>(Lcom/anythink/china/common/service/ApkDownloadService;)V
    .registers 2

    .prologue
    .line 63
    iput-object p1, p0, Lcom/anythink/china/common/service/ApkDownloadService$1;->a:Lcom/anythink/china/common/service/ApkDownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/china/common/a/c;J)V
    .registers 6

    .prologue
    .line 74
    iget-object v0, p0, Lcom/anythink/china/common/service/ApkDownloadService$1;->a:Lcom/anythink/china/common/service/ApkDownloadService;

    invoke-static {v0}, Lcom/anythink/china/common/service/ApkDownloadService;->a(Lcom/anythink/china/common/service/ApkDownloadService;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 75
    iget-object v0, p0, Lcom/anythink/china/common/service/ApkDownloadService$1;->a:Lcom/anythink/china/common/service/ApkDownloadService;

    invoke-static {v0}, Lcom/anythink/china/common/service/ApkDownloadService;->a(Lcom/anythink/china/common/service/ApkDownloadService;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Lcom/anythink/china/common/a/c;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_13
    iget-object v0, p0, Lcom/anythink/china/common/service/ApkDownloadService$1;->a:Lcom/anythink/china/common/service/ApkDownloadService;

    invoke-virtual {v0}, Lcom/anythink/china/common/service/ApkDownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/china/common/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/a;

    move-result-object v0

    iget-object v1, p1, Lcom/anythink/china/common/a/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/china/common/a;->e(Ljava/lang/String;)Lcom/anythink/china/common/a/a$a;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_28

    .line 79
    invoke-interface {v0, p1, p2, p3}, Lcom/anythink/china/common/a/a$a;->a(Lcom/anythink/china/common/a/c;J)V

    .line 81
    :cond_28
    return-void
.end method

.method public final a(Lcom/anythink/china/common/a/c;JJ)V
    .registers 12

    .prologue
    .line 66
    iget-object v0, p0, Lcom/anythink/china/common/service/ApkDownloadService$1;->a:Lcom/anythink/china/common/service/ApkDownloadService;

    invoke-virtual {v0}, Lcom/anythink/china/common/service/ApkDownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/china/common/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/a;

    move-result-object v0

    iget-object v1, p1, Lcom/anythink/china/common/a/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/china/common/a;->e(Ljava/lang/String;)Lcom/anythink/china/common/a/a$a;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_18

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 68
    invoke-interface/range {v0 .. v5}, Lcom/anythink/china/common/a/a$a;->a(Lcom/anythink/china/common/a/c;JJ)V

    .line 70
    :cond_18
    return-void
.end method

.method public final a(Lcom/anythink/china/common/a/c;JJI)V
    .registers 15

    .prologue
    .line 104
    iget-object v0, p0, Lcom/anythink/china/common/service/ApkDownloadService$1;->a:Lcom/anythink/china/common/service/ApkDownloadService;

    invoke-static {v0}, Lcom/anythink/china/common/service/ApkDownloadService;->a(Lcom/anythink/china/common/service/ApkDownloadService;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 105
    iget-object v0, p0, Lcom/anythink/china/common/service/ApkDownloadService$1;->a:Lcom/anythink/china/common/service/ApkDownloadService;

    invoke-static {v0}, Lcom/anythink/china/common/service/ApkDownloadService;->a(Lcom/anythink/china/common/service/ApkDownloadService;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Lcom/anythink/china/common/a/c;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_13
    iget-object v0, p0, Lcom/anythink/china/common/service/ApkDownloadService$1;->a:Lcom/anythink/china/common/service/ApkDownloadService;

    invoke-virtual {v0}, Lcom/anythink/china/common/service/ApkDownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/china/common/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/a;

    move-result-object v0

    iget-object v1, p1, Lcom/anythink/china/common/a/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/china/common/a;->e(Ljava/lang/String;)Lcom/anythink/china/common/a/a$a;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_2c

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    .line 109
    invoke-interface/range {v0 .. v6}, Lcom/anythink/china/common/a/a$a;->a(Lcom/anythink/china/common/a/c;JJI)V

    .line 111
    :cond_2c
    return-void
.end method

.method public final a(Lcom/anythink/china/common/a/c;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 93
    iget-object v0, p0, Lcom/anythink/china/common/service/ApkDownloadService$1;->a:Lcom/anythink/china/common/service/ApkDownloadService;

    invoke-static {v0}, Lcom/anythink/china/common/service/ApkDownloadService;->a(Lcom/anythink/china/common/service/ApkDownloadService;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 94
    iget-object v0, p0, Lcom/anythink/china/common/service/ApkDownloadService$1;->a:Lcom/anythink/china/common/service/ApkDownloadService;

    invoke-static {v0}, Lcom/anythink/china/common/service/ApkDownloadService;->a(Lcom/anythink/china/common/service/ApkDownloadService;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Lcom/anythink/china/common/a/c;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_13
    iget-object v0, p0, Lcom/anythink/china/common/service/ApkDownloadService$1;->a:Lcom/anythink/china/common/service/ApkDownloadService;

    invoke-virtual {v0}, Lcom/anythink/china/common/service/ApkDownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/china/common/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/a;

    move-result-object v0

    iget-object v1, p1, Lcom/anythink/china/common/a/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/china/common/a;->e(Ljava/lang/String;)Lcom/anythink/china/common/a/a$a;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_28

    .line 98
    invoke-interface {v0, p1, p2}, Lcom/anythink/china/common/a/a$a;->a(Lcom/anythink/china/common/a/c;Ljava/lang/String;)V

    .line 100
    :cond_28
    return-void
.end method

.method public final b(Lcom/anythink/china/common/a/c;JJ)V
    .registers 12

    .prologue
    .line 85
    iget-object v0, p0, Lcom/anythink/china/common/service/ApkDownloadService$1;->a:Lcom/anythink/china/common/service/ApkDownloadService;

    invoke-virtual {v0}, Lcom/anythink/china/common/service/ApkDownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/china/common/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/a;

    move-result-object v0

    iget-object v1, p1, Lcom/anythink/china/common/a/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/china/common/a;->e(Ljava/lang/String;)Lcom/anythink/china/common/a/a$a;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_18

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 87
    invoke-interface/range {v0 .. v5}, Lcom/anythink/china/common/a/a$a;->b(Lcom/anythink/china/common/a/c;JJ)V

    .line 89
    :cond_18
    return-void
.end method
