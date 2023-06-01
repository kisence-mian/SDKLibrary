.class public Lcom/ssjj/fnsdk/core/update/match/YdSmartUpdateMatch;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/update/match/ISmartUpdateMatch;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apkType()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public getPatchApk(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    return-object p1
.end method

.method public getSrcApkMd5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/CommentHnadler;->getCommentLength(Ljava/io/File;)J

    move-result-wide v0

    long-to-int v1, v0

    if-nez v1, :cond_d

    goto :goto_16

    :cond_d
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2, v1}, Lcom/ssjj/fnsdk/core/update/util/Md5Utils;->md5(Ljava/io/File;I)Ljava/lang/String;

    move-result-object p2

    :goto_16
    return-object p2
.end method

.method public processChannel(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 6

    const/4 v0, 0x1

    if-nez p3, :cond_4

    return v0

    :cond_4
    const/4 p3, 0x0

    :try_start_5
    const-string v1, "Update comment"

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/CommentHnadler;->readComment(Ljava/io/File;)[B

    move-result-object p1

    if-nez p1, :cond_17

    new-array p1, p3, [B

    :cond_17
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/ssjj/fnsdk/core/CommentHnadler;->updateComment(Ljava/io/File;[B)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1f} :catch_20

    return v0

    :catch_20
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return p3
.end method
