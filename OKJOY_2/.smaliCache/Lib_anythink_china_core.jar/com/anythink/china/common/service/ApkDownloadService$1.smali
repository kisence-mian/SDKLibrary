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

    .line 70
    iput-object p1, p0, Lcom/anythink/china/common/service/ApkDownloadService$1;->a:Lcom/anythink/china/common/service/ApkDownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/china/common/a/e;J)V
    .registers 6

    .line 81
    iget-object v0, p0, Lcom/anythink/china/common/service/ApkDownloadService$1;->a:Lcom/anythink/china/common/service/ApkDownloadService;

    invoke-static {v0}, Lcom/anythink/china/common/service/ApkDownloadService;->a(Lcom/anythink/china/common/service/ApkDownloadService;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 82
    iget-object v0, p0, Lcom/anythink/china/common/service/ApkDownloadService$1;->a:Lcom/anythink/china/common/service/ApkDownloadService;

    invoke-static {v0}, Lcom/anythink/china/common/service/ApkDownloadService;->a(Lcom/anythink/china/common/service/ApkDownloadService;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Lcom/anythink/china/common/a/e;->k:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_13
    iget-object v0, p0, Lcom/anythink/china/common/service/ApkDownloadService$1;->a:Lcom/anythink/china/common/service/ApkDownloadService;

    invoke-virtual {v0}, Lcom/anythink/china/common/service/ApkDownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/china/common/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/a;

    move-result-object v0

    iget-object v1, p1, Lcom/anythink/china/common/a/e;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/china/common/a;->e(Ljava/lang/String;)Lcom/anythink/china/common/a/a$a;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_28

    .line 86
    invoke-interface {v0, p1, p2, p3}, Lcom/anythink/china/common/a/a$a;->a(Lcom/anythink/china/common/a/e;J)V

    .line 88
    :cond_28
    return-void
.end method

.method public final a(Lcom/anythink/china/common/a/e;JJ)V
    .registers 14

    .line 73
    iget-object v0, p0, Lcom/anythink/china/common/service/ApkDownloadService$1;->a:Lcom/anythink/china/common/service/ApkDownloadService;

    invoke-virtual {v0}, Lcom/anythink/china/common/service/ApkDownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/china/common/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/a;

    move-result-object v0

    iget-object v1, p1, Lcom/anythink/china/common/a/e;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/china/common/a;->e(Ljava/lang/String;)Lcom/anythink/china/common/a/a$a;

    move-result-object v2

    .line 74
    if-eqz v2, :cond_18

    .line 75
    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/anythink/china/common/a/a$a;->a(Lcom/anythink/china/common/a/e;JJ)V

    .line 77
    :cond_18
    return-void
.end method

.method public final a(Lcom/anythink/china/common/a/e;JJI)V
    .registers 16

    .line 111
    iget-object v0, p0, Lcom/anythink/china/common/service/ApkDownloadService$1;->a:Lcom/anythink/china/common/service/ApkDownloadService;

    invoke-static {v0}, Lcom/anythink/china/common/service/ApkDownloadService;->a(Lcom/anythink/china/common/service/ApkDownloadService;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 112
    iget-object v0, p0, Lcom/anythink/china/common/service/ApkDownloadService$1;->a:Lcom/anythink/china/common/service/ApkDownloadService;

    invoke-static {v0}, Lcom/anythink/china/common/service/ApkDownloadService;->a(Lcom/anythink/china/common/service/ApkDownloadService;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Lcom/anythink/china/common/a/e;->k:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_13
    iget-object v0, p0, Lcom/anythink/china/common/service/ApkDownloadService$1;->a:Lcom/anythink/china/common/service/ApkDownloadService;

    invoke-virtual {v0}, Lcom/anythink/china/common/service/ApkDownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/china/common/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/a;

    move-result-object v0

    iget-object v1, p1, Lcom/anythink/china/common/a/e;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/china/common/a;->e(Ljava/lang/String;)Lcom/anythink/china/common/a/a$a;

    move-result-object v2

    .line 115
    if-eqz v2, :cond_2c

    .line 116
    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move v8, p6

    invoke-interface/range {v2 .. v8}, Lcom/anythink/china/common/a/a$a;->a(Lcom/anythink/china/common/a/e;JJI)V

    .line 118
    :cond_2c
    return-void
.end method

.method public final a(Lcom/anythink/china/common/a/e;Ljava/lang/String;)V
    .registers 5

    .line 100
    iget-object v0, p0, Lcom/anythink/china/common/service/ApkDownloadService$1;->a:Lcom/anythink/china/common/service/ApkDownloadService;

    invoke-static {v0}, Lcom/anythink/china/common/service/ApkDownloadService;->a(Lcom/anythink/china/common/service/ApkDownloadService;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 101
    iget-object v0, p0, Lcom/anythink/china/common/service/ApkDownloadService$1;->a:Lcom/anythink/china/common/service/ApkDownloadService;

    invoke-static {v0}, Lcom/anythink/china/common/service/ApkDownloadService;->a(Lcom/anythink/china/common/service/ApkDownloadService;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Lcom/anythink/china/common/a/e;->k:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_13
    iget-object v0, p0, Lcom/anythink/china/common/service/ApkDownloadService$1;->a:Lcom/anythink/china/common/service/ApkDownloadService;

    invoke-virtual {v0}, Lcom/anythink/china/common/service/ApkDownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/china/common/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/a;

    move-result-object v0

    iget-object v1, p1, Lcom/anythink/china/common/a/e;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/china/common/a;->e(Ljava/lang/String;)Lcom/anythink/china/common/a/a$a;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_28

    .line 105
    invoke-interface {v0, p1, p2}, Lcom/anythink/china/common/a/a$a;->a(Lcom/anythink/china/common/a/e;Ljava/lang/String;)V

    .line 107
    :cond_28
    return-void
.end method

.method public final b(Lcom/anythink/china/common/a/e;JJ)V
    .registers 14

    .line 92
    iget-object v0, p0, Lcom/anythink/china/common/service/ApkDownloadService$1;->a:Lcom/anythink/china/common/service/ApkDownloadService;

    invoke-virtual {v0}, Lcom/anythink/china/common/service/ApkDownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/china/common/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/a;

    move-result-object v0

    iget-object v1, p1, Lcom/anythink/china/common/a/e;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/china/common/a;->e(Ljava/lang/String;)Lcom/anythink/china/common/a/a$a;

    move-result-object v2

    .line 93
    if-eqz v2, :cond_18

    .line 94
    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/anythink/china/common/a/a$a;->b(Lcom/anythink/china/common/a/e;JJ)V

    .line 96
    :cond_18
    return-void
.end method
