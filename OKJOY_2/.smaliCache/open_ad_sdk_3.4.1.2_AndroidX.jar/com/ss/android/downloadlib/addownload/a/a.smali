.class public Lcom/ss/android/downloadlib/addownload/a/a;
.super Ljava/lang/Object;
.source "AdDownloadDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/addownload/a/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/ss/android/downloadlib/addownload/a/a;


# instance fields
.field private c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/ss/android/downloadlib/addownload/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Lcom/ss/android/downloadlib/addownload/a/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 57
    const-class v0, Lcom/ss/android/downloadlib/addownload/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/downloadlib/addownload/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/downloadlib/addownload/a/a;->d:Z

    .line 75
    new-instance v0, Lcom/ss/android/downloadlib/addownload/a/b;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/addownload/a/b;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/a/a;->f:Lcom/ss/android/downloadlib/addownload/a/b;

    .line 76
    const-string v1, "sp_ad_install_back_dialog"

    const-string v2, "key_uninstalled_list"

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/addownload/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/a/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 77
    return-void
.end method

.method public static a()Lcom/ss/android/downloadlib/addownload/a/a;
    .registers 1

    .line 80
    sget-object v0, Lcom/ss/android/downloadlib/addownload/a/a;->b:Lcom/ss/android/downloadlib/addownload/a/a;

    if-nez v0, :cond_b

    .line 81
    new-instance v0, Lcom/ss/android/downloadlib/addownload/a/a;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/addownload/a/a;-><init>()V

    sput-object v0, Lcom/ss/android/downloadlib/addownload/a/a;->b:Lcom/ss/android/downloadlib/addownload/a/a;

    .line 83
    :cond_b
    sget-object v0, Lcom/ss/android/downloadlib/addownload/a/a;->b:Lcom/ss/android/downloadlib/addownload/a/a;

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/ss/android/downloadlib/addownload/b/a;Lcom/ss/android/downloadlib/addownload/a/a$a;Z)V
    .registers 15

    .line 277
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    iget-wide v1, p2, Lcom/ss/android/downloadlib/addownload/b/a;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/addownload/b/f;->d(J)Lcom/ss/android/downloadad/a/b/b;

    move-result-object v0

    .line 278
    if-nez v0, :cond_10

    .line 279
    invoke-static {}, Lcom/ss/android/downloadlib/h/k;->b()V

    .line 280
    return-void

    .line 282
    :cond_10
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->d()Lcom/ss/android/a/a/a/k;

    move-result-object v1

    new-instance v2, Lcom/ss/android/a/a/c/c$a;

    invoke-direct {v2, p1}, Lcom/ss/android/a/a/c/c$a;-><init>(Landroid/content/Context;)V

    if-eqz p4, :cond_1e

    const-string v3, "\u5e94\u7528\u5b89\u88c5\u786e\u8ba4"

    goto :goto_20

    :cond_1e
    const-string v3, "\u9000\u51fa\u786e\u8ba4"

    .line 283
    :goto_20
    invoke-virtual {v2, v3}, Lcom/ss/android/a/a/c/c$a;->a(Ljava/lang/String;)Lcom/ss/android/a/a/c/c$a;

    move-result-object v2

    const/4 v9, 0x1

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p2, Lcom/ss/android/downloadlib/addownload/b/a;->e:Ljava/lang/String;

    .line 285
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_32

    const-string v4, "\u521a\u521a\u4e0b\u8f7d\u7684\u5e94\u7528"

    goto :goto_34

    :cond_32
    iget-object v4, p2, Lcom/ss/android/downloadlib/addownload/b/a;->e:Ljava/lang/String;

    :goto_34
    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 284
    const-string v4, "%1$s\u4e0b\u8f7d\u5b8c\u6210\uff0c\u662f\u5426\u7acb\u5373\u5b89\u88c5\uff1f"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ss/android/a/a/c/c$a;->b(Ljava/lang/String;)Lcom/ss/android/a/a/c/c$a;

    move-result-object v2

    .line 286
    const-string v3, "\u7acb\u5373\u5b89\u88c5"

    invoke-virtual {v2, v3}, Lcom/ss/android/a/a/c/c$a;->c(Ljava/lang/String;)Lcom/ss/android/a/a/c/c$a;

    move-result-object v2

    if-eqz p4, :cond_4c

    const-string p4, "\u6682\u4e0d\u5b89\u88c5"

    goto :goto_68

    :cond_4c
    new-array p4, v9, [Ljava/lang/Object;

    .line 288
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p4, v5

    const-string v3, "\u9000\u51fa%1$s"

    invoke-static {v3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 287
    :goto_68
    invoke-virtual {v2, p4}, Lcom/ss/android/a/a/c/c$a;->d(Ljava/lang/String;)Lcom/ss/android/a/a/c/c$a;

    move-result-object p4

    .line 289
    invoke-virtual {p4, v5}, Lcom/ss/android/a/a/c/c$a;->a(Z)Lcom/ss/android/a/a/c/c$a;

    move-result-object p4

    iget-object v2, p2, Lcom/ss/android/downloadlib/addownload/b/a;->g:Ljava/lang/String;

    .line 290
    invoke-static {p1, v2}, Lcom/ss/android/downloadlib/h/k;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p4, v2}, Lcom/ss/android/a/a/c/c$a;->a(Landroid/graphics/drawable/Drawable;)Lcom/ss/android/a/a/c/c$a;

    move-result-object p4

    new-instance v2, Lcom/ss/android/downloadlib/addownload/a/a$1;

    move-object v3, v2

    move-object v4, p0

    move-object v5, v0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/ss/android/downloadlib/addownload/a/a$1;-><init>(Lcom/ss/android/downloadlib/addownload/a/a;Lcom/ss/android/downloadad/a/b/b;Landroid/content/Context;Lcom/ss/android/downloadlib/addownload/b/a;Lcom/ss/android/downloadlib/addownload/a/a$a;)V

    .line 291
    invoke-virtual {p4, v2}, Lcom/ss/android/a/a/c/c$a;->a(Lcom/ss/android/a/a/c/c$b;)Lcom/ss/android/a/a/c/c$a;

    move-result-object p1

    .line 314
    invoke-virtual {p1, v9}, Lcom/ss/android/a/a/c/c$a;->a(I)Lcom/ss/android/a/a/c/c$a;

    move-result-object p1

    .line 315
    invoke-virtual {p1}, Lcom/ss/android/a/a/c/c$a;->a()Lcom/ss/android/a/a/c/c;

    move-result-object p1

    .line 282
    invoke-interface {v1, p1}, Lcom/ss/android/a/a/a/k;->b(Lcom/ss/android/a/a/c/c;)Landroid/app/Dialog;

    .line 316
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object p1

    const-string p3, "backdialog_show"

    invoke-virtual {p1, p3, v0}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)V

    .line 317
    iget-object p1, p2, Lcom/ss/android/downloadlib/addownload/b/a;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/a/a;->e:Ljava/lang/String;

    .line 318
    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ZLcom/ss/android/downloadlib/addownload/a/a$a;)Z
    .registers 26

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    .line 127
    const/4 v4, 0x0

    if-nez p2, :cond_17

    :try_start_b
    iget-object v5, v1, Lcom/ss/android/downloadlib/addownload/a/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 128
    return v4

    .line 171
    :catch_14
    move-exception v0

    goto/16 :goto_dd

    .line 130
    :cond_17
    if-eqz v0, :cond_e1

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    if-eqz v5, :cond_21

    goto/16 :goto_e1

    .line 134
    :cond_21
    const/4 v5, 0x1

    if-eqz p2, :cond_4d

    iget-object v6, v1, Lcom/ss/android/downloadlib/addownload/a/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 135
    new-instance v6, Lcom/ss/android/downloadlib/addownload/b/a;

    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v7

    int-to-long v8, v7

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTargetFilePath()Ljava/lang/String;

    move-result-object v17

    move-object v7, v6

    invoke-direct/range {v7 .. v17}, Lcom/ss/android/downloadlib/addownload/b/a;-><init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v1, v0, v6, v2, v3}, Lcom/ss/android/downloadlib/addownload/a/a;->a(Landroid/content/Context;Lcom/ss/android/downloadlib/addownload/b/a;ZLcom/ss/android/downloadlib/addownload/a/a$a;)V

    .line 137
    return v5

    .line 140
    :cond_4d
    const-wide/16 v6, 0x0

    .line 141
    if-eqz p2, :cond_5e

    .line 142
    new-instance v6, Ljava/io/File;

    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTargetFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    .line 145
    :cond_5e
    nop

    .line 146
    iget-object v8, v1, Lcom/ss/android/downloadlib/addownload/a/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v8

    .line 147
    :cond_69
    :goto_69
    invoke-interface {v8}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v9

    if-eqz v9, :cond_c2

    .line 148
    invoke-interface {v8}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ss/android/downloadlib/addownload/b/a;

    .line 149
    if-nez v9, :cond_78

    .line 150
    goto :goto_69

    .line 153
    :cond_78
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v10

    iget-object v11, v9, Lcom/ss/android/downloadlib/addownload/b/a;->d:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/ss/android/downloadlib/h/k;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_69

    iget-object v10, v9, Lcom/ss/android/downloadlib/addownload/b/a;->g:Ljava/lang/String;

    .line 154
    invoke-static {v10}, Lcom/ss/android/downloadlib/h/k;->a(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8d

    .line 155
    goto :goto_69

    .line 157
    :cond_8d
    nop

    .line 158
    new-instance v8, Ljava/io/File;

    iget-object v10, v9, Lcom/ss/android/downloadlib/addownload/b/a;->g:Ljava/lang/String;

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    .line 161
    cmp-long v6, v10, v6

    if-ltz v6, :cond_a1

    .line 162
    invoke-virtual {v1, v0, v9, v2, v3}, Lcom/ss/android/downloadlib/addownload/a/a;->a(Landroid/content/Context;Lcom/ss/android/downloadlib/addownload/b/a;ZLcom/ss/android/downloadlib/addownload/a/a$a;)V

    goto :goto_c3

    .line 164
    :cond_a1
    new-instance v6, Lcom/ss/android/downloadlib/addownload/b/a;

    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v7

    int-to-long v11, v7

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTargetFilePath()Ljava/lang/String;

    move-result-object v20

    move-object v10, v6

    invoke-direct/range {v10 .. v20}, Lcom/ss/android/downloadlib/addownload/b/a;-><init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v1, v0, v6, v2, v3}, Lcom/ss/android/downloadlib/addownload/a/a;->a(Landroid/content/Context;Lcom/ss/android/downloadlib/addownload/b/a;ZLcom/ss/android/downloadlib/addownload/a/a$a;)V

    .line 167
    goto :goto_c3

    .line 147
    :cond_c2
    move v5, v4

    .line 169
    :goto_c3
    sget-object v0, Lcom/ss/android/downloadlib/addownload/a/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryShowInstallDialog isShow:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/ss/android/downloadlib/h/j;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_dc} :catch_14

    .line 170
    return v5

    .line 172
    :goto_dd
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 173
    return v4

    .line 131
    :cond_e1
    :goto_e1
    return v4
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 15

    .line 208
    nop

    .line 210
    nop

    .line 211
    const/4 v0, 0x0

    :try_start_3
    invoke-static {p1}, Lcom/ss/android/downloadlib/g;->a(Landroid/content/Context;)Lcom/ss/android/downloadlib/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/downloadlib/g;->b()J

    move-result-wide v1

    .line 213
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->i()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "enable_miniapp_dialog"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_19

    .line 214
    return-object v0

    .line 216
    :cond_19
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v3

    const-string v4, "application/vnd.android.package-archive"

    invoke-virtual {v3, v4}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getSuccessedDownloadInfosWithMimeType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 217
    if-eqz v3, :cond_98

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2d

    goto/16 :goto_98

    .line 220
    :cond_2d
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-wide v6, v4

    :cond_34
    :goto_34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_97

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 221
    if-nez v8, :cond_43

    .line 222
    goto :goto_34

    .line 224
    :cond_43
    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v9}, Lcom/ss/android/downloadlib/h/k;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_34

    .line 225
    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTargetFilePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/ss/android/downloadlib/h/k;->a(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_58

    .line 226
    goto :goto_34

    .line 228
    :cond_58
    new-instance v9, Ljava/io/File;

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTargetFilePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    .line 231
    cmp-long v11, v9, v1

    if-gez v11, :cond_6a

    .line 232
    goto :goto_34

    .line 234
    :cond_6a
    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getExtra()Ljava/lang/String;

    move-result-object v11
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6e} :catch_99

    if-nez v11, :cond_71

    .line 235
    goto :goto_34

    .line 238
    :cond_71
    :try_start_71
    new-instance v11, Lorg/json/JSONObject;

    invoke-virtual {v8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getExtra()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 239
    const-string v12, "isMiniApp"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_80} :catch_92

    if-nez v11, :cond_83

    .line 240
    goto :goto_34

    .line 243
    :cond_83
    cmp-long v11, v6, v4

    if-nez v11, :cond_89

    .line 244
    nop

    .line 245
    goto :goto_8f

    .line 247
    :cond_89
    cmp-long v11, v9, v6

    if-lez v11, :cond_91

    .line 248
    nop

    .line 249
    nop

    .line 254
    :goto_8f
    move-object v0, v8

    move-wide v6, v9

    :cond_91
    goto :goto_96

    .line 252
    :catch_92
    move-exception v8

    .line 253
    :try_start_93
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_96} :catch_99

    .line 255
    :goto_96
    goto :goto_34

    .line 258
    :cond_97
    goto :goto_9d

    .line 218
    :cond_98
    :goto_98
    return-object v0

    .line 256
    :catch_99
    move-exception p1

    .line 257
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 260
    :goto_9d
    return-object v0
