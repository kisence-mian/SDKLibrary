.class public Lcom/ss/android/downloadlib/a/a/a;
.super Ljava/lang/Object;
.source "AdDownloadDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/a/a/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/ss/android/downloadlib/a/a/a;


# instance fields
.field private c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/ss/android/downloadlib/a/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/ss/android/downloadlib/a/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/ss/android/downloadlib/a/a/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    const-class v0, Lcom/ss/android/downloadlib/a/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/downloadlib/a/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/downloadlib/a/a/a;->d:Z

    .line 83
    new-instance v0, Lcom/ss/android/downloadlib/a/a/b;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/a/a/b;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/a/a/a;->g:Lcom/ss/android/downloadlib/a/a/b;

    .line 84
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/a/a;->g:Lcom/ss/android/downloadlib/a/a/b;

    const-string v1, "sp_ad_install_back_dialog"

    const-string v2, "key_uninstalled_list"

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadlib/a/a/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 85
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/a/a;->g:Lcom/ss/android/downloadlib/a/a/b;

    const-string v1, "sp_name_installed_app"

    const-string v2, "key_installed_list"

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadlib/a/a/a;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 86
    return-void
.end method

.method public static a()Lcom/ss/android/downloadlib/a/a/a;
    .registers 1

    .prologue
    .line 89
    sget-object v0, Lcom/ss/android/downloadlib/a/a/a;->b:Lcom/ss/android/downloadlib/a/a/a;

    if-nez v0, :cond_b

    .line 90
    new-instance v0, Lcom/ss/android/downloadlib/a/a/a;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/a/a/a;-><init>()V

    sput-object v0, Lcom/ss/android/downloadlib/a/a/a;->b:Lcom/ss/android/downloadlib/a/a/a;

    .line 92
    :cond_b
    sget-object v0, Lcom/ss/android/downloadlib/a/a/a;->b:Lcom/ss/android/downloadlib/a/a/a;

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/ss/android/downloadad/a/b/a;)V
    .registers 10

    .prologue
    .line 392
    if-nez p2, :cond_3

    .line 411
    :goto_2
    return-void

    .line 396
    :cond_3
    :try_start_3
    invoke-virtual {p2}, Lcom/ss/android/downloadad/a/b/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ss/android/downloadlib/e/d;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/ss/android/downloadlib/a/b/d;

    move-result-object v0

    .line 397
    invoke-virtual {v0}, Lcom/ss/android/downloadlib/a/b/d;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_3a

    .line 403
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->d()Lcom/ss/android/a/a/a/j;

    move-result-object v0

    const/4 v1, 0x4

    .line 404
    invoke-virtual {p2}, Lcom/ss/android/downloadad/a/b/a;->s()Lcom/ss/android/downloadad/a/a/c;

    move-result-object v3

    const-string v4, "\u5e94\u7528\u6253\u5f00\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u5b89\u88c5"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, p1

    .line 403
    invoke-interface/range {v0 .. v6}, Lcom/ss/android/a/a/a/j;->a(ILandroid/content/Context;Lcom/ss/android/a/a/b/c;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 406
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    const-string v1, "market_openapp_failed"

    invoke-virtual {v0, v1, p2}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)V

    goto :goto_2

    .line 409
    :catch_2d
    move-exception v0

    goto :goto_2

    .line 399
    :pswitch_2f
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    const-string v1, "market_openapp_success"

    invoke-virtual {v0, v1, p2}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_38} :catch_2d

    goto :goto_2

    .line 397
    nop

    :pswitch_data_3a
    .packed-switch 0x3
        :pswitch_2f
    .end packed-switch
.end method

