.class Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;

.field private b:Landroid/os/Handler;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ssjj/fnsdk/core/update/PatchInfo;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr$PatchListener;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;Landroid/content/Context;Ljava/util/List;ZLcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr$PatchListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/ssjj/fnsdk/core/update/PatchInfo;",
            ">;Z",
            "Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr$PatchListener;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr$a;->a:Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p1, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr$a;->b:Landroid/os/Handler;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr$a;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr$a;->d:Ljava/util/List;

    iput-object p5, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr$a;->e:Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr$PatchListener;

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr$a;)Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr$PatchListener;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr$a;->e:Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr$PatchListener;

    return-object p0
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr$a;->b:Landroid/os/Handler;

    new-instance v1, Lcom/ssjj/fnsdk/core/update/q;

    invoke-direct {v1, p0, p1}, Lcom/ssjj/fnsdk/core/update/q;-><init>(Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Ljava/lang/String;J)Z
    .registers 6

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_15

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long p1, v0, p2

    if-nez p1, :cond_15

    const/4 p1, 0x0

    return p1

    :cond_15
    const/4 p1, 0x1

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1, p2, p3, p4}, Lcom/ssjj/fnsdk/core/update/FNUpdateJni;->patchApk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_a

    if-nez p1, :cond_9

    const/4 p1, 0x1

    return p1

    :cond_9
    return v0

    :catchall_a
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method private b(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr$a;->b:Landroid/os/Handler;

    new-instance v1, Lcom/ssjj/fnsdk/core/update/r;

    invoke-direct {v1, p0, p1}, Lcom/ssjj/fnsdk/core/update/r;-><init>(Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr$a;->d:Ljava/util/List;

    if-eqz v0, :cond_13c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_13c

    :cond_c
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr$a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/util/ApkUtil;->getSrcApkPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr$a;->a:Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;->a(Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;)Lcom/ssjj/fnsdk/core/update/match/ISmartUpdateMatch;

    move-result-object v1

    if-nez v1, :cond_23

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr$a;->a:Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/match/MatchFactory;->createMatch(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/update/match/ISmartUpdateMatch;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;->a(Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;Lcom/ssjj/fnsdk/core/update/match/ISmartUpdateMatch;)V

    :cond_23
    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr$a;->a:Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;->a(Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;)Lcom/ssjj/fnsdk/core/update/match/ISmartUpdateMatch;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ssjj/fnsdk/core/update/match/ISmartUpdateMatch;->getPatchApk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;->getInstance()Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;->getRawApkMd5()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;->getInstance()Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;->getSrcApkMd5()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr$a;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_44
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_53

    const-string v0, "\u589e\u91cf\u66f4\u65b0\u6210\u529f"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr$a;->a(Ljava/lang/String;)V

    return-void

    :cond_53
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ssjj/fnsdk/core/update/PatchInfo;

    invoke-virtual {v4}, Lcom/ssjj/fnsdk/core/update/PatchInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object v5, v4, Lcom/ssjj/fnsdk/core/update/PatchInfo;->apkSavePath:Ljava/lang/String;

    iget-wide v6, v4, Lcom/ssjj/fnsdk/core/update/PatchInfo;->newSize:J

    invoke-direct {p0, v5, v6, v7}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr$a;->a(Ljava/lang/String;J)Z

    move-result v6

    const-string v7, ", rawMd5="

    const-string v8, ", srcMd5="

    const/4 v9, 0x0

    if-eqz v6, :cond_ea

    iget-object v6, v4, Lcom/ssjj/fnsdk/core/update/PatchInfo;->patchSavePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    const-string v11, "\u589e\u91cf\u66f4\u65b0\u5931\u8d25\uff1a\u5408\u6210apk\u5931\u8d25"

    if-nez v10, :cond_93

    iget-object v10, v4, Lcom/ssjj/fnsdk/core/update/PatchInfo;->oldMd5:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_93

    const-string v1, "Patch apk with raw apk"

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    invoke-direct {p0, v0, v5, v6, v9}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_ea

    invoke-static {v11}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    invoke-direct {p0, v11}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr$a;->b(Ljava/lang/String;)V

    return-void

    :cond_93
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_bd

    iget-object v10, v4, Lcom/ssjj/fnsdk/core/update/PatchInfo;->oldMd5:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_bd

    const-string v1, "Patch apk with source apk"

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/CommentHnadler;->getCommentLength(Ljava/io/File;)J

    move-result-wide v1

    long-to-int v2, v1

    invoke-direct {p0, v0, v5, v6, v2}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_ea

    invoke-static {v11}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    invoke-direct {p0, v11}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr$a;->b(Ljava/lang/String;)V

    return-void

    :cond_bd
    const-string v0, "\u589e\u91cf\u66f4\u65b0\u5931\u8d25\uff1amd5\u6821\u9a8c\u5931\u8d25"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "serverMd5="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v4, Lcom/ssjj/fnsdk/core/update/PatchInfo;->oldMd5:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr$a;->b(Ljava/lang/String;)V

    return-void

    :cond_ea
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v9}, Lcom/ssjj/fnsdk/core/update/util/Md5Utils;->md5(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5}, Lcom/ssjj/fnsdk/core/update/match/MatchFactory;->createMatch(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/update/match/ISmartUpdateMatch;

    move-result-object v0

    invoke-interface {v0, v5, v1}, Lcom/ssjj/fnsdk/core/update/match/ISmartUpdateMatch;->getSrcApkMd5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v4, Lcom/ssjj/fnsdk/core/update/PatchInfo;->newMd5:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_138

    iget-object v0, v4, Lcom/ssjj/fnsdk/core/update/PatchInfo;->newMd5:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_138

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "newMd5="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v4, Lcom/ssjj/fnsdk/core/update/PatchInfo;->newMd5:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    const-string v0, "\u589e\u91cf\u66f4\u65b0\u5931\u8d25\uff1a\u5408\u6210\u540eApk md5\u6821\u9a8c\u5931\u8d25"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr$a;->b(Ljava/lang/String;)V

    return-void

    :cond_138
    move-object v0, v5

    move-object v4, v0

    goto/16 :goto_44

    :cond_13c
    :goto_13c
    const-string v0, "\u589e\u91cf\u66f4\u65b0\u5931\u8d25\uff1a\u627e\u4e0d\u5230Patch\u5305"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr$a;->b(Ljava/lang/String;)V

    return-void
.end method
