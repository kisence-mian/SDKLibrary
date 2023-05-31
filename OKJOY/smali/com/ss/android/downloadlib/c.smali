.class public Lcom/ss/android/downloadlib/c;
.super Ljava/lang/Object;
.source "BaseDownloadMonitorListener.java"

# interfaces
.implements Lcom/ss/android/socialbase/appdownloader/c/h;


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-class v0, Lcom/ss/android/downloadlib/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/downloadlib/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/downloadad/a/b/a;)V
    .registers 6
    .param p1    # Lcom/ss/android/socialbase/downloader/g/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ss/android/downloadad/a/b/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 77
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/k/a;->a(I)Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v0

    const-string v1, "exec_clear_space_switch"

    const/4 v2, 0x0

    .line 78
    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_13

    .line 84
    :goto_12
    return-void

    .line 82
    :cond_13
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    const-string v1, "cleanspace_switch_open"

    invoke-virtual {v0, v1, p2}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)V

    .line 83
    invoke-static {}, Lcom/ss/android/downloadlib/d;->a()Lcom/ss/android/downloadlib/d;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/a/c/b;

    invoke-direct {v1, p1}, Lcom/ss/android/downloadlib/a/c/b;-><init>(Lcom/ss/android/socialbase/downloader/g/c;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/d;->a(Ljava/lang/Runnable;)V

    goto :goto_12
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;I)V
    .registers 8

    .prologue
    .line 34
    if-nez p1, :cond_3

    .line 68
    :cond_2
    :goto_2
    return-void

    .line 38
    :cond_3
    const/4 v0, -0x1

    if-ne p3, v0, :cond_80

    .line 39
    const/4 v0, 0x0

    .line 40
    if-eqz p2, :cond_6a

    .line 41
    :try_start_9
    invoke-static {p2}, Lcom/ss/android/downloadlib/e/g;->a(Lcom/ss/android/socialbase/downloader/e/a;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 42
    invoke-static {}, Lcom/ss/android/downloadlib/a/b/c;->a()Lcom/ss/android/downloadlib/a/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/a/b/c;->a(Lcom/ss/android/socialbase/downloader/g/c;)Lcom/ss/android/downloadad/a/b/a;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_4d

    .line 44
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->l()Lcom/ss/android/a/a/a/k;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 45
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->l()Lcom/ss/android/a/a/a/k;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/b/a;->a()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/ss/android/a/a/a/k;->a(J)V

    .line 47
    :cond_2a
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v1

    const-string v2, "download_failed_for_space"

    invoke-virtual {v1, v2, v0}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)V

    .line 49
    invoke-static {}, Lcom/ss/android/downloadlib/a/c/d;->a()Lcom/ss/android/downloadlib/a/c/d;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadlib/a/c/d;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 50
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v1

    const-string v2, "download_can_restart"

    invoke-virtual {v1, v2, v0}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)V

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/ss/android/downloadlib/c;->a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/downloadad/a/b/a;)V

    .line 55
    :cond_4d
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->i()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "exception_msg_length"

    const/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 56
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/e/a;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 57
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/a;

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/e/a;->a()I

    move-result v2

    invoke-direct {v0, v2, v1}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    .line 59
    :cond_6a
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/ss/android/downloadlib/d/a;->a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;)V

    .line 60
    invoke-static {}, Lcom/ss/android/downloadlib/g;->a()Lcom/ss/android/downloadlib/g;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p1, p2, v1}, Lcom/ss/android/downloadlib/g;->a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;Ljava/lang/String;)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_7a} :catch_7b

    goto :goto_2

    .line 65
    :catch_7b
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 61
    :cond_80
    const/4 v0, -0x3

    if-ne p3, v0, :cond_2

    .line 62
    :try_start_83
    invoke-static {}, Lcom/ss/android/downloadlib/a/b/c;->a()Lcom/ss/android/downloadlib/a/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/a/b/c;->a(Lcom/ss/android/socialbase/downloader/g/c;)Lcom/ss/android/downloadad/a/b/a;

    move-result-object v0

    .line 63
    invoke-static {p1, v0}, Lcom/ss/android/downloadlib/a;->a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/downloadad/a/b/a;)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_8e} :catch_7b

    goto/16 :goto_2
.end method
