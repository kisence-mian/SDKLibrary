.class public Lcom/kwad/sdk/home/download/a;
.super Ljava/lang/Object;


# static fields
.field private static volatile l:Lcom/kwad/sdk/home/download/a;


# instance fields
.field private a:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/kwad/sdk/home/download/HomeApkBannerData;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/kwad/sdk/home/download/HomeApkBannerData;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Ljava/io/File;

.field private f:Ljava/io/File;

.field private g:Ljava/io/File;

.field private h:Ljava/io/File;

.field private i:Ljava/io/File;

.field private j:I

.field private k:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/home/download/a;->a:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/home/download/a;->b:Ljava/util/Stack;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/home/download/a;->c:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/kwad/sdk/home/download/a;->j:I

    iput-boolean v0, p0, Lcom/kwad/sdk/home/download/a;->k:Z

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/KsAdSDKImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/utils/z;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/home/download/a;->d:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/kwad/sdk/home/download/a;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3b

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_3b
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kwad/sdk/home/download/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "download_uninstall"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kwad/sdk/home/download/a;->e:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kwad/sdk/home/download/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "download_uninstall_apk_data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kwad/sdk/home/download/a;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_8a

    iget-object v0, p0, Lcom/kwad/sdk/home/download/a;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_8a
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kwad/sdk/home/download/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "install_unopen_apk_data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kwad/sdk/home/download/a;->h:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_b7

    iget-object v0, p0, Lcom/kwad/sdk/home/download/a;->h:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_b7
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kwad/sdk/home/download/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "install_unopen"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kwad/sdk/home/download/a;->f:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kwad/sdk/home/download/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "app_has_show_banner_counts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kwad/sdk/home/download/a;->i:Ljava/io/File;

    return-void
.end method

.method public static a()Lcom/kwad/sdk/home/download/a;
    .registers 2

    sget-object v0, Lcom/kwad/sdk/home/download/a;->l:Lcom/kwad/sdk/home/download/a;

    if-nez v0, :cond_17

    const-class v0, Lcom/kwad/sdk/home/download/a;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/kwad/sdk/home/download/a;->l:Lcom/kwad/sdk/home/download/a;

    if-nez v1, :cond_12

    new-instance v1, Lcom/kwad/sdk/home/download/a;

    invoke-direct {v1}, Lcom/kwad/sdk/home/download/a;-><init>()V

    sput-object v1, Lcom/kwad/sdk/home/download/a;->l:Lcom/kwad/sdk/home/download/a;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/kwad/sdk/home/download/a;->l:Lcom/kwad/sdk/home/download/a;

    return-object v0
.end method

