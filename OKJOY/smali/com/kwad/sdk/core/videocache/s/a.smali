.class public Lcom/kwad/sdk/core/videocache/s/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Lcom/kwad/sdk/core/videocache/f;


# direct methods
.method public static a(Landroid/content/Context;)Lcom/kwad/sdk/core/videocache/f;
    .registers 2

    sget-object v0, Lcom/kwad/sdk/core/videocache/s/a;->a:Lcom/kwad/sdk/core/videocache/f;

    if-nez v0, :cond_a

    invoke-static {p0}, Lcom/kwad/sdk/core/videocache/s/a;->b(Landroid/content/Context;)Lcom/kwad/sdk/core/videocache/f;

    move-result-object v0

    sput-object v0, Lcom/kwad/sdk/core/videocache/s/a;->a:Lcom/kwad/sdk/core/videocache/f;

    :cond_a
    return-object v0
.end method

.method private static b(Landroid/content/Context;)Lcom/kwad/sdk/core/videocache/f;
    .registers 5

    new-instance v0, Lcom/kwad/sdk/core/videocache/f$b;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/core/videocache/f$b;-><init>(Landroid/content/Context;)V

    const-wide/32 v2, 0xc800000

    invoke-virtual {v0, v2, v3}, Lcom/kwad/sdk/core/videocache/f$b;->a(J)Lcom/kwad/sdk/core/videocache/f$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/core/videocache/f$b;->a()Lcom/kwad/sdk/core/videocache/f;

    move-result-object v0

    return-object v0
.end method
