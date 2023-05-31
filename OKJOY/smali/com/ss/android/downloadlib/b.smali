.class public Lcom/ss/android/downloadlib/b;
.super Ljava/lang/Object;
.source "AdWebViewDownloadManagerImpl.java"

# interfaces
.implements Lcom/ss/android/downloadad/a/b;


# static fields
.field private static a:Ljava/lang/String;

.field private static volatile b:Lcom/ss/android/downloadlib/b;


# instance fields
.field private c:Lcom/ss/android/downloadlib/h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const-class v0, Lcom/ss/android/downloadlib/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/downloadlib/b;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/downloadlib/h;->a(Landroid/content/Context;)Lcom/ss/android/downloadlib/h;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadlib/b;->c:Lcom/ss/android/downloadlib/h;

    .line 46
    return-void
.end method

.method public static a()Lcom/ss/android/downloadlib/b;
    .registers 2

    .prologue
    .line 49
    sget-object v0, Lcom/ss/android/downloadlib/b;->b:Lcom/ss/android/downloadlib/b;

    if-nez v0, :cond_13

    .line 50
    const-class v1, Lcom/ss/android/downloadlib/b;

    monitor-enter v1

    .line 51
    :try_start_7
    sget-object v0, Lcom/ss/android/downloadlib/b;->b:Lcom/ss/android/downloadlib/b;

    if-nez v0, :cond_12

    .line 52
    new-instance v0, Lcom/ss/android/downloadlib/b;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/b;-><init>()V

    sput-object v0, Lcom/ss/android/downloadlib/b;->b:Lcom/ss/android/downloadlib/b;

    .line 54
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 56
    :cond_13
    sget-object v0, Lcom/ss/android/downloadlib/b;->b:Lcom/ss/android/downloadlib/b;

    return-object v0

    .line 54
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static b()Lcom/ss/android/a/a/b/a;
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 222
    new-instance v0, Lcom/ss/android/downloadad/a/a/a$a;

    invoke-direct {v0}, Lcom/ss/android/downloadad/a/a/a$a;-><init>()V

    .line 223
    invoke-virtual {v0, v2}, Lcom/ss/android/downloadad/a/a/a$a;->a(I)Lcom/ss/android/downloadad/a/a/a$a;

    move-result-object v0

    .line 224
    invoke-virtual {v0, v2}, Lcom/ss/android/downloadad/a/a/a$a;->b(I)Lcom/ss/android/downloadad/a/a/a$a;

    move-result-object v0

    const/4 v1, 0x1

    .line 225
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/a$a;->a(Z)Lcom/ss/android/downloadad/a/a/a$a;

    move-result-object v0

    .line 226
    invoke-virtual {v0, v2}, Lcom/ss/android/downloadad/a/a/a$a;->c(Z)Lcom/ss/android/downloadad/a/a/a$a;

    move-result-object v0

    .line 227
    invoke-virtual {v0, v2}, Lcom/ss/android/downloadad/a/a/a$a;->d(Z)Lcom/ss/android/downloadad/a/a/a$a;

    move-result-object v0

    .line 228
    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/a/a$a;->a()Lcom/ss/android/downloadad/a/a/a;

    move-result-object v0

    .line 222
    return-object v0
.end method