.end method

.method public a(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 29

    .line 264
    move-object/from16 v0, p0

    const/4 v1, 0x0

    :goto_3
    iget-object v2, v0, Lcom/ss/android/downloadlib/addownload/a/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    const-string v3, "key_uninstalled_list"

    const-string v4, "sp_ad_install_back_dialog"

    if-ge v1, v2, :cond_43

    .line 265
    iget-object v2, v0, Lcom/ss/android/downloadlib/addownload/a/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/downloadlib/addownload/b/a;

    .line 266
    if-eqz v2, :cond_40

    iget-wide v5, v2, Lcom/ss/android/downloadlib/addownload/b/a;->b:J

    cmp-long v2, v5, p3

    if-nez v2, :cond_40

    .line 267
    iget-object v2, v0, Lcom/ss/android/downloadlib/addownload/a/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v5, Lcom/ss/android/downloadlib/addownload/b/a;

    move-object v7, v5

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    move-wide/from16 v12, p5

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    move-object/from16 v16, p9

    move-object/from16 v17, p10

    invoke-direct/range {v7 .. v17}, Lcom/ss/android/downloadlib/addownload/b/a;-><init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 268
    iget-object v1, v0, Lcom/ss/android/downloadlib/addownload/a/a;->f:Lcom/ss/android/downloadlib/addownload/a/b;

    iget-object v2, v0, Lcom/ss/android/downloadlib/addownload/a/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v4, v3, v2}, Lcom/ss/android/downloadlib/addownload/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 269
    return-void

    .line 264
    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 272
    :cond_43
    iget-object v1, v0, Lcom/ss/android/downloadlib/addownload/a/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Lcom/ss/android/downloadlib/addownload/b/a;

    move-object v7, v2

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    move-wide/from16 v12, p5

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    move-object/from16 v16, p9

    move-object/from16 v17, p10

    invoke-direct/range {v7 .. v17}, Lcom/ss/android/downloadlib/addownload/b/a;-><init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object v1, v0, Lcom/ss/android/downloadlib/addownload/a/a;->f:Lcom/ss/android/downloadlib/addownload/a/b;

    iget-object v2, v0, Lcom/ss/android/downloadlib/addownload/a/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v4, v3, v2}, Lcom/ss/android/downloadlib/addownload/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 274
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/ss/android/downloadlib/addownload/b/a;ZLcom/ss/android/downloadlib/addownload/a/a$a;)V
    .registers 6

    .line 196
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/a/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 197
    invoke-direct {p0, p1, p2, p4, p3}, Lcom/ss/android/downloadlib/addownload/a/a;->a(Landroid/content/Context;Lcom/ss/android/downloadlib/addownload/b/a;Lcom/ss/android/downloadlib/addownload/a/a$a;Z)V

    .line 198
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/ss/android/downloadlib/addownload/a/a;->d:Z

    .line 199
    invoke-static {p1}, Lcom/ss/android/downloadlib/g;->a(Landroid/content/Context;)Lcom/ss/android/downloadlib/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/downloadlib/g;->c()V

    .line 200
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/a/a;->f:Lcom/ss/android/downloadlib/addownload/a/b;

    const-string p2, "sp_ad_install_back_dialog"

    const-string p3, "key_uninstalled_list"

    invoke-virtual {p1, p2, p3}, Lcom/ss/android/downloadlib/addownload/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    sget-object p1, Lcom/ss/android/downloadlib/addownload/a/a;->a:Ljava/lang/String;

    const-string p2, "tryShowInstallDialog isShow:true"

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/ss/android/downloadlib/h/j;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 202
    return-void
