.class Lcom/ss/android/downloadlib/a/b/c$1;
.super Ljava/lang/Object;
.source "ModelManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/a/b/c;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadlib/a/b/c;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/a/b/c;)V
    .registers 2

    .prologue
    .line 54
    iput-object p1, p0, Lcom/ss/android/downloadlib/a/b/c$1;->a:Lcom/ss/android/downloadlib/a/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/b/c$1;->a:Lcom/ss/android/downloadlib/a/b/c;

    invoke-static {v0}, Lcom/ss/android/downloadlib/a/b/c;->a(Lcom/ss/android/downloadlib/a/b/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 58
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/b/c$1;->a:Lcom/ss/android/downloadlib/a/b/c;

    invoke-static {v0}, Lcom/ss/android/downloadlib/a/b/c;->b(Lcom/ss/android/downloadlib/a/b/c;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {}, Lcom/ss/android/downloadlib/a/b/e;->a()Lcom/ss/android/downloadlib/a/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/downloadlib/a/b/e;->b()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 60
    :cond_1f
    return-void
.end method