.method public static c()Lcom/ss/android/a/a/b/b;
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 232
    new-instance v0, Lcom/ss/android/downloadad/a/a/b$a;

    invoke-direct {v0}, Lcom/ss/android/downloadad/a/a/b$a;-><init>()V

    const-string v1, "landing_h5_download_ad_button"

    .line 233
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/b$a;->a(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v0

    const-string v1, "landing_h5_download_ad_button"

    .line 234
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/b$a;->b(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v0

    const-string v1, "click_start_detail"

    .line 235
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/b$a;->k(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v0

    const-string v1, "click_pause_detail"

    .line 236
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/b$a;->l(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v0

    const-string v1, "click_continue_detail"

    .line 237
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/b$a;->m(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v0

    const-string v1, "click_install_detail"

    .line 238
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/b$a;->n(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v0

    const-string v1, "click_open_detail"

    .line 239
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/b$a;->o(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v0

    const-string v1, "storage_deny_detail"

    .line 240
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/b$a;->q(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v0

    .line 241
    invoke-virtual {v0, v3}, Lcom/ss/android/downloadad/a/a/b$a;->a(I)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v0

    .line 242
    invoke-virtual {v0, v2}, Lcom/ss/android/downloadad/a/a/b$a;->a(Z)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v0

    .line 243
    invoke-virtual {v0, v3}, Lcom/ss/android/downloadad/a/a/b$a;->b(Z)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v0

    .line 244
    invoke-virtual {v0, v2}, Lcom/ss/android/downloadad/a/a/b$a;->d(Z)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/a/b$a;->a()Lcom/ss/android/downloadad/a/a/b;

    move-result-object v0

    .line 232
    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/net/Uri;Lcom/ss/android/a/a/b/c;)Z
    .registers 14

    .prologue
    const/4 v9, 0x5

    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 184
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->i()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "disable_market"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_10

    .line 217
    :cond_f
    :goto_f
    return v7

    .line 187
    :cond_10
    if-eqz p2, :cond_f

    .line 190
    if-nez p1, :cond_18

    .line 191
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object p1

    .line 193
    :cond_18
    if-nez p3, :cond_28

    .line 194
    invoke-static {p1, p2}, Lcom/ss/android/downloadlib/e/d;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/ss/android/downloadlib/a/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/downloadlib/a/b/d;->a()I

    move-result v1

    if-ne v1, v9, :cond_26

    :goto_24
    move v7, v0

    goto :goto_f

    :cond_26
    move v0, v7

    goto :goto_24

    .line 196
    :cond_28
    new-instance v1, Lcom/ss/android/downloadlib/a/b/c$a;

    invoke-interface {p3}, Lcom/ss/android/a/a/b/c;->d()J

    move-result-wide v2

    .line 197
    invoke-static {}, Lcom/ss/android/downloadlib/b;->c()Lcom/ss/android/a/a/b/b;

    move-result-object v5

    .line 198
    invoke-static {}, Lcom/ss/android/downloadlib/b;->b()Lcom/ss/android/a/a/b/a;

    move-result-object v6

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/ss/android/downloadlib/a/b/c$a;-><init>(JLcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/b;Lcom/ss/android/a/a/b/a;)V

    .line 199
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v2

    const-string v3, "market_click_open"

    iget-object v4, v1, Lcom/ss/android/downloadlib/a/b/c$a;->c:Lcom/ss/android/a/a/b/b;

    invoke-virtual {v2, v3, p3, v4}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/b;)V

    .line 200
    const-string v2, "id"

    invoke-virtual {p2, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 201
    invoke-static {p1, v8}, Lcom/ss/android/downloadlib/e/d;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/ss/android/downloadlib/a/b/d;

    move-result-object v2

    .line 202
    invoke-virtual {v2}, Lcom/ss/android/downloadlib/a/b/d;->a()I

    move-result v2

    if-ne v2, v9, :cond_a8

    .line 203
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v2

    const-string v3, "market_open_success"

    invoke-virtual {v2, v3, v1}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Lcom/ss/android/downloadlib/a/b/c$a;)V

    .line 204
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->c()Lcom/ss/android/a/a/a/b;

    move-result-object v2

    iget-object v4, v1, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    iget-object v5, v1, Lcom/ss/android/downloadlib/a/b/c$a;->d:Lcom/ss/android/a/a/b/a;

    iget-object v6, v1, Lcom/ss/android/downloadlib/a/b/c$a;->c:Lcom/ss/android/a/a/b/b;

    iget-object v3, v1, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v3}, Lcom/ss/android/a/a/b/c;->t()Ljava/lang/String;

    move-result-object v7

    move-object v3, p1

    invoke-interface/range {v2 .. v7}, Lcom/ss/android/a/a/a/b;->a(Landroid/content/Context;Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/a;Lcom/ss/android/a/a/b/b;Ljava/lang/String;)V

    .line 205
    invoke-static {}, Lcom/ss/android/downloadlib/a/a;->a()Lcom/ss/android/downloadlib/a/a;

    move-result-object v2

    iget-object v3, v1, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    invoke-virtual {v2, v3}, Lcom/ss/android/downloadlib/a/a;->a(Lcom/ss/android/a/a/b/c;)V

    .line 206
    new-instance v2, Lcom/ss/android/downloadad/a/b/a;

    iget-object v3, v1, Lcom/ss/android/downloadlib/a/b/c$a;->b:Lcom/ss/android/a/a/b/c;

    iget-object v4, v1, Lcom/ss/android/downloadlib/a/b/c$a;->c:Lcom/ss/android/a/a/b/b;

    iget-object v1, v1, Lcom/ss/android/downloadlib/a/b/c$a;->d:Lcom/ss/android/a/a/b/a;

    invoke-direct {v2, v3, v4, v1}, Lcom/ss/android/downloadad/a/b/a;-><init>(Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/b;Lcom/ss/android/a/a/b/a;)V

    .line 207
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8f

    .line 208
    invoke-virtual {v2, v8}, Lcom/ss/android/downloadad/a/b/a;->a(Ljava/lang/String;)V

    .line 210
    :cond_8f
    const/4 v1, 0x2

    invoke-virtual {v2, v1}, Lcom/ss/android/downloadad/a/b/a;->a(I)V

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/ss/android/downloadad/a/b/a;->c(J)V

    .line 212
    const/4 v1, 0x4

    invoke-virtual {v2, v1}, Lcom/ss/android/downloadad/a/b/a;->d(I)V

    .line 213
    invoke-static {}, Lcom/ss/android/downloadlib/a/b/c;->a()Lcom/ss/android/downloadlib/a/b/c;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadlib/a/b/c;->a(Lcom/ss/android/downloadad/a/b/a;)V

    move v7, v0

    .line 214
    goto/16 :goto_f

    .line 216
    :cond_a8
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    const-string v2, "market_open_failed"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Lcom/ss/android/downloadlib/a/b/c$a;)V

    goto/16 :goto_f
.end method