.end method

.method public a(Lcom/ss/android/downloadad/a/b/b;)V
    .registers 5

    .line 336
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->i()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "enable_open_app_dialog"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    .line 337
    return-void

    .line 339
    :cond_f
    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->Y()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->q()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 340
    invoke-virtual {p1, v1}, Lcom/ss/android/downloadad/a/b/b;->k(Z)V

    .line 341
    invoke-static {p1}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a(Lcom/ss/android/downloadad/a/b/a;)V

    .line 343
    :cond_21
    return-void
.end method

.method public a(Landroid/app/Activity;ZLcom/ss/android/downloadlib/addownload/a/a$a;)Z
    .registers 6

    .line 182
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->i()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "disable_install_app_dialog"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1b

    iget-boolean v0, p0, Lcom/ss/android/downloadlib/addownload/a/a;->d:Z

    if-eqz v0, :cond_12

    goto :goto_1b

    .line 186
    :cond_12
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/addownload/a/a;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    .line 187
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/ss/android/downloadlib/addownload/a/a;->a(Landroid/app/Activity;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;ZLcom/ss/android/downloadlib/addownload/a/a$a;)Z

    move-result p1

    return p1

    .line 184
    :cond_1b
    :goto_1b
    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3

    .line 321
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/a/a;->e:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .line 325
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_b

    .line 326
    iput-object v1, p0, Lcom/ss/android/downloadlib/addownload/a/a;->e:Ljava/lang/String;

    goto :goto_15

    .line 327
    :cond_b
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/a/a;->e:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 328
    iput-object v1, p0, Lcom/ss/android/downloadlib/addownload/a/a;->e:Ljava/lang/String;

    .line 330
    :cond_15
    :goto_15
    return-void
.end method