.method private a(Landroid/content/Context;Lcom/ss/android/downloadlib/a/b/a;Lcom/ss/android/downloadlib/a/a/a$a;Z)V
    .registers 14

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 243
    invoke-static {}, Lcom/ss/android/downloadlib/a/b/c;->a()Lcom/ss/android/downloadlib/a/b/c;

    move-result-object v0

    iget-wide v2, p2, Lcom/ss/android/downloadlib/a/b/a;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/downloadlib/a/b/c;->d(J)Lcom/ss/android/downloadad/a/b/a;

    move-result-object v2

    .line 244
    if-nez v2, :cond_12

    .line 245
    invoke-static {}, Lcom/ss/android/downloadlib/e/g;->b()V

    .line 284
    :goto_11
    return-void

    .line 248
    :cond_12
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->d()Lcom/ss/android/a/a/a/j;

    move-result-object v6

    new-instance v1, Lcom/ss/android/a/a/c/c$a;

    invoke-direct {v1, p1}, Lcom/ss/android/a/a/c/c$a;-><init>(Landroid/content/Context;)V

    if-eqz p4, :cond_7d

    const-string v0, "\u5e94\u7528\u5b89\u88c5\u786e\u8ba4"

    .line 249
    :goto_1f
    invoke-virtual {v1, v0}, Lcom/ss/android/a/a/c/c$a;->a(Ljava/lang/String;)Lcom/ss/android/a/a/c/c$a;

    move-result-object v1

    const-string v3, "%1$s\u4e0b\u8f7d\u5b8c\u6210\uff0c\u662f\u5426\u7acb\u5373\u5b89\u88c5\uff1f"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v0, p2, Lcom/ss/android/downloadlib/a/b/a;->e:Ljava/lang/String;

    .line 251
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_80

    const-string v0, "\u521a\u521a\u4e0b\u8f7d\u7684\u5e94\u7528"

    :goto_31
    aput-object v0, v4, v7

    .line 250
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ss/android/a/a/c/c$a;->b(Ljava/lang/String;)Lcom/ss/android/a/a/c/c$a;

    move-result-object v0

    const-string v1, "\u7acb\u5373\u5b89\u88c5"

    .line 252
    invoke-virtual {v0, v1}, Lcom/ss/android/a/a/c/c$a;->c(Ljava/lang/String;)Lcom/ss/android/a/a/c/c$a;

    move-result-object v1

    if-eqz p4, :cond_83

    const-string v0, "\u6682\u4e0d\u5b89\u88c5"

    .line 253
    :goto_45
    invoke-virtual {v1, v0}, Lcom/ss/android/a/a/c/c$a;->d(Ljava/lang/String;)Lcom/ss/android/a/a/c/c$a;

    move-result-object v0

    .line 255
    invoke-virtual {v0, v7}, Lcom/ss/android/a/a/c/c$a;->a(Z)Lcom/ss/android/a/a/c/c$a;

    move-result-object v0

    iget-object v1, p2, Lcom/ss/android/downloadlib/a/b/a;->g:Ljava/lang/String;

    .line 256
    invoke-static {p1, v1}, Lcom/ss/android/downloadlib/e/g;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/a/a/c/c$a;->a(Landroid/graphics/drawable/Drawable;)Lcom/ss/android/a/a/c/c$a;

    move-result-object v7

    new-instance v0, Lcom/ss/android/downloadlib/a/a/a$1;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/downloadlib/a/a/a$1;-><init>(Lcom/ss/android/downloadlib/a/a/a;Lcom/ss/android/downloadad/a/b/a;Landroid/content/Context;Lcom/ss/android/downloadlib/a/b/a;Lcom/ss/android/downloadlib/a/a/a$a;)V

    .line 257
    invoke-virtual {v7, v0}, Lcom/ss/android/a/a/c/c$a;->a(Lcom/ss/android/a/a/c/c$b;)Lcom/ss/android/a/a/c/c$a;

    move-result-object v0

    .line 280
    invoke-virtual {v0, v8}, Lcom/ss/android/a/a/c/c$a;->a(I)Lcom/ss/android/a/a/c/c$a;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Lcom/ss/android/a/a/c/c$a;->a()Lcom/ss/android/a/a/c/c;

    move-result-object v0

    .line 248
    invoke-interface {v6, v0}, Lcom/ss/android/a/a/a/j;->b(Lcom/ss/android/a/a/c/c;)Landroid/app/Dialog;

    .line 282
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    const-string v1, "backdialog_show"

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)V

    .line 283
    iget-object v0, p2, Lcom/ss/android/downloadlib/a/b/a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/ss/android/downloadlib/a/a/a;->e:Ljava/lang/String;

    goto :goto_11

    .line 248
    :cond_7d
    const-string v0, "\u9000\u51fa\u786e\u8ba4"

    goto :goto_1f

    .line 251
    :cond_80
    iget-object v0, p2, Lcom/ss/android/downloadlib/a/b/a;->e:Ljava/lang/String;

    goto :goto_31

    .line 252
    :cond_83
    const-string v0, "\u9000\u51fa%1$s"

    new-array v3, v8, [Ljava/lang/Object;

    .line 254
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_45
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/a/a/a;Landroid/content/Context;Lcom/ss/android/downloadad/a/b/a;)V
    .registers 3

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/ss/android/downloadlib/a/a/a;->a(Landroid/content/Context;Lcom/ss/android/downloadad/a/b/a;)V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/ss/android/downloadlib/a/b/a;)Z
    .registers 11

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 353
    sget-object v0, Lcom/ss/android/downloadlib/a/a/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showOpenAppDialog appname:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/ss/android/downloadlib/a/b/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",pgk:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/ss/android/downloadlib/a/b/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/e/f;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 354
    invoke-static {}, Lcom/ss/android/downloadlib/a/b/c;->a()Lcom/ss/android/downloadlib/a/b/c;

    move-result-object v0

    iget-wide v2, p2, Lcom/ss/android/downloadlib/a/b/a;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/downloadlib/a/b/c;->d(J)Lcom/ss/android/downloadad/a/b/a;

    move-result-object v1

    .line 355
    if-nez v1, :cond_39

    .line 356
    invoke-static {}, Lcom/ss/android/downloadlib/e/g;->b()V

    .line 388
    :goto_38
    return v6

    .line 359
    :cond_39
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->d()Lcom/ss/android/a/a/a/j;

    move-result-object v2

    new-instance v0, Lcom/ss/android/a/a/c/c$a;

    invoke-direct {v0, p1}, Lcom/ss/android/a/a/c/c$a;-><init>(Landroid/content/Context;)V

    const-string v3, "\u5df2\u5b89\u88c5\u5b8c\u6210"

    .line 360
    invoke-virtual {v0, v3}, Lcom/ss/android/a/a/c/c$a;->a(Ljava/lang/String;)Lcom/ss/android/a/a/c/c$a;

    move-result-object v3

    const-string v4, "%1$s\u5df2\u5b89\u88c5\u5b8c\u6210\uff0c\u662f\u5426\u7acb\u5373\u6253\u5f00\uff1f"

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v0, p2, Lcom/ss/android/downloadlib/a/b/a;->e:Ljava/lang/String;

    .line 362
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_99

    const-string v0, "\u521a\u521a\u4e0b\u8f7d\u7684\u5e94\u7528"

    :goto_56
    aput-object v0, v5, v7

    .line 361
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/ss/android/a/a/c/c$a;->b(Ljava/lang/String;)Lcom/ss/android/a/a/c/c$a;

    move-result-object v0

    const-string v3, "\u6253\u5f00"

    .line 363
    invoke-virtual {v0, v3}, Lcom/ss/android/a/a/c/c$a;->c(Ljava/lang/String;)Lcom/ss/android/a/a/c/c$a;

    move-result-object v0

    const-string v3, "\u53d6\u6d88"

    .line 364
    invoke-virtual {v0, v3}, Lcom/ss/android/a/a/c/c$a;->d(Ljava/lang/String;)Lcom/ss/android/a/a/c/c$a;

    move-result-object v0

    .line 365
    invoke-virtual {v0, v7}, Lcom/ss/android/a/a/c/c$a;->a(Z)Lcom/ss/android/a/a/c/c$a;

    move-result-object v0

    iget-object v3, p2, Lcom/ss/android/downloadlib/a/b/a;->d:Ljava/lang/String;

    .line 366
    invoke-static {p1, v3}, Lcom/ss/android/downloadlib/e/g;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ss/android/a/a/c/c$a;->a(Landroid/graphics/drawable/Drawable;)Lcom/ss/android/a/a/c/c$a;

    move-result-object v0

    new-instance v3, Lcom/ss/android/downloadlib/a/a/a$2;

    invoke-direct {v3, p0, p1, v1}, Lcom/ss/android/downloadlib/a/a/a$2;-><init>(Lcom/ss/android/downloadlib/a/a/a;Landroid/content/Context;Lcom/ss/android/downloadad/a/b/a;)V

    .line 367
    invoke-virtual {v0, v3}, Lcom/ss/android/a/a/c/c$a;->a(Lcom/ss/android/a/a/c/c$b;)Lcom/ss/android/a/a/c/c$a;

    move-result-object v0

    const/4 v3, 0x2

    .line 385
    invoke-virtual {v0, v3}, Lcom/ss/android/a/a/c/c$a;->a(I)Lcom/ss/android/a/a/c/c$a;

    move-result-object v0

    .line 386
    invoke-virtual {v0}, Lcom/ss/android/a/a/c/c$a;->a()Lcom/ss/android/a/a/c/c;

    move-result-object v0

    .line 359
    invoke-interface {v2, v0}, Lcom/ss/android/a/a/a/j;->b(Lcom/ss/android/a/a/c/c;)Landroid/app/Dialog;

    .line 387
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    const-string v2, "market_openapp_window_show"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)V

    goto :goto_38

    .line 362
    :cond_99
    iget-object v0, p2, Lcom/ss/android/downloadlib/a/b/a;->e:Ljava/lang/String;

    goto :goto_56
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 16

    .prologue
    .line 178
    const/4 v1, 0x0

    .line 179
    const-wide/16 v4, 0x0

    .line 180
    invoke-static {p1}, Lcom/ss/android/downloadlib/h;->a(Landroid/content/Context;)Lcom/ss/android/downloadlib/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/h;->b()J

    move-result-wide v6

    .line 182
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->i()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "enable_miniapp_dialog"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1a

    .line 183
    const/4 v1, 0x0

    .line 226
    :cond_19
    :goto_19
    return-object v1

    .line 185
    :cond_1a
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/downloader/f;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_2c

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 187
    :cond_2c
    const/4 v1, 0x0

    goto :goto_19

    .line 189
    :cond_2e
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_32
    :goto_32
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/c;

    .line 190
    if-eqz v0, :cond_32

    .line 193
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->z()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/ss/android/downloadlib/e/g;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 194
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 197
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->n()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 200
    cmp-long v9, v2, v6

    if-ltz v9, :cond_32

    .line 203
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->y()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_32

    .line 207
    :try_start_6b
    new-instance v9, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->y()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 208
    const-string v10, "isMiniApp"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_79} :catch_90

    move-result v9

    if-eqz v9, :cond_32

    .line 212
    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-nez v9, :cond_88

    move-wide v12, v2

    move-object v2, v0

    move-wide v0, v12

    :goto_85
    move-wide v4, v0

    move-object v1, v2

    .line 224
    goto :goto_32

    .line 216
    :cond_88
    cmp-long v9, v2, v4

    if-lez v9, :cond_94

    move-wide v12, v2

    move-object v2, v0

    move-wide v0, v12

    .line 218
    goto :goto_85

    .line 221
    :catch_90
    move-exception v0

    .line 222
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_94
    move-object v2, v1

    move-wide v0, v4

    goto :goto_85
