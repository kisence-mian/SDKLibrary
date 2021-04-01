.class final Lcom/anythink/myoffer/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/myoffer/a/a;->a(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/anythink/myoffer/c/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/myoffer/a/a;


# direct methods
.method constructor <init>(Lcom/anythink/myoffer/a/a;)V
    .registers 2

    .prologue
    .line 100
    iput-object p1, p0, Lcom/anythink/myoffer/a/a$1;->a:Lcom/anythink/myoffer/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/anythink/myoffer/c/b;Lcom/anythink/myoffer/c/b;)I
    .registers 4

    .prologue
    .line 103
    iget v0, p0, Lcom/anythink/myoffer/c/b;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p1, Lcom/anythink/myoffer/c/b;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    .prologue
    .line 100
    check-cast p1, Lcom/anythink/myoffer/c/b;

    check-cast p2, Lcom/anythink/myoffer/c/b;

    .line 1103
    iget v0, p1, Lcom/anythink/myoffer/c/b;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p2, Lcom/anythink/myoffer/c/b;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    .line 100
    return v0
.end method
