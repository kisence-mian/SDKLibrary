.class public Lcom/kwai/sodler/lib/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/kwai/sodler/lib/b/a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwai/sodler/lib/b/a;)I
    .registers 3

    iget-object p1, p1, Lcom/kwai/sodler/lib/b/a;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/kwai/sodler/lib/b/a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/kwai/sodler/lib/b/a;

    invoke-virtual {p0, p1}, Lcom/kwai/sodler/lib/b/a;->a(Lcom/kwai/sodler/lib/b/a;)I

    move-result p1

    return p1
.end method
