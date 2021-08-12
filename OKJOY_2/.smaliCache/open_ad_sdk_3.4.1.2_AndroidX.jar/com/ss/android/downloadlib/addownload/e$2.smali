.class Lcom/ss/android/downloadlib/addownload/e$2;
.super Ljava/lang/Object;
.source "CleanSpaceHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/e;->a(IJJLcom/ss/android/downloadlib/addownload/f$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadlib/addownload/f$a;

.field final synthetic b:Lcom/ss/android/downloadlib/addownload/e;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/addownload/e;Lcom/ss/android/downloadlib/addownload/f$a;)V
    .registers 3

    .line 111
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/e$2;->b:Lcom/ss/android/downloadlib/addownload/e;

    iput-object p2, p0, Lcom/ss/android/downloadlib/addownload/e$2;->a:Lcom/ss/android/downloadlib/addownload/f$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 114
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e$2;->b:Lcom/ss/android/downloadlib/addownload/e;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/e;->a(Lcom/ss/android/downloadlib/addownload/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 116
    return-void

    .line 118
    :cond_d
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e$2;->b:Lcom/ss/android/downloadlib/addownload/e;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/e;->a(Lcom/ss/android/downloadlib/addownload/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 119
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e$2;->a:Lcom/ss/android/downloadlib/addownload/f$a;

    invoke-interface {v0}, Lcom/ss/android/downloadlib/addownload/f$a;->a()V

    .line 120
    return-void
.end method
