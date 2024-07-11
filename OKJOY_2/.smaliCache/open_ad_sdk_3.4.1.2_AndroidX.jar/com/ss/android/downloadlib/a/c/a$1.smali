.class Lcom/ss/android/downloadlib/a/c/a$1;
.super Ljava/lang/Object;
.source "AidlClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/a/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadlib/a/c/a;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/a/c/a;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/ss/android/downloadlib/a/c/a$1;->a:Lcom/ss/android/downloadlib/a/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .line 44
    iget-object p1, p0, Lcom/ss/android/downloadlib/a/c/a$1;->a:Lcom/ss/android/downloadlib/a/c/a;

    iget-object p1, p1, Lcom/ss/android/downloadlib/a/c/a;->c:Ljava/lang/Object;

    monitor-enter p1

    .line 46
    :try_start_5
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/c/a$1;->a:Lcom/ss/android/downloadlib/a/c/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/a/c/a;->a(Z)V

    .line 47
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/c/a$1;->a:Lcom/ss/android/downloadlib/a/c/a;

    invoke-static {p2}, Lcom/ss/android/downloadlib/a/c/c$a;->a(Landroid/os/IBinder;)Lcom/ss/android/downloadlib/a/c/c;

    move-result-object p2

    iput-object p2, v0, Lcom/ss/android/downloadlib/a/c/a;->a:Lcom/ss/android/downloadlib/a/c/c;

    .line 48
    iget-object p2, p0, Lcom/ss/android/downloadlib/a/c/a$1;->a:Lcom/ss/android/downloadlib/a/c/a;

    invoke-virtual {p2}, Lcom/ss/android/downloadlib/a/c/a;->c()V

    .line 49
    iget-object p2, p0, Lcom/ss/android/downloadlib/a/c/a$1;->a:Lcom/ss/android/downloadlib/a/c/a;

    iget-object p2, p2, Lcom/ss/android/downloadlib/a/c/a;->b:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_20
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/downloadlib/a/c/a$a;

    .line 50
    invoke-interface {v0}, Lcom/ss/android/downloadlib/a/c/a$a;->a()V

    .line 51
    goto :goto_20

    .line 52
    :cond_30
    monitor-exit p1

    .line 53
    return-void

    .line 52
    :catchall_32
    move-exception p2

    monitor-exit p1
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_32

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .line 56
    iget-object p1, p0, Lcom/ss/android/downloadlib/a/c/a$1;->a:Lcom/ss/android/downloadlib/a/c/a;

    iget-object p1, p1, Lcom/ss/android/downloadlib/a/c/a;->c:Ljava/lang/Object;

    monitor-enter p1

    .line 58
    :try_start_5
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/c/a$1;->a:Lcom/ss/android/downloadlib/a/c/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/a/c/a;->a(Z)V

    .line 59
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/c/a$1;->a:Lcom/ss/android/downloadlib/a/c/a;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/ss/android/downloadlib/a/c/a;->a:Lcom/ss/android/downloadlib/a/c/c;

    .line 60
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/c/a$1;->a:Lcom/ss/android/downloadlib/a/c/a;

    iget-object v0, v0, Lcom/ss/android/downloadlib/a/c/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/downloadlib/a/c/a$a;

    .line 61
    invoke-interface {v1}, Lcom/ss/android/downloadlib/a/c/a$a;->b()V

    .line 62
    goto :goto_18

    .line 63
    :cond_28
    monitor-exit p1

    .line 64
    return-void

    .line 63
    :catchall_2a
    move-exception v0

    monitor-exit p1
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_2a

    throw v0
.end method
