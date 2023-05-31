.class public Lcom/sigmob/sdk/base/common/utils/m;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
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

    sput-object v0, Lcom/sigmob/sdk/base/common/utils/m;->a:Ljava/util/HashMap;

    sget-object v0, Lcom/sigmob/sdk/base/common/utils/m;->a:Ljava/util/HashMap;

    const-string v1, "FFD8"

    const-string v2, "jpg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sigmob/sdk/base/common/utils/m;->a:Ljava/util/HashMap;

    const-string v1, "8950"

    const-string v2, "png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sigmob/sdk/base/common/utils/m;->a:Ljava/util/HashMap;

    const-string v1, "4749"

    const-string v2, "gif"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sigmob/sdk/base/common/utils/m;->a:Ljava/util/HashMap;

    const-string v1, "4949"

    const-string v2, "tif"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sigmob/sdk/base/common/utils/m;->a:Ljava/util/HashMap;

    const-string v1, "424D"

    const-string v2, "bmp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sigmob/sdk/base/common/utils/m;->a:Ljava/util/HashMap;

    const-string v1, "5745"

    const-string v2, "webp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/sigmob/sdk/base/common/utils/m;->a:Ljava/util/HashMap;

    invoke-static {p0}, Lcom/sigmob/sdk/base/common/utils/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static a([B)Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_b

    array-length v0, p0

    if-gtz v0, :cond_d

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    move v0, v1

    :goto_e
    array-length v3, p0

    if-ge v0, v3, :cond_2d

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_27

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_2d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6} :catch_2e
    .catchall {:try_start_1 .. :try_end_6} :catchall_42

    const/4 v0, 0x2

    :try_start_7
    new-array v0, v0, [B

    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Ljava/io/FileInputStream;->read([BII)I

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/m;->a([B)Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_11} :catch_50
    .catchall {:try_start_7 .. :try_end_11} :catchall_4e

    move-result-object v1

    :try_start_12
    const-string v3, "5249"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    const-wide/16 v4, 0x6

    invoke-virtual {v2, v4, v5}, Ljava/io/FileInputStream;->skip(J)J

    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Ljava/io/FileInputStream;->read([BII)I

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/m;->a([B)Ljava/lang/String;
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_27} :catch_55
    .catchall {:try_start_12 .. :try_end_27} :catchall_4e

    move-result-object v0

    :goto_28
    if-eqz v2, :cond_2d

    :try_start_2a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2d} :catch_4a

    :cond_2d
    :goto_2d
    return-object v0

    :catch_2e
    move-exception v0

    move-object v2, v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_33
    :try_start_33
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_4e

    if-eqz v2, :cond_2d

    :try_start_3c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3f} :catch_40

    goto :goto_2d

    :catch_40
    move-exception v1

    goto :goto_2d

    :catchall_42
    move-exception v0

    move-object v2, v1

    :goto_44
    if-eqz v2, :cond_49

    :try_start_46
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_49} :catch_4c

    :cond_49
    :goto_49
    throw v0

    :catch_4a
    move-exception v1

    goto :goto_2d

    :catch_4c
    move-exception v1

    goto :goto_49

    :catchall_4e
    move-exception v0

    goto :goto_44

    :catch_50
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_33

    :catch_55
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_33

    :cond_5a
    move-object v0, v1

    goto :goto_28
.end method
