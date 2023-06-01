.class public Lcom/ssjj/fnsdk/core/DownUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ssjj/fnsdk/core/DownUtil$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/concurrent/ExecutorService;

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/core/DownUtil;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/ssjj/fnsdk/core/DownUtil;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/ssjj/fnsdk/core/DownUtil;->b:Ljava/util/Map;

    return-object v0
.end method

.method private static varargs a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Params:",
            "Ljava/lang/Object;",
            "Progress:",
            "Ljava/lang/Object;",
            "Result:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/AsyncTask<",
            "TParams;TProgress;TResult;>;[TParams;)V"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/ssjj/fnsdk/core/DownUtil;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p0, v0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    goto :goto_a

    :catchall_6
    move-exception v0

    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_a
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/DownUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/DownUtil;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/ssjj/fnsdk/core/DownUtil;->b:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic b(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/DownUtil;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Ljava/lang/String;)Z
    .registers 1

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/DownUtil;->j(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/DownUtil;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_50

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ".0"

    const-string v2, "_"

    const-string v3, "/game_cache/p"

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    goto :goto_2b

    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    :goto_2b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getFNGid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/DownUtil;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_50
    const/4 p0, 0x0

    return-object p0
.end method

.method public static download(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/ssjj/fnsdk/core/DownUtil;->download(Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void
.end method

.method public static download(Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/ssjj/fnsdk/core/DownUtil;->download(Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void
.end method

.method public static download(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/ssjj/fnsdk/core/DownUtil;->download(Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void
.end method

.method public static download(Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 10

    new-instance v0, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/DownUtil;->j(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    if-eqz p2, :cond_13

    const/4 p0, 0x1

    const-string p1, "url\u4e3a\u7a7a"

    invoke-interface {p2, p0, p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_13
    return-void

    :cond_14
    invoke-static {p1}, Lcom/ssjj/fnsdk/core/DownUtil;->j(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "\u4e0b\u8f7d\u6210\u529f"

    const-string v3, "savePath"

    const-string v4, "\u5df2\u4e0b\u8f7d, \u53d6\u6d88\u4e0b\u8f7d: "

    const/4 v5, 0x0

    if-eqz v1, :cond_26

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/DownUtil;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_45

    :cond_26
    invoke-static {p1}, Lcom/ssjj/fnsdk/core/DownUtil;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/DownUtil;->i(Ljava/lang/String;)V

    if-eqz p2, :cond_44

    invoke-virtual {v0, v3, p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v5, v2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_44
    return-void

    :cond_45
    :goto_45
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "download savePath: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/DownUtil;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/DownUtil;->i(Ljava/lang/String;)V

    if-eqz p2, :cond_79

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/DownUtil;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v3, p0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v5, v2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_79
    return-void

    :cond_7a
    invoke-static {p0}, Lcom/ssjj/fnsdk/core/DownUtil;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_93

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u6b63\u5728\u4e0b\u8f7d, \u53d6\u6d88\u91cd\u590d\u8bf7\u6c42: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/DownUtil;->i(Ljava/lang/String;)V

    return-void

    :cond_93
    invoke-static {p0, p1}, Lcom/ssjj/fnsdk/core/DownUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/ssjj/fnsdk/core/c;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/ssjj/fnsdk/core/c;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    new-array p0, v5, [Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/ssjj/fnsdk/core/DownUtil;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    return-void
.end method

.method public static download(Ljava/util/List;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ssjj/fnsdk/core/SsjjFNListener;",
            ")V"
        }
    .end annotation

    if-nez p0, :cond_8

    const-string p0, "urls is null!"

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    return-void

    :cond_8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_14

    const-string p0, "urls is empty!"

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    return-void

    :cond_14
    new-array v6, v3, [Ljava/lang/String;

    new-array v4, v3, [I

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const/4 v7, 0x0

    const/4 v0, 0x0

    :goto_1f
    if-lt v0, v3, :cond_2f

    new-instance v8, Lcom/ssjj/fnsdk/core/b;

    move-object v0, v8

    move-object v2, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/ssjj/fnsdk/core/b;-><init>(Ljava/util/concurrent/CountDownLatch;Lcom/ssjj/fnsdk/core/SsjjFNListener;I[ILjava/util/List;[Ljava/lang/String;)V

    new-array p0, v7, [Ljava/lang/Void;

    invoke-static {v8, p0}, Lcom/ssjj/fnsdk/core/DownUtil;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    return-void

    :cond_2f
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v5, Lcom/ssjj/fnsdk/core/a;

    invoke-direct {v5, v6, v0, v4, v1}, Lcom/ssjj/fnsdk/core/a;-><init>([Ljava/lang/String;I[ILjava/util/concurrent/CountDownLatch;)V

    invoke-static {v2, v5}, Lcom/ssjj/fnsdk/core/DownUtil;->download(Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f
.end method

.method private static e(Ljava/lang/String;)V
    .registers 2

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/DownUtil;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/ssjj/fnsdk/core/DownUtil;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static f(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/DownUtil;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/DownUtil;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method private static g(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/DownUtil;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method private static h(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/DownUtil;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/ssjj/fnsdk/core/DownUtil;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static hideProgress()V
    .registers 1

    sget-object v0, Lcom/ssjj/fnsdk/core/DownUtil;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/ssjj/fnsdk/core/DownUtil;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_f
    const/4 v0, 0x0

    sput-object v0, Lcom/ssjj/fnsdk/core/DownUtil;->c:Landroid/app/ProgressDialog;

    return-void
.end method

.method private static i(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static isUrl(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/DownUtil;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "https"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_18

    :cond_16
    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method private static j(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_c

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    const/4 p0, 0x1

    return p0
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_19
    array-length v2, p0

    if-lt v1, v2, :cond_21

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_21
    aget-byte v2, p0, v1

    if-gez v2, :cond_27

    add-int/lit16 v2, v2, 0x100

    :cond_27
    const/16 v3, 0x10

    if-ge v2, v3, :cond_30

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_30
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_37
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_37} :catch_3a

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :catch_3a
    move-exception p0

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static showProgress(Landroid/content/Context;)V
    .registers 2

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/ssjj/fnsdk/core/DownUtil;->showProgress(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static showProgress(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/ssjj/fnsdk/core/DownUtil;->c:Landroid/app/ProgressDialog;

    if-nez v0, :cond_b

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ssjj/fnsdk/core/DownUtil;->c:Landroid/app/ProgressDialog;

    :cond_b
    sget-object p0, Lcom/ssjj/fnsdk/core/DownUtil;->c:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    sget-object p0, Lcom/ssjj/fnsdk/core/DownUtil;->c:Landroid/app/ProgressDialog;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    sget-object p0, Lcom/ssjj/fnsdk/core/DownUtil;->c:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
