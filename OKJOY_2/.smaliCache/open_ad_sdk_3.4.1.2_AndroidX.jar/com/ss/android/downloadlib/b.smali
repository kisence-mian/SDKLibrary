.class public Lcom/ss/android/downloadlib/b;
.super Ljava/lang/Object;
.source "AdWebViewDownloadManagerImpl.java"

# interfaces
.implements Lcom/ss/android/downloadad/a/b;


# static fields
.field private static a:Ljava/lang/String;

.field private static volatile b:Lcom/ss/android/downloadlib/b;


# instance fields
.field private c:Lcom/ss/android/downloadlib/g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    const-class v0, Lcom/ss/android/downloadlib/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/downloadlib/b;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/downloadlib/g;->a(Landroid/content/Context;)Lcom/ss/android/downloadlib/g;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadlib/b;->c:Lcom/ss/android/downloadlib/g;

    .line 57
    return-void
.end method

.method public static a(Z)Lcom/ss/android/a/a/b/a;
    .registers 4

    .line 316
    new-instance v0, Lcom/ss/android/downloadad/a/a/a$a;

    invoke-direct {v0}, Lcom/ss/android/downloadad/a/a/a$a;-><init>()V

    .line 317
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/a$a;->a(I)Lcom/ss/android/downloadad/a/a/a$a;

    move-result-object v0

    .line 318
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/ss/android/downloadad/a/a/a$a;->a(Z)Lcom/ss/android/downloadad/a/a/a$a;

    move-result-object v0

    .line 319
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/a$a;->c(Z)Lcom/ss/android/downloadad/a/a/a$a;

    move-result-object v0

    .line 320
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/a$a;->d(Z)Lcom/ss/android/downloadad/a/a/a$a;

    move-result-object v0

    .line 321
    if-eqz p0, :cond_1e

    .line 322
    const/4 p0, 0x2

    invoke-virtual {v0, p0}, Lcom/ss/android/downloadad/a/a/a$a;->b(I)Lcom/ss/android/downloadad/a/a/a$a;

    goto :goto_21

    .line 324
    :cond_1e
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/a$a;->b(I)Lcom/ss/android/downloadad/a/a/a$a;

    .line 326
    :goto_21
    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/a/a$a;->a()Lcom/ss/android/downloadad/a/a/a;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lcom/ss/android/downloadlib/b;
    .registers 2

    .line 60
    sget-object v0, Lcom/ss/android/downloadlib/b;->b:Lcom/ss/android/downloadlib/b;

    if-nez v0, :cond_17

    .line 61
    const-class v0, Lcom/ss/android/downloadlib/b;

    monitor-enter v0

    .line 62
    :try_start_7
    sget-object v1, Lcom/ss/android/downloadlib/b;->b:Lcom/ss/android/downloadlib/b;

    if-nez v1, :cond_12

    .line 63
    new-instance v1, Lcom/ss/android/downloadlib/b;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/b;-><init>()V

    sput-object v1, Lcom/ss/android/downloadlib/b;->b:Lcom/ss/android/downloadlib/b;

    .line 65
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 67
    :cond_17
    :goto_17
    sget-object v0, Lcom/ss/android/downloadlib/b;->b:Lcom/ss/android/downloadlib/b;

    return-object v0
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/b;)Lcom/ss/android/downloadlib/g;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/ss/android/downloadlib/b;->c:Lcom/ss/android/downloadlib/g;

    return-object p0
.end method

.method public static b()Lcom/ss/android/a/a/b/a;
    .registers 1

    .line 312
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ss/android/downloadlib/b;->a(Z)Lcom/ss/android/a/a/b/a;

    move-result-object v0

    return-object v0
.end method

