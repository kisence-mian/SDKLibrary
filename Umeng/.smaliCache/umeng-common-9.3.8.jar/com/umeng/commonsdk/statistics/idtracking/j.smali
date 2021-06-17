.class public Lcom/umeng/commonsdk/statistics/idtracking/j;
.super Lcom/umeng/commonsdk/statistics/idtracking/a;
.source "OldUMIDTracker.java"


# static fields
.field private static final a:Ljava/lang/String; = "oldumid"


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 29
    const-string v0, "oldumid"

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/statistics/idtracking/a;-><init>(Ljava/lang/String;)V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->c:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->d:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->b:Landroid/content/Context;

    .line 31
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 3

    .line 116
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_e

    .line 118
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 120
    :cond_e
    return-void
.end method

.method private j()V
    .registers 3

    .line 93
    :try_start_0
    const-string v0, "/data/local/tmp/.um"

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/statistics/idtracking/j;->b(Ljava/lang/String;)V

    .line 94
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/local/tmp/.um/sysid.dat"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->writeFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    .line 96
    goto :goto_13

    .line 95
    :catchall_12
    move-exception v0

    .line 97
    :goto_13
    return-void
.end method

.method private k()V
    .registers 3

    .line 101
    :try_start_0
    const-string v0, "/sdcard/Android/obj/.um"

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/statistics/idtracking/j;->b(Ljava/lang/String;)V

    .line 102
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/Android/obj/.um/sysid.dat"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->writeFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    .line 104
    goto :goto_13

    .line 103
    :catchall_12
    move-exception v0

    .line 105
    :goto_13
    return-void
.end method

.method private l()V
    .registers 3

    .line 109
    :try_start_0
    const-string v0, "/sdcard/Android/data/.um"

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/statistics/idtracking/j;->b(Ljava/lang/String;)V

    .line 110
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/Android/data/.um/sysid.dat"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->writeFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    .line 112
    goto :goto_13

    .line 111
    :catchall_12
    move-exception v0

    .line 113
    :goto_13
    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .registers 2

    .line 39
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/idtracking/j;->h()Z

    move-result v0

    return v0
.end method

.method public h()Z
    .registers 6

    .line 43
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->b:Landroid/content/Context;

    const-string v1, "umid"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->d:Ljava/lang/String;

    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7a

    .line 45
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->encryptBySHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->d:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/Android/data/.um/sysid.dat"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 48
    new-instance v1, Ljava/io/File;

    const-string v2, "/sdcard/Android/obj/.um/sysid.dat"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 49
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/local/tmp/.um/sysid.dat"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_45

    .line 52
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/idtracking/j;->l()V

    goto :goto_50

    .line 54
    :cond_45
    iget-object v3, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->d:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    .line 55
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->c:Ljava/lang/String;

    .line 56
    return v4

    .line 59
    :cond_50
    :goto_50
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 60
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/idtracking/j;->k()V

    goto :goto_65

    .line 62
    :cond_5a
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    .line 63
    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->c:Ljava/lang/String;

    .line 64
    return v4

    .line 67
    :cond_65
    :goto_65
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 68
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/idtracking/j;->j()V

    goto :goto_7a

    .line 70
    :cond_6f
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7a

    .line 71
    iput-object v2, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->c:Ljava/lang/String;

    .line 72
    return v4

    .line 76
    :cond_7a
    :goto_7a
    const/4 v0, 0x0

    return v0
.end method

.method public i()V
    .registers 2

    .line 84
    :try_start_0
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/idtracking/j;->l()V

    .line 85
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/idtracking/j;->k()V

    .line 86
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/idtracking/j;->j()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 88
    goto :goto_b

    .line 87
    :catch_a
    move-exception v0

    .line 89
    :goto_b
    return-void
.end method