.method private a(Lcom/kwad/sdk/home/download/HomeApkBannerData;Z)Ljava/io/File;
    .registers 5

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/kwad/sdk/home/download/a;->g:Ljava/io/File;

    goto :goto_7

    :cond_5
    iget-object p2, p0, Lcom/kwad/sdk/home/download/a;->h:Ljava/io/File;

    :goto_7
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p1, p1, Lcom/kwad/sdk/home/download/HomeApkBannerData;->mAdTemplateUniqueId:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 8

    const-class v0, Lcom/kwad/sdk/home/download/a;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    invoke-static {p1}, Lcom/kwad/sdk/home/download/HomeApkBannerData;->convertAdTemplateToHomeApkBannerData(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/home/download/HomeApkBannerData;

    move-result-object v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_65
    .catchall {:try_start_4 .. :try_end_8} :catchall_62

    if-nez v2, :cond_c

    :try_start_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_ac

    return-void

    :cond_c
    :try_start_c
    iget-object v3, p0, Lcom/kwad/sdk/home/download/a;->a:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/io/ObjectOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/kwad/sdk/home/download/a;->e:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1d} :catch_65
    .catchall {:try_start_c .. :try_end_1d} :catchall_62

    :try_start_1d
    iget-object v4, p0, Lcom/kwad/sdk/home/download/a;->a:Ljava/util/Stack;

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    const/4 v4, 0x1

    invoke-direct {p0, v2, v4}, Lcom/kwad/sdk/home/download/a;->a(Lcom/kwad/sdk/home/download/HomeApkBannerData;Z)Ljava/io/File;

    move-result-object v2

    new-instance v4, Ljava/io/ObjectOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_31} :catch_5e
    .catchall {:try_start_1d .. :try_end_31} :catchall_5a

    :try_start_31
    invoke-virtual {v4, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_58
    .catchall {:try_start_31 .. :try_end_34} :catchall_56

    :try_start_34
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3a} :catch_3c
    .catchall {:try_start_34 .. :try_end_3a} :catchall_ac

    goto/16 :goto_a3

    :catch_3c
    move-exception p1

    :try_start_3d
    const-string v1, "HomeApkBannerDataManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " addApkDownloadedData close e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_52
    invoke-static {v1, p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_55
    .catchall {:try_start_3d .. :try_end_55} :catchall_ac

    goto :goto_a3

    :catchall_56
    move-exception p1

    goto :goto_5c

    :catch_58
    move-exception p1

    goto :goto_60

    :catchall_5a
    move-exception p1

    move-object v4, v1

    :goto_5c
    move-object v1, v3

    goto :goto_a6

    :catch_5e
    move-exception p1

    move-object v4, v1

    :goto_60
    move-object v1, v3

    goto :goto_67

    :catchall_62
    move-exception p1

    move-object v4, v1

    goto :goto_a6

    :catch_65
    move-exception p1

    move-object v4, v1

    :goto_67
    :try_start_67
    const-string v2, "HomeApkBannerDataManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " addApkDownloadedData e"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7f
    .catchall {:try_start_67 .. :try_end_7f} :catchall_a5

    if-eqz v1, :cond_87

    :try_start_81
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_87

    :catch_85
    move-exception p1

    goto :goto_8d

    :cond_87
    :goto_87
    if-eqz v4, :cond_a3

    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_8c} :catch_85
    .catchall {:try_start_81 .. :try_end_8c} :catchall_ac

    goto :goto_a3

    :goto_8d
    :try_start_8d
    const-string v1, "HomeApkBannerDataManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " addApkDownloadedData close e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_52

    :cond_a3
    :goto_a3
    monitor-exit v0
    :try_end_a4
    .catchall {:try_start_8d .. :try_end_a4} :catchall_ac

    return-void

    :catchall_a5
    move-exception p1

    :goto_a6
    if-eqz v1, :cond_b0

    :try_start_a8
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_b0

    :catchall_ac
    move-exception p1

    goto :goto_cf

    :catch_ae
    move-exception v1

    goto :goto_b6

    :cond_b0
    :goto_b0
    if-eqz v4, :cond_ce

    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_b5} :catch_ae
    .catchall {:try_start_a8 .. :try_end_b5} :catchall_ac

    goto :goto_ce

    :goto_b6
    :try_start_b6
    const-string v2, "HomeApkBannerDataManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " addApkDownloadedData close e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ce
    :goto_ce
    throw p1

    :goto_cf
    monitor-exit v0
    :try_end_d0
    .catchall {:try_start_b6 .. :try_end_d0} :catchall_ac

    throw p1
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/home/download/a;->k:Z

    return-void
.end method

.method public b(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 8

    const-class v0, Lcom/kwad/sdk/home/download/a;

    monitor-enter v0

    :try_start_3
    invoke-static {p1}, Lcom/kwad/sdk/home/download/HomeApkBannerData;->convertAdTemplateToHomeApkBannerData(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/home/download/HomeApkBannerData;

    move-result-object p1

    if-nez p1, :cond_b

    monitor-exit v0

    return-void

    :cond_b
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kwad/sdk/home/download/a;->a:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kwad/sdk/home/download/HomeApkBannerData;

    iget-object v4, p1, Lcom/kwad/sdk/home/download/HomeApkBannerData;->appPackageName:Ljava/lang/String;

    iget-object v3, v3, Lcom/kwad/sdk/home/download/HomeApkBannerData;->appPackageName:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    const/4 v1, 0x1

    goto :goto_12

    :cond_2d
    if-nez v1, :cond_31

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_c4

    return-void

    :cond_31
    const/4 p1, 0x0

    :try_start_32
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/kwad/sdk/home/download/a;->e:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3e} :catch_68
    .catchall {:try_start_32 .. :try_end_3e} :catchall_63

    :try_start_3e
    iget-object p1, p0, Lcom/kwad/sdk/home/download/a;->a:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_43} :catch_61
    .catchall {:try_start_3e .. :try_end_43} :catchall_a3

    :try_start_43
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_47
    .catchall {:try_start_43 .. :try_end_46} :catchall_c4

    goto :goto_a1

    :catch_47
    move-exception p1

    :try_start_48
    const-string v1, "HomeApkBannerDataManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " removeApkDownloadedData close e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_5d
    invoke-static {v1, p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_60
    .catchall {:try_start_48 .. :try_end_60} :catchall_c4

    goto :goto_a1

    :catch_61
    move-exception p1

    goto :goto_6c

    :catchall_63
    move-exception v1

    move-object v5, v1

    move-object v1, p1

    move-object p1, v5

    goto :goto_a4

    :catch_68
    move-exception v1

    move-object v5, v1

    move-object v1, p1

    move-object p1, v5

    :goto_6c
    :try_start_6c
    const-string v2, "HomeApkBannerDataManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " removeApkDownloadedData e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_84
    .catchall {:try_start_6c .. :try_end_84} :catchall_a3

    if-eqz v1, :cond_a1

    :try_start_86
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_89} :catch_8a
    .catchall {:try_start_86 .. :try_end_89} :catchall_c4

    goto :goto_a1

    :catch_8a
    move-exception p1

    :try_start_8b
    const-string v1, "HomeApkBannerDataManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " removeApkDownloadedData close e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5d

    :cond_a1
    :goto_a1
    monitor-exit v0
    :try_end_a2
    .catchall {:try_start_8b .. :try_end_a2} :catchall_c4

    return-void

    :catchall_a3
    move-exception p1

    :goto_a4
    if-eqz v1, :cond_c3

    :try_start_a6
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_a9} :catch_aa
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_c4

    goto :goto_c3

    :catch_aa
    move-exception v1

    :try_start_ab
    const-string v2, "HomeApkBannerDataManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " removeApkDownloadedData close e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c3
    :goto_c3
    throw p1

    :catchall_c4
    move-exception p1

    monitor-exit v0
    :try_end_c6
    .catchall {:try_start_ab .. :try_end_c6} :catchall_c4

    throw p1
