.class public Lcom/kwai/sodler/lib/ext/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwai/sodler/lib/ext/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/sodler/lib/ext/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kwai/sodler/lib/ext/b<",
        "Lcom/kwai/sodler/lib/g;",
        "Lcom/kwai/sodler/lib/h;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/kwai/sodler/lib/a/f;)V
    .registers 2

    check-cast p1, Lcom/kwai/sodler/lib/h;

    invoke-virtual {p0, p1}, Lcom/kwai/sodler/lib/ext/b$a;->a(Lcom/kwai/sodler/lib/h;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/kwai/sodler/lib/a/f;Lcom/kwai/sodler/lib/a/a;)V
    .registers 3

    check-cast p1, Lcom/kwai/sodler/lib/h;

    check-cast p2, Lcom/kwai/sodler/lib/g;

    invoke-virtual {p0, p1, p2}, Lcom/kwai/sodler/lib/ext/b$a;->a(Lcom/kwai/sodler/lib/h;Lcom/kwai/sodler/lib/g;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/kwai/sodler/lib/a/f;Lcom/kwai/sodler/lib/ext/PluginError;)V
    .registers 3

    check-cast p1, Lcom/kwai/sodler/lib/h;

    invoke-virtual {p0, p1, p2}, Lcom/kwai/sodler/lib/ext/b$a;->a(Lcom/kwai/sodler/lib/h;Lcom/kwai/sodler/lib/ext/PluginError;)V

    return-void
.end method

.method public a(Lcom/kwai/sodler/lib/h;)V
    .registers 2

    return-void
.end method

.method public a(Lcom/kwai/sodler/lib/h;Lcom/kwai/sodler/lib/ext/PluginError;)V
    .registers 3

    return-void
.end method

.method public a(Lcom/kwai/sodler/lib/h;Lcom/kwai/sodler/lib/g;)V
    .registers 3

    return-void
.end method

.method public bridge synthetic b(Lcom/kwai/sodler/lib/a/f;)V
    .registers 2

    check-cast p1, Lcom/kwai/sodler/lib/h;

    invoke-virtual {p0, p1}, Lcom/kwai/sodler/lib/ext/b$a;->b(Lcom/kwai/sodler/lib/h;)V

    return-void
.end method

.method public b(Lcom/kwai/sodler/lib/h;)V
    .registers 2

    return-void
.end method

.method public bridge synthetic c(Lcom/kwai/sodler/lib/a/f;)V
    .registers 2

    check-cast p1, Lcom/kwai/sodler/lib/h;

    invoke-virtual {p0, p1}, Lcom/kwai/sodler/lib/ext/b$a;->c(Lcom/kwai/sodler/lib/h;)V

    return-void
.end method

.method public c(Lcom/kwai/sodler/lib/h;)V
    .registers 2

    return-void
.end method

.method public bridge synthetic d(Lcom/kwai/sodler/lib/a/f;)V
    .registers 2

    check-cast p1, Lcom/kwai/sodler/lib/h;

    invoke-virtual {p0, p1}, Lcom/kwai/sodler/lib/ext/b$a;->d(Lcom/kwai/sodler/lib/h;)V

    return-void
.end method

.method public d(Lcom/kwai/sodler/lib/h;)V
    .registers 2

    return-void
.end method
