.class public Lmobi/oneway/export/b/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Z)V
    .registers 3

    invoke-static {}, Lmobi/oneway/export/f/d;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/oneway/export/f/c;

    invoke-virtual {v0, p0}, Lmobi/oneway/export/f/c;->a(Z)V

    goto :goto_a

    :cond_1a
    return-void
.end method
