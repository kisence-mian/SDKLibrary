.class public Lcom/JoyFramework/module/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lrx/subscriptions/CompositeSubscription;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/JoyFramework/module/a/c;->b:Lrx/subscriptions/CompositeSubscription;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/JoyFramework/module/a/c;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/JoyFramework/module/a/c;->a:Landroid/content/Context;

    .line 48
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lcom/JoyFramework/module/a/c;->b:Lrx/subscriptions/CompositeSubscription;

    .line 49
    invoke-direct {p0, p2, p3}, Lcom/JoyFramework/module/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/JoyFramework/module/a/c;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/JoyFramework/module/a/c;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 7

    .prologue
    .line 103
    invoke-static {p1}, Lcom/JoyFramework/remote/a/a;->a(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/JoyFramework/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/JoyFramework/a/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/JoyFramework/remote/b/d/f;->a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-static {}, Lcom/JoyFramework/remote/b/d/b;->a()Lcom/JoyFramework/remote/b/d/b;

    move-result-object v1

    new-instance v2, Lcom/JoyFramework/remote/b/c/b;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-instance v4, Lcom/JoyFramework/module/a/e;

    invoke-direct {v4, p0, p1}, Lcom/JoyFramework/module/a/e;-><init>(Lcom/JoyFramework/module/a/c;Landroid/content/Context;)V

    invoke-direct {v2, v3, p1, v4}, Lcom/JoyFramework/remote/b/c/b;-><init>(Ljava/lang/Boolean;Landroid/content/Context;Lcom/JoyFramework/remote/b/c/c;)V

    invoke-virtual {v1, v0, v2}, Lcom/JoyFramework/remote/b/d/b;->a(Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/JoyFramework/module/a/c;->b:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1, v0}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 157
    return-void
.end method

.method static synthetic a(Lcom/JoyFramework/module/a/c;Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/JoyFramework/module/a/c;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/JoyFramework/module/a/c;Lcom/JoyFramework/remote/bean/v;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/JoyFramework/module/a/c;->a(Lcom/JoyFramework/remote/bean/v;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/JoyFramework/module/a/c;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/JoyFramework/module/a/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/JoyFramework/remote/bean/v;Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 159
    invoke-static {p1}, Lcom/JoyFramework/a/a;->a(Lcom/JoyFramework/remote/bean/v;)V

    .line 161
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/JoyFramework/c/e;->a(Lcom/JoyFramework/remote/bean/v;)V

    .line 162
    const-string v0, "success"

    invoke-direct {p0, p1, v0}, Lcom/JoyFramework/module/a/c;->a(Lcom/JoyFramework/remote/bean/v;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method private a(Lcom/JoyFramework/remote/bean/v;Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 282
    const-string v0, "true"

    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/v;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 283
    sput-boolean v3, Lcom/JoyFramework/a/a;->l:Z

    .line 289
    :goto_10
    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/v;->s()I

    move-result v0

    sput v0, Lcom/JoyFramework/a/a;->p:I

    .line 293
    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/v;->j()I

    move-result v0

    .line 294
    if-gtz v0, :cond_56

    .line 295
    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/v;->p()I

    move-result v0

    if-lez v0, :cond_28

    .line 296
    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/v;->p()I

    move-result v0

    sput v0, Lcom/JoyFramework/a/a;->G:I

    .line 303
    :cond_28
    :goto_28
    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/v;->q()I

    move-result v0

    .line 304
    if-nez v0, :cond_59

    .line 305
    sput-boolean v3, Lcom/JoyFramework/a/a;->S:Z

    .line 310
    :goto_30
    const-string v0, "success"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 311
    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/v;->o()Ljava/lang/String;

    move-result-object v0

    .line 312
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 313
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/JoyFramework/c/e;->a(ILjava/lang/Object;)V

    .line 318
    :goto_49
    iget-object v0, p0, Lcom/JoyFramework/module/a/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/JoyFramework/d/aj;->a(Landroid/content/Context;)Lcom/JoyFramework/d/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/d/aj;->f()V

    .line 321
    :cond_52
    return-void

    .line 285
    :cond_53
    sput-boolean v2, Lcom/JoyFramework/a/a;->l:Z

    goto :goto_10

    .line 299
    :cond_56
    sput v0, Lcom/JoyFramework/a/a;->G:I

    goto :goto_28

    .line 307
    :cond_59
    sput-boolean v2, Lcom/JoyFramework/a/a;->S:Z

    goto :goto_30

    .line 315
    :cond_5c
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    invoke-virtual {v0, v2, p2}, Lcom/JoyFramework/c/e;->a(ILjava/lang/Object;)V

    goto :goto_49
.end method

.method private a(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 179
    iget-object v0, p0, Lcom/JoyFramework/module/a/c;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u521d\u59cb\u5316\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/JoyFramework/module/a/g;

    invoke-direct {v2, p0}, Lcom/JoyFramework/module/a/g;-><init>(Lcom/JoyFramework/module/a/c;)V

    const-string v3, "\u91cd\u8bd5"

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/JoyFramework/d/e;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/e$e;Ljava/lang/String;Z)V

    .line 185
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 58
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "JoyGameId"

    invoke-static {v0, v1}, Lcom/JoyFramework/d/ar;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "JoyGameKey"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/ar;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    move-object p1, v0

    .line 63
    :cond_1b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    move-object p2, v1

    .line 66
    :cond_22
    sput-object p1, Lcom/JoyFramework/a/a;->e:Ljava/lang/String;

    .line 67
    sput-object p2, Lcom/JoyFramework/a/a;->f:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/JoyFramework/module/a/c;->a:Landroid/content/Context;

    const-string v1, "joyAgent"

    invoke-static {v0, v1}, Lcom/JoyFramework/d/ar;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/JoyFramework/a/a;->h:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/JoyFramework/module/a/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/JoyFramework/d/ar;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/JoyFramework/a/a;->i:Ljava/lang/String;

    .line 71
    return-void
.end method

.method private b()V
    .registers 9

    .prologue
    .line 227
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/module/a/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/crash_log_file_name.log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_d1

    move-result v0

    if-eqz v0, :cond_bd

    .line 231
    const/4 v2, 0x0

    .line 233
    :try_start_37
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_45} :catch_5d
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_45} :catch_d1

    .line 235
    :try_start_45
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 236
    const-wide/32 v6, 0x7fffffff

    cmp-long v5, v0, v6

    if-lez v5, :cond_be

    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u65e5\u5fd7\u6587\u4ef6\u5185\u5bb9\u592a\u957f"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_58
    .catchall {:try_start_45 .. :try_end_58} :catchall_58

    .line 241
    :catchall_58
    move-exception v0

    :try_start_59
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    throw v0
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5d} :catch_5d
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5d} :catch_d1

    .line 244
    :catch_5d
    move-exception v0

    move-object v1, v2

    .line 245
    :goto_5f
    :try_start_5f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 246
    const-string v0, "\u65e5\u5fd7\u6587\u4ef6\u5185\u5bb9\u592a\u957f"

    invoke-static {v0}, Lcom/JoyFramework/d/aq;->c(Ljava/lang/String;)V

    .line 249
    :goto_67
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_bd

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5954\u6e83\u65e5\u5fd7\u5185\u5bb9 start \uff1a \n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n  \u5954\u6e83\u65e5\u5fd7  end."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/JoyFramework/d/aq;->c(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/JoyFramework/module/a/c;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/JoyFramework/remote/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/JoyFramework/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/JoyFramework/a/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/JoyFramework/remote/b/d/f;->a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-static {}, Lcom/JoyFramework/remote/b/d/b;->a()Lcom/JoyFramework/remote/b/d/b;

    move-result-object v1

    new-instance v2, Lcom/JoyFramework/module/a/j;

    invoke-direct {v2, p0, v3}, Lcom/JoyFramework/module/a/j;-><init>(Lcom/JoyFramework/module/a/c;Ljava/io/File;)V

    invoke-virtual {v1, v0, v2}, Lcom/JoyFramework/remote/b/d/b;->h(Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    .line 272
    new-instance v1, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v1}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    invoke-virtual {v1, v0}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_bd} :catch_d1

    .line 278
    :cond_bd
    :goto_bd
    return-void

    .line 237
    :cond_be
    long-to-int v0, v0

    :try_start_bf
    new-array v0, v0, [B

    .line 238
    invoke-virtual {v4, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 239
    new-instance v1, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v1, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_cb
    .catchall {:try_start_bf .. :try_end_cb} :catchall_58

    .line 241
    :try_start_cb
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_ce} :catch_cf
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_ce} :catch_d1

    goto :goto_67

    .line 244
    :catch_cf
    move-exception v0

    goto :goto_5f

    .line 275
    :catch_d1
    move-exception v0

    .line 276
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_bd
.end method

