.class public abstract Lcom/anythink/core/common/res/image/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Z

.field protected e:J

.field protected f:J

.field protected g:J

.field protected h:J

.field protected i:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/res/image/b;->a:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/anythink/core/common/res/image/b;->c:Ljava/lang/String;

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/res/image/b;)Ljava/lang/String;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/anythink/core/common/res/image/b;->a:Ljava/lang/String;

    return-object p0
.end method

.method private e()V
    .registers 2

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/core/common/res/image/b;->d:Z

    .line 47
    return-void
.end method

.method private f()V
    .registers 2

    .line 64
    new-instance v0, Lcom/anythink/core/common/res/image/b$1;

    invoke-direct {v0, p0}, Lcom/anythink/core/common/res/image/b$1;-><init>(Lcom/anythink/core/common/res/image/b;)V

    .line 198
    invoke-virtual {p0, v0}, Lcom/anythink/core/common/res/image/b;->a(Lcom/anythink/core/common/g/a/b;)V

    .line 200
    return-void
.end method

.method private static g()I
    .registers 1

    .line 204
    const v0, 0xea60

    return v0
.end method

.method private static h()I
    .registers 1

    .line 208
    const/16 v0, 0x4e20

    return v0
.end method


# virtual methods
.method protected abstract a()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract a(Lcom/anythink/core/common/g/a/b;)V
.end method

.method protected abstract a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract a(Ljava/io/InputStream;)Z
.end method

.method protected abstract b()V
.end method

.method protected abstract c()V
.end method

.method public final d()V
    .registers 2

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/core/common/res/image/b;->d:Z

    .line 41
    nop

    .line 1064
    new-instance v0, Lcom/anythink/core/common/res/image/b$1;

    invoke-direct {v0, p0}, Lcom/anythink/core/common/res/image/b$1;-><init>(Lcom/anythink/core/common/res/image/b;)V

    .line 1198
    invoke-virtual {p0, v0}, Lcom/anythink/core/common/res/image/b;->a(Lcom/anythink/core/common/g/a/b;)V

    .line 42
    return-void
.end method
