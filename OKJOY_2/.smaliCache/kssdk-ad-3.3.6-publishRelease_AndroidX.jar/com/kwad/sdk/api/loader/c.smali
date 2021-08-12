.class public Lcom/kwad/sdk/api/loader/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/api/loader/c$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)Landroid/content/Context;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_b

    return-object p0

    :cond_b
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    new-instance v0, Lcom/kwad/sdk/api/loader/c$a;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/api/loader/c$a;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_1f
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method
