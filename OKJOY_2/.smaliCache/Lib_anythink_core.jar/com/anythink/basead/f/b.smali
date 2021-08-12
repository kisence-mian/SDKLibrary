.class public Lcom/anythink/basead/f/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/basead/f/b$b;,
        Lcom/anythink/basead/f/b$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/basead/f/b$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    const-class v0, Lcom/anythink/basead/f/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/basead/f/b;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/anythink/basead/f/b;->b:Ljava/util/Map;

    .line 22
    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .line 16
    invoke-direct {p0}, Lcom/anythink/basead/f/b;-><init>()V

    return-void
.end method

.method public static a()Lcom/anythink/basead/f/b;
    .registers 1

    .line 25
    invoke-static {}, Lcom/anythink/basead/f/b$a;->a()Lcom/anythink/basead/f/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/anythink/basead/f/b$b;
    .registers 3

    .line 39
    iget-object v0, p0, Lcom/anythink/basead/f/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/basead/f/b$b;

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/basead/f/b$b;)V
    .registers 4

    .line 35
    iget-object v0, p0, Lcom/anythink/basead/f/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    .line 43
    iget-object v0, p0, Lcom/anythink/basead/f/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method
