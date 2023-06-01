.class Lcom/ssjj/fnsdk/core/FNUpdateManager$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ssjj/fnsdk/core/FNUpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Lcom/ssjj/fnsdk/core/SsjjFNParams;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 12

    const-string v0, "sign"

    const-string v1, "updateDesc"

    const-string v2, "forceUpdate"

    const-string v3, "downloadUrl"

    const-string v4, "versionName"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v5, ""

    iput-object v5, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->b:Ljava/lang/String;

    iput-object v5, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->c:Ljava/lang/String;

    iput-object v5, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->d:Ljava/lang/String;

    const-string v6, "1"

    iput-object v6, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->e:Ljava/lang/String;

    const-string v7, "0"

    iput-object v7, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->f:Ljava/lang/String;

    iput-object v5, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->g:Ljava/lang/String;

    iput-object v5, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->h:Ljava/lang/String;

    :try_start_21
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_30

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_30
    iput-object v7, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->f:Ljava/lang/String;

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3e

    :cond_3d
    move-object v3, v5

    :goto_3e
    iput-object v3, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->b:Ljava/lang/String;

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_4a
    iput-object v6, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->e:Ljava/lang/String;

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_58

    :cond_57
    move-object v1, v5

    :goto_58
    iput-object v1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->c:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_65

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_66

    :cond_65
    move-object v0, v5

    :goto_66
    iput-object v0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->d:Ljava/lang/String;
    :try_end_68
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_68} :catch_69

    goto :goto_90

    :catch_69
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getUpdateInfo err: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    :goto_90
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9b

    const-string p1, "\u53d1\u73b0\u65b0\u7248\u672c"

    goto :goto_ab

    :cond_9b
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->c:Ljava/lang/String;

    const-string v0, "<br />"

    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->c:Ljava/lang/String;

    const-string v0, "<br/>"

    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :goto_ab
    iput-object p1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->c:Ljava/lang/String;

    new-instance p1, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->a:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    const-string v0, "version"

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->a:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    const-string v0, "url"

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->a:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    const-string v0, "force"

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->a:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    const-string v0, "desc"

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->a:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->addObj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->d()Z

    move-result p1

    if-eqz p1, :cond_149

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/Download_Game"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_10a

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_10a
    invoke-virtual {p0, v0}, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->a(Ljava/io/File;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ".apk"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->g:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->g:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ".temp"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->h:Ljava/lang/String;

    :cond_149
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method a()V
    .registers 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_10
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_20
    return-void
.end method

.method a(Ljava/io/File;)V
    .registers 12

    new-instance v0, Lcom/ssjj/fnsdk/core/m;

    invoke-direct {v0, p0}, Lcom/ssjj/fnsdk/core/m;-><init>(Lcom/ssjj/fnsdk/core/FNUpdateManager$a;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_29

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    array-length v2, p1

    const/4 v3, 0x0

    :goto_11
    if-lt v3, v2, :cond_14

    goto :goto_29

    :cond_14
    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    sub-long v5, v0, v5

    const-wide/32 v7, 0x240c8400

    cmp-long v9, v5, v7

    if-lez v9, :cond_26

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_29
    :goto_29
    return-void
.end method

.method b()Z
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->g:Ljava/lang/String;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1d

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    return v0

    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method c()Z
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->h:Ljava/lang/String;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1d

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    return v0

    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method d()Z
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2c

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    return v0

    :cond_2c
    const/4 v0, 0x0

    return v0
.end method

.method e()Z
    .registers 4

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->f:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_54

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_54

    const-string v0, "0"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_54

    const-string v0, "0.0"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_54

    const-string v0, "0.0.0"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_54

    const-string v0, "0.0.0.0"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_54

    const-string v0, "0.0.0.0.0"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    goto :goto_54

    :cond_42
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->f:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/ssjj/fnsdk/core/UpdateUtil;->cmpVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_54

    const/4 v0, 0x1

    return v0

    :cond_54
    :goto_54
    return v1
.end method

.method f()Z
    .registers 3

    const-string v0, "1"

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->f:Ljava/lang/String;

    return-object v0
.end method
