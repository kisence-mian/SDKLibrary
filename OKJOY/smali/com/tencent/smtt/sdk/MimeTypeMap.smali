.class public Lcom/tencent/smtt/sdk/MimeTypeMap;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/tencent/smtt/sdk/MimeTypeMap;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->b()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->c()Lcom/tencent/smtt/sdk/bu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/bu;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method

.method public static declared-synchronized getSingleton()Lcom/tencent/smtt/sdk/MimeTypeMap;
    .registers 2

    const-class v1, Lcom/tencent/smtt/sdk/MimeTypeMap;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/smtt/sdk/MimeTypeMap;->a:Lcom/tencent/smtt/sdk/MimeTypeMap;

    if-nez v0, :cond_e

    new-instance v0, Lcom/tencent/smtt/sdk/MimeTypeMap;

    invoke-direct {v0}, Lcom/tencent/smtt/sdk/MimeTypeMap;-><init>()V

    sput-object v0, Lcom/tencent/smtt/sdk/MimeTypeMap;->a:Lcom/tencent/smtt/sdk/MimeTypeMap;

    :cond_e
    sget-object v0, Lcom/tencent/smtt/sdk/MimeTypeMap;->a:Lcom/tencent/smtt/sdk/MimeTypeMap;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->b()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->c()Lcom/tencent/smtt/sdk/bu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/bu;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method

.method public getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->b()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->c()Lcom/tencent/smtt/sdk/bu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/bu;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method

.method public hasExtension(Ljava/lang/String;)Z
    .registers 4

    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->b()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->c()Lcom/tencent/smtt/sdk/bu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/bu;->k(Ljava/lang/String;)Z

    move-result v0

    :goto_14
    return v0

    :cond_15
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/MimeTypeMap;->hasExtension(Ljava/lang/String;)Z

    move-result v0

    goto :goto_14
.end method

.method public hasMimeType(Ljava/lang/String;)Z
    .registers 4

    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->b()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->c()Lcom/tencent/smtt/sdk/bu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/bu;->i(Ljava/lang/String;)Z

    move-result v0

    :goto_14
    return v0

    :cond_15
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/MimeTypeMap;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    goto :goto_14
.end method
