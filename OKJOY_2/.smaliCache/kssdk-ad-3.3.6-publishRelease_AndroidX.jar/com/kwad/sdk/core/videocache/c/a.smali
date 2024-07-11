.class public Lcom/kwad/sdk/core/videocache/c/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/kwad/sdk/core/videocache/f;


# direct methods
.method public static a(Landroid/content/Context;)Lcom/kwad/sdk/core/videocache/f;
    .registers 2

    sget-object v0, Lcom/kwad/sdk/core/videocache/c/a;->a:Lcom/kwad/sdk/core/videocache/f;

    if-nez v0, :cond_a

    invoke-static {p0}, Lcom/kwad/sdk/core/videocache/c/a;->b(Landroid/content/Context;)Lcom/kwad/sdk/core/videocache/f;

    move-result-object v0

    sput-object v0, Lcom/kwad/sdk/core/videocache/c/a;->a:Lcom/kwad/sdk/core/videocache/f;

    :cond_a
    return-object v0
.end method

.method private static b(Landroid/content/Context;)Lcom/kwad/sdk/core/videocache/f;
    .registers 4

    new-instance v0, Lcom/kwad/sdk/core/videocache/f$a;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/core/videocache/f$a;-><init>(Landroid/content/Context;)V

    const-wide/32 v1, 0x6400000

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/core/videocache/f$a;->a(J)Lcom/kwad/sdk/core/videocache/f$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/kwad/sdk/core/videocache/f$a;->a()Lcom/kwad/sdk/core/videocache/f;

    move-result-object p0

    return-object p0
.end method