.end method

.method public c(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 8

    const-class v0, Lcom/kwad/sdk/home/download/a;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    invoke-static {p1}, Lcom/kwad/sdk/home/download/HomeApkBannerData;->convertAdTemplateToHomeApkBannerData(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/home/download/HomeApkBannerData;

    move-result-object v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_65
    .catchall {:try_start_4 .. :try_end_8} :catchall_62

    if-nez v2, :cond_c

    :try_start_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_ac

    return-void

    :cond_c
    :try_start_c
    iget-object v3, p0, Lcom/kwad/sdk/home/download/a;->b:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/io/ObjectOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/kwad/sdk/home/download/a;->f:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1d} :catch_65
    .catchall {:try_start_c .. :try_end_1d} :catchall_62

    :try_start_1d
    iget-object v4, p0, Lcom/kwad/sdk/home/download/a;->b:Ljava/util/Stack;

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    const/4 v4, 0x0

    invoke-direct {p0, v2, v4}, Lcom/kwad/sdk/home/download/a;->a(Lcom/kwad/sdk/home/download/HomeApkBannerData;Z)Ljava/io/File;

    move-result-object v2

    new-instance v4, Ljava/io/ObjectOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_31} :catch_5e
    .catchall {:try_start_1d .. :try_end_31} :catchall_5a

    :try_start_31
    invoke-virtual {v4, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_58
    .catchall {:try_start_31 .. :try_end_34} :catchall_56

    :try_start_34
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3a} :catch_3c
    .catchall {:try_start_34 .. :try_end_3a} :catchall_ac

    goto/16 :goto_a3

    :catch_3c
    move-exception p1

    :try_start_3d
    const-string v1, "HomeApkBannerDataManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " addInstalledData close e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_52
    invoke-static {v1, p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_55
    .catchall {:try_start_3d .. :try_end_55} :catchall_ac

    goto :goto_a3

    :catchall_56
    move-exception p1

    goto :goto_5c

    :catch_58
    move-exception p1

    goto :goto_60

    :catchall_5a
    move-exception p1

    move-object v4, v1

    :goto_5c
    move-object v1, v3

    goto :goto_a6

    :catch_5e
    move-exception p1

    move-object v4, v1

    :goto_60
    move-object v1, v3

    goto :goto_67

    :catchall_62
    move-exception p1

    move-object v4, v1

    goto :goto_a6

    :catch_65
    move-exception p1

    move-object v4, v1

    :goto_67
    :try_start_67
    const-string v2, "HomeApkBannerDataManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " addInstalledData e"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7f
    .catchall {:try_start_67 .. :try_end_7f} :catchall_a5

    if-eqz v1, :cond_87

    :try_start_81
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_87

    :catch_85
    move-exception p1

    goto :goto_8d

    :cond_87
    :goto_87
    if-eqz v4, :cond_a3

    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_8c} :catch_85
    .catchall {:try_start_81 .. :try_end_8c} :catchall_ac

    goto :goto_a3

    :goto_8d
    :try_start_8d
    const-string v1, "HomeApkBannerDataManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " addInstalledData close e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_52

    :cond_a3
    :goto_a3
    monitor-exit v0
    :try_end_a4
    .catchall {:try_start_8d .. :try_end_a4} :catchall_ac

    return-void

    :catchall_a5
    move-exception p1

    :goto_a6
    if-eqz v1, :cond_b0

    :try_start_a8
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_b0

    :catchall_ac
    move-exception p1

    goto :goto_cf

    :catch_ae
    move-exception v1

    goto :goto_b6

    :cond_b0
    :goto_b0
    if-eqz v4, :cond_ce

    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_b5} :catch_ae
    .catchall {:try_start_a8 .. :try_end_b5} :catchall_ac

    goto :goto_ce

    :goto_b6
    :try_start_b6
    const-string v2, "HomeApkBannerDataManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " addInstalledData close e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ce
    :goto_ce
    throw p1

    :goto_cf
    monitor-exit v0
    :try_end_d0
    .catchall {:try_start_b6 .. :try_end_d0} :catchall_ac

    throw p1
