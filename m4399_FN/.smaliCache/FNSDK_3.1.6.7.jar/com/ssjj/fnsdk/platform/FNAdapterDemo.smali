.class public Lcom/ssjj/fnsdk/platform/FNAdapterDemo;
.super Lcom/ssjj/fnsdk/core/SsjjFNAdapter;


# static fields
.field private static d:[Ljava/lang/String;

.field private static e:[Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

.field private c:Landroid/app/Activity;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private h:Ljava/lang/StringBuilder;

.field private i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const-string v0, "fn_user_01"

    const-string v1, "fn_user_02"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->d:[Ljava/lang/String;

    const-string v0, "fnuid0001"

    const-string v1, "fnuid0002"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->e:[Ljava/lang/String;

    const/16 v0, 0xc8

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->d:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->e:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_20
    if-lt v2, v0, :cond_23

    return-void

    :cond_23
    sget-object v3, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->d:[Ljava/lang/String;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    add-int/lit8 v6, v2, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v1

    const-string v7, "fn_user_%02d"

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    sget-object v3, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->e:[Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "fnuid%04d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    move v2, v6

    goto :goto_20
.end method

.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/fnsdk/test/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->f:Ljava/lang/String;

    const-string v0, "test.0"

    iput-object v0, p0, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->h:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->i:Ljava/util/Set;

    sget-object v0, Lcom/ssjj/fnsdk/platform/FNConfigDemo;->fn_gameId:Ljava/lang/String;

    sput-object v0, Lcom/ssjj/fnsdk/platform/FNConfig;->fn_gameId:Ljava/lang/String;

    sget-object v0, Lcom/ssjj/fnsdk/platform/FNConfigDemo;->fn_platformId:Ljava/lang/String;

    sput-object v0, Lcom/ssjj/fnsdk/platform/FNConfig;->fn_platformId:Ljava/lang/String;

    sget-object v0, Lcom/ssjj/fnsdk/platform/FNConfigDemo;->fn_platformTag:Ljava/lang/String;

    sput-object v0, Lcom/ssjj/fnsdk/platform/FNConfig;->fn_platformTag:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/app/Activity;I)Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;
    .registers 9

    sget-object v0, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->d:[Ljava/lang/String;

    aget-object v0, v0, p2

    sget-object v1, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->e:[Ljava/lang/String;

    aget-object v1, v1, p2

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_d
    const-string v3, "uid"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "name"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "token"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "fnpid"

    sget-object v4, Lcom/ssjj/fnsdk/platform/FNConfig;->fn_platformId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "fngid"

    sget-object v4, Lcom/ssjj/fnsdk/platform/FNConfig;->fn_gameId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3f
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_3f} :catch_40

    goto :goto_44

    :catch_40
    move-exception v3

    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    :goto_44
    new-instance v3, Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;

    invoke-direct {v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;-><init>()V

    iput-object v1, v3, Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;->uid:Ljava/lang/String;

    iput-object v0, v3, Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;->name:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;->ext:Ljava/lang/String;

    const-string v0, "fntest"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "name_which"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-object v3
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/platform/FNAdapterDemo;Landroid/app/Activity;I)Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a(Landroid/app/Activity;I)Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/platform/FNAdapterDemo;)Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->b:Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

    return-object p0
.end method

.method private a(Landroid/app/Activity;)V
    .registers 8

    const-class p1, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->i:Ljava/util/Set;

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_10
    if-lt v2, v0, :cond_43

    const-class p1, Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    array-length v5, v3

    :goto_1e
    if-lt v1, v5, :cond_37

    iget-object p1, p0, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->i:Ljava/util/Set;

    invoke-interface {p1, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->i:Ljava/util/Set;

    const-string v0, "isIn"

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->i:Ljava/util/Set;

    const-string v0, "share"

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->b()V

    return-void

    :cond_37
    aget-object p1, v3, v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_43
    aget-object v3, p1, v2

    iget-object v4, p0, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->i:Ljava/util/Set;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_10
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/platform/FNAdapterDemo;Landroid/app/Activity;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->c:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/platform/FNAdapterDemo;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->d:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/ssjj/fnsdk/platform/FNAdapterDemo;)Landroid/app/Activity;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->c:Landroid/app/Activity;

    return-object p0
.end method

.method private b()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->f:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "test.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_23
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->b(Ljava/lang/String;)V

    if-nez p1, :cond_8

    const-string p1, "null"

    goto :goto_10

    :cond_8
    const-string v0, "\n"

    const-string v1, "\nfnsdk: [demo]: "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :goto_10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fnsdk: [demo]: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "fnsdk"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method b(Ljava/lang/String;)V
    .registers 9

    const-string v0, "utf-8"

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aget-object p1, p1, v2

    iget-object v3, p0, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->i:Ljava/util/Set;

    const-string v4, "\\("

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v2, v4, v2

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c9

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->f:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2b

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_2b
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->f:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "test.0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_53

    :try_start_4b
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_4f

    goto :goto_53

    :catch_4f
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_53
    :goto_53
    const-string v3, ""

    :try_start_55
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v5

    new-array v5, v5, [B

    invoke-virtual {v4, v5}, Ljava/io/FileInputStream;->read([B)I

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_68} :catch_6e

    :try_start_68
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6b} :catch_6c

    goto :goto_74

    :catch_6c
    move-exception v3

    goto :goto_71

    :catch_6e
    move-exception v4

    move-object v6, v3

    move-object v3, v4

    :goto_71
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_74
    new-instance v3, Ljava/lang/StringBuilder;

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "h:m:s"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :try_start_b5
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_c4} :catch_c5

    goto :goto_c9

    :catch_c5
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c9
    :goto_c9
    return-void
.end method

.method public checkAndUpdateVersion(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V
    .registers 12

    const-string p1, "checkAndUpdateVersion"

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->c:Landroid/app/Activity;

    invoke-static {p1}, Lcom/ssjj/fnsdk/platform/DemoUtil;->getDialog(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "\u66f4\u65b0\u63a5\u53e3 checkAndUpdateVersion();"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "onCancelForceUpdate \u53d6\u6d88\u5f3a\u5236\u66f4\u65b0"

    const-string v2, "onCancelNormalUpdate \u53d6\u6d88\u975e\u5f3a\u5236\u66f4\u65b0"

    const-string v3, "onForceUpdateLoading \u6b63\u5728\u5f3a\u5236\u66f4\u65b0"

    const-string v4, "onNormalUpdateLoading \u6b63\u5728\u975e\u5f3a\u5236\u66f4\u65b0"

    const-string v5, "onCheckVersionFailure \u68c0\u67e5\u66f4\u65b0\u5931\u8d25"

    const-string v6, "onNetWorkError \u7f51\u7edc\u9519\u8bef"

    const-string v7, "onException \u66f4\u65b0\u5f02\u5e38"

    const-string v8, "onNotSDCard \u65e0SD\u5361"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ssjj/fnsdk/platform/h;

    invoke-direct {v1, p0, p2}, Lcom/ssjj/fnsdk/platform/h;-><init>(Lcom/ssjj/fnsdk/platform/FNAdapterDemo;Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V

    const-string v2, "onNotNewVersion \u65e0\u65b0\u7248\u672c"

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/ssjj/fnsdk/platform/i;

    invoke-direct {v1, p0, p2}, Lcom/ssjj/fnsdk/platform/i;-><init>(Lcom/ssjj/fnsdk/platform/FNAdapterDemo;Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public checkUpdate(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 15

    const-string p1, "checkUpdate"

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->c:Landroid/app/Activity;

    invoke-static {p1}, Lcom/ssjj/fnsdk/platform/DemoUtil;->getDialog(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "\u66f4\u65b0\u63a5\u53e3 checkUpdate;"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u53d6\u6d88\u5f3a\u66f4\uff08\u5fc5\u63a5\uff09"

    const-string v2, "\u53d6\u6d88\u975e\u5f3a\u66f4\uff08\u975e\u5fc5\u63a5\uff09"

    const-string v3, "\u4e0b\u8f7d\u6210\u529f\uff0c\u66f4\u65b0\u6210\u529f\uff08\u975e\u5fc5\u63a5\uff09"

    const-string v4, "\u68c0\u67e5\u65b0\u7248\u672c\u5931\u8d25\uff01\uff08\u975e\u5fc5\u63a5\uff09"

    const-string v5, "\u4e0b\u8f7d\u8fc7\u7a0b\u4e2d\u5931\u8d25\uff01\uff08\u975e\u5fc5\u63a5\uff09"

    const-string v6, "\u4e0b\u8f7d\u8fc7\u7a0b\u5931\u8d25\u540e\uff0c\u518d\u6b21\u4e0b\u8f7d\u3002\uff08\u975e\u5fc5\u63a5\uff09"

    const-string v7, "\u4e0b\u8f7d\u6210\u529f\u540e\uff0capk\u89e3\u6790\u5931\u8d25!\uff08\u975e\u5fc5\u63a5\uff09"

    const-string v8, "\u5f39\u51fa\u975e\u5f3a\u66f4\u9875\u9762\uff08\u975e\u5fc5\u63a5\uff09"

    const-string v9, "\u5f39\u51fa\u5f3a\u66f4\u9875\u9762\uff08\u975e\u5fc5\u63a5\uff09"

    const-string v10, "\u70b9\u51fb\u4e0b\u8f7d\u6309\u94ae\uff0c\u5f00\u59cb\u975e\u5f3a\u66f4\u4e0b\u8f7d\uff08\u975e\u5fc5\u63a5\uff09"

    const-string v11, "\u70b9\u51fb\u4e0b\u8f7d\u6309\u94ae\uff0c\u5f00\u59cb\u5f3a\u66f4\u4e0b\u8f7d\uff08\u975e\u5fc5\u63a5\uff09"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ssjj/fnsdk/platform/x;

    invoke-direct {v1, p0, p2}, Lcom/ssjj/fnsdk/platform/x;-><init>(Lcom/ssjj/fnsdk/platform/FNAdapterDemo;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    const-string v2, "onNotNewVersion \u65e0\u65b0\u7248\u672c"

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/ssjj/fnsdk/platform/g;

    invoke-direct {v1, p0, p2}, Lcom/ssjj/fnsdk/platform/g;-><init>(Lcom/ssjj/fnsdk/platform/FNAdapterDemo;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public exit(Lcom/ssjj/fnsdk/core/listener/SsjjFNExitListener;)V
    .registers 5

    const-string v0, "exit"

    invoke-virtual {p0, v0}, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->c:Landroid/app/Activity;

    const-string v1, "\u9000\u51fa\u91ca\u653esdk\u8d44\u6e90"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    if-eqz p1, :cond_16

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNExitListener;->onCompleted()V

    :cond_16
    return-void
.end method

.method public hideFloatBar(Landroid/app/Activity;)V
    .registers 4

    const-string p1, "hideFloatBar"

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->c:Landroid/app/Activity;

    const-string v0, "\u9690\u85cf\u60ac\u6d6e\u7a97"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->h:Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a(Landroid/app/Activity;)V

    const-string v0, "============================"

    invoke-virtual {p0, v0}, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a(Ljava/lang/String;)V

    const-string v0, "init"

    invoke-virtual {p0, v0}, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/ssjj/fnsdk/platform/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/ssjj/fnsdk/platform/a;-><init>(Lcom/ssjj/fnsdk/platform/FNAdapterDemo;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public invoke(Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->invoke(Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z

    move-result p1

    return p1
.end method

.method public isSurportFunc(Ljava/lang/String;)Z
    .registers 10

    sget-object v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->FUNC_switchUser:Ljava/lang/String;

    sget-object v1, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->FUNC_logout:Ljava/lang/String;

    sget-object v2, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->FUNC_showUserCenter:Ljava/lang/String;

    sget-object v3, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->FUNC_showGameCenter:Ljava/lang/String;

    sget-object v4, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->FUNC_showFloatBar:Ljava/lang/String;

    sget-object v5, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->FUNC_hideFloatBar:Ljava/lang/String;

    sget-object v6, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->FUNC_showBBS:Ljava/lang/String;

    sget-object v7, Lcom/ssjj/fnsdk/core/entity/SsjjFNTag;->FUNC_showPlatformExitDialog:Ljava/lang/String;

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->isIn(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isSurportFunc("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ") = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a(Ljava/lang/String;)V

    return v0
.end method

.method public logCreateRole(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-string v0, "logCreateRole"

    invoke-virtual {p0, v0}, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\nroleId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "\nroleName = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "\nserverId = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "\nserverName = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->c:Landroid/app/Activity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u521b\u5efa\u89d2\u8272\u65e5\u5fd7\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p4, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object p1

    iget-object p4, p0, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a:Ljava/lang/String;

    invoke-virtual {p1, p2, p4, p3}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->logCreateRole(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logEnterGame(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "logEnterGame "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\nroleId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "\nroleName = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "\nroleLevel = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "\nserverId = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "\nserverName = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->c:Landroid/app/Activity;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "\u8fdb\u5165\u6e38\u620f\u65e5\u5fd7\n"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p2, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public logLoginFinish(Ljava/lang/String;)V
    .registers 6

    const-string v0, "logLoginFinish"

    invoke-virtual {p0, v0}, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "uid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a:Ljava/lang/String;

    if-eqz v2, :cond_2b

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    :cond_2b
    iput-object p1, p0, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a:Ljava/lang/String;

    :cond_2d
    iget-object v1, p0, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->c:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u767b\u5f55\u6210\u529f\u65e5\u5fd7\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->logLoginFinish(Ljava/lang/String;)V

    return-void
.end method

.method public logRoleLevel(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-string v0, "logRoleLevel"

    invoke-virtual {p0, v0}, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\nroleLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\nserverId = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->c:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u89d2\u8272\u5347\u7ea7\u65e5\u5fd7\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->logRoleLevel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logSelectServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const-string v0, "logSelectServer"

    invoke-virtual {p0, v0}, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\nroleLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\nuserName = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\nserverId = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->c:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u9009\u670d\u6210\u529f\u65e5\u5fd7\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->logSelectServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public login(Landroid/app/Activity;)V
    .registers 3

    const-string v0, "login"

    invoke-virtual {p0, v0}, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/ssjj/fnsdk/platform/j;

    invoke-direct {v0, p0, p1}, Lcom/ssjj/fnsdk/platform/j;-><init>(Lcom/ssjj/fnsdk/platform/FNAdapterDemo;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public logout(Landroid/app/Activity;)V
    .registers 4

    const-string p1, "logout"

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->c:Landroid/app/Activity;

    const-string v0, "\u6ce8\u9500"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->b:Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

    if-eqz p1, :cond_18

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;->onLogout()V

    :cond_18
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    const-string p1, "onActivityResult"

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    const-string v0, "onDestroy"

    invoke-virtual {p0, v0}, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 2

    const-string p1, "onNewIntent"

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .registers 2

    const-string v0, "onPause"

    invoke-virtual {p0, v0}, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onRestart()V
    .registers 2

    const-string v0, "onRestart"

    invoke-virtual {p0, v0}, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .registers 2

    const-string v0, "onResume"

    invoke-virtual {p0, v0}, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .registers 2

    const-string v0, "onStart"

    invoke-virtual {p0, v0}, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .registers 2

    const-string v0, "onStop"

    invoke-virtual {p0, v0}, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a(Ljava/lang/String;)V

    return-void
.end method

.method public pay(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pay "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/ssjj/fnsdk/platform/r;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ssjj/fnsdk/platform/r;-><init>(Lcom/ssjj/fnsdk/platform/FNAdapterDemo;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setUserListener(Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;)V
    .registers 3

    const-string v0, "setUserListener"

    invoke-virtual {p0, v0}, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->b:Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

    return-void
.end method

.method public showBBS(Landroid/app/Activity;)V
    .registers 4

    const-string p1, "showBBS"

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->c:Landroid/app/Activity;

    const-string v0, "\u6253\u5f00\u8bba\u575b"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showFloatBar(Landroid/app/Activity;)V
    .registers 4

    const-string p1, "showFloatBar"

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->c:Landroid/app/Activity;

    const-string v0, "\u663e\u793a\u60ac\u6d6e\u7a97"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showGameCenter(Landroid/app/Activity;)V
    .registers 4

    const-string p1, "showGameCenter"

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->c:Landroid/app/Activity;

    const-string v0, "\u6253\u5f00\u6e38\u620f\u4e2d\u5fc3"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showPlatformExitDialog(Lcom/ssjj/fnsdk/core/listener/SsjjFNExitDialogListener;)V
    .registers 8

    const-string v0, "showPlatformExitDialog"

    invoke-virtual {p0, v0}, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcom/ssjj/fnsdk/platform/DemoUtil;->getDialog(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u9000\u51fa\u5bf9\u8bdd\u6846\u63a5\u53e3 showPlatformExitDialog();"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u672c\u6b21\u8fd0\u884c\u8c03\u7528\u5230\u7684\u63a5\u53e3\uff1a\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    const/4 v4, 0x1

    const/16 v5, 0xc

    invoke-direct {v3, v5, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0x21

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/ssjj/fnsdk/platform/v;

    invoke-direct {v1, p0, p1}, Lcom/ssjj/fnsdk/platform/v;-><init>(Lcom/ssjj/fnsdk/platform/FNAdapterDemo;Lcom/ssjj/fnsdk/core/listener/SsjjFNExitDialogListener;)V

    const-string v2, "\u786e\u5b9a\u9000\u51fa"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/ssjj/fnsdk/platform/w;

    invoke-direct {v1, p0, p1}, Lcom/ssjj/fnsdk/platform/w;-><init>(Lcom/ssjj/fnsdk/platform/FNAdapterDemo;Lcom/ssjj/fnsdk/core/listener/SsjjFNExitDialogListener;)V

    const-string p1, "\u53d6\u6d88\u9000\u51fa"

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public showUserCenter(Landroid/app/Activity;)V
    .registers 4

    const-string p1, "showUserCenter"

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->c:Landroid/app/Activity;

    const-string v0, "\u6253\u5f00\u4e2a\u4eba\u4e2d\u5fc3"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public switchUser(Landroid/app/Activity;)V
    .registers 5

    const-string v0, "switchUser"

    invoke-virtual {p0, v0}, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/ssjj/fnsdk/platform/DemoUtil;->getDialog(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u5207\u6362\u5e10\u53f7\u63a5\u53e3 switchUser();"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->d:[Ljava/lang/String;

    new-instance v2, Lcom/ssjj/fnsdk/platform/o;

    invoke-direct {v2, p0, p1}, Lcom/ssjj/fnsdk/platform/o;-><init>(Lcom/ssjj/fnsdk/platform/FNAdapterDemo;Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/ssjj/fnsdk/platform/p;

    invoke-direct {v1, p0, p1}, Lcom/ssjj/fnsdk/platform/p;-><init>(Lcom/ssjj/fnsdk/platform/FNAdapterDemo;Landroid/app/Activity;)V

    const-string v2, "\u5207\u6362\u5931\u8d25"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/ssjj/fnsdk/platform/q;

    invoke-direct {v1, p0, p1}, Lcom/ssjj/fnsdk/platform/q;-><init>(Lcom/ssjj/fnsdk/platform/FNAdapterDemo;Landroid/app/Activity;)V

    const-string p1, "\u5207\u6362\u53d6\u6d88"

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
