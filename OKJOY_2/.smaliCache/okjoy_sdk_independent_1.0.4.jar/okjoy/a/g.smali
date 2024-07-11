.class public Lokjoy/a/g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokjoy/a/g$b;
    }
.end annotation


# static fields
.field public static a:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

.field public static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Lokjoy/u/a;

.field public static d:Z

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;


# direct methods
.method public static a(Landroid/content/Context;F)I
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, -0x1

    goto :goto_12

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "drawable"

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    :goto_12
    return p0
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_8a

    invoke-interface {p1, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_86

    invoke-interface {p1, v1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    const-class p2, Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, ""

    const-string v1, "@"

    if-eqz p2, :cond_3e

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3c

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    goto :goto_8a

    :cond_3c
    move-object p4, p1

    goto :goto_8a

    :cond_3e
    const-class p2, Ljava/lang/Boolean;

    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4b

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p4

    goto :goto_8a

    :cond_4b
    const-class p2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_68

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    goto :goto_8a

    :cond_68
    const-class p2, Landroid/view/View;

    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8a

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    goto :goto_8a

    :cond_86
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    :cond_8a
    :goto_8a
    return-object p4
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_31

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_31

    :cond_9
    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_10

    return-object p2

    :cond_10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-nez p0, :cond_1d

    return-object p2

    :cond_1d
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez p0, :cond_22

    return-object p2

    :cond_22
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2c} :catch_2d

    return-object p0

    :catch_2d
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_31
    :goto_31
    return-object p2
.end method

.method public static a(Lcom/okjoy/okjoysdk/entity/request/OkJoyRequestMap;)Ljava/lang/String;
    .registers 8

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_9

    return-object v1

    :cond_9
    const/4 v0, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "="

    if-nez v0, :cond_33

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_42

    :cond_33
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "&"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    :goto_42
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_55
    return-object v1
.end method

.method public static a(Ljava/io/File;)Ljava/lang/String;
    .registers 5

    .line 24
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_3b
    .catchall {:try_start_1 .. :try_end_8} :catchall_28

    :try_start_8
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_c} :catch_25
    .catchall {:try_start_8 .. :try_end_c} :catchall_22

    :try_start_c
    invoke-static {p0}, Lokjoy/a/g;->a(Ljava/nio/channels/FileChannel;)Lokjoy/d/b;

    move-result-object v2

    .line 25
    iget-object v2, v2, Lokjoy/d/b;->a:Ljava/lang/Object;

    .line 26
    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lokjoy/a/g;->a(Ljava/nio/ByteBuffer;)Ljava/util/Map;

    move-result-object v2
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_18} :catch_20
    .catchall {:try_start_c .. :try_end_18} :catchall_1e

    :try_start_18
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_1c
    .catch Lokjoy/d/c; {:try_start_18 .. :try_end_1b} :catch_4f

    goto :goto_4b

    :catch_1c
    move-exception p0

    goto :goto_4b

    :catchall_1e
    move-exception v2

    goto :goto_2c

    :catch_20
    move-exception v2

    goto :goto_3e

    :catchall_22
    move-exception v2

    move-object p0, v0

    goto :goto_2c

    :catch_25
    move-exception p0

    move-object p0, v0

    goto :goto_3e

    :catchall_28
    move-exception p0

    move-object v2, p0

    move-object p0, v0

    move-object v1, p0

    :goto_2c
    if-eqz p0, :cond_33

    :try_start_2e
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_32
    .catch Lokjoy/d/c; {:try_start_2e .. :try_end_31} :catch_44

    goto :goto_33

    :catch_32
    move-exception p0

    :cond_33
    :goto_33
    if-eqz v1, :cond_3a

    :try_start_35
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39
    .catch Lokjoy/d/c; {:try_start_35 .. :try_end_38} :catch_44

    goto :goto_3a

    :catch_39
    move-exception p0

    :cond_3a
    :goto_3a
    :try_start_3a
    throw v2
    :try_end_3b
    .catch Lokjoy/d/c; {:try_start_3a .. :try_end_3b} :catch_44

    :catch_3b
    move-exception p0

    move-object p0, v0

    move-object v1, p0

    :goto_3e
    if-eqz p0, :cond_48

    :try_start_40
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_47
    .catch Lokjoy/d/c; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_48

    :catch_44
    move-exception p0

    move-object v2, v0

    goto :goto_52

    :catch_47
    move-exception p0

    :cond_48
    :goto_48
    move-object v2, v0

    if-eqz v1, :cond_52

    :goto_4b
    :try_start_4b
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_51
    .catch Lokjoy/d/c; {:try_start_4b .. :try_end_4e} :catch_4f

    goto :goto_52

    :catch_4f
    move-exception p0

    goto :goto_52

    :catch_51
    move-exception p0

    :cond_52
    :goto_52
    if-nez v2, :cond_55

    goto :goto_64

    .line 27
    :cond_55
    const p0, 0x71777777

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/ByteBuffer;

    if-nez p0, :cond_66

    :goto_64
    move-object p0, v0

    goto :goto_7c

    .line 28
    :cond_66
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    add-int/2addr v2, p0

    invoke-static {v1, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    :goto_7c
    if-nez p0, :cond_7f

    goto :goto_8c

    .line 29
    :cond_7f
    :try_start_7f
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_86
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7f .. :try_end_86} :catch_88

    move-object v0, v1

    goto :goto_8c

    :catch_88
    move-exception p0

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_8c
    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5

    .line 1
    const-string v0, ""

    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "utf-8"

    invoke-direct {v2, p0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_13
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1d

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    :cond_1d
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_25
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_25} :catch_2b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_25} :catch_26

    goto :goto_2f

    :catch_26
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2f

    :catch_2b
    move-exception p0

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_2f
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    return-object v1

    :cond_9
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    const-string v2, "AES"

    const-string v3, "066c8119dd7d04de"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    if-eqz p0, :cond_35

    .line 3
    array-length v6, p0

    if-gtz v6, :cond_1b

    goto :goto_35

    :cond_1b
    :try_start_1b
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v6, v3, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    invoke-virtual {v2, v0, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2f} :catch_30

    goto :goto_35

    :catch_30
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_36

    :cond_35
    :goto_35
    nop

    :goto_36
    if-eqz v5, :cond_46

    .line 4
    array-length p0, v5

    if-lez p0, :cond_46

    :try_start_3b
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v5, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_40
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3b .. :try_end_40} :catch_42

    move-object v1, p0

    goto :goto_47

    :catch_42
    move-exception p0

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_46
    nop

    :goto_47
    return-object v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gameId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "&userCode="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "OkIg4UT93Nm%absQ"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lokjoy/q/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/nio/ByteBuffer;)Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_185

    .line 14
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    add-int/lit8 v0, v0, -0x18

    const/16 v1, 0x8

    if-lt v0, v1, :cond_162

    .line 15
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-gt v0, v3, :cond_13f

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    const/4 v4, 0x0

    :try_start_25
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_39
    .catchall {:try_start_25 .. :try_end_39} :catchall_134

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 16
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    :goto_47
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_133

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v2, v1, :cond_11a

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    const-wide/16 v5, 0x4

    cmp-long v5, v2, v5

    const-string v6, " size out of range: "

    const-string v7, "APK Signing Block entry #"

    if-ltz v5, :cond_fb

    const-wide/32 v8, 0x7fffffff

    cmp-long v5, v2, v8

    if-gtz v5, :cond_fb

    long-to-int v2, v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-gt v2, v5, :cond_ce

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    add-int/lit8 v2, v2, -0x4

    if-ltz v2, :cond_b5

    .line 17
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v2, v7

    if-lt v2, v7, :cond_af

    if-gt v2, v6, :cond_af

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :try_start_92
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_a0
    .catchall {:try_start_92 .. :try_end_a0} :catchall_aa

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 18
    invoke-virtual {p0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_47

    :catchall_aa
    move-exception p0

    .line 19
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw p0

    :cond_af
    new-instance p0, Ljava/nio/BufferUnderflowException;

    invoke-direct {p0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw p0

    :cond_b5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :cond_ce
    new-instance p0, Lokjoy/d/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lokjoy/d/c;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_fb
    new-instance p0, Lokjoy/d/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lokjoy/d/c;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11a
    new-instance p0, Lokjoy/d/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Insufficient data to read size of APK Signing Block entry #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lokjoy/d/c;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_133
    return-object p0

    :catchall_134
    move-exception v0

    .line 21
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v0

    :cond_13f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "end > capacity: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_162
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "end < start: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " < "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 22
    :cond_185
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ByteBuffer byte order must be little endian"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/nio/channels/FileChannel;)Lokjoy/d/b;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/FileChannel;",
            ")",
            "Lokjoy/d/b<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x16

    cmp-long v4, v0, v2

    if-ltz v4, :cond_166

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    const/4 v4, 0x0

    move v5, v4

    :goto_14
    int-to-long v6, v5

    cmp-long v8, v6, v2

    if-gtz v8, :cond_15e

    sub-long v6, v0, v6

    const/4 v8, 0x4

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {p0, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p0, v9}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v9, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v9

    const v10, 0x6054b50

    if-ne v9, v10, :cond_15a

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    const-wide/16 v10, 0x14

    add-long/2addr v6, v10

    invoke-virtual {p0, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p0, v9}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v9, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v9, v4}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    if-ne v6, v5, :cond_15a

    int-to-long v0, v6

    .line 8
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    sub-long/2addr v5, v0

    const-wide/16 v0, 0x6

    sub-long/2addr v5, v0

    invoke-virtual {p0, v5, v6}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p0, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x20

    cmp-long v2, v0, v2

    if-ltz v2, :cond_141

    const-wide/16 v2, 0x18

    sub-long v2, v0, v2

    .line 9
    invoke-virtual {p0, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v5

    const-wide v7, 0x20676953204b5041L

    cmp-long v3, v5, v7

    if-nez v3, :cond_139

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v5

    const-wide v7, 0x3234206b636f6c42L    # 7.465385175170059E-67

    cmp-long v3, v5, v7

    if-nez v3, :cond_139

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v5, v2

    if-ltz v2, :cond_120

    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v5, v2

    if-gtz v2, :cond_120

    const-wide/16 v2, 0x8

    add-long/2addr v2, v5

    long-to-int v2, v2

    int-to-long v7, v2

    sub-long/2addr v0, v7

    const-wide/16 v7, 0x0

    cmp-long v3, v0, v7

    if-ltz v3, :cond_107

    invoke-virtual {p0, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    sget-object p0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v3

    cmp-long p0, v3, v5

    if-nez p0, :cond_e4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 10
    new-instance v0, Lokjoy/d/b;

    invoke-direct {v0, v2, p0}, Lokjoy/d/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 11
    :cond_e4
    new-instance p0, Lokjoy/d/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "APK Signing Block sizes in header and footer do not match: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " vs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lokjoy/d/c;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_107
    new-instance p0, Lokjoy/d/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APK Signing Block offset out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lokjoy/d/c;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_120
    new-instance p0, Lokjoy/d/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "APK Signing Block size out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lokjoy/d/c;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_139
    new-instance p0, Lokjoy/d/c;

    const-string v0, "No APK Signing Block before ZIP Central Directory"

    invoke-direct {p0, v0}, Lokjoy/d/c;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_141
    new-instance p0, Lokjoy/d/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APK too small for APK Signing Block. ZIP Central Directory offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lokjoy/d/c;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_14

    .line 12
    :cond_15e
    new-instance p0, Ljava/io/IOException;

    const-string v0, "ZIP End of Central Directory (EOCD) record not found"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_166
    new-instance p0, Ljava/io/IOException;

    const-string v0, "APK too small for ZIP End of Central Directory (EOCD) record"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/app/Activity;Lcom/okjoy/okjoysdk/user/OkJoyUserModel;ZZLjava/lang/String;Lokjoy/a/g$b;)V
    .registers 12

    .line 2
    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->isReal()Z

    move-result v0

    if-eqz v0, :cond_17

    if-eqz p3, :cond_e

    if-eqz p5, :cond_46

    invoke-interface {p5, p4}, Lokjoy/a/g$b;->onLogout(Ljava/lang/String;)V

    goto :goto_46

    :cond_e
    invoke-static {p0, p5}, Lokjoy/a/g;->a(Landroid/app/Activity;Lokjoy/a/g$b;)V

    if-eqz p5, :cond_46

    invoke-interface {p5, p1}, Lokjoy/a/g$b;->onContinueLogin(Lcom/okjoy/okjoysdk/user/OkJoyUserModel;)V

    goto :goto_46

    :cond_17
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/okjoy/okjoysdk/usercenter/activity/OkJoyRealNameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "isMust"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 p2, 0x1

    const-string v2, "isLogin"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    new-instance p2, Lokjoy/a/h;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p5

    move v3, p3

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lokjoy/a/h;-><init>(Landroid/app/Activity;Lokjoy/a/g$b;ZLjava/lang/String;Lcom/okjoy/okjoysdk/user/OkJoyUserModel;)V

    invoke-static {p2}, Lokjoy/g/v;->a(Lokjoy/g/v$a;)V

    :cond_46
    :goto_46
    return-void
.end method

.method public static a(Landroid/app/Activity;Lokjoy/a/g$b;)V
    .registers 10

    sget-object v0, Lokjoy/a/g;->a:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    if-nez v0, :cond_a

    .line 32
    sget-object p0, Lokjoy/a/j$b;->a:Lokjoy/a/j;

    .line 33
    invoke-virtual {p0}, Lokjoy/a/j;->a()V

    return-void

    .line 34
    :cond_a
    sget-object v7, Lokjoy/a/j$b;->a:Lokjoy/a/j;

    .line 35
    new-instance v6, Lokjoy/a/g$a;

    invoke-direct {v6, p0, p1}, Lokjoy/a/g$a;-><init>(Landroid/app/Activity;Lokjoy/a/g$b;)V

    .line 36
    iget-object p0, v7, Lokjoy/a/j;->a:Landroid/os/CountDownTimer;

    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 p0, 0x0

    iput-object p0, v7, Lokjoy/a/j;->a:Landroid/os/CountDownTimer;

    :cond_1b
    new-instance p0, Lokjoy/a/i;

    const p1, 0xea60

    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    move-object v0, p0

    move-object v1, v7

    invoke-direct/range {v0 .. v6}, Lokjoy/a/i;-><init>(Lokjoy/a/j;JJLokjoy/a/j$a;)V

    iput-object p0, v7, Lokjoy/a/j;->a:Landroid/os/CountDownTimer;

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public static a(Landroid/app/Activity;Lokjoy/a/l;)V
    .registers 6

    sget-boolean v0, Lokjoy/e/b;->e:Z

    if-nez v0, :cond_8

    invoke-interface {p1}, Lokjoy/a/l;->onContinuePay()V

    goto :goto_50

    :cond_8
    invoke-static {p0}, Lcom/okjoy/okjoysdk/user/OkJoyCurrentUserManager;->getUser(Landroid/content/Context;)Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->isReal()Z

    move-result v1

    if-nez v1, :cond_16

    invoke-interface {p1}, Lokjoy/a/l;->onContinuePay()V

    return-void

    :cond_16
    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->getAge()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x12

    if-le v0, v1, :cond_26

    invoke-interface {p1}, Lokjoy/a/l;->onContinuePay()V

    return-void

    :cond_26
    const/16 v2, 0x8

    if-ge v0, v2, :cond_2d

    const-string v1, "\u6839\u636e\u56fd\u5bb6\u65b0\u95fb\u51fa\u7248\u7f72\u300a\u5173\u4e8e\u9632\u6b62\u6c89\u8ff7\u7f51\u7edc\u6e38\u620f\u7684\u901a\u77e5\u300b\uff0c\u672c\u6e38\u620f\u4e0d\u4e3a\u672a\u6ee18\u5468\u5c81\u7684\u7528\u6237\u63d0\u4f9b\u6e38\u620f\u5145\u503c\u670d\u52a1\u3002"

    goto :goto_3f

    :cond_2d
    const/16 v3, 0x10

    if-lt v0, v2, :cond_36

    if-ge v0, v3, :cond_36

    const-string v1, "\u6839\u636e\u56fd\u5bb6\u65b0\u95fb\u51fa\u7248\u7f72\u300a\u5173\u4e8e\u9632\u6b62\u6c89\u8ff7\u7f51\u7edc\u6e38\u620f\u7684\u901a\u77e5\u300b\uff0c\u6e38\u620f\u4e2d8\u5468\u5c81\u4ee5\u4e0a\u672a\u6ee116\u5468\u5c81\u7684\u7528\u6237\uff0c\u5355\u6b21\u5145\u503c\u91d1\u989d\u4e0d\u5f97\u8d85\u8fc750\u5143\u4eba\u6c11\u5e01\uff0c\u6bcf\u6708\u5145\u503c\u91d1\u989d\u7d2f\u8ba1\u4e0d\u5f97\u8d85\u8fc7200\u5143\u4eba\u6c11\u5e01\u3002"

    goto :goto_3f

    :cond_36
    if-lt v0, v3, :cond_3d

    if-ge v0, v1, :cond_3d

    const-string v1, "\u6839\u636e\u56fd\u5bb6\u65b0\u95fb\u51fa\u7248\u7f72\u300a\u5173\u4e8e\u9632\u6b62\u6c89\u8ff7\u7f51\u7edc\u6e38\u620f\u7684\u901a\u77e5\u300b\uff0c\u6e38\u620f\u4e2d16\u5468\u5c81\u4ee5\u4e0a\u672a\u6ee118\u5468\u5c81\u7684\u7528\u6237\uff0c\u5355\u6b21\u5145\u503c\u91d1\u989d\u4e0d\u5f97\u8d85\u8fc7100\u5143\u4eba\u6c11\u5e01\uff0c\u6bcf\u6708\u5145\u503c\u91d1\u989d\u7d2f\u8ba1\u4e0d\u5f97\u8d85\u8fc7400\u5143\u4eba\u6c11\u5e01\u3002"

    goto :goto_3f

    :cond_3d
    const-string v1, ""

    :goto_3f
    new-instance v2, Lokjoy/t/a;

    invoke-direct {v2, p0}, Lokjoy/t/a;-><init>(Landroid/content/Context;)V

    .line 59
    iput-object v1, v2, Lokjoy/t/a;->g:Ljava/lang/String;

    .line 60
    invoke-virtual {v2}, Lokjoy/t/a;->show()V

    new-instance p0, Lokjoy/a/k;

    invoke-direct {p0, v0, p1, v1}, Lokjoy/a/k;-><init>(ILokjoy/a/l;Ljava/lang/String;)V

    .line 61
    iput-object p0, v2, Lokjoy/t/a;->f:Lokjoy/t/a$c;

    :goto_50
    return-void
.end method

.method public static a(Landroid/app/Activity;[Ljava/lang/String;Lokjoy/q/i;)V
    .registers 10

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 38
    new-instance v1, Lokjoy/q/g;

    invoke-direct {v1, p2, p0, p1}, Lokjoy/q/g;-><init>(Lokjoy/q/i;Landroid/app/Activity;[Ljava/lang/String;)V

    .line 39
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/16 p2, 0x1000

    const/4 v2, 0x0

    if-eqz p1, :cond_30

    .line 40
    :try_start_1b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_2d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b .. :try_end_2d} :catch_2e

    goto :goto_30

    :catch_2e
    move-exception p1

    move-object v0, v2

    :cond_30
    :goto_30
    if-eqz v0, :cond_154

    .line 41
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_154

    if-eqz p0, :cond_14c

    .line 42
    const-string p1, "android.permission.REQUEST_INSTALL_PACKAGES"

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_66

    const-string p1, "android.permission.ANSWER_PHONE_CALLS"

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_66

    const-string p1, "android.permission.READ_PHONE_NUMBERS"

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_53

    goto :goto_66

    :cond_53
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x17

    if-lt p1, v3, :cond_5e

    goto :goto_70

    :cond_5e
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "The targetSdkVersion SDK must be 23 or more"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_66
    :goto_66
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1a

    if-lt p1, v3, :cond_144

    .line 43
    :goto_70
    invoke-static {}, Lokjoy/s/f;->a()Z

    move-result p1

    if-nez p1, :cond_78

    move-object v3, v2

    goto :goto_9b

    :cond_78
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v3, v2

    :cond_7d
    :goto_7d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_7d

    if-nez v3, :cond_97

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_97
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7d

    :cond_9b
    :goto_9b
    if-eqz v3, :cond_13f

    .line 44
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a5

    goto/16 :goto_13f

    .line 45
    :cond_a5
    :try_start_a5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1
    :try_end_b7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a5 .. :try_end_b7} :catch_b8

    goto :goto_ba

    :catch_b8
    move-exception p1

    move-object p1, v2

    :goto_ba
    if-eqz p1, :cond_139

    .line 46
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_139

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_c6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_df

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d9

    goto :goto_c6

    :cond_d9
    new-instance p0, Lokjoy/s/a;

    invoke-direct {p0, v2}, Lokjoy/s/a;-><init>(Ljava/lang/String;)V

    throw p0

    .line 47
    :cond_df
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p2, 0x0

    .line 48
    new-instance v0, Lokjoy/s/d;

    invoke-direct {v0}, Lokjoy/s/d;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    :cond_ef
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v4, 0xff

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    sget-object v4, Lokjoy/s/d;->b:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_ef

    const-string v4, "request_code"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "permission_group"

    invoke-virtual {v3, v2, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p1, "request_constant"

    invoke-virtual {v3, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v3}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 49
    sget-object p1, Lokjoy/s/d;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_143

    .line 50
    :cond_139
    new-instance p0, Lokjoy/s/a;

    invoke-direct {p0, v2}, Lokjoy/s/a;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13f
    :goto_13f
    const/4 p0, 0x1

    .line 51
    invoke-virtual {v1, v0, p0}, Lokjoy/q/g;->b(Ljava/util/List;Z)V

    :goto_143
    return-void

    .line 52
    :cond_144
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "The targetSdkVersion SDK must be 26 or more"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 53
    :cond_14c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The activity is empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_154
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The requested permission cannot be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 6

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const-string v2, "activity"

    .line 5
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1e

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e
    if-eqz v1, :cond_42

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :cond_24
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    iget v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_42
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_51

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_51

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_51
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_55
    :goto_55
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_55

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_55

    :cond_6b
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/System;->exit(I)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6f} :catch_70

    goto :goto_74

    :catch_70
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_74
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 7

    invoke-static {p0}, Lokjoy/f/b;->a(Landroid/content/Context;)Lokjoy/f/b;

    move-result-object p0

    .line 62
    iget-object p0, p0, Lokjoy/f/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 63
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_9
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_2a
    .catchall {:try_start_9 .. :try_end_e} :catchall_28

    const-string v1, "duration"

    :try_start_10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_17} :catch_2a
    .catchall {:try_start_10 .. :try_end_17} :catchall_28

    const-string p2, "sdkOrderId = ?"

    const-string v1, "order_verify_record"

    const/4 v2, 0x1

    :try_start_1c
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v0, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_27} :catch_2a
    .catchall {:try_start_1c .. :try_end_27} :catchall_28

    goto :goto_2e

    :catchall_28
    move-exception p1

    goto :goto_32

    :catch_2a
    move-exception p1

    :try_start_2b
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_28

    :goto_2e
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :goto_32
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lokjoy/h/c;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lokjoy/h/c<",
            "Lcom/okjoy/okjoysdk/entity/response/OkJoyBaseResponseModel;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lokjoy/h/i;

    invoke-direct {v0, p0, p1, p2}, Lokjoy/h/i;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->getRequestParams()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lokjoy/h/j;

    invoke-direct {p1, p3}, Lokjoy/h/j;-><init>(Lokjoy/h/c;)V

    const-string p2, "https://sdk.ok-joy.com/common/?ct=sms&ac=send"

    invoke-static {p2, p0, p1}, Lokjoy/a/g;->a(Ljava/lang/String;Ljava/lang/String;Lokjoy/h/b;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lokjoy/a/n;)V
    .registers 4

    sget-object v0, Lokjoy/e/b;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    if-eqz p2, :cond_2a

    sget-object p0, Lokjoy/e/b;->f:Ljava/lang/String;

    check-cast p2, Lokjoy/a/f;

    invoke-virtual {p2, p0}, Lokjoy/a/f;->a(Ljava/lang/String;)V

    goto :goto_2a

    :cond_12
    new-instance v0, Lokjoy/a/m;

    invoke-direct {v0, p2}, Lokjoy/a/m;-><init>(Lokjoy/a/n;)V

    .line 23
    new-instance p2, Lokjoy/h/y0;

    invoke-direct {p2, p0, p1}, Lokjoy/h/y0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->getRequestParams()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lokjoy/h/z0;

    invoke-direct {p1, v0}, Lokjoy/h/z0;-><init>(Lokjoy/h/c;)V

    const-string p2, "https://sdk.ok-joy.com/common/?ct=user&ac=onlineVerify"

    invoke-static {p2, p0, p1}, Lokjoy/a/g;->a(Ljava/lang/String;Ljava/lang/String;Lokjoy/h/b;)V

    :cond_2a
    :goto_2a
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lokjoy/l/c;)V
    .registers 12

    invoke-static {}, Lcom/qiyukf/unicorn/api/Unicorn;->isInit()Z

    move-result v0

    if-nez v0, :cond_c

    const-string p0, "\u5ba2\u670d\u672a\u521d\u59cb\u5316"

    invoke-interface {p2, p0}, Lokjoy/l/c;->a(Ljava/lang/String;)V

    return-void

    :cond_c
    new-instance v0, Lcom/qiyukf/unicorn/api/YSFUserInfo;

    invoke-direct {v0}, Lcom/qiyukf/unicorn/api/YSFUserInfo;-><init>()V

    invoke-static {p0}, Lcom/okjoy/okjoysdk/user/OkJoyCurrentUserManager;->getUser(Landroid/content/Context;)Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_78

    const-string v3, "uid"

    iput-object v3, v0, Lcom/qiyukf/unicorn/api/YSFUserInfo;->userId:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->getRealName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->getPhone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->getUserName()Ljava/lang/String;

    move-result-object v1

    .line 30
    const/4 v5, 0x0

    :try_start_2a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_42} :catch_43

    goto :goto_48

    :catch_43
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v6, 0x0

    .line 31
    :goto_48
    new-instance v7, Ljava/util/Formatter;

    invoke-direct {v7}, Ljava/util/Formatter;-><init>()V

    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v5

    const/4 v3, 0x1

    aput-object v4, v8, v3

    const/4 v3, 0x2

    aput-object v1, v8, v3

    const/4 v1, 0x3

    aput-object v6, v8, v1

    const/4 v1, 0x4

    aput-object v2, v8, v1

    const/4 v1, 0x5

    aput-object v2, v8, v1

    const/4 v1, 0x6

    aput-object p1, v8, v1

    const-string p1, "[{\'key\':\'real_name\', \'value\':\'%s\', \'hidden\':true},{\'key\':\'mobile_phone\', \'value\':\'%s\', \'hidden\':true},{\'key\':\'email\', \'value\':\'\', \'hidden\':true},{\'key\':\'avatar\', \'value\': \'\', \'hidden\':true},{\'index\':0, \'key\':\'account\', \'label\':\'\u8d26\u53f7\', \'value\':\'%s\'},{\'index\':1, \'key\':\'gamename\', \'label\':\'\u6e38\u620f\u540d\', \'value\':\'%s\'},{\'index\':2, \'key\':\'serverid\', \'label\':\'\u670d\u52a1\u5668ID\', \'value\':\'%s\'},{\'index\':3, \'key\':\'rolename\', \'label\':\'\u89d2\u8272\u540d\', \'value\':\'%s\'},{\'index\':4, \'key\':\'totalpay\', \'label\':\'\u5145\u503c\u603b\u989d\', \'value\':\'%s\'}]"

    invoke-virtual {v7, p1, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-virtual {v7}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/qiyukf/unicorn/api/YSFUserInfo;->data:Ljava/lang/String;

    new-instance p1, Lokjoy/l/b;

    invoke-direct {p1, p0, p2}, Lokjoy/l/b;-><init>(Landroid/content/Context;Lokjoy/l/c;)V

    invoke-static {v0, p1}, Lcom/qiyukf/unicorn/api/Unicorn;->setUserInfo(Lcom/qiyukf/unicorn/api/YSFUserInfo;Lcom/qiyukf/nimlib/sdk/RequestCallback;)Z

    goto :goto_85

    :cond_78
    new-instance p1, Lcom/qiyukf/unicorn/api/ConsultSource;

    invoke-direct {p1, v2, v2, v2}, Lcom/qiyukf/unicorn/api/ConsultSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u5ba2\u670d"

    invoke-static {p0, v0, p1}, Lcom/qiyukf/unicorn/api/Unicorn;->openServiceActivity(Landroid/content/Context;Ljava/lang/String;Lcom/qiyukf/unicorn/api/ConsultSource;)V

    invoke-interface {p2}, Lokjoy/l/c;->a()V

    :goto_85
    return-void
.end method

.method public static a(Landroid/content/Context;Lokjoy/k/a;)V
    .registers 4

    sget-object v0, Lokjoy/a/g;->c:Lokjoy/u/a;

    if-nez v0, :cond_12

    new-instance v0, Lokjoy/u/a;

    invoke-direct {v0, p0}, Lokjoy/u/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lokjoy/a/g;->c:Lokjoy/u/a;

    .line 54
    const-string v1, "\u67e5\u8be2\u4e2d..."

    iput-object v1, v0, Lokjoy/u/a;->d:Ljava/lang/String;

    .line 55
    invoke-virtual {v0}, Lokjoy/u/a;->show()V

    .line 56
    :cond_12
    iget-object v0, p1, Lokjoy/k/a;->b:Ljava/lang/String;

    .line 57
    new-instance v1, Lokjoy/i/b;

    invoke-direct {v1, p0, p1}, Lokjoy/i/b;-><init>(Landroid/content/Context;Lokjoy/k/a;)V

    .line 58
    new-instance p1, Lokjoy/h/p0;

    invoke-direct {p1, p0, v0}, Lokjoy/h/p0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->getRequestParams()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lokjoy/h/q0;

    invoke-direct {p1, v1}, Lokjoy/h/q0;-><init>(Lokjoy/h/c;)V

    const-string v0, "https://sdk.ok-joy.com/common/?ct=pay&ac=status"

    invoke-static {v0, p0, p1}, Lokjoy/a/g;->a(Ljava/lang/String;Ljava/lang/String;Lokjoy/h/b;)V

    return-void
.end method

.method public static a(Landroid/widget/EditText;)V
    .registers 5

    new-instance v0, Lokjoy/q/a;

    invoke-direct {v0}, Lokjoy/q/a;-><init>()V

    new-instance v1, Lokjoy/q/b;

    invoke-direct {v1}, Lokjoy/q/b;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {p0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lokjoy/h/b;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bf7\u6c42\u63a5\u53e3\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bf7\u6c42\u53c2\u6570\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lokjoy/h/a;

    invoke-direct {v2, p0, p1, v0, p2}, Lokjoy/h/a;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lokjoy/h/b;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_3f

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3f

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_3f

    :cond_10
    const/4 v1, 0x0

    :try_start_11
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    const-string p0, "utf-8"

    invoke-virtual {p2, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_21} :catch_25
    .catchall {:try_start_11 .. :try_end_21} :catchall_23

    const/4 v0, 0x1

    goto :goto_2b

    :catchall_23
    move-exception p0

    goto :goto_34

    :catch_25
    move-exception p0

    :try_start_26
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_23

    if-eqz v1, :cond_33

    :goto_2b
    :try_start_2b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_33

    :catch_2f
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_33
    :goto_33
    return v0

    :goto_34
    if-eqz v1, :cond_3e

    :try_start_36
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_3e

    :catch_3a
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_3e
    :goto_3e
    throw p0

    :cond_3f
    :goto_3f
    return v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, -0x1

    goto :goto_12

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "id"

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    :goto_12
    return p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    invoke-static {}, Lokjoy/e/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lokjoy/e/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0}, Lokjoy/a/g;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-static {p0, v1}, Lokjoy/a/g;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    invoke-static {p0, v0, v2}, Lokjoy/a/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_23

    :cond_20
    invoke-static {p0, v1, v2}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_23
    :goto_23
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    .line 3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_45

    goto :goto_5c

    :cond_45
    invoke-static {}, Lokjoy/e/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lokjoy/e/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lokjoy/a/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, v3}, Lokjoy/a/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {p0, v1, v3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_5c

    .line 4
    :cond_58
    invoke-static {v2}, Lokjoy/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_5c
    :goto_5c
    return-object v2
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "utf-8"

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string p0, ""

    return-object p0

    :cond_b
    const-string v1, "AES"

    const-string v2, "066c8119dd7d04de"

    .line 1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_41

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_41

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_23

    goto :goto_41

    :cond_23
    :try_start_23
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v2, v0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_3c} :catch_3d

    goto :goto_42

    :catch_3d
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_41
    :goto_41
    move-object p0, v4

    :goto_42
    if-eqz p0, :cond_4c

    .line 2
    array-length v0, p0

    if-lez v0, :cond_4c

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    :cond_4c
    return-object v4
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_7f

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7f

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto/16 :goto_7f

    :cond_11
    const/4 v1, 0x0

    .line 5
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v2}, Lokjoy/a/g;->h(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7a

    .line 6
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object p0

    const-string v2, "mounted"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_77

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_3c

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_3c
    :try_start_3c
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_41} :catch_5a
    .catchall {:try_start_3c .. :try_end_41} :catchall_58

    :try_start_41
    const-string p1, "utf-8"

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_4d} :catch_55
    .catchall {:try_start_41 .. :try_end_4d} :catchall_52

    const/4 v0, 0x1

    :try_start_4e
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_65

    goto :goto_7f

    :catchall_52
    move-exception p1

    move-object v1, p0

    goto :goto_6b

    :catch_55
    move-exception p1

    move-object v1, p0

    goto :goto_5c

    :catchall_58
    move-exception p0

    goto :goto_6c

    :catch_5a
    move-exception p0

    move-object p1, p0

    :goto_5c
    :try_start_5c
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_6a

    if-eqz v1, :cond_7f

    :try_start_61
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    goto :goto_7f

    :catch_65
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7f

    :catchall_6a
    move-exception p1

    :goto_6b
    move-object p0, p1

    :goto_6c
    if-eqz v1, :cond_76

    :try_start_6e
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_72

    goto :goto_76

    :catch_72
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_76
    :goto_76
    throw p0

    :cond_77
    const-string p0, "SD \u5b58\u50a8\u4e0d\u53ef\u7528"

    goto :goto_7c

    :cond_7a
    const-string p0, "\u672a\u5f00\u542f SD \u5b58\u50a8\u5199\u6743\u9650"

    :goto_7c
    invoke-static {p0}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    :cond_7f
    :goto_7f
    return v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, -0x1

    goto :goto_12

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "layout"

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    :goto_12
    return p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_3d

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524d\u8054\u7f51\u7c7b\u578b\uff1atype = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uff0cname = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    goto :goto_3f

    :cond_3d
    const-string v0, "unavailable"

    :goto_3f
    return-object v0
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lokjoy/a/g;->e:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_9
    const-string v0, "ro.miui.ui.version.name"

    invoke-static {v0}, Lokjoy/a/g;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokjoy/a/g;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "MIUI"

    :goto_19
    sput-object v0, Lokjoy/a/g;->e:Ljava/lang/String;

    goto :goto_7e

    :cond_1c
    const-string v0, "ro.build.version.emui"

    invoke-static {v0}, Lokjoy/a/g;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokjoy/a/g;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "EMUI"

    goto :goto_19

    :cond_2d
    const-string v0, "ro.build.version.opporom"

    invoke-static {v0}, Lokjoy/a/g;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokjoy/a/g;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-string v0, "OPPO"

    goto :goto_19

    :cond_3e
    const-string v0, "ro.vivo.os.version"

    invoke-static {v0}, Lokjoy/a/g;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokjoy/a/g;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4f

    const-string v0, "VIVO"

    goto :goto_19

    :cond_4f
    const-string v0, "ro.smartisan.version"

    invoke-static {v0}, Lokjoy/a/g;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokjoy/a/g;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_60

    const-string v0, "SMARTISAN"

    goto :goto_19

    :cond_60
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    sput-object v0, Lokjoy/a/g;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FLYME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_73

    sput-object v1, Lokjoy/a/g;->e:Ljava/lang/String;

    goto :goto_7e

    :cond_73
    const-string v0, "unknown"

    sput-object v0, Lokjoy/a/g;->f:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :goto_7e
    sget-object v0, Lokjoy/a/g;->e:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lokjoy/d/a;->a(Landroid/content/Context;)Lokjoy/d/a;

    move-result-object v0

    .line 1
    const-string v1, "okPlatform"

    invoke-virtual {v0, v1}, Lokjoy/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-static {p0}, Lokjoy/d/a;->a(Landroid/content/Context;)Lokjoy/d/a;

    move-result-object p0

    .line 3
    invoke-virtual {p0, v1}, Lokjoy/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_19
    nop

    .line 4
    const-string v0, "OKJOY_PLATFORM"

    invoke-static {p0, v0}, Lokjoy/a/g;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, ""

    const/4 v1, 0x0

    if-eqz p0, :cond_37

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_37

    :cond_c
    :try_start_c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-nez v2, :cond_13

    return-object v1

    :cond_13
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v3, 0x80

    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-nez p0, :cond_20

    return-object v1

    :cond_20
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez p0, :cond_25

    return-object v1

    :cond_25
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2c

    return-object v0

    :cond_2c
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_31} :catch_32

    goto :goto_36

    :catch_32
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_36
    return-object v0

    :cond_37
    :goto_37
    return-object v1
