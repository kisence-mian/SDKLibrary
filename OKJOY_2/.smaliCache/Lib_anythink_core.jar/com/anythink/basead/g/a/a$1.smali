.class final Lcom/anythink/basead/g/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/g/a/a;->b(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/anythink/basead/c/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/g/a/a;


# direct methods
.method constructor <init>(Lcom/anythink/basead/g/a/a;)V
    .registers 2

    .line 121
    iput-object p1, p0, Lcom/anythink/basead/g/a/a$1;->a:Lcom/anythink/basead/g/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/anythink/basead/c/d;Lcom/anythink/basead/c/d;)I
    .registers 2

    .line 124
    iget p0, p0, Lcom/anythink/basead/c/d;->d:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget p1, p1, Lcom/anythink/basead/c/d;->d:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 121
    check-cast p1, Lcom/anythink/basead/c/d;

    check-cast p2, Lcom/anythink/basead/c/d;

    .line 1124
    iget p1, p1, Lcom/anythink/basead/c/d;->d:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget p2, p2, Lcom/anythink/basead/c/d;->d:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    .line 121
    return p1
.end method
