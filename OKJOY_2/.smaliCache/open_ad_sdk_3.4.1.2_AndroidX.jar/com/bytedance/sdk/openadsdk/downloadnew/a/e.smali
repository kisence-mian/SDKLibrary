.class public Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;
.super Ljava/lang/Object;
.source "DMLibWebManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Lcom/ss/android/a/a/b/c;

.field private final d:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field private e:Ljava/lang/String;

.field private f:Lcom/ss/android/a/a/b/a;

.field private g:Lcom/ss/android/a/a/b/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)V
    .registers 6

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;->a:Ljava/lang/ref/WeakReference;

    .line 49
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 50
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;->e:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;->b:Ljava/lang/String;

    .line 52
    const/4 p1, 0x0

    invoke-static {p2, p4, p3, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;Lorg/json/JSONObject;)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/a/c$a;->a()Lcom/ss/android/downloadad/a/a/c;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;->c:Lcom/ss/android/a/a/b/c;

    .line 53
    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/b;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Lcom/ss/android/downloadad/a/a/a$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/a/a$a;->a()Lcom/ss/android/downloadad/a/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;->f:Lcom/ss/android/a/a/b/a;

    .line 54
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;->e:Ljava/lang/String;

    invoke-static {p3, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/b;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/a/b$a;->a()Lcom/ss/android/downloadad/a/a/b;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;->g:Lcom/ss/android/a/a/b/b;

    .line 55
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;->a()V

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;)V
    .registers 1

    .line 36
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;->p()V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z
    .registers 4

    .line 156
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 157
    return v0

    .line 159
    :cond_4
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->L()I

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_d

    move p1, v0

    goto :goto_e

    :cond_d
    move p1, v1

    .line 160
    :goto_e
    if-eqz p1, :cond_11

    .line 161
    return v1

    .line 163
    :cond_11
    return v0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;)Ljava/lang/String;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;->e:Ljava/lang/String;

    return-object p0
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 10

    .line 168
    if-nez p1, :cond_3

    .line 169
    return-void

    .line 172
    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->Q()Ljava/lang/String;

    move-result-object v1

    .line 173
    nop

    .line 174
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/f;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Ljava/lang/String;

    move-result-object v3

    .line 175
    nop

    .line 176
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->U()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_19

    .line 178
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_1c

    .line 177
    :cond_19
    const-string v0, ""

    move-object v4, v0

    .line 180
    :goto_1c
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->T()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_25

    const/4 v0, 0x1

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    move v5, v0

    .line 181
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;->o()Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "pop_up"

    invoke-static {v0, p1, v2, v7, v6}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 182
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e$1;

    invoke-direct {v2, p0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e$1;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/utils/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/g$a;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 200
    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;)Lorg/json/JSONObject;
    .registers 1

    .line 36
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;->o()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private k()Landroid/content/Context;
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_14

    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_18

    :cond_14
    :goto_14
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    :goto_18
    return-object v0
.end method

.method private declared-synchronized l()V
    .registers 4

    monitor-enter p0

    .line 68
    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->d()Lcom/ss/android/downloadlib/g;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/g;->a(Ljava/lang/String;I)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 69
    monitor-exit p0

    return-void

    .line 67
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized m()V
    .registers 9

    monitor-enter p0

    .line 72
    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;->n()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 73
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->d()Lcom/ss/android/downloadlib/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/g;->e()Lcom/ss/android/downloadad/a/b;

    move-result-object v1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;->k()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;->c:Lcom/ss/android/a/a/b/c;

    .line 74
    invoke-interface {v0}, Lcom/ss/android/a/a/b/c;->d()J

    move-result-wide v3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;->c:Lcom/ss/android/a/a/b/c;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/c;->u()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v7

    .line 73
    invoke-interface/range {v1 .. v7}, Lcom/ss/android/downloadad/a/b;->a(Landroid/content/Context;JLjava/lang/String;Lcom/ss/android/a/a/b/d;I)Z

    goto :goto_3a

    .line 76
    :cond_28
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->d()Lcom/ss/android/downloadlib/g;

    move-result-object v0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;->k()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;->c:Lcom/ss/android/a/a/b/c;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ss/android/downloadlib/g;->a(Landroid/content/Context;ILcom/ss/android/a/a/b/d;Lcom/ss/android/a/a/b/c;)V
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_3c

    .line 78
    :goto_3a
    monitor-exit p0

    return-void

    .line 71
    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private n()Z
    .registers 2

    .line 81
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_b

    .line 83
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->q()Z

    move-result v0

    return v0

    .line 85
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method private o()Lorg/json/JSONObject;
    .registers 4

    .line 203
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 205
    :try_start_5
    const-string v1, "download_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b} :catch_c

    .line 208
    goto :goto_10

    .line 206
    :catch_c
    move-exception v1

    .line 207
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 209
    :goto_10
    return-object v0
