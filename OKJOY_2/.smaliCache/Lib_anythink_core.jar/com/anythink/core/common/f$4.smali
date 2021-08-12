.class final Lcom/anythink/core/common/f$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/f;->a(Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/c/c$b;Ljava/util/Map;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/api/ATBaseAdAdapter;

.field final synthetic b:Lcom/anythink/core/c/c$b;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/anythink/core/common/f;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/f;Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/c/c$b;Ljava/util/Map;)V
    .registers 5

    .line 696
    iput-object p1, p0, Lcom/anythink/core/common/f$4;->d:Lcom/anythink/core/common/f;

    iput-object p2, p0, Lcom/anythink/core/common/f$4;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    iput-object p3, p0, Lcom/anythink/core/common/f$4;->b:Lcom/anythink/core/c/c$b;

    iput-object p4, p0, Lcom/anythink/core/common/f$4;->c:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    .line 699
    iget-object v0, p0, Lcom/anythink/core/common/f$4;->d:Lcom/anythink/core/common/f;

    iget-object v1, p0, Lcom/anythink/core/common/f$4;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/api/ATBaseAdAdapter;)V

    .line 701
    iget-object v0, p0, Lcom/anythink/core/common/f$4;->d:Lcom/anythink/core/common/f;

    iget-object v0, v0, Lcom/anythink/core/common/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 703
    const-string v1, ""

    const-string v2, "2006"

    if-nez v0, :cond_25

    .line 704
    iget-object v0, p0, Lcom/anythink/core/common/f$4;->d:Lcom/anythink/core/common/f;

    iget-object v3, p0, Lcom/anythink/core/common/f$4;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    const-string v4, "Request Context is null! Please check the Ad init Context."

    invoke-static {v2, v1, v4}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/api/AdError;)V

    .line 705
    return-void

    .line 708
    :cond_25
    invoke-static {}, Lcom/anythink/core/c/a;->U()Z

    move-result v3

    if-eqz v3, :cond_61

    .line 709
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/anythink/core/common/b/h;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/h;

    move-result-object v3

    .line 712
    :try_start_37
    iget-object v4, p0, Lcom/anythink/core/common/f$4;->b:Lcom/anythink/core/c/c$b;

    iget v4, v4, Lcom/anythink/core/c/c$b;->b:I

    invoke-virtual {v3, v4}, Lcom/anythink/core/common/b/h;->c(I)Z

    move-result v4

    if-nez v4, :cond_5c

    iget-object v4, p0, Lcom/anythink/core/common/f$4;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    .line 713
    invoke-virtual {v3}, Lcom/anythink/core/common/b/h;->c()Z

    move-result v5

    iget-object v6, p0, Lcom/anythink/core/common/f$4;->d:Lcom/anythink/core/common/f;

    iget-object v6, v6, Lcom/anythink/core/common/f;->b:Landroid/content/Context;

    invoke-static {v6}, Lcom/anythink/core/api/ATSDK;->isEUTraffic(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v4, v0, v5, v6}, Lcom/anythink/core/api/ATBaseAdAdapter;->setUserDataConsent(Landroid/content/Context;ZZ)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 714
    iget-object v4, p0, Lcom/anythink/core/common/f$4;->b:Lcom/anythink/core/c/c$b;

    iget v4, v4, Lcom/anythink/core/c/c$b;->b:I

    invoke-virtual {v3, v4}, Lcom/anythink/core/common/b/h;->b(I)V
    :try_end_5c
    .catchall {:try_start_37 .. :try_end_5c} :catchall_5d

    .line 718
    :cond_5c
    goto :goto_61

    .line 717
    :catchall_5d
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 721
    :cond_61
    :goto_61
    :try_start_61
    invoke-static {}, Lcom/anythink/core/common/o;->a()Lcom/anythink/core/common/o;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/core/common/f$4;->d:Lcom/anythink/core/common/f;

    iget-object v4, v4, Lcom/anythink/core/common/f;->q:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/anythink/core/common/o;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 723
    const-string v4, "4"

    iget-object v5, p0, Lcom/anythink/core/common/f$4;->d:Lcom/anythink/core/common/f;

    iget-object v5, v5, Lcom/anythink/core/common/f;->o:Lcom/anythink/core/c/c;

    invoke-virtual {v5}, Lcom/anythink/core/c/c;->y()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8e

    .line 724
    iget-object v4, p0, Lcom/anythink/core/common/f$4;->d:Lcom/anythink/core/common/f;

    iget-object v4, v4, Lcom/anythink/core/common/f;->D:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, p0, Lcom/anythink/core/common/f$4;->b:Lcom/anythink/core/c/c$b;

    iget-object v5, v5, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    iget-object v6, p0, Lcom/anythink/core/common/f$4;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    :cond_8e
    iget-object v4, p0, Lcom/anythink/core/common/f$4;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    iget-object v5, p0, Lcom/anythink/core/common/f$4;->c:Ljava/util/Map;

    new-instance v6, Lcom/anythink/core/common/f$a;

    iget-object v7, p0, Lcom/anythink/core/common/f$4;->d:Lcom/anythink/core/common/f;

    iget-object v8, p0, Lcom/anythink/core/common/f$4;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/anythink/core/common/f$a;-><init>(Lcom/anythink/core/common/f;Lcom/anythink/core/api/ATBaseAdAdapter;B)V

    invoke-virtual {v4, v0, v5, v3, v6}, Lcom/anythink/core/api/ATBaseAdAdapter;->internalLoad(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Lcom/anythink/core/api/ATCustomLoadListener;)V
    :try_end_9f
    .catchall {:try_start_61 .. :try_end_9f} :catchall_a0

    .line 730
    return-void

    .line 728
    :catchall_a0
    move-exception v0

    .line 729
    iget-object v3, p0, Lcom/anythink/core/common/f$4;->d:Lcom/anythink/core/common/f;

    iget-object v4, p0, Lcom/anythink/core/common/f$4;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/api/AdError;)V

    .line 732
    return-void
.end method