.end method

.method public d(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 8

    const-class v0, Lcom/kwad/sdk/home/download/a;

    monitor-enter v0

    :try_start_3
    invoke-static {p1}, Lcom/kwad/sdk/home/download/HomeApkBannerData;->convertAdTemplateToHomeApkBannerData(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/home/download/HomeApkBannerData;

    move-result-object p1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kwad/sdk/home/download/a;->b:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kwad/sdk/home/download/HomeApkBannerData;

    iget-object v4, p1, Lcom/kwad/sdk/home/download/HomeApkBannerData;->appPackageName:Ljava/lang/String;

    iget-object v3, v3, Lcom/kwad/sdk/home/download/HomeApkBannerData;->appPackageName:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    const/4 v1, 0x1

    goto :goto_e

    :cond_29
    if-nez v1, :cond_2d

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_c0

    return-void

    :cond_2d
    const/4 p1, 0x0

    :try_start_2e
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/kwad/sdk/home/download/a;->f:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_3a} :catch_64
    .catchall {:try_start_2e .. :try_end_3a} :catchall_5f

    :try_start_3a
    iget-object p1, p0, Lcom/kwad/sdk/home/download/a;->b:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3f} :catch_5d
    .catchall {:try_start_3a .. :try_end_3f} :catchall_9f

    :try_start_3f
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_43
    .catchall {:try_start_3f .. :try_end_42} :catchall_c0

    goto :goto_9d

    :catch_43
    move-exception p1

    :try_start_44
    const-string v1, "HomeApkBannerDataManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " removeInstalledData close e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_59
    invoke-static {v1, p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5c
    .catchall {:try_start_44 .. :try_end_5c} :catchall_c0

    goto :goto_9d

    :catch_5d
    move-exception p1

    goto :goto_68

    :catchall_5f
    move-exception v1

    move-object v5, v1

    move-object v1, p1

    move-object p1, v5

    goto :goto_a0

    :catch_64
    move-exception v1

    move-object v5, v1

    move-object v1, p1

    move-object p1, v5

    :goto_68
    :try_start_68
    const-string v2, "HomeApkBannerDataManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " removeInstalledData e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_80
    .catchall {:try_start_68 .. :try_end_80} :catchall_9f

    if-eqz v1, :cond_9d

    :try_start_82
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_85} :catch_86
    .catchall {:try_start_82 .. :try_end_85} :catchall_c0

    goto :goto_9d

    :catch_86
    move-exception p1

    :try_start_87
    const-string v1, "HomeApkBannerDataManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " removeInstalledData close e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_59

    :cond_9d
    :goto_9d
    monitor-exit v0
    :try_end_9e
    .catchall {:try_start_87 .. :try_end_9e} :catchall_c0

    return-void

    :catchall_9f
    move-exception p1

    :goto_a0
    if-eqz v1, :cond_bf

    :try_start_a2
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_a5} :catch_a6
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_c0

    goto :goto_bf

    :catch_a6
    move-exception v1

    :try_start_a7
    const-string v2, "HomeApkBannerDataManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " removeInstalledData close e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_bf
    :goto_bf
    throw p1

    :catchall_c0
    move-exception p1

    monitor-exit v0
    :try_end_c2
    .catchall {:try_start_a7 .. :try_end_c2} :catchall_c0

    throw p1
.end method
