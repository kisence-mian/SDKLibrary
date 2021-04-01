.class Lcom/ss/android/downloadlib/a$a;
.super Ljava/lang/Object;
.source "AdDownloadCompletedEventHandlerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/support/annotation/WorkerThread;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadlib/a;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/a;I)V
    .registers 3

    .prologue
    .line 663
    iput-object p1, p0, Lcom/ss/android/downloadlib/a$a;->a:Lcom/ss/android/downloadlib/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 664
    iput p2, p0, Lcom/ss/android/downloadlib/a$a;->b:I

    .line 665
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 670
    :try_start_0
    invoke-static {}, Lcom/ss/android/downloadlib/a/b/c;->a()Lcom/ss/android/downloadlib/a/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/a/b/c;->b()V

    .line 671
    invoke-static {}, Lcom/ss/android/downloadlib/a/b/c;->a()Lcom/ss/android/downloadlib/a/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/a/b/c;->c()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    .line 672
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 673
    iget-object v1, p0, Lcom/ss/android/downloadlib/a$a;->a:Lcom/ss/android/downloadlib/a;

    iget v2, p0, Lcom/ss/android/downloadlib/a$a;->b:I

    invoke-static {v1, v0, v2}, Lcom/ss/android/downloadlib/a;->a(Lcom/ss/android/downloadlib/a;Ljava/util/concurrent/ConcurrentHashMap;I)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 678
    :cond_1e
    :goto_1e
    return-void

    .line 675
    :catch_1f
    move-exception v0

    .line 676
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e
.end method
