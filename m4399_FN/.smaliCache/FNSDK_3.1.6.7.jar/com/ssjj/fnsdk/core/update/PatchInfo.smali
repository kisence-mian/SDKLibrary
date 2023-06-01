.class public Lcom/ssjj/fnsdk/core/update/PatchInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/ssjj/fnsdk/core/update/PatchInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public apkSavePath:Ljava/lang/String;

.field public newMd5:Ljava/lang/String;

.field public newSize:J

.field public newVer:Ljava/lang/String;

.field public oldMd5:Ljava/lang/String;

.field public oldSize:J

.field public oldVer:Ljava/lang/String;

.field public patchMd5:Ljava/lang/String;

.field public patchSavePath:Ljava/lang/String;

.field public patchSize:J

.field public patchUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "patch_md5"

    const-string v1, ""

    invoke-direct {p0, p2, v0, v1}, Lcom/ssjj/fnsdk/core/update/PatchInfo;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/PatchInfo;->patchMd5:Ljava/lang/String;

    const-string v0, "patch_size"

    const-string v2, "0"

    invoke-direct {p0, p2, v0, v2}, Lcom/ssjj/fnsdk/core/update/PatchInfo;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/update/PatchInfo;->a(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/ssjj/fnsdk/core/update/PatchInfo;->patchSize:J

    const-string v0, "patch_url"

    invoke-direct {p0, p2, v0, v1}, Lcom/ssjj/fnsdk/core/update/PatchInfo;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/PatchInfo;->patchUrl:Ljava/lang/String;

    const-string v0, "old_md5"

    invoke-direct {p0, p2, v0, v1}, Lcom/ssjj/fnsdk/core/update/PatchInfo;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/PatchInfo;->oldMd5:Ljava/lang/String;

    const-string v0, "old_size"

    invoke-direct {p0, p2, v0, v2}, Lcom/ssjj/fnsdk/core/update/PatchInfo;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/update/PatchInfo;->a(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/ssjj/fnsdk/core/update/PatchInfo;->oldSize:J

    const-string v0, "old_ver"

    invoke-direct {p0, p2, v0, v1}, Lcom/ssjj/fnsdk/core/update/PatchInfo;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/PatchInfo;->oldVer:Ljava/lang/String;

    const-string v0, "new_md5"

    invoke-direct {p0, p2, v0, v1}, Lcom/ssjj/fnsdk/core/update/PatchInfo;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/PatchInfo;->newMd5:Ljava/lang/String;

    const-string v0, "new_size"

    invoke-direct {p0, p2, v0, v2}, Lcom/ssjj/fnsdk/core/update/PatchInfo;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/update/PatchInfo;->a(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ssjj/fnsdk/core/update/PatchInfo;->newSize:J

    const-string v0, "new_ver"

    invoke-direct {p0, p2, v0, v1}, Lcom/ssjj/fnsdk/core/update/PatchInfo;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/update/PatchInfo;->newVer:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/update/PatchInfo;->isValid()Z

    move-result p2

    if-eqz p2, :cond_e2

    invoke-static {}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;->getInstance()Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;->getSaveDir(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/PatchInfo;->newVer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/PatchInfo;->patchUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".p"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/PatchInfo;->patchSavePath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/update/PatchInfo;->newVer:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/update/PatchInfo;->patchUrl:Ljava/lang/String;

    invoke-static {p2}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ".apk"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/PatchInfo;->apkSavePath:Ljava/lang/String;

    :cond_e2
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_6

    if-nez p2, :cond_6

    return v0

    :cond_6
    const/4 v1, 0x1

    if-eqz p1, :cond_c

    if-nez p2, :cond_c

    return v1

    :cond_c
    const/4 v2, -0x1

    if-nez p1, :cond_12

    if-eqz p2, :cond_12

    return v2

    :cond_12
    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/update/PatchInfo;->b(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {p0, p2}, Lcom/ssjj/fnsdk/core/update/PatchInfo;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v3, :cond_1f

    if-nez v4, :cond_1f

    return v0

    :cond_1f
    if-eqz v3, :cond_24

    if-nez v4, :cond_24

    return v1

    :cond_24
    if-nez v3, :cond_29

    if-eqz v4, :cond_29

    return v2

    :cond_29
    const-string v1, "\\."

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length v1, p1

    array-length v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_39
    if-lt v0, v1, :cond_3c

    goto :goto_4a

    :cond_3c
    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v3, p2, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_5d

    :goto_4a
    if-ne v0, v1, :cond_50

    array-length p1, p1

    array-length p2, p2

    :goto_4e
    sub-int/2addr p1, p2

    return p1

    :cond_50
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    aget-object p2, p2, v0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_4e

    :cond_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_39
.end method

.method private a(Ljava/lang/String;)J
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_b
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_a
    return-object p3
.end method

.method private b(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_e

    goto :goto_29

    :cond_e
    const-string v1, "\\."

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_17

    return v0

    :cond_17
    array-length v1, p1

    const/4 v2, 0x0

    :goto_19
    if-lt v2, v1, :cond_1d

    const/4 p1, 0x1

    return p1

    :cond_1d
    aget-object v3, p1, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_26

    return v0

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_29
    :goto_29
    return v0
.end method


# virtual methods
.method public compareTo(Lcom/ssjj/fnsdk/core/update/PatchInfo;)I
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/PatchInfo;->newVer:Ljava/lang/String;

    iget-object p1, p1, Lcom/ssjj/fnsdk/core/update/PatchInfo;->newVer:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/ssjj/fnsdk/core/update/PatchInfo;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/ssjj/fnsdk/core/update/PatchInfo;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/update/PatchInfo;->compareTo(Lcom/ssjj/fnsdk/core/update/PatchInfo;)I

    move-result p1

    return p1
.end method

.method public deleteCache()V
    .registers 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/PatchInfo;->patchSavePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_10
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/PatchInfo;->apkSavePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_20
    return-void
.end method

.method public getDownloadSize()J
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/PatchInfo;->patchSavePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_b

    return-wide v1

    :cond_b
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/update/PatchInfo;->patchSavePath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_19

    return-wide v1

    :cond_19
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasDolwnLoaded()Z
    .registers 6

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/update/PatchInfo;->getDownloadSize()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ssjj/fnsdk/core/update/PatchInfo;->patchSize:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public hasDownloadedFinish()Z
    .registers 6

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/update/PatchInfo;->getDownloadSize()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ssjj/fnsdk/core/update/PatchInfo;->patchSize:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public isValid()Z
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/PatchInfo;->patchUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/PatchInfo;->patchUrl:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/PatchInfo;->newVer:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/update/PatchInfo;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/PatchInfo;->oldVer:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/update/PatchInfo;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    return v0

    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "patchMd5"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/PatchInfo;->patchMd5:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/ssjj/fnsdk/core/update/PatchInfo;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/ssjj/fnsdk/core/update/PatchInfo;->patchSize:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "patchSize"

    invoke-direct {p0, v2, v1}, Lcom/ssjj/fnsdk/core/update/PatchInfo;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "patchUrl"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/PatchInfo;->patchUrl:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/ssjj/fnsdk/core/update/PatchInfo;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "oldMd5"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/PatchInfo;->oldMd5:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/ssjj/fnsdk/core/update/PatchInfo;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/ssjj/fnsdk/core/update/PatchInfo;->oldSize:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "oldSize"

    invoke-direct {p0, v2, v1}, Lcom/ssjj/fnsdk/core/update/PatchInfo;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "oldVer"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/PatchInfo;->oldVer:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/ssjj/fnsdk/core/update/PatchInfo;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "newMd5"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/PatchInfo;->newMd5:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/ssjj/fnsdk/core/update/PatchInfo;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/ssjj/fnsdk/core/update/PatchInfo;->newSize:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "newSize"

    invoke-direct {p0, v2, v1}, Lcom/ssjj/fnsdk/core/update/PatchInfo;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "newVer"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/PatchInfo;->newVer:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/ssjj/fnsdk/core/update/PatchInfo;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "patchSavePath"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/PatchInfo;->patchSavePath:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/ssjj/fnsdk/core/update/PatchInfo;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "apkSavePath"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/PatchInfo;->apkSavePath:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/ssjj/fnsdk/core/update/PatchInfo;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
