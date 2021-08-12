.class Lcom/kwad/sdk/api/loader/d$a;
.super Ldalvik/system/DexClassLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/api/loader/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "com.kwad.sdk.api"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method


# virtual methods
.method protected loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/kwad/sdk/api/loader/d$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/kwad/sdk/api/loader/d$a;->getParent()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    :cond_f
    invoke-virtual {p0, p1}, Lcom/kwad/sdk/api/loader/d$a;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_16

    return-object v0

    :cond_16
    :try_start_16
    invoke-virtual {p0, p1}, Lcom/kwad/sdk/api/loader/d$a;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_1a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_16 .. :try_end_1a} :catch_1b

    goto :goto_1c

    :catch_1b
    move-exception v1

    :goto_1c
    if-eqz v0, :cond_1f

    return-object v0

    :cond_1f
    invoke-super {p0, p1, p2}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method
