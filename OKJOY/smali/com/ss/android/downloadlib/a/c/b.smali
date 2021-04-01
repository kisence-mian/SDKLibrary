.class public Lcom/ss/android/downloadlib/a/c/b;
.super Ljava/lang/Object;
.source "CleanSpaceTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/ss/android/socialbase/downloader/g/c;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/ss/android/downloadlib/a/c/b;->a:Lcom/ss/android/socialbase/downloader/g/c;

    .line 31
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/c/b;->a:Lcom/ss/android/socialbase/downloader/g/c;

    if-nez v0, :cond_5

    .line 98
    :cond_4
    :goto_4
    return-void

    .line 38
    :cond_5
    invoke-static {}, Lcom/ss/android/downloadlib/a/b/c;->a()Lcom/ss/android/downloadlib/a/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/a/c/b;->a:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/a/b/c;->a(Lcom/ss/android/socialbase/downloader/g/c;)Lcom/ss/android/downloadad/a/b/a;

    move-result-object v4

    .line 39
    if-eqz v4, :cond_4

    .line 42
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    const-string v1, "cleanspace_task"

    invoke-virtual {v0, v1, v4}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)V

    .line 44
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 45
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->s()D

    move-result-wide v2

    .line 46
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v6

    iget-object v1, p0, Lcom/ss/android/downloadlib/a/c/b;->a:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->ab()J

    move-result-wide v6

    long-to-double v6, v6

    mul-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->longValue()J

    move-result-wide v6

    .line 49
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->l()Lcom/ss/android/a/a/a/k;

    move-result-object v1

    if-eqz v1, :cond_42

    .line 50
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->l()Lcom/ss/android/a/a/a/k;

    move-result-object v1

    invoke-interface {v1}, Lcom/ss/android/a/a/a/k;->c()V

    .line 54
    :cond_42
    invoke-static {}, Lcom/ss/android/downloadlib/a/c/c;->a()V

    .line 55
    invoke-static {}, Lcom/ss/android/downloadlib/a/c/c;->b()V

    .line 57
    const-wide/16 v2, 0x0

    .line 59
    :try_start_4a
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/f;->c(Ljava/lang/String;)J
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_51} :catch_96

    move-result-wide v0

    .line 64
    :goto_52
    cmp-long v0, v0, v6

    if-ltz v0, :cond_9c

    const/4 v0, 0x1

    .line 66
    :goto_57
    if-eqz v0, :cond_9e

    .line 67
    invoke-static {}, Lcom/ss/android/downloadlib/a/c/d;->a()Lcom/ss/android/downloadlib/a/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/a/c/d;->b()Landroid/util/LongSparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/a/c/b;->a:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    int-to-long v2, v1

    const-string v1, "1"

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 68
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    const-string v1, "cleanspace_download_after_quite_clean"

    invoke-virtual {v0, v1, v4}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)V

    .line 69
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/a/c/b;->a:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/f;->e(I)V

    .line 70
    invoke-static {}, Lcom/ss/android/downloadlib/a/c/d;->a()Lcom/ss/android/downloadlib/a/c/d;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/a/c/b;->a:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/a/c/d;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 60
    :catch_96
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-wide v0, v2

    goto :goto_52

    .line 64
    :cond_9c
    const/4 v0, 0x0

    goto :goto_57

    .line 72
    :cond_9e
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->l()Lcom/ss/android/a/a/a/k;

    move-result-object v0

    if-eqz v0, :cond_f5

    .line 73
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->l()Lcom/ss/android/a/a/a/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/ss/android/a/a/a/k;->b()Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 75
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->l()Lcom/ss/android/a/a/a/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/ss/android/a/a/a/k;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 76
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->l()Lcom/ss/android/a/a/a/k;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/a/c/b;->a:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/a/c/b;->a:Lcom/ss/android/socialbase/downloader/g/c;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->j()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v6, v7}, Lcom/ss/android/a/a/a/k;->a(ILjava/lang/String;J)V

    .line 77
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    const-string v1, "cleanspace_need_user_clean"

    invoke-virtual {v0, v1, v4}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)V

    goto/16 :goto_4

    .line 80
    :cond_d6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 82
    :try_start_db
    const-string v0, "show_dialog_result"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e5
    .catch Lorg/json/JSONException; {:try_start_db .. :try_end_e5} :catch_f0

    .line 86
    :goto_e5
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    const-string v2, "cleanspace_window_show"

    invoke-virtual {v0, v2, v1, v4}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    goto/16 :goto_4

    .line 83
    :catch_f0
    move-exception v0

    .line 84
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_e5

    .line 89
    :cond_f5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 91
    :try_start_fa
    const-string v0, "show_dialog_result"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_104
    .catch Lorg/json/JSONException; {:try_start_fa .. :try_end_104} :catch_10f

    .line 95
    :goto_104
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    const-string v2, "cleanspace_window_show"

    invoke-virtual {v0, v2, v1, v4}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    goto/16 :goto_4

    .line 92
    :catch_10f
    move-exception v0

    .line 93
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_104
.end method
