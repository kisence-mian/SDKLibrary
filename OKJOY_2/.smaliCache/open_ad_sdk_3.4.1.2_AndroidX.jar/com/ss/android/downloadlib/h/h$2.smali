.class final Lcom/ss/android/downloadlib/h/h$2;
.super Ljava/lang/Object;
.source "OpenAppUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/h/h;->d(Landroid/content/Context;Lcom/ss/android/downloadlib/addownload/b/e;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ss/android/downloadlib/addownload/b/e;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/ss/android/downloadlib/addownload/b/e;)V
    .registers 4

    .line 385
    iput-object p1, p0, Lcom/ss/android/downloadlib/h/h$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/ss/android/downloadlib/h/h$2;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/ss/android/downloadlib/h/h$2;->c:Lcom/ss/android/downloadlib/addownload/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 388
    const-string v0, "error_code"

    const-string v1, "am_result"

    const-string v2, "ttdownloader_type"

    iget-object v3, p0, Lcom/ss/android/downloadlib/h/h$2;->a:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "market://details?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/ss/android/downloadlib/h/h$2;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ss/android/downloadlib/h/h;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/ss/android/downloadlib/addownload/b/g;

    move-result-object v3

    iget-object v4, p0, Lcom/ss/android/downloadlib/h/h$2;->c:Lcom/ss/android/downloadlib/addownload/b/e;

    invoke-static {v3, v4}, Lcom/ss/android/downloadlib/b/a;->a(Lcom/ss/android/downloadlib/addownload/b/g;Lcom/ss/android/downloadlib/addownload/b/e;)V

    .line 389
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 392
    const/4 v4, 0x3

    const/4 v5, 0x1

    :try_start_31
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->i()Lorg/json/JSONObject;

    move-result-object v6

    .line 393
    const-string v7, "m2_delay_millis"

    const/16 v8, 0x3e8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 394
    invoke-static {}, Lcom/ss/android/downloadlib/a/c/a;->a()Lcom/ss/android/downloadlib/a/c/a;

    move-result-object v7

    iget-object v8, p0, Lcom/ss/android/downloadlib/h/h$2;->a:Landroid/content/Context;

    invoke-virtual {v7, v8, v5}, Lcom/ss/android/downloadlib/a/c/a;->a(Landroid/content/Context;Z)Z

    .line 395
    new-instance v7, Lcom/ss/android/downloadlib/a/c/b;

    invoke-direct {v7}, Lcom/ss/android/downloadlib/a/c/b;-><init>()V

    .line 396
    iput v5, v7, Lcom/ss/android/downloadlib/a/c/b;->a:I

    .line 397
    const/4 v8, 0x0

    iput v8, v7, Lcom/ss/android/downloadlib/a/c/b;->b:I

    .line 398
    const-string v9, "s"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 399
    const-string v10, "v"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Lcom/ss/android/socialbase/appdownloader/f/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 400
    new-array v9, v5, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/ss/android/downloadlib/h/h$2;->b:Ljava/lang/String;

    aput-object v10, v9, v8

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/ss/android/downloadlib/a/c/b;->c:Ljava/lang/String;

    .line 402
    invoke-static {}, Lcom/ss/android/downloadlib/a/c/a;->a()Lcom/ss/android/downloadlib/a/c/a;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/ss/android/downloadlib/a/c/a;->a(Lcom/ss/android/downloadlib/a/c/b;Lcom/ss/android/downloadlib/a/c/d;)V

    .line 403
    invoke-static {}, Lcom/ss/android/downloadlib/a/c/a;->a()Lcom/ss/android/downloadlib/a/c/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ss/android/downloadlib/a/c/a;->b()V

    .line 404
    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v0, v6}, Lcom/ss/android/downloadlib/h/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_87
    .catchall {:try_start_31 .. :try_end_87} :catchall_88

    goto :goto_93

    .line 405
    :catchall_88
    move-exception v6

    .line 406
    :try_start_89
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 407
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v0, v5}, Lcom/ss/android/downloadlib/h/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_93
    .catchall {:try_start_89 .. :try_end_93} :catchall_a5

    .line 409
    :goto_93
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3, v2, v0}, Lcom/ss/android/downloadlib/h/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 410
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v0

    iget-object v2, p0, Lcom/ss/android/downloadlib/h/h$2;->c:Lcom/ss/android/downloadlib/addownload/b/e;

    invoke-virtual {v0, v1, v3, v2}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 411
    nop

    .line 412
    return-void

    .line 409
    :catchall_a5
    move-exception v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/ss/android/downloadlib/h/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 410
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v2

    iget-object v4, p0, Lcom/ss/android/downloadlib/h/h$2;->c:Lcom/ss/android/downloadlib/addownload/b/e;

    invoke-virtual {v2, v1, v3, v4}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    throw v0
.end method
