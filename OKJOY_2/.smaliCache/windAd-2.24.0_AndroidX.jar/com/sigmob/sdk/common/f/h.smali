.class public Lcom/sigmob/sdk/common/f/h;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/common/f/h;->a:Ljava/util/HashMap;

    const-string v1, "FFD8"

    const-string v2, "jpg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "8950"

    const-string v2, "png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "4749"

    const-string v2, "gif"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "4949"

    const-string v2, "tif"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "424D"

    const-string v2, "bmp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "5745"

    const-string v2, "webp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/sigmob/sdk/common/f/h;->a:Ljava/util/HashMap;

    invoke-static {p0}, Lcom/sigmob/sdk/common/f/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static a([B)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_31

    array-length v1, p0

    if-gtz v1, :cond_b

    goto :goto_31

    :cond_b
    const/4 v1, 0x0

    move v2, v1

    :goto_d
    array-length v3, p0

    if-ge v2, v3, :cond_2c

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_26
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_31
    :goto_31
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_30

    const/4 p0, 0x2

    :try_start_7
    new-array v2, p0, [B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0}, Ljava/io/FileInputStream;->read([BII)I

    invoke-static {v2}, Lcom/sigmob/sdk/common/f/h;->a([B)Ljava/lang/String;

    move-result-object v0

    const-string v4, "5249"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    const-wide/16 v4, 0x6

    invoke-virtual {v1, v4, v5}, Ljava/io/FileInputStream;->skip(J)J

    invoke-virtual {v1, v2, v3, p0}, Ljava/io/FileInputStream;->read([BII)I

    invoke-static {v2}, Lcom/sigmob/sdk/common/f/h;->a([B)Ljava/lang/String;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_2b

    :cond_25
    :try_start_25
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_41

    :catchall_29
    move-exception p0

    goto :goto_41

    :catchall_2b
    move-exception p0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_32

    :catchall_30
    move-exception p0

    move-object v1, v0

    :goto_32
    :try_start_32
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_42

    if-eqz v0, :cond_40

    :try_start_3b
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    goto :goto_40

    :catchall_3f
    move-exception p0

    :cond_40
    :goto_40
    move-object v0, v1

    :goto_41
    return-object v0

    :catchall_42
    move-exception p0

    if-eqz v0, :cond_4a

    :try_start_45
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_49

    goto :goto_4a

    :catchall_49
    move-exception v0

    :cond_4a
    :goto_4a
    throw p0
.end method
