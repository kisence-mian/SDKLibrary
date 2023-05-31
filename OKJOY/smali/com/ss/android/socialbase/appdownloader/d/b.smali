.class public Lcom/ss/android/socialbase/appdownloader/d/b;
.super Ljava/lang/Object;
.source "DefaultDownloadLaunchHandler.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/m;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/appdownloader/d/b;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .registers 2

    .prologue
    .line 46
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/d/b;->b:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic a(Lcom/ss/android/socialbase/appdownloader/d/b;)Ljava/util/List;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d/b;->a:Ljava/util/List;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 3

    .prologue
    .line 299
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 301
    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_b} :catch_c

    .line 306
    :goto_b
    return-object v0

    .line 302
    :catch_c
    move-exception v0

    .line 306
    :cond_d
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/g/c;Z)V
    .registers 16

    .prologue
    .line 151
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->ag()Z

    move-result v0

    if-nez v0, :cond_9

    .line 256
    :cond_8
    :goto_8
    return-void

    .line 155
    :cond_9
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->w()I

    move-result v0

    .line 156
    const/4 v1, -0x5

    if-ne v0, v1, :cond_10c

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->aI()Z

    move-result v1

    if-nez v1, :cond_10c

    .line 157
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/k/a;->a(I)Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v2

    .line 158
    const-string v0, "failed_resume_max_count"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v0

    .line 161
    const-string v1, "failed_resume_max_hours"

    const-wide/high16 v4, 0x4052000000000000L    # 72.0

    invoke-virtual {v2, v1, v4, v5}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;D)D

    move-result-wide v4

    .line 164
    const-string v1, "failed_resume_min_hours"

    const-wide/high16 v6, 0x4028000000000000L    # 12.0

    invoke-virtual {v2, v1, v6, v7}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;D)D

    move-result-wide v6

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 169
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->aZ()I

    move-result v1

    if-ge v1, v0, :cond_d4

    .line 170
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->bd()J

    move-result-wide v0

    sub-long v0, v8, v0

    long-to-double v0, v0

    const-wide v10, 0x414b774000000000L    # 3600000.0

    mul-double/2addr v4, v10

    cmpg-double v0, v0, v4

    if-gez v0, :cond_d4

    .line 171
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->ba()J

    move-result-wide v0

    sub-long v0, v8, v0

    long-to-double v0, v0

    const-wide v4, 0x414b774000000000L    # 3600000.0

    mul-double/2addr v4, v6

    cmpl-double v0, v0, v4

    if-lez v0, :cond_d4

    const/4 v0, 0x1

    move v3, v0

    .line 173
    :goto_63
    const/4 v1, 0x0

    .line 174
    if-eqz v3, :cond_10a

    .line 175
    const-string v0, "failed_resume_need_wifi"

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v4}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_d7

    const/4 v0, 0x1

    .line 176
    :goto_71
    const-string v4, "failed_resume_need_wait_wifi"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_d9

    const/4 v2, 0x1

    .line 177
    :goto_7c
    if-nez p3, :cond_82

    if-eqz v0, :cond_82

    if-nez v2, :cond_db

    .line 178
    :cond_82
    invoke-direct {p0, p2, v3, v0}, Lcom/ss/android/socialbase/appdownloader/d/b;->a(Lcom/ss/android/socialbase/downloader/g/c;ZZ)V

    .line 179
    invoke-virtual {p2, v8, v9}, Lcom/ss/android/socialbase/downloader/g/c;->e(J)V

    .line 180
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->aZ()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Lcom/ss/android/socialbase/downloader/g/c;->h(I)V

    .line 181
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->aX()V

    .line 182
    const/4 v0, 0x1

    .line 196
    :goto_95
    const-string v1, "LaunchResume"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launchResume, name = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", canShowNotification = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", downloadResumed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/socialbase/downloader/f/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->h()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/c/g;

    move-result-object v1

    .line 199
    if-eqz v1, :cond_8

    .line 200
    invoke-interface {v1, p2, v0}, Lcom/ss/android/socialbase/appdownloader/c/g;->a(Lcom/ss/android/socialbase/downloader/g/c;Z)V

    goto/16 :goto_8

    .line 171
    :cond_d4
    const/4 v0, 0x0

    move v3, v0

    goto :goto_63

    .line 175
    :cond_d7
    const/4 v0, 0x0

    goto :goto_71

    .line 176
    :cond_d9
    const/4 v2, 0x0

    goto :goto_7c

    .line 185
    :cond_db
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d/b;->a:Ljava/util/List;

    if-nez v0, :cond_e6

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d/b;->a:Ljava/util/List;

    .line 188
    :cond_e6
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v0

    .line 189
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/d/b;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ff

    .line 190
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/d/b;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_ff
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/ss/android/socialbase/downloader/g/c;->c(Z)V

    .line 193
    invoke-static {}, Lcom/ss/android/socialbase/downloader/impls/r;->a()Lcom/ss/android/socialbase/downloader/impls/r;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ss/android/socialbase/downloader/impls/r;->a(Lcom/ss/android/socialbase/downloader/g/c;)V

    :cond_10a
    move v0, v1

    goto :goto_95

    .line 202
    :cond_10c
    const/4 v1, -0x3

    if-ne v0, v1, :cond_8

    invoke-direct {p0, p2}, Lcom/ss/android/socialbase/appdownloader/d/b;->a(Lcom/ss/android/socialbase/downloader/g/c;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 203
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->h()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/d;->k()Lcom/ss/android/socialbase/appdownloader/c/i;

    move-result-object v0

    .line 205
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/k/a;->a(I)Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v1

    .line 206
    const-string v2, "back_fix_sigbus"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_168

    if-eqz v0, :cond_168

    .line 207
    invoke-interface {v0}, Lcom/ss/android/socialbase/appdownloader/c/i;->a()Z

    move-result v0

    if-eqz v0, :cond_168

    .line 208
    const-string v0, "bugfix_sigbus_all_brand"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_146

    .line 209
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/i;->b()Z

    move-result v0

    if-eqz v0, :cond_168

    .line 210
    :cond_146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 211
    const/16 v2, 0x15

    if-lt v0, v2, :cond_168

    const/16 v2, 0x19

    if-gt v0, v2, :cond_168

    .line 212
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/k;->a()Z

    move-result v0

    if-eqz v0, :cond_168

    .line 213
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 218
    :cond_168
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", backupUrl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->K()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v2, v3}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 221
    const-string v0, "uninstall_resume_max_count"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;I)I

    move-result v0

    .line 224
    const-string v2, "uninstall_resume_max_hours"

    const-wide/high16 v4, 0x4052000000000000L    # 72.0

    invoke-virtual {v1, v2, v4, v5}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;D)D

    move-result-wide v2

    .line 227
    const-string v4, "uninstall_resume_min_hours"

    const-wide/high16 v6, 0x4028000000000000L    # 12.0

    invoke-virtual {v1, v4, v6, v7}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;D)D

    move-result-wide v4

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 232
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->bb()I

    move-result v1

    if-ge v1, v0, :cond_25f

    .line 233
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->bd()J

    move-result-wide v0

    sub-long v0, v8, v0

    long-to-double v0, v0

    const-wide v6, 0x414b774000000000L    # 3600000.0

    mul-double/2addr v2, v6

    cmpg-double v0, v0, v2

    if-gez v0, :cond_25f

    .line 234
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->bc()J

    move-result-wide v0

    sub-long v0, v8, v0

    long-to-double v0, v0

    const-wide v2, 0x414b774000000000L    # 3600000.0

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_25f

    const/4 v0, 0x1

    .line 236
    :goto_1df
    const-string v1, "LaunchResume"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uninstallResume, name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", canShowNotification = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/socialbase/downloader/f/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    if-eqz v0, :cond_8

    .line 240
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/notification/b;->e(I)Lcom/ss/android/socialbase/downloader/notification/a;

    move-result-object v0

    .line 241
    if-nez v0, :cond_262

    .line 242
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/e;

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v2

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->y()Ljava/lang/String;

    move-result-object v6

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/ss/android/socialbase/appdownloader/e;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/downloader/notification/b;->a(Lcom/ss/android/socialbase/downloader/notification/a;)V

    .line 247
    :goto_236
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->ab()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/socialbase/downloader/notification/a;->b(J)V

    .line 248
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->ab()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/socialbase/downloader/notification/a;->a(J)V

    .line 249
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ss/android/socialbase/downloader/notification/a;->a(ILcom/ss/android/socialbase/downloader/e/a;ZZ)V

    .line 251
    invoke-virtual {p2, v8, v9}, Lcom/ss/android/socialbase/downloader/g/c;->f(J)V

    .line 252
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->bb()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Lcom/ss/android/socialbase/downloader/g/c;->i(I)V

    .line 253
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->aX()V

    goto/16 :goto_8

    .line 234
    :cond_25f
    const/4 v0, 0x0

    goto/16 :goto_1df

    .line 245
    :cond_262
    invoke-virtual {v0, p2}, Lcom/ss/android/socialbase/downloader/notification/a;->a(Lcom/ss/android/socialbase/downloader/g/c;)V

    goto :goto_236
