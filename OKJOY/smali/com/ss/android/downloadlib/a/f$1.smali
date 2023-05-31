.class Lcom/ss/android/downloadlib/a/f$1;
.super Ljava/lang/Object;
.source "CommonDownloadHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/a/f;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadlib/a/f;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/a/f;)V
    .registers 2

    .prologue
    .line 418
    iput-object p1, p0, Lcom/ss/android/downloadlib/a/f$1;->a:Lcom/ss/android/downloadlib/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 421
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/f$1;->a:Lcom/ss/android/downloadlib/a/f;

    invoke-static {v0}, Lcom/ss/android/downloadlib/a/f;->a(Lcom/ss/android/downloadlib/a/f;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/downloadlib/a/h;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 422
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/a/a/b/d;

    .line 423
    iget-object v2, p0, Lcom/ss/android/downloadlib/a/f$1;->a:Lcom/ss/android/downloadlib/a/f;

    invoke-static {v2}, Lcom/ss/android/downloadlib/a/f;->b(Lcom/ss/android/downloadlib/a/f;)Lcom/ss/android/a/a/c/e;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/ss/android/a/a/b/d;->b(Lcom/ss/android/a/a/c/e;)V

    goto :goto_e

    .line 425
    :cond_24
    return-void
.end method
