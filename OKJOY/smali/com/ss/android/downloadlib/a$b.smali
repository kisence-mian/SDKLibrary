.class Lcom/ss/android/downloadlib/a$b;
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
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadlib/a;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/a;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 637
    iput-object p1, p0, Lcom/ss/android/downloadlib/a$b;->a:Lcom/ss/android/downloadlib/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 638
    iput-object p2, p0, Lcom/ss/android/downloadlib/a$b;->b:Ljava/lang/String;

    .line 639
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 644
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$b;->a:Lcom/ss/android/downloadlib/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/a;->a(Lcom/ss/android/downloadlib/a;Z)Z

    .line 645
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$b;->a:Lcom/ss/android/downloadlib/a;

    iget-object v1, p0, Lcom/ss/android/downloadlib/a$b;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/a;->a(Lcom/ss/android/downloadlib/a;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_14
    .catchall {:try_start_1 .. :try_end_e} :catchall_1e

    .line 649
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$b;->a:Lcom/ss/android/downloadlib/a;

    invoke-static {v0, v2}, Lcom/ss/android/downloadlib/a;->a(Lcom/ss/android/downloadlib/a;Z)Z

    .line 651
    :goto_13
    return-void

    .line 646
    :catch_14
    move-exception v0

    .line 647
    :try_start_15
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_1e

    .line 649
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$b;->a:Lcom/ss/android/downloadlib/a;

    invoke-static {v0, v2}, Lcom/ss/android/downloadlib/a;->a(Lcom/ss/android/downloadlib/a;Z)Z

    goto :goto_13

    :catchall_1e
    move-exception v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/a$b;->a:Lcom/ss/android/downloadlib/a;

    invoke-static {v1, v2}, Lcom/ss/android/downloadlib/a;->a(Lcom/ss/android/downloadlib/a;Z)Z

    throw v0
.end method
