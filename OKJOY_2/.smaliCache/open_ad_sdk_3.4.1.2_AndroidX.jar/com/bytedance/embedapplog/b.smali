.class final Lcom/bytedance/embedapplog/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/embedapplog/cf;


# static fields
.field private static a:Ljava/lang/Object;

.field private static b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static c:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 15
    :try_start_0
    const-string v0, "com.android.id.impl.IdProviderImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/bytedance/embedapplog/b;->b:Ljava/lang/Class;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/bytedance/embedapplog/b;->a:Ljava/lang/Object;

    .line 17
    sget-object v0, Lcom/bytedance/embedapplog/b;->b:Ljava/lang/Class;

    const-string v1, "getOAID"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/bytedance/embedapplog/b;->c:Ljava/lang/reflect/Method;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    .line 20
    goto :goto_3e

    .line 18
    :catch_21
    move-exception v0

    .line 19
    sget-object v1, Lcom/bytedance/embedapplog/ce;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Api#static reflect exception! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/embedapplog/bx;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :goto_3e
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;
    .registers 5

    .line 60
    sget-object v0, Lcom/bytedance/embedapplog/b;->a:Ljava/lang/Object;

    if-eqz v0, :cond_17

    if-eqz p1, :cond_17

    .line 62
    const/4 v1, 0x1

    :try_start_7
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 63
    if-eqz p0, :cond_15

    .line 64
    check-cast p0, Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_16

    return-object p0

    .line 67
    :cond_15
    goto :goto_17

    .line 66
    :catch_16
    move-exception p0

    .line 69
    :cond_17
    :goto_17
    const/4 p0, 0x0

    return-object p0
.end method

.method static a()Z
    .registers 1

    .line 33
    sget-object v0, Lcom/bytedance/embedapplog/b;->b:Ljava/lang/Class;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/bytedance/embedapplog/b;->a:Ljava/lang/Object;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/bytedance/embedapplog/b;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Z
    .registers 2

    .line 38
    invoke-static {}, Lcom/bytedance/embedapplog/b;->a()Z

    move-result p1

    return p1
.end method

.method public b(Landroid/content/Context;)Lcom/bytedance/embedapplog/cf$a;
    .registers 4

    .line 44
    :try_start_0
    new-instance v0, Lcom/bytedance/embedapplog/cf$a;

    invoke-direct {v0}, Lcom/bytedance/embedapplog/cf$a;-><init>()V

    .line 45
    sget-object v1, Lcom/bytedance/embedapplog/b;->c:Ljava/lang/reflect/Method;

    invoke-static {p1, v1}, Lcom/bytedance/embedapplog/b;->a(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/bytedance/embedapplog/cf$a;->b:Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 46
    return-object v0

    .line 47
    :catch_e
    move-exception p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 50
    const/4 p1, 0x0

    return-object p1
.end method
