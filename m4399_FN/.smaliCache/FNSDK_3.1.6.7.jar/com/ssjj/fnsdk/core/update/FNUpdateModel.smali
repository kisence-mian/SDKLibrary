.class public Lcom/ssjj/fnsdk/core/update/FNUpdateModel;
.super Lcom/ssjj/fnsdk/core/update/AbsUpdateModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;,
        Lcom/ssjj/fnsdk/core/update/FNUpdateModel$b;
    }
.end annotation


# static fields
.field public static CODE_GET_SIZE_FAILURE:I = 0x0

.field public static CODE_GET_SIZE_SUCCESS:I = 0x0

.field public static final PARAM_KEY_SIZE:Ljava/lang/String; = "size"


# instance fields
.field private c:Lcom/ssjj/fnsdk/core/update/FNUpdateModel$b;

.field private d:Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;->CODE_GET_SIZE_SUCCESS:I

    const/4 v0, 0x1

    sput v0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;->CODE_GET_SIZE_FAILURE:I

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/update/AbsUpdateModel;-><init>(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;->c:Lcom/ssjj/fnsdk/core/update/FNUpdateModel$b;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;->d:Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;

    const-string v0, "download_for_update"

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;->e:Ljava/lang/String;

    const-string v0, "name_apk"

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;->f:Ljava/lang/String;

    const-string v0, "name_tempapk"

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;->g:Ljava/lang/String;

    const-string v0, "file_size"

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;->h:Ljava/lang/String;

    const-string v0, "file_sign"

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;->i:Ljava/lang/String;

    const-string v0, "spend_time"

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;->j:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/update/FNUpdateModel;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;->e:Ljava/lang/String;

    return-object p0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;->e:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;->f:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;->g:Ljava/lang/String;

    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "del last: "

    const/4 v4, 0x1

    if-eqz v0, :cond_3f

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3f

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    :cond_3e
    const/4 v1, 0x1

    :cond_3f
    if-eqz v2, :cond_66

    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_66

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    goto :goto_67

    :cond_66
    move v4, v1

    :cond_67
    :goto_67
    const-wide/16 v0, 0x0

    if-eqz v4, :cond_85

    :cond_6b
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;->j:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    :goto_75
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;->f:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;->g:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_9d

    :cond_85
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_6b

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    goto :goto_75

    :goto_9d
    return-void
.end method

.method static synthetic b(Lcom/ssjj/fnsdk/core/update/FNUpdateModel;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;->j:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public clearDownload()V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;->d:Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;

    if-eqz v0, :cond_1b

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->c:Z

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;->d:Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;->d:Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->cancel(Z)Z

    :cond_14
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;->d:Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->g:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;->d:Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;

    :cond_1b
    return-void
.end method

.method public getDownloadSize(Landroid/content/Context;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 5

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;->c:Lcom/ssjj/fnsdk/core/update/FNUpdateModel$b;

    if-eqz p1, :cond_f

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$b;->a:Z

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;->c:Lcom/ssjj/fnsdk/core/update/FNUpdateModel$b;

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$b;->cancel(Z)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;->c:Lcom/ssjj/fnsdk/core/update/FNUpdateModel$b;

    :cond_f
    new-instance p1, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$b;

    invoke-direct {p1, p0, p3}, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$b;-><init>(Lcom/ssjj/fnsdk/core/update/FNUpdateModel;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;->c:Lcom/ssjj/fnsdk/core/update/FNUpdateModel$b;

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public getSpendTime(Landroid/content/Context;)J
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;->e:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;->j:Ljava/lang/String;

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public isDownloading()Z
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;->d:Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;

    if-eqz v0, :cond_a

    iget-boolean v0, v0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->c:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public startDownload(Landroid/content/Context;Lcom/ssjj/fnsdk/core/update/FNDownloadItem;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 12

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;->clearDownload()V

    invoke-virtual {p2}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;->e:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;->i:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;

    invoke-virtual {p2}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->c()Ljava/lang/String;

    move-result-object v6

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;-><init>(Lcom/ssjj/fnsdk/core/update/FNUpdateModel;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;->d:Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;

    new-array p1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public stopDownload()V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;->d:Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$a;->c:Z

    :cond_7
    return-void
.end method