.end method

.method public static d(Ljava/lang/String;)V
    .registers 2

    sget-boolean v0, Lokjoy/a/g;->d:Z

    if-eqz v0, :cond_b

    if-eqz p0, :cond_b

    const-string v0, "okjoy_sdk_log"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "OK_JOY_SHARE_PREFERENCES_FILE_OAID"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "OK_JOY_SHARE_PREFERENCES_KEY_OAID"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, ""

    if-eqz p0, :cond_51

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_51

    :cond_b
    const/4 v1, 0x0

    :try_start_c
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    const/16 p0, 0x200

    new-array p0, p0, [B

    :goto_14
    invoke-virtual {v1, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result p1

    const/4 v2, -0x1

    if-le p1, v2, :cond_3d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "utf-8"

    invoke-direct {v3, p0, v4, p1, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_34} :catch_37
    .catchall {:try_start_c .. :try_end_34} :catchall_35

    goto :goto_14

    :catchall_35
    move-exception p0

    goto :goto_46

    :catch_37
    move-exception p0

    :try_start_38
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_35

    if-eqz v1, :cond_45

    :cond_3d
    :try_start_3d
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_45

    :catch_41
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_45
    :goto_45
    return-object v0

    :goto_46
    if-eqz v1, :cond_50

    :try_start_48
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    goto :goto_50

    :catch_4c
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_50
    :goto_50
    throw p0

    :cond_51
    :goto_51
    return-object v0
.end method

.method public static e(Ljava/lang/String;)V
    .registers 2

    sget-boolean v0, Lokjoy/a/g;->d:Z

    if-eqz v0, :cond_b

    if-eqz p0, :cond_b

    const-string v0, "okjoy_sdk_log"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lokjoy/d/a;->a(Landroid/content/Context;)Lokjoy/d/a;

    move-result-object v0

    .line 1
    const-string v1, "adid"

    invoke-virtual {v0, v1}, Lokjoy/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-static {p0}, Lokjoy/d/a;->a(Landroid/content/Context;)Lokjoy/d/a;

    move-result-object p0

    .line 3
    invoke-virtual {p0, v1}, Lokjoy/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_19
    nop

    .line 4
    const-string v0, "OKJOY_ADID"

    invoke-static {p0, v0}, Lokjoy/a/g;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, ""

    if-eqz p0, :cond_89

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto/16 :goto_89

    :cond_c
    const/4 v1, 0x0

    .line 5
    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v2}, Lokjoy/a/g;->h(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_89

    .line 6
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object p0

    const-string v2, "mounted"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_89

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_89

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_89

    :try_start_36
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3b} :catch_6c
    .catchall {:try_start_36 .. :try_end_3b} :catchall_6a

    const/16 p1, 0x200

    :try_start_3d
    new-array p1, p1, [B

    :goto_3f
    invoke-virtual {p0, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_60

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "utf-8"

    invoke-direct {v3, p1, v4, v1, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_5f} :catch_67
    .catchall {:try_start_3d .. :try_end_5f} :catchall_64

    goto :goto_3f

    :cond_60
    :try_start_60
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_77

    goto :goto_89

    :catchall_64
    move-exception p1

    move-object v1, p0

    goto :goto_7d

    :catch_67
    move-exception p1

    move-object v1, p0

    goto :goto_6e

    :catchall_6a
    move-exception p0

    goto :goto_7e

    :catch_6c
    move-exception p0

    move-object p1, p0

    :goto_6e
    :try_start_6e
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_7c

    if-eqz v1, :cond_89

    :try_start_73
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_77

    goto :goto_89

    :catch_77
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_89

    :catchall_7c
    move-exception p1

    :goto_7d
    move-object p0, p1

    :goto_7e
    if-eqz v1, :cond_88

    :try_start_80
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_84

    goto :goto_88

    :catch_84
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_88
    :goto_88
    throw p0

    :cond_89
    :goto_89
    return-object v0
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getprop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x400

    invoke-direct {v2, v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2c} :catch_40
    .catchall {:try_start_1 .. :try_end_2c} :catchall_3e

    :try_start_2c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_33} :catch_3c
    .catchall {:try_start_2c .. :try_end_33} :catchall_65

    :try_start_33
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_3b

    :catch_37
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_3b
    return-object v1

    :catch_3c
    move-exception v1

    goto :goto_42

    :catchall_3e
    move-exception p0

    goto :goto_67

    :catch_40
    move-exception v1

    move-object v2, v0

    :goto_42
    const-string v3, "Rom"

    :try_start_44
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to read prop "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5a
    .catchall {:try_start_44 .. :try_end_5a} :catchall_65

    if-eqz v2, :cond_64

    :try_start_5c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_64

    :catch_60
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_64
    :goto_64
    return-object v0

    :catchall_65
    move-exception p0

    move-object v0, v2

    :goto_67
    if-eqz v0, :cond_71

    :try_start_69
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6d

    goto :goto_71

    :catch_6d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_71
    :goto_71
    throw p0
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, -0x1

    goto :goto_12

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "style"

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    :goto_12
    return p0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lokjoy/d/a;->a(Landroid/content/Context;)Lokjoy/d/a;

    move-result-object v0

    .line 1
    const-string v1, "gameId"

    invoke-virtual {v0, v1}, Lokjoy/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-static {p0}, Lokjoy/d/a;->a(Landroid/content/Context;)Lokjoy/d/a;

    move-result-object p0

    .line 3
    invoke-virtual {p0, v1}, Lokjoy/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_19
    nop

    .line 4
    const-string v0, "OKJOY_GAMEID"

    invoke-static {p0, v0}, Lokjoy/a/g;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h(Landroid/content/Context;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0x1d

    if-lt p0, v0, :cond_10

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method