.end method

.method public a(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 24

    .prologue
    .line 230
    const/4 v0, 0x0

    move v12, v0

    :goto_2
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/a/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge v12, v0, :cond_41

    .line 231
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/a/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/downloadlib/a/b/a;

    .line 232
    if-eqz v0, :cond_3d

    iget-wide v0, v0, Lcom/ss/android/downloadlib/a/b/a;->b:J

    cmp-long v0, v0, p3

    if-nez v0, :cond_3d

    .line 233
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/a/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/ss/android/downloadlib/a/b/a;

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lcom/ss/android/downloadlib/a/b/a;-><init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v12, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/a/a;->g:Lcom/ss/android/downloadlib/a/a/b;

    const-string v1, "sp_ad_install_back_dialog"

    const-string v2, "key_uninstalled_list"

    iget-object v3, p0, Lcom/ss/android/downloadlib/a/a/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/downloadlib/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 240
    :goto_3c
    return-void

    .line 230
    :cond_3d
    add-int/lit8 v0, v12, 0x1

    move v12, v0

    goto :goto_2

    .line 238
    :cond_41
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/a/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/ss/android/downloadlib/a/b/a;

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lcom/ss/android/downloadlib/a/b/a;-><init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/a/a;->g:Lcom/ss/android/downloadlib/a/a/b;

    const-string v1, "sp_ad_install_back_dialog"

    const-string v2, "key_uninstalled_list"

    iget-object v3, p0, Lcom/ss/android/downloadlib/a/a/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/downloadlib/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    goto :goto_3c
.end method

.method public a(Landroid/content/Context;Lcom/ss/android/downloadlib/a/b/a;ZLcom/ss/android/downloadlib/a/a/a$a;)V
    .registers 8

    .prologue
    .line 166
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/a/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 167
    invoke-direct {p0, p1, p2, p4, p3}, Lcom/ss/android/downloadlib/a/a/a;->a(Landroid/content/Context;Lcom/ss/android/downloadlib/a/b/a;Lcom/ss/android/downloadlib/a/a/a$a;Z)V

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/downloadlib/a/a/a;->d:Z

    .line 169
    invoke-static {p1}, Lcom/ss/android/downloadlib/h;->a(Landroid/content/Context;)Lcom/ss/android/downloadlib/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/h;->c()V

    .line 170
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/a/a;->g:Lcom/ss/android/downloadlib/a/a/b;

    const-string v1, "sp_ad_install_back_dialog"

    const-string v2, "key_uninstalled_list"

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/a/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    sget-object v0, Lcom/ss/android/downloadlib/a/a/a;->a:Ljava/lang/String;

    const-string v1, "tryShowInstallDialog isShow:true"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/e/f;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 172
    return-void
.end method

.method public a(Lcom/ss/android/downloadlib/a/b/a;)V
    .registers 8

    .prologue
    .line 303
    if-nez p1, :cond_3

    .line 314
    :cond_2
    :goto_2
    return-void

    .line 306
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/a/a;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_23

    .line 307
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/a/a;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/downloadlib/a/b/a;

    .line 308
    if-eqz v0, :cond_1f

    iget-wide v2, v0, Lcom/ss/android/downloadlib/a/b/a;->b:J

    iget-wide v4, p1, Lcom/ss/android/downloadlib/a/b/a;->b:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    .line 306
    :cond_1f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 312
    :cond_23
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/a/a;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/a/a;->g:Lcom/ss/android/downloadlib/a/a/b;

    const-string v1, "sp_name_installed_app"

    const-string v2, "key_installed_list"

    iget-object v3, p0, Lcom/ss/android/downloadlib/a/a/a;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/downloadlib/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    goto :goto_2
.end method

.method public a(Landroid/content/Context;ZLcom/ss/android/downloadlib/a/a/a$a;)Z
    .registers 21

    .prologue
    .line 109
    sget-object v4, Lcom/ss/android/downloadlib/a/a/a;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tryShowInstallDialog canBackRefresh:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/ss/android/downloadlib/e/f;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 110
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->i()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "disable_install_app_dialog"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2a

    .line 111
    const/4 v4, 0x0

    .line 157
    :goto_29
    return v4

    .line 113
    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/ss/android/downloadlib/a/a/a;->d:Z

    if-eqz v4, :cond_32

    .line 114
    const/4 v4, 0x0

    goto :goto_29

    .line 116
    :cond_32
    invoke-virtual/range {p0 .. p1}, Lcom/ss/android/downloadlib/a/a/a;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v15

    .line 117
    if-nez v15, :cond_44

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ss/android/downloadlib/a/a/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 118
    const/4 v4, 0x0

    goto :goto_29

    .line 121
    :cond_44
    if-eqz v15, :cond_78

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ss/android/downloadlib/a/a/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_78

    .line 122
    new-instance v5, Lcom/ss/android/downloadlib/a/b/a;

    invoke-virtual {v15}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v4

    int-to-long v6, v4

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-virtual {v15}, Lcom/ss/android/socialbase/downloader/g/c;->z()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15}, Lcom/ss/android/socialbase/downloader/g/c;->i()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v15}, Lcom/ss/android/socialbase/downloader/g/c;->n()Ljava/lang/String;

    move-result-object v15

    invoke-direct/range {v5 .. v15}, Lcom/ss/android/downloadlib/a/b/a;-><init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v5, v2, v3}, Lcom/ss/android/downloadlib/a/a/a;->a(Landroid/content/Context;Lcom/ss/android/downloadlib/a/b/a;ZLcom/ss/android/downloadlib/a/a/a$a;)V

    .line 124
    const/4 v4, 0x1

    goto :goto_29

    .line 127
    :cond_78
    const-wide/16 v4, 0x0

    .line 128
    if-eqz v15, :cond_11f

    .line 129
    new-instance v4, Ljava/io/File;

    invoke-virtual {v15}, Lcom/ss/android/socialbase/downloader/g/c;->n()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    move-wide v6, v4

    .line 132
    :goto_8a
    const/4 v5, 0x0

    .line 133
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ss/android/downloadlib/a/a/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ss/android/downloadlib/a/a/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v8

    .line 134
    :cond_9b
    invoke-interface {v8}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_11d

    .line 135
    invoke-interface {v8}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ss/android/downloadlib/a/b/a;

    .line 136
    if-eqz v4, :cond_9b

    .line 140
    iget-object v9, v4, Lcom/ss/android/downloadlib/a/b/a;->d:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/ss/android/downloadlib/e/g;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9b

    iget-object v9, v4, Lcom/ss/android/downloadlib/a/b/a;->g:Ljava/lang/String;

    .line 141
    invoke-static {v9}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9b

    .line 144
    const/16 v16, 0x1

    .line 145
    new-instance v5, Ljava/io/File;

    iget-object v8, v4, Lcom/ss/android/downloadlib/a/b/a;->g:Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    .line 148
    cmp-long v5, v8, v6

    if-ltz v5, :cond_f4

    .line 149
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/ss/android/downloadlib/a/a/a;->a(Landroid/content/Context;Lcom/ss/android/downloadlib/a/b/a;ZLcom/ss/android/downloadlib/a/a/a$a;)V

    move/from16 v4, v16

    .line 156
    :goto_d9
    sget-object v5, Lcom/ss/android/downloadlib/a/a/a;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tryShowInstallDialog isShow:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/ss/android/downloadlib/e/f;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_29

    .line 151
    :cond_f4
    new-instance v5, Lcom/ss/android/downloadlib/a/b/a;

    invoke-virtual {v15}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v4

    int-to-long v6, v4

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-virtual {v15}, Lcom/ss/android/socialbase/downloader/g/c;->z()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15}, Lcom/ss/android/socialbase/downloader/g/c;->i()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v15}, Lcom/ss/android/socialbase/downloader/g/c;->n()Ljava/lang/String;

    move-result-object v15

    invoke-direct/range {v5 .. v15}, Lcom/ss/android/downloadlib/a/b/a;-><init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v5, v2, v3}, Lcom/ss/android/downloadlib/a/a/a;->a(Landroid/content/Context;Lcom/ss/android/downloadlib/a/b/a;ZLcom/ss/android/downloadlib/a/a/a$a;)V

    move/from16 v4, v16

    .line 154
    goto :goto_d9

    :cond_11d
    move v4, v5

    goto :goto_d9

    :cond_11f
    move-wide v6, v4

    goto/16 :goto_8a
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 287
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/a/a;->e:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Context;)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 322
    sget-object v0, Lcom/ss/android/downloadlib/a/a/a;->a:Ljava/lang/String;

    const-string v1, "tryShowOpenAppDialog start"

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/e/f;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 323
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->i()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "disable_open_app_dialog"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 350
    :cond_15
    :goto_15
    return-void

    .line 326
    :cond_16
    if-eqz p1, :cond_15

    iget-object v0, p0, Lcom/ss/android/downloadlib/a/a/a;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 329
    sget-object v0, Lcom/ss/android/downloadlib/a/a/a;->a:Ljava/lang/String;

    const-string v1, "tryShowOpenAppDialog next"

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/e/f;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 330
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/a/a;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/ss/android/downloadlib/a/a/a;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 331
    :cond_33
    :goto_33
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 332
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/downloadlib/a/b/a;

    .line 334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/ss/android/downloadlib/a/b/a;->h:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x36ee80

    cmp-long v2, v2, v4

    if-lez v2, :cond_53

    .line 335
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/a/a;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    goto :goto_15

    .line 339
    :cond_53
    iget-object v2, v0, Lcom/ss/android/downloadlib/a/b/a;->d:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/ss/android/downloadlib/e/g;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_61

    .line 340
    iget-object v2, p0, Lcom/ss/android/downloadlib/a/a/a;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_33

    .line 344
    :cond_61
    invoke-direct {p0, p1, v0}, Lcom/ss/android/downloadlib/a/a/a;->a(Landroid/content/Context;Lcom/ss/android/downloadlib/a/b/a;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 345
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/a/a;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 346
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/a/a;->g:Lcom/ss/android/downloadlib/a/a/b;

    const-string v1, "sp_name_installed_app"

    const-string v2, "key_installed_list"

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/a/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 291
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 292
    const-string v0, ""

    iput-object v0, p0, Lcom/ss/android/downloadlib/a/a/a;->e:Ljava/lang/String;

    .line 296
    :cond_a
    :goto_a
    return-void

    .line 293
    :cond_b
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/a/a;->e:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 294
    const-string v0, ""

    iput-object v0, p0, Lcom/ss/android/downloadlib/a/a/a;->e:Ljava/lang/String;

    goto :goto_a
.end method
