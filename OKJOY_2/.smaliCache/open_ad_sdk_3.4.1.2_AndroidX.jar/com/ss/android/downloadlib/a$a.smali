.class Lcom/ss/android/downloadlib/a$a;
.super Ljava/lang/Object;
.source "AdDownloadCompletedEventHandlerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
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

    .line 1045
    iput-object p1, p0, Lcom/ss/android/downloadlib/a$a;->a:Lcom/ss/android/downloadlib/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1046
    iput p2, p0, Lcom/ss/android/downloadlib/a$a;->b:I

    .line 1047
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1052
    :try_start_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/addownload/b/f;->b()V

    .line 1053
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/addownload/b/f;->c()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    .line 1054
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 1055
    iget-object v1, p0, Lcom/ss/android/downloadlib/a$a;->a:Lcom/ss/android/downloadlib/a;

    iget v2, p0, Lcom/ss/android/downloadlib/a$a;->b:I

    invoke-static {v1, v0, v2}, Lcom/ss/android/downloadlib/a;->a(Lcom/ss/android/downloadlib/a;Ljava/util/concurrent/ConcurrentHashMap;I)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 1059
    :cond_1e
    goto :goto_23

    .line 1057
    :catch_1f
    move-exception v0

    .line 1058
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1060
    :goto_23
    return-void
.end method
