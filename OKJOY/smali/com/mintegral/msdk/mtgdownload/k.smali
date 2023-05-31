.class Lcom/mintegral/msdk/mtgdownload/k;
.super Ljava/lang/Thread;
.source "WorkThread.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static n:Ljava/lang/Boolean;


# instance fields
.field private b:Lcom/mintegral/msdk/mtgdownload/c;

.field private c:Landroid/content/Context;

.field private d:Z

.field private e:Ljava/io/File;

.field private f:I

.field private g:J

.field private h:J

.field private i:I

.field private j:I

.field private k:Landroid/os/Handler;

.field private l:Lcom/mintegral/msdk/mtgdownload/b$a;

.field private m:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-class v0, Lcom/mintegral/msdk/mtgdownload/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/mtgdownload/k;->a:Ljava/lang/String;

    .line 423
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/mtgdownload/k;->n:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lcom/mintegral/msdk/mtgdownload/c;Lcom/mintegral/msdk/mtgdownload/b$a;II)V
    .registers 11

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 42
    iput v0, p0, Lcom/mintegral/msdk/mtgdownload/k;->f:I

    .line 43
    iput-wide v4, p0, Lcom/mintegral/msdk/mtgdownload/k;->g:J

    .line 44
    iput-wide v4, p0, Lcom/mintegral/msdk/mtgdownload/k;->h:J

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/mintegral/msdk/mtgdownload/k;->i:I

    .line 53
    iput-object p1, p0, Lcom/mintegral/msdk/mtgdownload/k;->b:Lcom/mintegral/msdk/mtgdownload/c;

    .line 54
    invoke-virtual {p1}, Lcom/mintegral/msdk/mtgdownload/c;->e()Landroid/app/Service;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgdownload/k;->c:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/mintegral/msdk/mtgdownload/k;->l:Lcom/mintegral/msdk/mtgdownload/b$a;

    .line 56
    iput p4, p0, Lcom/mintegral/msdk/mtgdownload/k;->f:I

    .line 57
    invoke-virtual {p1}, Lcom/mintegral/msdk/mtgdownload/c;->e()Landroid/app/Service;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/mintegral/msdk/mtgdownload/k;->m:Landroid/app/NotificationManager;

    .line 58
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/k;->m:Landroid/app/NotificationManager;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgdownload/j;->a(Landroid/app/NotificationManager;)V

    .line 59
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/k;->b:Lcom/mintegral/msdk/mtgdownload/c;

    invoke-virtual {v1}, Lcom/mintegral/msdk/mtgdownload/c;->e()Landroid/app/Service;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Service;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgdownload/k;->k:Landroid/os/Handler;

    .line 62
    :try_start_44
    sget-object v0, Lcom/mintegral/msdk/mtgdownload/c;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_65

    .line 63
    sget-object v0, Lcom/mintegral/msdk/mtgdownload/c;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/mtgdownload/e$b;

    .line 64
    iget-object v0, v0, Lcom/mintegral/msdk/mtgdownload/e$b;->f:[J

    .line 65
    if-eqz v0, :cond_65

    array-length v1, v0

    if-le v1, v2, :cond_65

    .line 66
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    iput-wide v2, p0, Lcom/mintegral/msdk/mtgdownload/k;->g:J

    .line 67
    const/4 v1, 0x1

    aget-wide v0, v0, v1

    iput-wide v0, p0, Lcom/mintegral/msdk/mtgdownload/k;->h:J

    .line 71
    :cond_65
    iput p3, p0, Lcom/mintegral/msdk/mtgdownload/k;->j:I

    .line 73
    const/4 v0, 0x1

    new-array v0, v0, [Z

    .line 74
    const-string v1, "/apk"

    iget-object v2, p0, Lcom/mintegral/msdk/mtgdownload/k;->c:Landroid/content/Context;

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/mtgdownload/e;->a(Ljava/lang/String;Landroid/content/Context;[Z)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/mintegral/msdk/mtgdownload/k;->e:Ljava/io/File;

    .line 75
    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgdownload/k;->d:Z

    .line 77
    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/k;->l:Lcom/mintegral/msdk/mtgdownload/b$a;

    .line 1360
    iget-object v0, v1, Lcom/mintegral/msdk/mtgdownload/b$a;->f:Ljava/lang/String;

    if-eqz v0, :cond_b0

    .line 1361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/mintegral/msdk/mtgdownload/b$a;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".apk.tmp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1365
    :goto_94
    iget-object v1, v1, Lcom/mintegral/msdk/mtgdownload/b$a;->b:Ljava/lang/String;

    const-string v2, "delta_update"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 1366
    const-string v1, ".apk"

    const-string v2, ".patch"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 78
    :cond_a6
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/mintegral/msdk/mtgdownload/k;->e:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mintegral/msdk/mtgdownload/k;->e:Ljava/io/File;

    .line 85
    :goto_af
    return-void

    .line 1363
    :cond_b0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/mintegral/msdk/mtgdownload/b$a;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/mintegral/msdk/mtgdownload/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".apk.tmp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_c8} :catch_ca

    move-result-object v0

    goto :goto_94

    .line 81
    :catch_ca
    move-exception v0

    .line 82
    sget-object v1, Lcom/mintegral/msdk/mtgdownload/k;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/k;->b:Lcom/mintegral/msdk/mtgdownload/c;

    iget v1, p0, Lcom/mintegral/msdk/mtgdownload/k;->j:I

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgdownload/c;->b(I)V

    goto :goto_af
.end method

.method static synthetic a(Lcom/mintegral/msdk/mtgdownload/k;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/k;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 1

    .prologue
    .line 28
    sput-object p0, Lcom/mintegral/msdk/mtgdownload/k;->n:Ljava/lang/Boolean;

    return-object p0
.end method

.method private a(Ljava/lang/Exception;)V
    .registers 5

    .prologue
    .line 415
    sget-object v0, Lcom/mintegral/msdk/mtgdownload/k;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can not install. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/k;->b:Lcom/mintegral/msdk/mtgdownload/c;

    if-eqz v0, :cond_23

    .line 417
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/k;->b:Lcom/mintegral/msdk/mtgdownload/c;

    iget v1, p0, Lcom/mintegral/msdk/mtgdownload/k;->j:I

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgdownload/c;->b(I)V

    .line 421
    :cond_23
    return-void
.end method

.method private a(Z)V
    .registers 14

    .prologue
    .line 122
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/k;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 123
    const/4 v3, 0x0

    .line 124
    const/4 v2, 0x0

    .line 126
    :try_start_8
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/mintegral/msdk/mtgdownload/k;->e:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_10} :catch_6b0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_10} :catch_6a7
    .catchall {:try_start_8 .. :try_end_10} :catchall_69e

    .line 127
    :try_start_10
    iget-boolean v2, p0, Lcom/mintegral/msdk/mtgdownload/k;->d:Z

    if-nez v2, :cond_34

    .line 128
    iget-object v2, p0, Lcom/mintegral/msdk/mtgdownload/k;->e:Ljava/io/File;

    .line 129
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-static {v2}, Lcom/mintegral/msdk/mtgdownload/e;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 132
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 133
    iget-object v2, p0, Lcom/mintegral/msdk/mtgdownload/k;->c:Landroid/content/Context;

    const v4, 0x8003

    invoke-virtual {v2, v0, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_2b} :catch_6b4
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2b} :catch_6ac
    .catchall {:try_start_10 .. :try_end_2b} :catchall_6a3

    move-result-object v1

    .line 138
    :try_start_2c
    iget-object v2, p0, Lcom/mintegral/msdk/mtgdownload/k;->c:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgdownload/k;->e:Ljava/io/File;
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_34} :catch_6b9
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_34} :catch_6ac
    .catchall {:try_start_2c .. :try_end_34} :catchall_6a3

    .line 142
    :cond_34
    :try_start_34
    sget-object v0, Lcom/mintegral/msdk/mtgdownload/k;->a:Ljava/lang/String;

    const-string v2, "saveAPK: url = %1$15s\t|\tfilename = %2$15s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/mintegral/msdk/mtgdownload/k;->l:Lcom/mintegral/msdk/mtgdownload/b$a;

    iget-object v6, v6, Lcom/mintegral/msdk/mtgdownload/b$a;->d:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/mintegral/msdk/mtgdownload/k;->e:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/mintegral/msdk/mtgdownload/k;->l:Lcom/mintegral/msdk/mtgdownload/b$a;

    iget-object v2, v2, Lcom/mintegral/msdk/mtgdownload/b$a;->d:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 145
    iget-object v2, p0, Lcom/mintegral/msdk/mtgdownload/k;->e:Ljava/io/File;

    .line 2342
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 2343
    const-string v4, "GET"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 2344
    const-string v4, "Accept-Encoding"

    const-string v5, "identity"

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2345
    const-string v4, "Connection"

    const-string v5, "keep-alive"

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2346
    const/16 v4, 0x1388

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 2347
    const/16 v4, 0x2710

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 2348
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_dc

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_dc

    .line 2350
    sget-object v4, Lcom/mintegral/msdk/mtgdownload/k;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/mintegral/msdk/mtgdownload/k;->l:Lcom/mintegral/msdk/mtgdownload/b$a;

    iget-object v6, v6, Lcom/mintegral/msdk/mtgdownload/b$a;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " getFileLength: %1$15s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2352
    const-string v4, "Range"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "bytes="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "-"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_dc
    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_e1} :catch_200
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_e1} :catch_6ac
    .catchall {:try_start_34 .. :try_end_e1} :catchall_6a3

    .line 150
    :try_start_e1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_e4
    .catch Ljava/io/FileNotFoundException; {:try_start_e1 .. :try_end_e4} :catch_1f8
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_e4} :catch_200
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_e4} :catch_6ac
    .catchall {:try_start_e1 .. :try_end_e4} :catchall_6a3

    .line 155
    :goto_e4
    :try_start_e4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_e7} :catch_200
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_e7} :catch_6ac
    .catchall {:try_start_e4 .. :try_end_e7} :catchall_6a3

    move-result-object v2

    .line 158
    if-nez p1, :cond_15a

    .line 159
    const-wide/16 v4, 0x0

    .line 160
    :try_start_ec
    iget-object v3, p0, Lcom/mintegral/msdk/mtgdownload/k;->e:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_109

    iget-object v3, p0, Lcom/mintegral/msdk/mtgdownload/k;->e:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_109

    .line 161
    const-wide/16 v4, 0x0

    iget-object v3, p0, Lcom/mintegral/msdk/mtgdownload/k;->e:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 163
    :cond_109
    iput-wide v4, p0, Lcom/mintegral/msdk/mtgdownload/k;->g:J

    .line 164
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/mintegral/msdk/mtgdownload/k;->h:J

    .line 165
    sget-object v3, Lcom/mintegral/msdk/mtgdownload/k;->a:Ljava/lang/String;

    const-string v4, "getFileLength: %1$15s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-wide v8, p0, Lcom/mintegral/msdk/mtgdownload/k;->g:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    sget-object v3, Lcom/mintegral/msdk/mtgdownload/k;->a:Ljava/lang/String;

    const-string v4, "getConnectionLength: %1$15s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    sget-object v0, Lcom/mintegral/msdk/mtgdownload/k;->a:Ljava/lang/String;

    const-string v3, "getContentLength: %1$15s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/mintegral/msdk/mtgdownload/k;->h:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_15a
    const/16 v0, 0x1000

    new-array v6, v0, [B

    .line 171
    const/4 v0, 0x0

    .line 173
    const/4 v3, 0x1

    .line 175
    sget-object v4, Lcom/mintegral/msdk/mtgdownload/k;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/mintegral/msdk/mtgdownload/k;->l:Lcom/mintegral/msdk/mtgdownload/b$a;

    iget-object v7, v7, Lcom/mintegral/msdk/mtgdownload/b$a;->c:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "saveAPK getContentLength "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v8, p0, Lcom/mintegral/msdk/mtgdownload/k;->h:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v4, p0, Lcom/mintegral/msdk/mtgdownload/k;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/mintegral/msdk/mtgdownload/d;->a(Landroid/content/Context;)Lcom/mintegral/msdk/mtgdownload/d;

    move-result-object v4

    iget-object v5, p0, Lcom/mintegral/msdk/mtgdownload/k;->l:Lcom/mintegral/msdk/mtgdownload/b$a;

    iget-object v5, v5, Lcom/mintegral/msdk/mtgdownload/b$a;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/mintegral/msdk/mtgdownload/k;->l:Lcom/mintegral/msdk/mtgdownload/b$a;

    iget-object v7, v7, Lcom/mintegral/msdk/mtgdownload/b$a;->d:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Lcom/mintegral/msdk/mtgdownload/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 179
    :goto_197
    iget v4, p0, Lcom/mintegral/msdk/mtgdownload/k;->i:I

    if-gez v4, :cond_6c4

    invoke-virtual {v2, v6}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_6c4

    .line 180
    const/4 v5, 0x0

    invoke-virtual {v1, v6, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 181
    iget-wide v8, p0, Lcom/mintegral/msdk/mtgdownload/k;->g:J

    int-to-long v4, v4

    add-long/2addr v4, v8

    iput-wide v4, p0, Lcom/mintegral/msdk/mtgdownload/k;->g:J

    .line 182
    add-int/lit8 v5, v0, 0x1

    rem-int/lit8 v0, v0, 0x32

    if-nez v0, :cond_6c1

    .line 183
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/k;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgdownload/e;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_25f

    .line 184
    const/4 v0, 0x0

    .line 209
    :goto_1ba
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 210
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 212
    iget-object v3, p0, Lcom/mintegral/msdk/mtgdownload/k;->b:Lcom/mintegral/msdk/mtgdownload/c;

    invoke-virtual {v3}, Lcom/mintegral/msdk/mtgdownload/c;->d()Lcom/mintegral/msdk/mtgdownload/e;

    move-result-object v3

    .line 214
    iget v4, p0, Lcom/mintegral/msdk/mtgdownload/k;->i:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_344

    .line 216
    sget-object v0, Lcom/mintegral/msdk/mtgdownload/c;->d:Landroid/util/SparseArray;

    iget v3, p0, Lcom/mintegral/msdk/mtgdownload/k;->j:I

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/mtgdownload/e$b;

    .line 217
    if-eqz v0, :cond_1ed

    .line 218
    iget-object v3, v0, Lcom/mintegral/msdk/mtgdownload/e$b;->f:[J

    const/4 v4, 0x0

    iget-wide v6, p0, Lcom/mintegral/msdk/mtgdownload/k;->g:J

    aput-wide v6, v3, v4

    .line 219
    iget-object v3, v0, Lcom/mintegral/msdk/mtgdownload/e$b;->f:[J

    const/4 v4, 0x1

    iget-wide v6, p0, Lcom/mintegral/msdk/mtgdownload/k;->h:J

    aput-wide v6, v3, v4

    .line 220
    iget-object v0, v0, Lcom/mintegral/msdk/mtgdownload/e$b;->f:[J

    const/4 v3, 0x2

    iget v4, p0, Lcom/mintegral/msdk/mtgdownload/k;->f:I

    int-to-long v4, v4

    aput-wide v4, v0, v3
    :try_end_1ed
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_1ed} :catch_27c
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_1ed} :catch_2fa
    .catchall {:try_start_ec .. :try_end_1ed} :catchall_4a3

    .line 274
    :cond_1ed
    if-eqz v2, :cond_1f2

    .line 275
    :try_start_1ef
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1f2
    .catch Ljava/io/IOException; {:try_start_1ef .. :try_end_1f2} :catch_327
    .catchall {:try_start_1ef .. :try_end_1f2} :catchall_338

    .line 281
    :cond_1f2
    if-eqz v1, :cond_1f7

    .line 282
    :try_start_1f4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1f7
    .catch Ljava/io/IOException; {:try_start_1f4 .. :try_end_1f7} :catch_321

    .line 287
    :cond_1f7
    :goto_1f7
    return-void

    .line 152
    :catch_1f8
    move-exception v2

    :try_start_1f9
    iget-object v2, p0, Lcom/mintegral/msdk/mtgdownload/k;->e:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1fe
    .catch Ljava/io/IOException; {:try_start_1f9 .. :try_end_1fe} :catch_200
    .catch Ljava/lang/Exception; {:try_start_1f9 .. :try_end_1fe} :catch_6ac
    .catchall {:try_start_1f9 .. :try_end_1fe} :catchall_6a3

    goto/16 :goto_e4

    .line 247
    :catch_200
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    .line 248
    :goto_203
    :try_start_203
    sget-object v0, Lcom/mintegral/msdk/mtgdownload/k;->a:Ljava/lang/String;

    const-string v4, "\u4e0b\u8f7d\u53d1\u751f\u9519\u8bef\u3002"

    invoke-static {v0, v4}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget v0, p0, Lcom/mintegral/msdk/mtgdownload/k;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/mtgdownload/k;->f:I

    const/4 v4, 0x3

    if-le v0, v4, :cond_567

    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/k;->l:Lcom/mintegral/msdk/mtgdownload/b$a;

    iget-boolean v0, v0, Lcom/mintegral/msdk/mtgdownload/b$a;->m:Z
    :try_end_217
    .catchall {:try_start_203 .. :try_end_217} :catchall_546

    if-nez v0, :cond_567

    .line 251
    :try_start_219
    sget-object v0, Lcom/mintegral/msdk/mtgdownload/k;->a:Ljava/lang/String;

    const-string v4, "Download Fail out of max repeat count"

    invoke-static {v0, v4}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    sget-object v0, Lcom/mintegral/msdk/mtgdownload/c;->c:Ljava/util/Map;

    iget-object v4, p0, Lcom/mintegral/msdk/mtgdownload/k;->l:Lcom/mintegral/msdk/mtgdownload/b$a;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_235
    .catch Landroid/os/RemoteException; {:try_start_219 .. :try_end_235} :catch_526
    .catchall {:try_start_219 .. :try_end_235} :catchall_54b

    .line 256
    :try_start_235
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/k;->b:Lcom/mintegral/msdk/mtgdownload/c;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgdownload/c;->d()Lcom/mintegral/msdk/mtgdownload/e;

    move-result-object v0

    iget-object v4, p0, Lcom/mintegral/msdk/mtgdownload/k;->c:Landroid/content/Context;

    iget v5, p0, Lcom/mintegral/msdk/mtgdownload/k;->j:I

    invoke-virtual {v0, v4, v5}, Lcom/mintegral/msdk/mtgdownload/e;->a(Landroid/content/Context;I)V

    .line 257
    invoke-direct {p0, v1}, Lcom/mintegral/msdk/mtgdownload/k;->a(Ljava/lang/Exception;)V

    .line 258
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/k;->k:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/mtgdownload/k$1;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/mtgdownload/k$1;-><init>(Lcom/mintegral/msdk/mtgdownload/k;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_24f
    .catchall {:try_start_235 .. :try_end_24f} :catchall_546

    .line 274
    :goto_24f
    if-eqz v3, :cond_254

    .line 275
    :try_start_251
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_254
    .catch Ljava/io/IOException; {:try_start_251 .. :try_end_254} :catch_641
    .catchall {:try_start_251 .. :try_end_254} :catchall_652

    .line 281
    :cond_254
    if-eqz v2, :cond_1f7

    .line 282
    :try_start_256
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_259
    .catch Ljava/io/IOException; {:try_start_256 .. :try_end_259} :catch_25a

    goto :goto_1f7

    .line 285
    :catch_25a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1f7

    .line 188
    :cond_25f
    :try_start_25f
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/k;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgdownload/e;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_281

    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/k;->l:Lcom/mintegral/msdk/mtgdownload/b$a;

    iget-boolean v0, v0, Lcom/mintegral/msdk/mtgdownload/b$a;->o:Z

    if-eqz v0, :cond_281

    .line 190
    sget-object v0, Lcom/mintegral/msdk/mtgdownload/k;->a:Ljava/lang/String;

    const-string v3, "no wifi"

    invoke-static {v0, v3}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    new-instance v0, Ljava/io/IOException;

    const-string v3, "no wifi"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :catch_27c
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_203

    .line 193
    :cond_281
    const/4 v0, 0x0

    .line 194
    iget-wide v8, p0, Lcom/mintegral/msdk/mtgdownload/k;->h:J

    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    if-eqz v4, :cond_6be

    .line 195
    iget-wide v8, p0, Lcom/mintegral/msdk/mtgdownload/k;->g:J

    long-to-float v0, v8

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v0, v4

    iget-wide v8, p0, Lcom/mintegral/msdk/mtgdownload/k;->h:J

    long-to-float v4, v8

    div-float/2addr v0, v4

    float-to-int v0, v0

    .line 196
    if-ltz v0, :cond_29b

    const/16 v4, 0x64

    if-le v0, v4, :cond_6be

    .line 197
    :cond_29b
    const/16 v0, 0x63

    move v4, v0

    .line 200
    :goto_29e
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/k;->b:Lcom/mintegral/msdk/mtgdownload/c;

    if-eqz v0, :cond_2a9

    .line 201
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/k;->b:Lcom/mintegral/msdk/mtgdownload/c;

    iget v7, p0, Lcom/mintegral/msdk/mtgdownload/k;->j:I

    invoke-virtual {v0, v7, v4}, Lcom/mintegral/msdk/mtgdownload/c;->a(II)V
    :try_end_2a9
    .catch Ljava/io/IOException; {:try_start_25f .. :try_end_2a9} :catch_27c
    .catch Ljava/lang/Exception; {:try_start_25f .. :try_end_2a9} :catch_2fa
    .catchall {:try_start_25f .. :try_end_2a9} :catchall_4a3

    .line 3329
    :cond_2a9
    :try_start_2a9
    sget-object v0, Lcom/mintegral/msdk/mtgdownload/c;->c:Ljava/util/Map;

    iget-object v7, p0, Lcom/mintegral/msdk/mtgdownload/k;->l:Lcom/mintegral/msdk/mtgdownload/b$a;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2c7

    .line 3330
    sget-object v0, Lcom/mintegral/msdk/mtgdownload/c;->c:Ljava/util/Map;

    iget-object v7, p0, Lcom/mintegral/msdk/mtgdownload/k;->l:Lcom/mintegral/msdk/mtgdownload/b$a;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x0

    .line 3331
    invoke-static {v7, v8, v4, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v7

    .line 3330
    invoke-virtual {v0, v7}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2c7
    .catch Landroid/os/DeadObjectException; {:try_start_2a9 .. :try_end_2c7} :catch_2db
    .catch Ljava/io/IOException; {:try_start_2a9 .. :try_end_2c7} :catch_27c
    .catch Ljava/lang/Exception; {:try_start_2a9 .. :try_end_2c7} :catch_2fa
    .catchall {:try_start_2a9 .. :try_end_2c7} :catchall_4a3

    .line 205
    :cond_2c7
    :goto_2c7
    :try_start_2c7
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/k;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgdownload/d;->a(Landroid/content/Context;)Lcom/mintegral/msdk/mtgdownload/d;

    move-result-object v0

    iget-object v7, p0, Lcom/mintegral/msdk/mtgdownload/k;->l:Lcom/mintegral/msdk/mtgdownload/b$a;

    iget-object v7, v7, Lcom/mintegral/msdk/mtgdownload/b$a;->b:Ljava/lang/String;

    iget-object v8, p0, Lcom/mintegral/msdk/mtgdownload/k;->l:Lcom/mintegral/msdk/mtgdownload/b$a;

    iget-object v8, v8, Lcom/mintegral/msdk/mtgdownload/b$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v7, v8, v4}, Lcom/mintegral/msdk/mtgdownload/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    move v0, v5

    .line 206
    goto/16 :goto_197

    .line 3334
    :catch_2db
    move-exception v0

    sget-object v0, Lcom/mintegral/msdk/mtgdownload/k;->a:Ljava/lang/String;

    const-string v7, "Service Client for downloading %1$15s is dead. Removing messenger from the service"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/mintegral/msdk/mtgdownload/k;->l:Lcom/mintegral/msdk/mtgdownload/b$a;

    iget-object v10, v10, Lcom/mintegral/msdk/mtgdownload/b$a;->c:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3336
    sget-object v0, Lcom/mintegral/msdk/mtgdownload/c;->c:Ljava/util/Map;

    iget-object v7, p0, Lcom/mintegral/msdk/mtgdownload/k;->l:Lcom/mintegral/msdk/mtgdownload/b$a;

    const/4 v8, 0x0

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f9
    .catch Ljava/io/IOException; {:try_start_2c7 .. :try_end_2f9} :catch_27c
    .catch Ljava/lang/Exception; {:try_start_2c7 .. :try_end_2f9} :catch_2fa
    .catchall {:try_start_2c7 .. :try_end_2f9} :catchall_4a3

    goto :goto_2c7

    .line 270
    :catch_2fa
    move-exception v0

    :goto_2fb
    :try_start_2fb
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/k;->b:Lcom/mintegral/msdk/mtgdownload/c;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgdownload/c;->d()Lcom/mintegral/msdk/mtgdownload/e;

    move-result-object v0

    iget-object v3, p0, Lcom/mintegral/msdk/mtgdownload/k;->c:Landroid/content/Context;

    iget v4, p0, Lcom/mintegral/msdk/mtgdownload/k;->j:I

    invoke-virtual {v0, v3, v4}, Lcom/mintegral/msdk/mtgdownload/e;->a(Landroid/content/Context;I)V

    .line 271
    sget-object v0, Lcom/mintegral/msdk/mtgdownload/k;->a:Ljava/lang/String;

    const-string v3, "Download failed."

    invoke-static {v0, v3}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30f
    .catchall {:try_start_2fb .. :try_end_30f} :catchall_4a3

    .line 274
    if-eqz v2, :cond_314

    .line 275
    :try_start_311
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_314
    .catch Ljava/io/IOException; {:try_start_311 .. :try_end_314} :catch_65e
    .catchall {:try_start_311 .. :try_end_314} :catchall_66f

    .line 281
    :cond_314
    if-eqz v1, :cond_1f7

    .line 282
    :try_start_316
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_319
    .catch Ljava/io/IOException; {:try_start_316 .. :try_end_319} :catch_31b

    goto/16 :goto_1f7

    .line 285
    :catch_31b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1f7

    :catch_321
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1f7

    .line 278
    :catch_327
    move-exception v0

    :try_start_328
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_32b
    .catchall {:try_start_328 .. :try_end_32b} :catchall_338

    .line 281
    if-eqz v1, :cond_1f7

    .line 282
    :try_start_32d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_330
    .catch Ljava/io/IOException; {:try_start_32d .. :try_end_330} :catch_332

    goto/16 :goto_1f7

    .line 285
    :catch_332
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1f7

    .line 280
    :catchall_338
    move-exception v0

    .line 281
    if-eqz v1, :cond_33e

    .line 282
    :try_start_33b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_33e
    .catch Ljava/io/IOException; {:try_start_33b .. :try_end_33e} :catch_33f

    .line 286
    :cond_33e
    :goto_33e
    throw v0

    .line 285
    :catch_33f
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_33e

    .line 223
    :cond_344
    :try_start_344
    iget v4, p0, Lcom/mintegral/msdk/mtgdownload/k;->i:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_37f

    .line 226
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/k;->m:Landroid/app/NotificationManager;

    iget v3, p0, Lcom/mintegral/msdk/mtgdownload/k;->j:I

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_350
    .catch Ljava/io/IOException; {:try_start_344 .. :try_end_350} :catch_27c
    .catch Ljava/lang/Exception; {:try_start_344 .. :try_end_350} :catch_2fa
    .catchall {:try_start_344 .. :try_end_350} :catchall_4a3

    .line 274
    if-eqz v2, :cond_355

    .line 275
    :try_start_352
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_355
    .catch Ljava/io/IOException; {:try_start_352 .. :try_end_355} :catch_362
    .catchall {:try_start_352 .. :try_end_355} :catchall_373

    .line 281
    :cond_355
    if-eqz v1, :cond_1f7

    .line 282
    :try_start_357
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_35a
    .catch Ljava/io/IOException; {:try_start_357 .. :try_end_35a} :catch_35c

    goto/16 :goto_1f7

    .line 285
    :catch_35c
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1f7

    .line 278
    :catch_362
    move-exception v0

    :try_start_363
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_366
    .catchall {:try_start_363 .. :try_end_366} :catchall_373

    .line 281
    if-eqz v1, :cond_1f7

    .line 282
    :try_start_368
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_36b
    .catch Ljava/io/IOException; {:try_start_368 .. :try_end_36b} :catch_36d

    goto/16 :goto_1f7

    .line 285
    :catch_36d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1f7

    .line 280
    :catchall_373
    move-exception v0

    .line 281
    if-eqz v1, :cond_379

    .line 282
    :try_start_376
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_379
    .catch Ljava/io/IOException; {:try_start_376 .. :try_end_379} :catch_37a

    .line 286
    :cond_379
    :goto_379
    throw v0

    .line 285
    :catch_37a
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_379

    .line 230
    :cond_37f
    if-nez v0, :cond_3de

    .line 231
    :try_start_381
    sget-object v0, Lcom/mintegral/msdk/mtgdownload/k;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Download Fail repeat count="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/mintegral/msdk/mtgdownload/k;->f:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    sget-object v0, Lcom/mintegral/msdk/mtgdownload/c;->c:Ljava/util/Map;

    iget-object v4, p0, Lcom/mintegral/msdk/mtgdownload/k;->l:Lcom/mintegral/msdk/mtgdownload/b$a;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 234
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/k;->c:Landroid/content/Context;

    iget v4, p0, Lcom/mintegral/msdk/mtgdownload/k;->j:I

    invoke-virtual {v3, v0, v4}, Lcom/mintegral/msdk/mtgdownload/e;->a(Landroid/content/Context;I)V

    .line 235
    new-instance v0, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Download Fail repeat count="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/mintegral/msdk/mtgdownload/k;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/mtgdownload/k;->a(Ljava/lang/Exception;)V
    :try_end_3cc
    .catch Ljava/io/IOException; {:try_start_381 .. :try_end_3cc} :catch_27c
    .catch Ljava/lang/Exception; {:try_start_381 .. :try_end_3cc} :catch_2fa
    .catchall {:try_start_381 .. :try_end_3cc} :catchall_4a3

    .line 274
    :cond_3cc
    :goto_3cc
    if-eqz v2, :cond_3d1

    .line 275
    :try_start_3ce
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3d1
    .catch Ljava/io/IOException; {:try_start_3ce .. :try_end_3d1} :catch_509
    .catchall {:try_start_3ce .. :try_end_3d1} :catchall_51a

    .line 281
    :cond_3d1
    if-eqz v1, :cond_1f7

    .line 282
    :try_start_3d3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3d6
    .catch Ljava/io/IOException; {:try_start_3d3 .. :try_end_3d6} :catch_3d8

    goto/16 :goto_1f7

    .line 285
    :catch_3d8
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1f7

    .line 238
    :cond_3de
    :try_start_3de
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/mintegral/msdk/mtgdownload/k;->e:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mintegral/msdk/mtgdownload/k;->e:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".tmp"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v3, p0, Lcom/mintegral/msdk/mtgdownload/k;->e:Ljava/io/File;

    invoke-virtual {v3, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 240
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 3375
    sget-object v4, Lcom/mintegral/msdk/mtgdownload/k;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "itemMd5 "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/mintegral/msdk/mtgdownload/k;->l:Lcom/mintegral/msdk/mtgdownload/b$a;

    iget-object v6, v6, Lcom/mintegral/msdk/mtgdownload/b$a;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3376
    sget-object v4, Lcom/mintegral/msdk/mtgdownload/k;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "fileMd5 "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mintegral/msdk/mtgdownload/e;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3377
    iget-object v4, p0, Lcom/mintegral/msdk/mtgdownload/k;->l:Lcom/mintegral/msdk/mtgdownload/b$a;

    iget-object v4, v4, Lcom/mintegral/msdk/mtgdownload/b$a;->e:Ljava/lang/String;

    if-eqz v4, :cond_496

    iget-object v4, p0, Lcom/mintegral/msdk/mtgdownload/k;->l:Lcom/mintegral/msdk/mtgdownload/b$a;

    iget-object v4, v4, Lcom/mintegral/msdk/mtgdownload/b$a;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgdownload/e;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_496

    .line 3378
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/k;->l:Lcom/mintegral/msdk/mtgdownload/b$a;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgdownload/b$a;->b:Ljava/lang/String;

    const-string v4, "delta_update"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4be

    .line 3379
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/k;->m:Landroid/app/NotificationManager;

    iget v4, p0, Lcom/mintegral/msdk/mtgdownload/k;->j:I

    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 3380
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3381
    const-string v4, "filename"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3383
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 3384
    const/4 v5, 0x5

    iput v5, v4, Landroid/os/Message;->what:I

    .line 3385
    const/4 v5, 0x3

    iput v5, v4, Landroid/os/Message;->arg1:I

    .line 3386
    iget v5, p0, Lcom/mintegral/msdk/mtgdownload/k;->j:I

    iput v5, v4, Landroid/os/Message;->arg2:I

    .line 3387
    invoke-virtual {v4, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V
    :try_end_472
    .catch Ljava/io/IOException; {:try_start_3de .. :try_end_472} :catch_27c
    .catch Ljava/lang/Exception; {:try_start_3de .. :try_end_472} :catch_2fa
    .catchall {:try_start_3de .. :try_end_472} :catchall_4a3

    .line 3390
    :try_start_472
    sget-object v0, Lcom/mintegral/msdk/mtgdownload/c;->c:Ljava/util/Map;

    iget-object v5, p0, Lcom/mintegral/msdk/mtgdownload/k;->l:Lcom/mintegral/msdk/mtgdownload/b$a;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_489

    .line 3391
    sget-object v0, Lcom/mintegral/msdk/mtgdownload/c;->c:Ljava/util/Map;

    iget-object v5, p0, Lcom/mintegral/msdk/mtgdownload/k;->l:Lcom/mintegral/msdk/mtgdownload/b$a;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    invoke-virtual {v0, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 3393
    :cond_489
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/k;->b:Lcom/mintegral/msdk/mtgdownload/c;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgdownload/c;->d()Lcom/mintegral/msdk/mtgdownload/e;

    move-result-object v0

    iget-object v4, p0, Lcom/mintegral/msdk/mtgdownload/k;->c:Landroid/content/Context;

    iget v5, p0, Lcom/mintegral/msdk/mtgdownload/k;->j:I

    invoke-virtual {v0, v4, v5}, Lcom/mintegral/msdk/mtgdownload/e;->a(Landroid/content/Context;I)V
    :try_end_496
    .catch Landroid/os/RemoteException; {:try_start_472 .. :try_end_496} :catch_4af
    .catch Ljava/io/IOException; {:try_start_472 .. :try_end_496} :catch_27c
    .catch Ljava/lang/Exception; {:try_start_472 .. :try_end_496} :catch_2fa
    .catchall {:try_start_472 .. :try_end_496} :catchall_4a3

    .line 243
    :cond_496
    :goto_496
    :try_start_496
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/k;->b:Lcom/mintegral/msdk/mtgdownload/c;

    if-eqz v0, :cond_3cc

    .line 244
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/k;->b:Lcom/mintegral/msdk/mtgdownload/c;

    iget v4, p0, Lcom/mintegral/msdk/mtgdownload/k;->j:I

    invoke-virtual {v0, v4, v3}, Lcom/mintegral/msdk/mtgdownload/c;->a(ILjava/lang/String;)V
    :try_end_4a1
    .catch Ljava/io/IOException; {:try_start_496 .. :try_end_4a1} :catch_27c
    .catch Ljava/lang/Exception; {:try_start_496 .. :try_end_4a1} :catch_2fa
    .catchall {:try_start_496 .. :try_end_4a1} :catchall_4a3

    goto/16 :goto_3cc

    .line 273
    :catchall_4a3
    move-exception v0

    .line 274
    :goto_4a4
    if-eqz v2, :cond_4a9

    .line 275
    :try_start_4a6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4a9
    .catch Ljava/io/IOException; {:try_start_4a6 .. :try_end_4a9} :catch_681
    .catchall {:try_start_4a6 .. :try_end_4a9} :catchall_692

    .line 281
    :cond_4a9
    if-eqz v1, :cond_4ae

    .line 282
    :try_start_4ab
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4ae
    .catch Ljava/io/IOException; {:try_start_4ab .. :try_end_4ae} :catch_67b

    .line 286
    :cond_4ae
    :goto_4ae
    throw v0

    .line 3395
    :catch_4af
    move-exception v0

    :try_start_4b0
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/k;->b:Lcom/mintegral/msdk/mtgdownload/c;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgdownload/c;->d()Lcom/mintegral/msdk/mtgdownload/e;

    move-result-object v0

    iget-object v4, p0, Lcom/mintegral/msdk/mtgdownload/k;->c:Landroid/content/Context;

    iget v5, p0, Lcom/mintegral/msdk/mtgdownload/k;->j:I

    invoke-virtual {v0, v4, v5}, Lcom/mintegral/msdk/mtgdownload/e;->a(Landroid/content/Context;I)V

    goto :goto_496

    .line 3399
    :cond_4be
    sget-object v0, Lcom/mintegral/msdk/mtgdownload/c;->c:Ljava/util/Map;

    iget-object v4, p0, Lcom/mintegral/msdk/mtgdownload/k;->l:Lcom/mintegral/msdk/mtgdownload/b$a;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 3401
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/k;->l:Lcom/mintegral/msdk/mtgdownload/b$a;

    iget-boolean v0, v0, Lcom/mintegral/msdk/mtgdownload/b$a;->n:Z

    if-nez v0, :cond_496

    .line 3402
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/k;->b:Lcom/mintegral/msdk/mtgdownload/c;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgdownload/c;->d()Lcom/mintegral/msdk/mtgdownload/e;

    move-result-object v0

    iget-object v4, p0, Lcom/mintegral/msdk/mtgdownload/k;->c:Landroid/content/Context;

    iget v5, p0, Lcom/mintegral/msdk/mtgdownload/k;->j:I

    invoke-virtual {v0, v4, v5}, Lcom/mintegral/msdk/mtgdownload/e;->a(Landroid/content/Context;I)V

    .line 3405
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/k;->c:Landroid/content/Context;

    const/4 v4, 0x0

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const/4 v6, 0x0

    invoke-static {v0, v4, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 3407
    iget-object v4, p0, Lcom/mintegral/msdk/mtgdownload/k;->c:Landroid/content/Context;

    sget-object v5, Lcom/mintegral/msdk/mtgdownload/f;->m:Ljava/lang/String;

    invoke-static {v4, v5, v0}, Lcom/mintegral/msdk/mtgdownload/e;->a(Landroid/content/Context;Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v0

    .line 3408
    iget v4, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v0, Landroid/app/Notification;->flags:I

    .line 3409
    iget-object v4, p0, Lcom/mintegral/msdk/mtgdownload/k;->m:Landroid/app/NotificationManager;

    iget v5, p0, Lcom/mintegral/msdk/mtgdownload/k;->j:I

    invoke-virtual {v4, v5, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_508
    .catch Ljava/io/IOException; {:try_start_4b0 .. :try_end_508} :catch_27c
    .catch Ljava/lang/Exception; {:try_start_4b0 .. :try_end_508} :catch_2fa
    .catchall {:try_start_4b0 .. :try_end_508} :catchall_4a3

    goto :goto_496

    .line 278
    :catch_509
    move-exception v0

    :try_start_50a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_50d
    .catchall {:try_start_50a .. :try_end_50d} :catchall_51a

    .line 281
    if-eqz v1, :cond_1f7

    .line 282
    :try_start_50f
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_512
    .catch Ljava/io/IOException; {:try_start_50f .. :try_end_512} :catch_514

    goto/16 :goto_1f7

    .line 285
    :catch_514
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1f7

    .line 280
    :catchall_51a
    move-exception v0

    .line 281
    if-eqz v1, :cond_520

    .line 282
    :try_start_51d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_520
    .catch Ljava/io/IOException; {:try_start_51d .. :try_end_520} :catch_521

    .line 286
    :cond_520
    :goto_520
    throw v0

    .line 285
    :catch_521
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_520

    .line 254
    :catch_526
    move-exception v0

    :try_start_527
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_52a
    .catchall {:try_start_527 .. :try_end_52a} :catchall_54b

    .line 256
    :try_start_52a
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/k;->b:Lcom/mintegral/msdk/mtgdownload/c;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgdownload/c;->d()Lcom/mintegral/msdk/mtgdownload/e;

    move-result-object v0

    iget-object v4, p0, Lcom/mintegral/msdk/mtgdownload/k;->c:Landroid/content/Context;

    iget v5, p0, Lcom/mintegral/msdk/mtgdownload/k;->j:I

    invoke-virtual {v0, v4, v5}, Lcom/mintegral/msdk/mtgdownload/e;->a(Landroid/content/Context;I)V

    .line 257
    invoke-direct {p0, v1}, Lcom/mintegral/msdk/mtgdownload/k;->a(Ljava/lang/Exception;)V

    .line 258
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/k;->k:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/mtgdownload/k$1;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/mtgdownload/k$1;-><init>(Lcom/mintegral/msdk/mtgdownload/k;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_24f

    .line 273
    :catchall_546
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_4a4

    .line 256
    :catchall_54b
    move-exception v0

    iget-object v4, p0, Lcom/mintegral/msdk/mtgdownload/k;->b:Lcom/mintegral/msdk/mtgdownload/c;

    invoke-virtual {v4}, Lcom/mintegral/msdk/mtgdownload/c;->d()Lcom/mintegral/msdk/mtgdownload/e;

    move-result-object v4

    iget-object v5, p0, Lcom/mintegral/msdk/mtgdownload/k;->c:Landroid/content/Context;

    iget v6, p0, Lcom/mintegral/msdk/mtgdownload/k;->j:I

    invoke-virtual {v4, v5, v6}, Lcom/mintegral/msdk/mtgdownload/e;->a(Landroid/content/Context;I)V

    .line 257
    invoke-direct {p0, v1}, Lcom/mintegral/msdk/mtgdownload/k;->a(Ljava/lang/Exception;)V

    .line 258
    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/k;->k:Landroid/os/Handler;

    new-instance v4, Lcom/mintegral/msdk/mtgdownload/k$1;

    invoke-direct {v4, p0}, Lcom/mintegral/msdk/mtgdownload/k$1;-><init>(Lcom/mintegral/msdk/mtgdownload/k;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0

    .line 4293
    :cond_567
    sget-object v0, Lcom/mintegral/msdk/mtgdownload/k;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "wait for repeating Test network repeat count="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/mintegral/msdk/mtgdownload/k;->f:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_57d
    .catchall {:try_start_52a .. :try_end_57d} :catchall_546

    .line 4295
    :try_start_57d
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/k;->l:Lcom/mintegral/msdk/mtgdownload/b$a;

    iget-boolean v0, v0, Lcom/mintegral/msdk/mtgdownload/b$a;->m:Z

    if-nez v0, :cond_5af

    .line 4296
    const-wide/16 v0, 0x1f40

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 4297
    iget-wide v0, p0, Lcom/mintegral/msdk/mtgdownload/k;->h:J

    const-wide/16 v4, 0x1

    cmp-long v0, v0, v4

    if-gez v0, :cond_5a9

    .line 4298
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/mtgdownload/k;->a(Z)V
    :try_end_594
    .catch Ljava/lang/InterruptedException; {:try_start_57d .. :try_end_594} :catch_596
    .catchall {:try_start_57d .. :try_end_594} :catchall_546

    goto/16 :goto_24f

    .line 4319
    :catch_596
    move-exception v0

    .line 4320
    :try_start_597
    invoke-direct {p0, v0}, Lcom/mintegral/msdk/mtgdownload/k;->a(Ljava/lang/Exception;)V

    .line 4321
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/k;->b:Lcom/mintegral/msdk/mtgdownload/c;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgdownload/c;->d()Lcom/mintegral/msdk/mtgdownload/e;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/k;->c:Landroid/content/Context;

    iget v4, p0, Lcom/mintegral/msdk/mtgdownload/k;->j:I

    invoke-virtual {v0, v1, v4}, Lcom/mintegral/msdk/mtgdownload/e;->a(Landroid/content/Context;I)V
    :try_end_5a7
    .catchall {:try_start_597 .. :try_end_5a7} :catchall_546

    goto/16 :goto_24f

    .line 4300
    :cond_5a9
    const/4 v0, 0x1

    :try_start_5aa
    invoke-direct {p0, v0}, Lcom/mintegral/msdk/mtgdownload/k;->a(Z)V

    goto/16 :goto_24f

    .line 4303
    :cond_5af
    sget-object v0, Lcom/mintegral/msdk/mtgdownload/c;->d:Landroid/util/SparseArray;

    iget v1, p0, Lcom/mintegral/msdk/mtgdownload/k;->j:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/mtgdownload/e$b;

    .line 4304
    iget-object v1, v0, Lcom/mintegral/msdk/mtgdownload/e$b;->f:[J

    const/4 v4, 0x0

    iget-wide v6, p0, Lcom/mintegral/msdk/mtgdownload/k;->g:J

    aput-wide v6, v1, v4

    .line 4305
    iget-object v1, v0, Lcom/mintegral/msdk/mtgdownload/e$b;->f:[J

    const/4 v4, 0x1

    iget-wide v6, p0, Lcom/mintegral/msdk/mtgdownload/k;->h:J

    aput-wide v6, v1, v4

    .line 4306
    iget-object v0, v0, Lcom/mintegral/msdk/mtgdownload/e$b;->f:[J

    const/4 v1, 0x2

    iget v4, p0, Lcom/mintegral/msdk/mtgdownload/k;->f:I

    int-to-long v4, v4

    aput-wide v4, v0, v1

    .line 4309
    iget v0, p0, Lcom/mintegral/msdk/mtgdownload/k;->j:I

    const-string v1, "continue"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/mtgdownload/j;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4311
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/mintegral/msdk/mtgdownload/k;->c:Landroid/content/Context;

    const-class v5, Lcom/mintegral/msdk/mtgdownload/c;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4312
    const-string v4, "com.mintegral.msdk.broadcast.download.msg"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4313
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/k;->b:Lcom/mintegral/msdk/mtgdownload/c;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgdownload/c;->d()Lcom/mintegral/msdk/mtgdownload/e;

    move-result-object v0

    iget-object v4, p0, Lcom/mintegral/msdk/mtgdownload/k;->b:Lcom/mintegral/msdk/mtgdownload/c;

    invoke-virtual {v0, v4, v1}, Lcom/mintegral/msdk/mtgdownload/e;->a(Lcom/mintegral/msdk/mtgdownload/c;Landroid/content/Intent;)Z

    .line 4316
    sget-object v0, Lcom/mintegral/msdk/mtgdownload/f;->n:Ljava/lang/String;

    .line 4425
    sget-object v1, Lcom/mintegral/msdk/mtgdownload/k;->n:Ljava/lang/Boolean;

    monitor-enter v1
    :try_end_5f5
    .catch Ljava/lang/InterruptedException; {:try_start_5aa .. :try_end_5f5} :catch_596
    .catchall {:try_start_5aa .. :try_end_5f5} :catchall_546

    .line 4426
    :try_start_5f5
    sget-object v4, Lcom/mintegral/msdk/mtgdownload/k;->n:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_634

    .line 4427
    sget-object v4, Lcom/mintegral/msdk/mtgdownload/k;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "show single toast.["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4428
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/mintegral/msdk/mtgdownload/k;->n:Ljava/lang/Boolean;

    .line 4429
    iget-object v4, p0, Lcom/mintegral/msdk/mtgdownload/k;->k:Landroid/os/Handler;

    new-instance v5, Lcom/mintegral/msdk/mtgdownload/k$2;

    invoke-direct {v5, p0, v0}, Lcom/mintegral/msdk/mtgdownload/k$2;-><init>(Lcom/mintegral/msdk/mtgdownload/k;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4436
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/k;->k:Landroid/os/Handler;

    new-instance v4, Lcom/mintegral/msdk/mtgdownload/k$3;

    invoke-direct {v4, p0}, Lcom/mintegral/msdk/mtgdownload/k$3;-><init>(Lcom/mintegral/msdk/mtgdownload/k;)V

    const-wide/16 v6, 0x4b0

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4443
    :cond_634
    monitor-exit v1
    :try_end_635
    .catchall {:try_start_5f5 .. :try_end_635} :catchall_63e

    .line 4317
    :try_start_635
    sget-object v0, Lcom/mintegral/msdk/mtgdownload/k;->a:Ljava/lang/String;

    const-string v1, "changed play state button on op-notification."

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_63c
    .catch Ljava/lang/InterruptedException; {:try_start_635 .. :try_end_63c} :catch_596
    .catchall {:try_start_635 .. :try_end_63c} :catchall_546

    goto/16 :goto_24f

    .line 4443
    :catchall_63e
    move-exception v0

    :try_start_63f
    monitor-exit v1
    :try_end_640
    .catchall {:try_start_63f .. :try_end_640} :catchall_63e

    :try_start_640
    throw v0
    :try_end_641
    .catch Ljava/lang/InterruptedException; {:try_start_640 .. :try_end_641} :catch_596
    .catchall {:try_start_640 .. :try_end_641} :catchall_546

    .line 278
    :catch_641
    move-exception v0

    :try_start_642
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_645
    .catchall {:try_start_642 .. :try_end_645} :catchall_652

    .line 281
    if-eqz v2, :cond_1f7

    .line 282
    :try_start_647
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_64a
    .catch Ljava/io/IOException; {:try_start_647 .. :try_end_64a} :catch_64c

    goto/16 :goto_1f7

    .line 285
    :catch_64c
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1f7

    .line 280
    :catchall_652
    move-exception v0

    .line 281
    if-eqz v2, :cond_658

    .line 282
    :try_start_655
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_658
    .catch Ljava/io/IOException; {:try_start_655 .. :try_end_658} :catch_659

    .line 286
    :cond_658
    :goto_658
    throw v0

    .line 285
    :catch_659
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_658

    .line 278
    :catch_65e
    move-exception v0

    :try_start_65f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_662
    .catchall {:try_start_65f .. :try_end_662} :catchall_66f

    .line 281
    if-eqz v1, :cond_1f7

    .line 282
    :try_start_664
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_667
    .catch Ljava/io/IOException; {:try_start_664 .. :try_end_667} :catch_669

    goto/16 :goto_1f7

    .line 285
    :catch_669
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1f7

    .line 280
    :catchall_66f
    move-exception v0

    .line 281
    if-eqz v1, :cond_675

    .line 282
    :try_start_672
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_675
    .catch Ljava/io/IOException; {:try_start_672 .. :try_end_675} :catch_676

    .line 286
    :cond_675
    :goto_675
    throw v0

    .line 285
    :catch_676
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_675

    :catch_67b
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4ae

    .line 278
    :catch_681
    move-exception v2

    :try_start_682
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_685
    .catchall {:try_start_682 .. :try_end_685} :catchall_692

    .line 281
    if-eqz v1, :cond_4ae

    .line 282
    :try_start_687
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_68a
    .catch Ljava/io/IOException; {:try_start_687 .. :try_end_68a} :catch_68c

    goto/16 :goto_4ae

    .line 285
    :catch_68c
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4ae

    .line 280
    :catchall_692
    move-exception v0

    .line 281
    if-eqz v1, :cond_698

    .line 282
    :try_start_695
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_698
    .catch Ljava/io/IOException; {:try_start_695 .. :try_end_698} :catch_699

    .line 286
    :cond_698
    :goto_698
    throw v0

    .line 285
    :catch_699
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_698

    .line 273
    :catchall_69e
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_4a4

    :catchall_6a3
    move-exception v0

    move-object v2, v3

    goto/16 :goto_4a4

    .line 270
    :catch_6a7
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_2fb

    :catch_6ac
    move-exception v0

    move-object v2, v3

    goto/16 :goto_2fb

    .line 247
    :catch_6b0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_203

    :catch_6b4
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_203

    :catch_6b9
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_203

    :cond_6be
    move v4, v0

    goto/16 :goto_29e

    :cond_6c1
    move v0, v5

    goto/16 :goto_197

    :cond_6c4
    move v0, v3

    goto/16 :goto_1ba
.end method


# virtual methods
.method public final a(I)V
    .registers 2

    .prologue
    .line 118
    iput p1, p0, Lcom/mintegral/msdk/mtgdownload/k;->i:I

    .line 119
    return-void
.end method

.method public run()V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 88
    iput v0, p0, Lcom/mintegral/msdk/mtgdownload/k;->f:I

    .line 92
    :try_start_3
    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/k;->b:Lcom/mintegral/msdk/mtgdownload/c;

    if-eqz v1, :cond_e

    .line 93
    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/k;->b:Lcom/mintegral/msdk/mtgdownload/c;

    iget v2, p0, Lcom/mintegral/msdk/mtgdownload/k;->j:I

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/mtgdownload/c;->a(I)V

    .line 94
    :cond_e
    iget-wide v2, p0, Lcom/mintegral/msdk/mtgdownload/k;->g:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_17

    const/4 v0, 0x1

    :cond_17
    invoke-direct {p0, v0}, Lcom/mintegral/msdk/mtgdownload/k;->a(Z)V

    .line 97
    sget-object v0, Lcom/mintegral/msdk/mtgdownload/c;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_2b

    .line 98
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/k;->b:Lcom/mintegral/msdk/mtgdownload/c;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgdownload/c;->e()Landroid/app/Service;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2b} :catch_2c
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_2b} :catch_35

    .line 111
    :cond_2b
    :goto_2b
    return-void

    .line 100
    :catch_2c
    move-exception v0

    .line 101
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_2b

    .line 102
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2b

    .line 104
    :catch_35
    move-exception v0

    .line 105
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_2b

    .line 106
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2b
.end method
