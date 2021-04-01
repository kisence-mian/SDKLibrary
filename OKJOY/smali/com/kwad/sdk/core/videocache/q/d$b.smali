.class final Lcom/kwad/sdk/core/videocache/q/d$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/videocache/q/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kwad/sdk/core/videocache/q/d$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/core/videocache/q/d$b;-><init>()V

    return-void
.end method

.method private a(JJ)I
    .registers 6

    cmp-long v0, p1, p3

    if-gez v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_5

    :cond_a
    const/4 v0, 0x1

    goto :goto_5
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/io/File;)I
    .registers 7

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/kwad/sdk/core/videocache/q/d$b;->a(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/kwad/sdk/core/videocache/q/d$b;->a(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
