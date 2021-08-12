.class public Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;
.super Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;
.source "AndroidRDMLicManager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)V
    .registers 4

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9

    .line 106
    const/4 v0, 0x0

    if-eqz p1, :cond_65

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_65

    .line 112
    :cond_a
    :try_start_a
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/aj;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 113
    if-nez v1, :cond_11

    .line 114
    return v0

    .line 116
    :cond_11
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->h:Z

    if-eqz v2, :cond_22

    .line 117
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->m()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Ljava/lang/String;

    const-string v5, "lp_open_dpl"

    invoke-static {v2, v3, v4, v5, p2}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_22
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->n()V

    .line 121
    const-string p2, "START_ONLY_FOR_ANDROID"

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 122
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 123
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->h:Z

    if-eqz p1, :cond_3f

    .line 124
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->m()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Ljava/lang/String;

    const-string v3, "lp_openurl"

    invoke-static {p1, p2, v1, v3}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_3f
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->h:Z

    if-eqz p1, :cond_4e

    .line 127
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/c/k;->a()Lcom/bytedance/sdk/openadsdk/c/k;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Ljava/lang/String;

    invoke-virtual {p1, p2, v1, v2}, Lcom/bytedance/sdk/openadsdk/c/k;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Z)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_4e} :catch_51
    .catchall {:try_start_a .. :try_end_4e} :catchall_4f

    .line 129
    :cond_4e
    return v2

    .line 137
    :catchall_4f
    move-exception p1

    goto :goto_64

    .line 130
    :catch_51
    move-exception p1

    .line 131
    :try_start_52
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->h:Z

    if-eqz p1, :cond_63

    .line 132
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->m()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Ljava/lang/String;

    const-string v2, "lp_openurl_failed"

    invoke-static {p1, p2, v1, v2}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_63
    .catchall {:try_start_52 .. :try_end_63} :catchall_4f

    .line 134
    :cond_63
    return v0

    .line 139
    :goto_64
    return v0

    .line 107
    :cond_65
    :goto_65
    return v0
.end method


# virtual methods
.method public j()Z
    .registers 7

    .line 87
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 88
    return v1

    .line 90
    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->d()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_41

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->m()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 93
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 95
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const-string v3, "click_open"

    invoke-virtual {p0, v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 96
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->h(Lcom/bytedance/sdk/openadsdk/core/d/l;)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->m()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v0, v5}, Lcom/bytedance/sdk/openadsdk/c/d;->j(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 99
    :cond_40
    return v1

    .line 101
    :cond_41
    return v1
.end method

.method public k()Z
    .registers 10

    .line 31
    const-string v0, "open_url_app"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ai()Lcom/bytedance/sdk/openadsdk/core/d/g;

    move-result-object v1

    if-eqz v1, :cond_112

    .line 32
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ai()Lcom/bytedance/sdk/openadsdk/core/d/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/g;->a()Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_db

    .line 34
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 35
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v5, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 38
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->h:Z

    if-eqz v2, :cond_3f

    .line 39
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->m()Landroid/content/Context;

    move-result-object v2

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v8, "lp_open_dpl"

    invoke-static {v2, v6, v7, v8, v1}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_3f
    :try_start_3f
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->m()Landroid/content/Context;

    move-result-object v1

    .line 44
    instance-of v2, v1, Landroid/app/Activity;

    if-nez v2, :cond_4c

    .line 45
    const/high16 v2, 0x10000000

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 48
    :cond_4c
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p0, v2, v0, v6}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v2

    if-nez v2, :cond_61

    .line 49
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->m()Landroid/content/Context;

    move-result-object v2

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Ljava/lang/String;

    invoke-static {v2, v6, v7, v0, v3}, Lcom/bytedance/sdk/openadsdk/c/d;->i(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 51
    :cond_61
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->n()V

    .line 52
    invoke-virtual {v1, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 54
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/c/k;->a()Lcom/bytedance/sdk/openadsdk/c/k;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->h:Z

    invoke-virtual {v0, v1, v2, v5}, Lcom/bytedance/sdk/openadsdk/c/k;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Z)V

    .line 55
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->h:Z

    if-eqz v0, :cond_93

    .line 56
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->m()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Ljava/lang/String;

    const-string v5, "lp_openurl"

    invoke-static {v0, v1, v2, v5}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Ljava/lang/String;

    const-string v5, "lp_deeplink_success_realtime"

    invoke-static {v0, v1, v2, v5}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a0

    .line 59
    :cond_93
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Ljava/lang/String;

    const-string v5, "deeplink_success_realtime"

    invoke-static {v0, v1, v2, v5}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a0
    .catchall {:try_start_3f .. :try_end_a0} :catchall_a1

    .line 61
    :goto_a0
    return v4

    .line 62
    :catchall_a1
    move-exception v0

    .line 63
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->m()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Ljava/lang/String;

    const-string v5, "open_fallback_download"

    invoke-static {v0, v1, v2, v5}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->h:Z

    if-eqz v0, :cond_ce

    .line 65
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->m()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Ljava/lang/String;

    const-string v5, "lp_openurl_failed"

    invoke-static {v0, v1, v2, v5}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Ljava/lang/String;

    const-string v5, "lp_deeplink_fail_realtime"

    invoke-static {v0, v1, v2, v5}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_db

    .line 68
    :cond_ce
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Ljava/lang/String;

    const-string v5, "deeplink_fail_realtime"

    invoke-static {v0, v1, v2, v5}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_db
    :goto_db
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_112

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_112

    .line 74
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->g:Z

    if-eqz v0, :cond_f9

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_112

    .line 75
    :cond_f9
    iput-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->g:Z

    .line 76
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const-string v2, "open_fallback_url"

    invoke-virtual {p0, v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v0

    if-nez v0, :cond_112

    .line 77
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->m()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Ljava/lang/String;

    invoke-static {v0, v1, v4, v2, v3}, Lcom/bytedance/sdk/openadsdk/c/d;->i(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 82
    :cond_112
    const/4 v0, 0x0

    return v0
.end method
