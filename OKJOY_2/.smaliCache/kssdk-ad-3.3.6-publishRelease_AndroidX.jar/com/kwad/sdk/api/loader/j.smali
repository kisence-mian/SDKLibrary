.class Lcom/kwad/sdk/api/loader/j;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Landroid/content/res/Resources;

.field private e:Ljava/lang/ClassLoader;

.field private f:Lcom/kwad/sdk/api/core/IKsAdSDK;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/api/loader/j;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/kwad/sdk/api/loader/j;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/kwad/sdk/api/loader/j;->c:Ljava/lang/String;

    return-void
.end method

.method static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Lcom/kwad/sdk/api/loader/j;
    .registers 5

    const-class v0, Lcom/kwad/sdk/api/loader/j;

    monitor-enter v0

    :try_start_3
    invoke-static {p0, p1}, Lcom/kwad/sdk/api/loader/g;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/kwad/sdk/api/loader/g;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1}, Lcom/kwad/sdk/api/loader/g;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, v2, p1}, Lcom/kwad/sdk/api/loader/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kwad/sdk/api/loader/j;

    move-result-object p0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_13} :catch_17
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    monitor-exit v0

    return-object p0

    :catchall_15
    move-exception p0

    goto :goto_1e

    :catch_17
    move-exception p0

    :try_start_18
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_15

    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :goto_1e
    monitor-exit v0

    throw p0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kwad/sdk/api/loader/j;
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Lcom/kwad/sdk/api/loader/j;

    invoke-direct {v0, p1, p2, p3}, Lcom/kwad/sdk/api/loader/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lcom/kwad/sdk/api/loader/j;->a(Landroid/content/Context;)V

    return-object v0

    :cond_20
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "mApk not a file"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_28
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "mApk is null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Lcom/kwad/sdk/api/loader/j;->d()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/api/loader/j;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/kwad/sdk/api/loader/o;->a(Landroid/content/Context;Landroid/content/res/Resources;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/api/loader/j;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/kwad/sdk/api/loader/j;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/kwad/sdk/api/loader/j;->c:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/kwad/sdk/api/loader/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/api/loader/Loader;->a(Ljava/lang/ClassLoader;)Lcom/kwad/sdk/api/core/IKsAdSDK;

    move-result-object v1

    iput-object v0, p0, Lcom/kwad/sdk/api/loader/j;->d:Landroid/content/res/Resources;

    iput-object p1, p0, Lcom/kwad/sdk/api/loader/j;->e:Ljava/lang/ClassLoader;

    iput-object v1, p0, Lcom/kwad/sdk/api/loader/j;->f:Lcom/kwad/sdk/api/core/IKsAdSDK;

    invoke-interface {v1}, Lcom/kwad/sdk/api/core/IKsAdSDK;->getSDKType()I

    move-result p1

    sget v0, Lcom/kwad/sdk/api/a;->a:I

    if-ne p1, v0, :cond_2a

    return-void

    :cond_2a
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sdkType error apiType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " , sdkType:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private d()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/j;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/kwad/sdk/api/loader/j;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1c

    return-void

    :cond_1c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mApk not a file"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mApk is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method a()Landroid/content/res/Resources;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/j;->d:Landroid/content/res/Resources;

    return-object v0
.end method

.method b()Ljava/lang/ClassLoader;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/j;->e:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method c()Lcom/kwad/sdk/api/core/IKsAdSDK;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/j;->f:Lcom/kwad/sdk/api/core/IKsAdSDK;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExternalPackage{mApk=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/api/loader/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mDexDir=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/kwad/sdk/api/loader/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mNativeLibDir=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/kwad/sdk/api/loader/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mResource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/api/loader/j;->d:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mClassLoader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/api/loader/j;->e:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mKsSdk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/api/loader/j;->f:Lcom/kwad/sdk/api/core/IKsAdSDK;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
