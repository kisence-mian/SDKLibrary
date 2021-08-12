.class final Lcom/anythink/china/a/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/china/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field private static e:Ljava/lang/Object;

.field private static f:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static g:Ljava/lang/reflect/Method;

.field private static h:Ljava/lang/reflect/Method;

.field private static i:Ljava/lang/reflect/Method;

.field private static j:Ljava/lang/reflect/Method;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 224
    const/4 v0, 0x0

    sput-object v0, Lcom/anythink/china/a/b$a;->g:Ljava/lang/reflect/Method;

    .line 225
    sput-object v0, Lcom/anythink/china/a/b$a;->h:Ljava/lang/reflect/Method;

    .line 226
    sput-object v0, Lcom/anythink/china/a/b$a;->i:Ljava/lang/reflect/Method;

    .line 227
    sput-object v0, Lcom/anythink/china/a/b$a;->j:Ljava/lang/reflect/Method;

    .line 229
    :try_start_9
    const-string v0, "com.android.id.impl.IdProviderImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 230
    sput-object v0, Lcom/anythink/china/a/b$a;->f:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/anythink/china/a/b$a;->e:Ljava/lang/Object;

    .line 231
    sget-object v0, Lcom/anythink/china/a/b$a;->f:Ljava/lang/Class;

    const-string v1, "getUDID"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/anythink/china/a/b$a;->g:Ljava/lang/reflect/Method;

    .line 232
    sget-object v0, Lcom/anythink/china/a/b$a;->f:Ljava/lang/Class;

    const-string v1, "getOAID"

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/anythink/china/a/b$a;->h:Ljava/lang/reflect/Method;

    .line 233
    sget-object v0, Lcom/anythink/china/a/b$a;->f:Ljava/lang/Class;

    const-string v1, "getVAID"

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/anythink/china/a/b$a;->i:Ljava/lang/reflect/Method;

    .line 234
    sget-object v0, Lcom/anythink/china/a/b$a;->f:Ljava/lang/Class;

    const-string v1, "getAAID"

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/anythink/china/a/b$a;->j:Ljava/lang/reflect/Method;
    :try_end_59
    .catchall {:try_start_9 .. :try_end_59} :catchall_5a

    .line 237
    return-void

    .line 235
    :catchall_5a
    move-exception v0

    .line 238
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    sget-object v0, Lcom/anythink/china/a/b$a;->g:Ljava/lang/reflect/Method;

    invoke-static {p1, v0}, Lcom/anythink/china/a/b$a;->a(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/china/a/b$a;->a:Ljava/lang/String;

    .line 242
    sget-object v0, Lcom/anythink/china/a/b$a;->h:Ljava/lang/reflect/Method;

    invoke-static {p1, v0}, Lcom/anythink/china/a/b$a;->a(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/china/a/b$a;->b:Ljava/lang/String;

    .line 243
    sget-object v0, Lcom/anythink/china/a/b$a;->i:Ljava/lang/reflect/Method;

    invoke-static {p1, v0}, Lcom/anythink/china/a/b$a;->a(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/china/a/b$a;->c:Ljava/lang/String;

    .line 244
    sget-object v0, Lcom/anythink/china/a/b$a;->j:Ljava/lang/reflect/Method;

    invoke-static {p1, v0}, Lcom/anythink/china/a/b$a;->a(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/china/a/b$a;->d:Ljava/lang/String;

    .line 245
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;
    .registers 5

    .line 252
    sget-object v0, Lcom/anythink/china/a/b$a;->e:Ljava/lang/Object;

    if-eqz v0, :cond_17

    if-eqz p1, :cond_17

    .line 254
    const/4 v1, 0x1

    :try_start_7
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 255
    if-eqz p0, :cond_15

    .line 256
    check-cast p0, Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_16

    return-object p0

    .line 260
    :cond_15
    goto :goto_17

    .line 258
    :catchall_16
    move-exception p0

    .line 262
    :cond_17
    :goto_17
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a()Z
    .registers 1

    .line 248
    sget-object v0, Lcom/anythink/china/a/b$a;->f:Ljava/lang/Class;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/anythink/china/a/b$a;->e:Ljava/lang/Object;

    if-nez v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x1

    return v0

    :cond_b
    :goto_b
    const/4 v0, 0x0

    return v0
.end method