.method private b(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 188
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_25

    move-object v0, p1

    .line 189
    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/JoyFramework/d/ba;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2a

    move-object v0, p1

    .line 190
    check-cast v0, Landroid/app/Activity;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Lcom/JoyFramework/d/ba;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    move-object v0, p1

    .line 191
    check-cast v0, Landroid/app/Activity;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    new-instance v2, Lcom/JoyFramework/module/a/h;

    invoke-direct {v2, p0, p1}, Lcom/JoyFramework/module/a/h;-><init>(Lcom/JoyFramework/module/a/c;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/ba;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/ba$b;)V

    .line 223
    :cond_25
    :goto_25
    return-void

    .line 217
    :cond_26
    invoke-direct {p0}, Lcom/JoyFramework/module/a/c;->b()V

    goto :goto_25

    .line 220
    :cond_2a
    invoke-direct {p0}, Lcom/JoyFramework/module/a/c;->b()V

    goto :goto_25
.end method

.method static synthetic b(Lcom/JoyFramework/module/a/c;)V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/JoyFramework/module/a/c;->b()V

    return-void
.end method

.method static synthetic b(Lcom/JoyFramework/module/a/c;Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/JoyFramework/module/a/c;->b(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    .line 77
    iget-object v0, p0, Lcom/JoyFramework/module/a/c;->a:Landroid/content/Context;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/JoyFramework/module/a/c;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1a

    .line 78
    iget-object v0, p0, Lcom/JoyFramework/module/a/c;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v2, "\u62d2\u7edd\u8be5\u6743\u9650\uff0c\u4e0b\u6b21\u767b\u5f55\u5c06\u65e0\u6cd5\u4f7f\u7528\u81ea\u52a8\u767b\u5f55\u529f\u80fd"

    new-instance v3, Lcom/JoyFramework/module/a/d;

    invoke-direct {v3, p0}, Lcom/JoyFramework/module/a/d;-><init>(Lcom/JoyFramework/module/a/c;)V

    invoke-static {v0, v1, v2, v3}, Lcom/JoyFramework/d/ba;->b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/JoyFramework/d/ba$b;)V

    .line 93
    :cond_1a
    return-void
.end method
