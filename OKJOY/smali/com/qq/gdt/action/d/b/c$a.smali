.class public Lcom/qq/gdt/action/d/b/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/gdt/action/d/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/qq/gdt/action/d/b/d;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/qq/gdt/action/d/b/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/qq/gdt/action/d/b/d;

    invoke-direct {v0}, Lcom/qq/gdt/action/d/b/d;-><init>()V

    iput-object v0, p0, Lcom/qq/gdt/action/d/b/c$a;->a:Lcom/qq/gdt/action/d/b/d;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qq/gdt/action/d/b/c$a;->b:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/qq/gdt/action/d/b/c$a;)Lcom/qq/gdt/action/d/b/d;
    .registers 2

    iget-object v0, p0, Lcom/qq/gdt/action/d/b/c$a;->a:Lcom/qq/gdt/action/d/b/d;

    return-object v0
.end method

.method static synthetic b(Lcom/qq/gdt/action/d/b/c$a;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/qq/gdt/action/d/b/c$a;->b:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/qq/gdt/action/d/b/a/b;)Lcom/qq/gdt/action/d/b/c$a;
    .registers 3

    if-nez p1, :cond_8

    const-string v0, "interceptor == null"

    invoke-static {v0}, Lcom/qq/gdt/action/h/l;->b(Ljava/lang/String;)V

    :goto_7
    return-object p0

    :cond_8
    iget-object v0, p0, Lcom/qq/gdt/action/d/b/c$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7
.end method

.method public a()Lcom/qq/gdt/action/d/b/c;
    .registers 2

    new-instance v0, Lcom/qq/gdt/action/d/b/c;

    invoke-direct {v0, p0}, Lcom/qq/gdt/action/d/b/c;-><init>(Lcom/qq/gdt/action/d/b/c$a;)V

    return-object v0
.end method
