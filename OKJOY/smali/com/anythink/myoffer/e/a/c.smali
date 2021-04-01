.class public Lcom/anythink/myoffer/e/a/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/myoffer/e/a/c$b;,
        Lcom/anythink/myoffer/e/a/c$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/anythink/myoffer/e/a/c$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const-class v0, Lcom/anythink/myoffer/e/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/myoffer/e/a/c;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/anythink/myoffer/e/a/c;->b:Ljava/util/Map;

    .line 15
    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/anythink/myoffer/e/a/c;-><init>()V

    return-void
.end method

.method public static a()Lcom/anythink/myoffer/e/a/c;
    .registers 1

    .prologue
    .line 18
    invoke-static {}, Lcom/anythink/myoffer/e/a/c$a;->a()Lcom/anythink/myoffer/e/a/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/anythink/myoffer/e/a/c$b;
    .registers 3

    .prologue
    .line 32
    iget-object v0, p0, Lcom/anythink/myoffer/e/a/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/myoffer/e/a/c$b;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/myoffer/e/a/c$b;)V
    .registers 4

    .prologue
    .line 28
    iget-object v0, p0, Lcom/anythink/myoffer/e/a/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/anythink/myoffer/e/a/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void
.end method
