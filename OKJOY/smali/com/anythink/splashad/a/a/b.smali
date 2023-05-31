.class public final Lcom/anythink/splashad/a/a/b;
.super Ljava/lang/Object;


# static fields
.field protected static a:Lcom/anythink/splashad/a/a/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    new-instance v0, Lcom/anythink/splashad/a/a/b;

    invoke-direct {v0}, Lcom/anythink/splashad/a/a/b;-><init>()V

    sput-object v0, Lcom/anythink/splashad/a/a/b;->a:Lcom/anythink/splashad/a/a/b;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Class;)Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;",
            ">;)",
            "Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;"
        }
    .end annotation

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 28
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 29
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 15
    if-eqz p0, :cond_1e

    .line 16
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 1027
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 1028
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1029
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    .line 20
    :cond_1e
    return-object v0
.end method
