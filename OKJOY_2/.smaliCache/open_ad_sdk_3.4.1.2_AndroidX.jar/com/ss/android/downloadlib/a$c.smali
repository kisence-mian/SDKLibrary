.class Lcom/ss/android/downloadlib/a$c;
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
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadlib/a;

.field private final b:Lcom/ss/android/downloadad/a/b/b;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/a;Lcom/ss/android/downloadad/a/b/b;)V
    .registers 3

    .line 1019
    iput-object p1, p0, Lcom/ss/android/downloadlib/a$c;->a:Lcom/ss/android/downloadlib/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1020
    iput-object p2, p0, Lcom/ss/android/downloadlib/a$c;->b:Lcom/ss/android/downloadad/a/b/b;

    .line 1021
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1026
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/ss/android/downloadlib/a$c;->b:Lcom/ss/android/downloadad/a/b/b;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/b/b;->j(Z)V

    .line 1027
    iget-object v1, p0, Lcom/ss/android/downloadlib/a$c;->a:Lcom/ss/android/downloadlib/a;

    iget-object v2, p0, Lcom/ss/android/downloadlib/a$c;->b:Lcom/ss/android/downloadad/a/b/b;

    invoke-static {v1, v2}, Lcom/ss/android/downloadlib/a;->a(Lcom/ss/android/downloadlib/a;Lcom/ss/android/downloadad/a/b/b;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_11
    .catchall {:try_start_1 .. :try_end_e} :catchall_f

    goto :goto_15

    .line 1031
    :catchall_f
    move-exception v1

    goto :goto_1c

    .line 1028
    :catch_11
    move-exception v1

    .line 1029
    :try_start_12
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_f

    .line 1031
    :goto_15
    iget-object v1, p0, Lcom/ss/android/downloadlib/a$c;->b:Lcom/ss/android/downloadad/a/b/b;

    invoke-virtual {v1, v0}, Lcom/ss/android/downloadad/a/b/b;->j(Z)V

    .line 1032
    nop

    .line 1033
    return-void

    .line 1031
    :goto_1c
    iget-object v2, p0, Lcom/ss/android/downloadlib/a$c;->b:Lcom/ss/android/downloadad/a/b/b;

    invoke-virtual {v2, v0}, Lcom/ss/android/downloadad/a/b/b;->j(Z)V

    throw v1
.end method