.end method

.method static synthetic a(Lcom/ss/android/socialbase/appdownloader/d/b;Landroid/content/Context;Lcom/ss/android/socialbase/downloader/g/c;Z)V
    .registers 4

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/socialbase/appdownloader/d/b;->a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/g/c;Z)V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/appdownloader/d/b;Ljava/util/List;)V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/appdownloader/d/b;->b(Ljava/util/List;)V

    return-void
.end method

.method private a(Lcom/ss/android/socialbase/downloader/g/c;ZZ)V
    .registers 8

    .prologue
    const/4 v1, 0x1

    .line 267
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/g;

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->j()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/ss/android/socialbase/appdownloader/g;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 268
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/appdownloader/g;->a(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v0

    .line 269
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/appdownloader/g;->b(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v0

    .line 270
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/appdownloader/g;->c(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v0

    .line 271
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->ag()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/appdownloader/g;->a(Z)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v2

    .line 272
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->x()Z

    move-result v0

    if-nez v0, :cond_36

    if-eqz p3, :cond_ef

    :cond_36
    move v0, v1

    :goto_37
    invoke-virtual {v2, v0}, Lcom/ss/android/socialbase/appdownloader/g;->c(Z)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v0

    .line 273
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/appdownloader/g;->d(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v0

    .line 274
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->ah()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/appdownloader/g;->e(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v0

    .line 275
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->B()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/appdownloader/g;->a(Ljava/util/List;)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v0

    .line 276
    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/appdownloader/g;->e(Z)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v0

    .line 277
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->D()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/appdownloader/g;->a(I)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v0

    .line 278
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->E()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/appdownloader/g;->b(I)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v0

    .line 279
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->aC()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/appdownloader/g;->b(Ljava/util/List;)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v0

    .line 280
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->aG()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/appdownloader/g;->c(I)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v0

    .line 281
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->aF()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/appdownloader/g;->d(I)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v0

    .line 282
    invoke-virtual {v0, p2}, Lcom/ss/android/socialbase/appdownloader/g;->f(Z)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v0

    .line 283
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->ai()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/appdownloader/g;->d(Z)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v0

    .line 284
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/appdownloader/g;->f(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v0

    .line 285
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/appdownloader/g;->g(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v0

    .line 286
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->o()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/appdownloader/g;->i(Z)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v0

    .line 287
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->S()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/appdownloader/g;->j(Z)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v0

    .line 288
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->T()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/appdownloader/g;->l(Z)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v0

    .line 289
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->r()Lcom/ss/android/socialbase/downloader/b/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/appdownloader/g;->a(Lcom/ss/android/socialbase/downloader/b/g;)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v0

    .line 290
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->Y()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/appdownloader/g;->n(Z)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v0

    .line 291
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->U()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/appdownloader/g;->m(Z)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v0

    .line 292
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->aj()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/appdownloader/g;->g(Z)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v0

    .line 293
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->ak()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/appdownloader/g;->h(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v0

    .line 294
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->M()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ss/android/socialbase/appdownloader/d/b;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/appdownloader/g;->a(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/appdownloader/g;

    move-result-object v0

    .line 295
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->h()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/appdownloader/d;->a(Lcom/ss/android/socialbase/appdownloader/g;)I

    .line 296
    return-void

    .line 272
    :cond_ef
    const/4 v0, 0x0

    goto/16 :goto_37
.end method

.method private a(Lcom/ss/android/socialbase/downloader/g/c;)Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 259
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/k/a;->a(I)Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v0

    const-string v1, "uninstall_can_not_resume_for_force_task"

    .line 260
    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/k/a;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 261
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->A()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v0}, Lcom/ss/android/socialbase/downloader/m/f;->a(Lcom/ss/android/socialbase/downloader/g/c;ZLjava/lang/String;)Z

    move-result v0

    .line 263
    :goto_19
    return v0

    :cond_1a
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->aI()Z

    move-result v0

    goto :goto_19
.end method

.method static synthetic b(Lcom/ss/android/socialbase/appdownloader/d/b;)Landroid/content/BroadcastReceiver;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d/b;->b:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private b(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 148
    :cond_8
    :goto_8
    return-void

    .line 82
    :cond_9
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->h()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/c/g;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_16

    .line 84
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/appdownloader/c/g;->a(Ljava/util/List;)V

    .line 87
    :cond_16
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v1

    .line 88
    if-eqz v1, :cond_8

    .line 91
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/m/f;->a(Landroid/content/Context;)Z

    move-result v2

    .line 93
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/c;

    .line 94
    invoke-direct {p0, v1, v0, v2}, Lcom/ss/android/socialbase/appdownloader/d/b;->a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/g/c;Z)V

    goto :goto_24

    .line 97
    :cond_34
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d/b;->a:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 98
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d/b;->b:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_8

    .line 99
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/d/b$2;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/appdownloader/d/b$2;-><init>(Lcom/ss/android/socialbase/appdownloader/d/b;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d/b;->b:Landroid/content/BroadcastReceiver;

    .line 139
    :try_start_4b
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 140
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/d/b;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_5a} :catch_5b

    goto :goto_8

    .line 142
    :catch_5b
    move-exception v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d/b;->b:Landroid/content/BroadcastReceiver;

    goto :goto_8
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    const-string v1, "application/vnd.android.package-archive"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/f;->d()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 62
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->k()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 63
    new-instance v1, Lcom/ss/android/socialbase/appdownloader/d/b$1;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/socialbase/appdownloader/d/b$1;-><init>(Lcom/ss/android/socialbase/appdownloader/d/b;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 76
    :goto_12
    return-void

    .line 74
    :cond_13
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/appdownloader/d/b;->b(Ljava/util/List;)V

    goto :goto_12
.end method