.method public static c()Lcom/ss/android/a/a/b/b;
    .registers 3

    .line 330
    new-instance v0, Lcom/ss/android/downloadad/a/a/b$a;

    invoke-direct {v0}, Lcom/ss/android/downloadad/a/a/b$a;-><init>()V

    .line 331
    const-string v1, "landing_h5_download_ad_button"

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/b$a;->a(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v0

    .line 332
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/b$a;->b(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v0

    .line 333
    const-string v1, "click_start_detail"

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/b$a;->c(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v0

    .line 334
    const-string v1, "click_pause_detail"

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/b$a;->d(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v0

    .line 335
    const-string v1, "click_continue_detail"

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/b$a;->e(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v0

    .line 336
    const-string v1, "click_install_detail"

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/b$a;->f(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v0

    .line 337
    const-string v1, "click_open_detail"

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/b$a;->g(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v0

    .line 338
    const-string v1, "storage_deny_detail"

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/b$a;->h(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v0

    .line 339
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/b$a;->a(I)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v0

    .line 340
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/ss/android/downloadad/a/a/b$a;->a(Z)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v0

    .line 341
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/b$a;->b(Z)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v0

    .line 342
    invoke-virtual {v0, v2}, Lcom/ss/android/downloadad/a/a/b$a;->c(Z)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v0

    .line 343
    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/a/b$a;->a()Lcom/ss/android/downloadad/a/a/b;

    move-result-object v0

    .line 330
    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;ZLcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/b;Lcom/ss/android/a/a/b/a;Lcom/ss/android/a/a/b/d;I)Landroid/app/Dialog;
    .registers 19

    .line 79
    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    invoke-interface {p4}, Lcom/ss/android/a/a/b/c;->d()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/ss/android/downloadlib/b;->b(J)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_16

    .line 80
    invoke-interface {p4}, Lcom/ss/android/a/a/b/c;->d()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/ss/android/downloadlib/b;->a(J)V

    .line 81
    return-object v4

    .line 83
    :cond_16
    if-eqz v1, :cond_ec

    invoke-interface {p4}, Lcom/ss/android/a/a/b/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_24

    goto/16 :goto_ec

    .line 87
    :cond_24
    iget-object v3, v0, Lcom/ss/android/downloadlib/b;->c:Lcom/ss/android/downloadlib/g;

    move-object/from16 v5, p7

    move/from16 v6, p8

    invoke-virtual {v3, p1, v6, v5, p4}, Lcom/ss/android/downloadlib/g;->a(Landroid/content/Context;ILcom/ss/android/a/a/b/d;Lcom/ss/android/a/a/b/c;)V

    .line 88
    const/4 v3, 0x2

    new-array v5, v3, [Lcom/ss/android/a/a/b/b;

    const/4 v6, 0x0

    aput-object p5, v5, v6

    invoke-static {}, Lcom/ss/android/downloadlib/b;->c()Lcom/ss/android/a/a/b/b;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v5, v8

    invoke-static {v5}, Lcom/ss/android/downloadlib/h/k;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ss/android/a/a/b/b;

    .line 89
    new-array v3, v3, [Lcom/ss/android/a/a/b/a;

    aput-object p6, v3, v6

    invoke-static {}, Lcom/ss/android/downloadlib/b;->b()Lcom/ss/android/a/a/b/a;

    move-result-object v7

    aput-object v7, v3, v8

    invoke-static {v3}, Lcom/ss/android/downloadlib/h/k;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/a/a/b/a;

    .line 90
    invoke-interface {v5, v8}, Lcom/ss/android/a/a/b/b;->a(I)V

    .line 92
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->i()Lorg/json/JSONObject;

    move-result-object v7

    const-string v9, "disable_lp_dialog"

    invoke-virtual {v7, v9, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_61

    move v7, v8

    goto :goto_62

    :cond_61
    move v7, v6

    :goto_62
    or-int/2addr v7, p3

    .line 93
    invoke-interface {v3}, Lcom/ss/android/a/a/b/a;->e()Z

    move-result v9

    if-eqz v9, :cond_74

    .line 94
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/compliance/b;->a()Lcom/ss/android/downloadlib/addownload/compliance/b;

    move-result-object v9

    invoke-virtual {v9, p4}, Lcom/ss/android/downloadlib/addownload/compliance/b;->a(Lcom/ss/android/a/a/b/c;)Z

    move-result v9

    if-eqz v9, :cond_74

    .line 96
    goto :goto_75

    .line 99
    :cond_74
    move v8, v7

    :goto_75
    if-eqz v8, :cond_8e

    .line 100
    iget-object v1, v0, Lcom/ss/android/downloadlib/b;->c:Lcom/ss/android/downloadlib/g;

    invoke-interface {p4}, Lcom/ss/android/a/a/b/c;->a()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p4}, Lcom/ss/android/a/a/b/c;->d()J

    move-result-wide v7

    const/4 v2, 0x2

    move-object p1, v1

    move-object p2, v6

    move-wide p3, v7

    move p5, v2

    move-object/from16 p6, v5

    move-object/from16 p7, v3

    invoke-virtual/range {p1 .. p7}, Lcom/ss/android/downloadlib/g;->a(Ljava/lang/String;JILcom/ss/android/a/a/b/b;Lcom/ss/android/a/a/b/a;)V

    .line 102
    return-object v4

    .line 104
    :cond_8e
    sget-object v7, Lcom/ss/android/downloadlib/b;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "tryStartDownload show dialog appName:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p4}, Lcom/ss/android/a/a/b/c;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v4}, Lcom/ss/android/downloadlib/h/j;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 106
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->d()Lcom/ss/android/a/a/a/k;

    move-result-object v4

    new-instance v7, Lcom/ss/android/a/a/c/c$a;

    invoke-direct {v7, p1}, Lcom/ss/android/a/a/c/c$a;-><init>(Landroid/content/Context;)V

    .line 107
    invoke-interface {p4}, Lcom/ss/android/a/a/b/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/ss/android/a/a/c/c$a;->a(Ljava/lang/String;)Lcom/ss/android/a/a/c/c$a;

    move-result-object v1

    .line 108
    const-string v7, "\u786e\u8ba4\u8981\u4e0b\u8f7d\u6b64\u5e94\u7528\u5417\uff1f"

    invoke-virtual {v1, v7}, Lcom/ss/android/a/a/c/c$a;->b(Ljava/lang/String;)Lcom/ss/android/a/a/c/c$a;

    move-result-object v1

    .line 109
    const-string v7, "\u786e\u8ba4"

    invoke-virtual {v1, v7}, Lcom/ss/android/a/a/c/c$a;->c(Ljava/lang/String;)Lcom/ss/android/a/a/c/c$a;

    move-result-object v1

    .line 110
    const-string v7, "\u53d6\u6d88"

    invoke-virtual {v1, v7}, Lcom/ss/android/a/a/c/c$a;->d(Ljava/lang/String;)Lcom/ss/android/a/a/c/c$a;

    move-result-object v1

    new-instance v7, Lcom/ss/android/downloadlib/b$1;

    invoke-direct {v7, p0, p4, v5, v3}, Lcom/ss/android/downloadlib/b$1;-><init>(Lcom/ss/android/downloadlib/b;Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/b;Lcom/ss/android/a/a/b/a;)V

    .line 111
    invoke-virtual {v1, v7}, Lcom/ss/android/a/a/c/c$a;->a(Lcom/ss/android/a/a/c/c$b;)Lcom/ss/android/a/a/c/c$a;

    move-result-object v1

    .line 131
    invoke-virtual {v1, v6}, Lcom/ss/android/a/a/c/c$a;->a(I)Lcom/ss/android/a/a/c/c$a;

    move-result-object v1

    .line 132
    invoke-virtual {v1}, Lcom/ss/android/a/a/c/c$a;->a()Lcom/ss/android/a/a/c/c;

    move-result-object v1

    .line 106
    invoke-interface {v4, v1}, Lcom/ss/android/a/a/a/k;->b(Lcom/ss/android/a/a/c/c;)Landroid/app/Dialog;

    move-result-object v1

    .line 133
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v4

    const-string v6, "landing_download_dialog_show"

    invoke-virtual {v4, v6, p4, v5, v3}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/b;Lcom/ss/android/a/a/b/a;)V

    .line 134
    return-object v1

    .line 84
    :cond_ec
    :goto_ec
    return-object v4
.end method

.method public a(J)V
    .registers 14

    .line 185
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/downloadlib/addownload/b/f;->a(J)Lcom/ss/android/a/a/b/c;

    move-result-object v0

    .line 186
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/ss/android/downloadlib/addownload/b/f;->d(J)Lcom/ss/android/downloadad/a/b/b;

    move-result-object v1

    .line 187
    if-nez v0, :cond_18

    if-eqz v1, :cond_18

    .line 188
    invoke-virtual {v1}, Lcom/ss/android/downloadad/a/b/b;->ae()Lcom/ss/android/downloadad/a/a/c;

    move-result-object v0

    .line 190
    :cond_18
    if-nez v0, :cond_1b

    .line 191
    return-void

    .line 194
    :cond_1b
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/ss/android/downloadlib/addownload/b/f;->b(J)Lcom/ss/android/a/a/b/b;

    move-result-object v2

    .line 195
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/ss/android/downloadlib/addownload/b/f;->c(J)Lcom/ss/android/a/a/b/a;

    move-result-object v3

    .line 196
    instance-of v4, v2, Lcom/ss/android/a/a/b/g;

    const/4 v5, 0x0

    if-eqz v4, :cond_31

    .line 197
    move-object v2, v5

    .line 199
    :cond_31
    instance-of v4, v3, Lcom/ss/android/a/a/b/f;

    if-eqz v4, :cond_36

    .line 200
    move-object v3, v5

    .line 202
    :cond_36
    if-nez v1, :cond_4a

    .line 203
    if-nez v2, :cond_3e

    .line 204
    invoke-static {}, Lcom/ss/android/downloadlib/b;->c()Lcom/ss/android/a/a/b/b;

    move-result-object v2

    .line 206
    :cond_3e
    if-nez v3, :cond_47

    .line 207
    invoke-static {}, Lcom/ss/android/downloadlib/b;->b()Lcom/ss/android/a/a/b/a;

    move-result-object v3

    move-object v9, v2

    move-object v10, v3

    goto :goto_9b

    .line 206
    :cond_47
    move-object v9, v2

    move-object v10, v3

    goto :goto_9b

    .line 210
    :cond_4a
    if-nez v2, :cond_90

    .line 211
    new-instance v2, Lcom/ss/android/downloadad/a/a/b$a;

    invoke-direct {v2}, Lcom/ss/android/downloadad/a/a/b$a;-><init>()V

    .line 212
    invoke-virtual {v1}, Lcom/ss/android/downloadad/a/b/b;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/ss/android/downloadad/a/a/b$a;->a(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v2

    .line 213
    invoke-virtual {v1}, Lcom/ss/android/downloadad/a/b/b;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/ss/android/downloadad/a/a/b$a;->i(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v2

    .line 214
    invoke-virtual {v1}, Lcom/ss/android/downloadad/a/b/b;->m()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/ss/android/downloadad/a/a/b$a;->c(Z)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v2

    const/4 v4, 0x0

    .line 215
    invoke-virtual {v2, v4}, Lcom/ss/android/downloadad/a/a/b$a;->a(Z)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v2

    .line 216
    const-string v4, "click_start_detail"

    invoke-virtual {v2, v4}, Lcom/ss/android/downloadad/a/a/b$a;->c(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v2

    .line 217
    const-string v4, "click_pause_detail"

    invoke-virtual {v2, v4}, Lcom/ss/android/downloadad/a/a/b$a;->d(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v2

    .line 218
    const-string v4, "click_continue_detail"

    invoke-virtual {v2, v4}, Lcom/ss/android/downloadad/a/a/b$a;->e(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v2

    .line 219
    const-string v4, "click_install_detail"

    invoke-virtual {v2, v4}, Lcom/ss/android/downloadad/a/a/b$a;->f(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v2

    .line 220
    const-string v4, "storage_deny_detail"

    invoke-virtual {v2, v4}, Lcom/ss/android/downloadad/a/a/b$a;->h(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v2

    .line 221
    invoke-virtual {v2}, Lcom/ss/android/downloadad/a/a/b$a;->a()Lcom/ss/android/downloadad/a/a/b;

    move-result-object v2

    .line 223
    :cond_90
    if-nez v3, :cond_99

    .line 224
    invoke-virtual {v1}, Lcom/ss/android/downloadad/a/b/b;->ag()Lcom/ss/android/downloadad/a/a/a;

    move-result-object v3

    move-object v9, v2

    move-object v10, v3

    goto :goto_9b

    .line 223
    :cond_99
    move-object v9, v2

    move-object v10, v3

    .line 227
    :goto_9b
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Lcom/ss/android/a/a/b/b;->a(I)V

    .line 228
    iget-object v4, p0, Lcom/ss/android/downloadlib/b;->c:Lcom/ss/android/downloadlib/g;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/c;->a()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x2

    move-wide v6, p1

    invoke-virtual/range {v4 .. v10}, Lcom/ss/android/downloadlib/g;->a(Ljava/lang/String;JILcom/ss/android/a/a/b/b;Lcom/ss/android/a/a/b/a;)V

    .line 230
    return-void
.end method

.method public a(Landroid/content/Context;JLjava/lang/String;Lcom/ss/android/a/a/b/d;I)Z
    .registers 8

    .line 154
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object p4

    invoke-virtual {p4, p2, p3}, Lcom/ss/android/downloadlib/addownload/b/f;->d(J)Lcom/ss/android/downloadad/a/b/b;

    move-result-object p4

    .line 155
    const/4 v0, 0x1

    if-eqz p4, :cond_15

    .line 157
    iget-object p2, p0, Lcom/ss/android/downloadlib/b;->c:Lcom/ss/android/downloadlib/g;

    invoke-virtual {p4}, Lcom/ss/android/downloadad/a/b/b;->ae()Lcom/ss/android/downloadad/a/a/c;

    move-result-object p3

    invoke-virtual {p2, p1, p6, p5, p3}, Lcom/ss/android/downloadlib/g;->a(Landroid/content/Context;ILcom/ss/android/a/a/b/d;Lcom/ss/android/a/a/b/c;)V

    .line 158
    return v0

    .line 160
    :cond_15
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object p4

    invoke-virtual {p4, p2, p3}, Lcom/ss/android/downloadlib/addownload/b/f;->a(J)Lcom/ss/android/a/a/b/c;

    move-result-object p2

    .line 161
    if-eqz p2, :cond_25

    .line 162
    iget-object p3, p0, Lcom/ss/android/downloadlib/b;->c:Lcom/ss/android/downloadlib/g;

    invoke-virtual {p3, p1, p6, p5, p2}, Lcom/ss/android/downloadlib/g;->a(Landroid/content/Context;ILcom/ss/android/a/a/b/d;Lcom/ss/android/a/a/b/c;)V

    .line 163
    return v0

    .line 165
    :cond_25
    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroid/content/Context;Landroid/net/Uri;Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/b;Lcom/ss/android/a/a/b/a;)Z
    .registers 20

    .line 248
    move-object/from16 v6, p3

    move-object/from16 v0, p5

    invoke-static/range {p2 .. p2}, Lcom/ss/android/downloadlib/b/j;->a(Landroid/net/Uri;)Z

    move-result v1

    const/4 v7, 0x0

    if-nez v1, :cond_c

    .line 249
    return v7

    .line 251
    :cond_c
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->i()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "disable_market"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const/4 v8, 0x1

    if-ne v1, v8, :cond_1a

    .line 252
    return v7

    .line 254
    :cond_1a
    if-nez p1, :cond_22

    .line 255
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v1

    move-object v9, v1

    goto :goto_23

    .line 254
    :cond_22
    move-object v9, p1

    .line 258
    :goto_23
    invoke-static/range {p2 .. p2}, Lcom/ss/android/downloadlib/b/j;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v10

    .line 260
    const/4 v11, 0x5

    if-nez v6, :cond_36

    .line 261
    invoke-static {v9, v10}, Lcom/ss/android/downloadlib/h/h;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/ss/android/downloadlib/addownload/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/addownload/b/g;->a()I

    move-result v0

    if-ne v0, v11, :cond_35

    move v7, v8

    :cond_35
    return v7

    .line 265
    :cond_36
    const/4 v12, 0x2

    if-eqz v0, :cond_3f

    .line 266
    nop

    .line 267
    invoke-interface {v0, v12}, Lcom/ss/android/a/a/b/a;->a(I)V

    move-object v5, v0

    goto :goto_74

    .line 268
    :cond_3f
    instance-of v0, v6, Lcom/ss/android/downloadad/a/a/c;

    if-eqz v0, :cond_5d

    invoke-interface/range {p3 .. p3}, Lcom/ss/android/a/a/b/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 269
    move-object v0, v6

    check-cast v0, Lcom/ss/android/downloadad/a/a/c;

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/c;->c(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c;

    .line 270
    invoke-static {v8}, Lcom/ss/android/downloadlib/b;->a(Z)Lcom/ss/android/a/a/b/a;

    move-result-object v0

    move-object v5, v0

    goto :goto_74

    .line 271
    :cond_5d
    invoke-interface/range {p3 .. p3}, Lcom/ss/android/a/a/b/c;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "market"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 272
    invoke-static {v8}, Lcom/ss/android/downloadlib/b;->a(Z)Lcom/ss/android/a/a/b/a;

    move-result-object v0

    move-object v5, v0

    goto :goto_74

    .line 274
    :cond_6f
    invoke-static {}, Lcom/ss/android/downloadlib/b;->b()Lcom/ss/android/a/a/b/a;

    move-result-object v0

    move-object v5, v0

    .line 276
    :goto_74
    new-instance v13, Lcom/ss/android/downloadlib/addownload/b/e;

    invoke-interface/range {p3 .. p3}, Lcom/ss/android/a/a/b/c;->d()J

    move-result-wide v1

    new-array v0, v12, [Lcom/ss/android/a/a/b/b;

    aput-object p4, v0, v7

    .line 277
    invoke-static {}, Lcom/ss/android/downloadlib/b;->c()Lcom/ss/android/a/a/b/b;

    move-result-object v3

    aput-object v3, v0, v8

    invoke-static {v0}, Lcom/ss/android/downloadlib/h/k;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/ss/android/a/a/b/b;

    move-object v0, v13

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/downloadlib/addownload/b/e;-><init>(JLcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/b;Lcom/ss/android/a/a/b/a;)V

    .line 280
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a1

    instance-of v0, v6, Lcom/ss/android/downloadad/a/a/c;

    if-eqz v0, :cond_a1

    .line 281
    move-object v0, v6

    check-cast v0, Lcom/ss/android/downloadad/a/a/c;

    invoke-virtual {v0, v10}, Lcom/ss/android/downloadad/a/a/c;->b(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c;

    .line 283
    :cond_a1
    invoke-static/range {p3 .. p3}, Lcom/ss/android/downloadlib/h/k;->a(Lcom/ss/android/a/a/b/c;)Z

    move-result v0

    if-eqz v0, :cond_ba

    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v1, "app_link_opt"

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v8, :cond_ba

    .line 284
    invoke-static {v13}, Lcom/ss/android/downloadlib/b/a;->a(Lcom/ss/android/downloadlib/addownload/b/e;)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 285
    return v8

    .line 289
    :cond_ba
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "market_url"

    invoke-static {v0, v2, v1}, Lcom/ss/android/downloadlib/h/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 292
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v1

    const-string v2, "market_click_open"

    invoke-virtual {v1, v2, v0, v13}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 293
    invoke-static {v9, v13, v10}, Lcom/ss/android/downloadlib/h/h;->a(Landroid/content/Context;Lcom/ss/android/downloadlib/addownload/b/e;Ljava/lang/String;)Lcom/ss/android/downloadlib/addownload/b/g;

    move-result-object v1

    .line 294
    new-array v2, v12, [Ljava/lang/String;

    invoke-virtual {v1}, Lcom/ss/android/downloadlib/addownload/b/g;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "open_market"

    aput-object v3, v2, v8

    invoke-static {v2}, Lcom/ss/android/downloadlib/h/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 296
    invoke-virtual {v1}, Lcom/ss/android/downloadlib/addownload/b/g;->a()I

    move-result v3

    if-ne v3, v11, :cond_ef

    .line 297
    invoke-static {v2, v0, v13}, Lcom/ss/android/downloadlib/b/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadlib/addownload/b/e;)V

    .line 298
    return v8

    .line 300
    :cond_ef
    invoke-virtual {v1}, Lcom/ss/android/downloadlib/addownload/b/g;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "error_code"

    invoke-static {v0, v2, v1}, Lcom/ss/android/downloadlib/h/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 301
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v1

    const-string v2, "market_open_failed"

    invoke-virtual {v1, v2, v0, v13}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/a;)V

    .line 302
    return v7
.end method

.method public b(J)Z
    .registers 4

    .line 234
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/downloadlib/addownload/b/f;->a(J)Lcom/ss/android/a/a/b/c;

    move-result-object v0

    if-nez v0, :cond_17

    .line 235
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/downloadlib/addownload/b/f;->d(J)Lcom/ss/android/downloadad/a/b/b;

    move-result-object p1

    if-eqz p1, :cond_15

    goto :goto_17

    :cond_15
    const/4 p1, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p1, 0x1

    .line 234
    :goto_18
    return p1
.end method
