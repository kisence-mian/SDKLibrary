.class public Lcom/kwai/sodler/lib/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/kwai/sodler/lib/b/b;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwai/sodler/lib/b/b;->g:Z

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/kwai/sodler/lib/b/b;->h:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public a(Lcom/kwai/sodler/lib/b/b;)I
    .registers 3

    iget-object v0, p0, Lcom/kwai/sodler/lib/b/b;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/kwai/sodler/lib/b/b;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    neg-int p1, p1

    return p1
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/kwai/sodler/lib/b/b;

    invoke-virtual {p0, p1}, Lcom/kwai/sodler/lib/b/b;->a(Lcom/kwai/sodler/lib/b/b;)I

    move-result p1

    return p1
.end method
