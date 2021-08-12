.class public final Lcom/anythink/core/common/d/x;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/common/d/x$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:J

.field public f:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/common/d/x$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/anythink/core/common/d/x$a;
    .registers 3

    .line 37
    iget-object v0, p0, Lcom/anythink/core/common/d/x;->f:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_b

    .line 38
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/core/common/d/x$a;

    return-object p1

    .line 40
    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method