.end method

.method private p()V
    .registers 19

    .line 213
    move-object/from16 v1, p0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->e()Lcom/bytedance/sdk/openadsdk/TTCustomController;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUseWriteExternal()Z

    move-result v0

    if-nez v0, :cond_27

    .line 216
    :try_start_12
    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->a:Ljava/lang/String;

    .line 217
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 218
    if-eqz v0, :cond_25

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_22
    .catchall {:try_start_12 .. :try_end_22} :catchall_26

    if-nez v0, :cond_25

    .line 220
    return-void

    .line 223
    :cond_25
    goto :goto_27

    .line 222
    :catchall_26
    move-exception v0

    .line 226
    :cond_27
    :goto_27
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;->n()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 227
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->d()Lcom/ss/android/downloadlib/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/g;->e()Lcom/ss/android/downloadad/a/b;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;->k()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;->c:Lcom/ss/android/a/a/b/c;

    iget-object v7, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;->g:Lcom/ss/android/a/a/b/b;

    iget-object v8, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;->f:Lcom/ss/android/a/a/b/a;

    const/4 v9, 0x0

    .line 228
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v10

    .line 227
    invoke-interface/range {v2 .. v10}, Lcom/ss/android/downloadad/a/b;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/b;Lcom/ss/android/a/a/b/a;Lcom/ss/android/a/a/b/d;I)Landroid/app/Dialog;

    goto :goto_62

    .line 230
    :cond_4a
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->d()Lcom/ss/android/downloadlib/g;

    move-result-object v11

    iget-object v12, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;->b:Ljava/lang/String;

    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;->c:Lcom/ss/android/a/a/b/c;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/c;->d()J

    move-result-wide v13

    const/4 v15, 0x2

    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;->g:Lcom/ss/android/a/a/b/b;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;->f:Lcom/ss/android/a/a/b/a;

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    invoke-virtual/range {v11 .. v17}, Lcom/ss/android/downloadlib/g;->a(Ljava/lang/String;JILcom/ss/android/a/a/b/b;Lcom/ss/android/a/a/b/a;)V

    .line 232
    :goto_62
    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .line 64
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;->m()V

    .line 65
    return-void
.end method

.method public a(ILcom/bytedance/sdk/openadsdk/downloadnew/core/a$a;)V
    .registers 3

    .line 298
    return-void
.end method

.method public a(J)V
    .registers 4

    .line 242
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->d()Lcom/ss/android/downloadlib/g;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;->b:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/ss/android/downloadlib/g;->a(Ljava/lang/String;Z)V

    .line 243
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .registers 2

    .line 117
    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 2

    .line 122
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V
    .registers 2

    .line 283
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;Z)V
    .registers 3

    .line 288
    return-void
.end method

.method public a(Z)Z
    .registers 2

    .line 257
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .registers 1

    .line 96
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;->m()V

    .line 97
    return-void
.end method

.method public b(Z)Z
    .registers 2

    .line 277
    const/4 p1, 0x0

    return p1
.end method

.method public c()V
    .registers 1

    .line 102
    return-void
.end method

.method public d()V
    .registers 2

    .line 106
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;->l()V

    .line 108
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_d

    .line 109
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;->a:Ljava/lang/ref/WeakReference;

    .line 112
    :cond_d
    return-void
.end method

.method public e()V
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 148
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;->b(Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    goto :goto_11

    .line 150
    :cond_e
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;->p()V

    .line 153
    :goto_11
    return-void
.end method

.method public f()V
    .registers 3

    .line 237
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;->a(J)V

    .line 238
    return-void
.end method

.method public g()V
    .registers 1

    .line 248
    return-void
.end method

.method public h()Z
    .registers 2

    .line 262
    const/4 v0, 0x0

    return v0
.end method

.method public i()Z
    .registers 2

    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method public j()Z
    .registers 2

    .line 272
    const/4 v0, 0x0

    return v0
.end method
