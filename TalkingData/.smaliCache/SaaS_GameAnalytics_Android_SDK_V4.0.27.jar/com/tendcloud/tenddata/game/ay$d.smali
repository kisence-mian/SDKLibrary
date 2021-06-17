.class Lcom/tendcloud/tenddata/game/ay$d;
.super Lcom/tendcloud/tenddata/game/ay;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# direct methods
.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 224
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/ay;-><init>(Landroid/os/Parcel;)V

    .line 225
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 220
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/ay;-><init>(Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public static get(I)Lcom/tendcloud/tenddata/game/ay$d;
    .registers 5

    .line 213
    :try_start_0
    new-instance v0, Lcom/tendcloud/tenddata/game/ay$d;

    const-string v1, "/proc/%d/status"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/tendcloud/tenddata/game/ay$d;-><init>(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    return-object v0

    .line 214
    :catchall_16
    move-exception p0

    .line 215
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getGid()I
    .registers 3

    .line 265
    :try_start_0
    const-string v0, "Gid"

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/game/ay$d;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    return v0

    .line 266
    :catchall_14
    move-exception v0

    .line 267
    const/4 v0, -0x1

    return v0
.end method

.method public getUid()I
    .registers 3

    .line 254
    :try_start_0
    const-string v0, "Uid"

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/game/ay$d;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    return v0

    .line 255
    :catchall_14
    move-exception v0

    .line 256
    const/4 v0, -0x1

    return v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 235
    const-string v0, ":"

    :try_start_2
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ay$d;->content:Ljava/lang/String;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 236
    array-length v2, v1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_47

    aget-object v4, v1, v3

    .line 237
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1
    :try_end_43
    .catchall {:try_start_2 .. :try_end_43} :catchall_48

    return-object p1

    .line 236
    :cond_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 245
    :cond_47
    goto :goto_49

    .line 241
    :catchall_48
    move-exception p1

    .line 246
    :goto_49
    const/4 p1, 0x0

    return-object p1
.end method
